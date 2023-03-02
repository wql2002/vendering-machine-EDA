module sell_machine(//顶层电路
	input clk,
	input in_5j, in_1y, in_5y,
	input in_buy1, in_buy2,
	input reset, in_refund,
	output reg out_less, out_take, out_money,
	output [2:0] which_seg, output [6:0] seg);
	
reg [3:0] next_state, cur_state;
reg [11:0] old_money;//投入的钱
wire [11:0] now_money;//当前的钱
reg [5:0] count1, count2;//出售的物品数量
reg [5:0] num_c1, num_c2, num_c3;//投入的硬币数量
reg [3:0] elapsed_time;//延迟显示时间
reg [25:0] slow_clk;//配合计时信号
reg init;//初始状态

//按键消抖
wire in_5j0, in_1y0, in_5y0;
//rebounce re1(clk, reset, in_5j, in_5j0);
//rebounce re2(clk, reset, in_1y, in_1y0);
//rebounce re3(clk, reset, in_5y, in_5y0);
debounce de1(reset, clk, in_5j, in_5j0);
debounce de2(reset, clk, in_1y, in_1y0);
debounce de3(reset, clk, in_5y, in_5y0);


//状态参数
parameter [3:0] IDLE = 0,
					 SHOP_1 = 1,
					 SHOP_2 = 2,
					 SELL = 3,
					 ERROR = 4,
					 CHECK = 5;
//物品价格
parameter [5:0] price1 = 6'd15,
					 price2 = 6'd25,
					 coin1 = 6'd5,
					 coin2 = 6'd10,
					 coin3 = 6'd50;

//初始化
initial begin
	init = 0;
	old_money = 0;
	count1 = 0;
	count2 = 0;
	cur_state = IDLE;
	out_less = 0;
	out_money = 0;
	out_take = 0;
end

//提示信号计时模块
always@(posedge clk)begin
	if(reset || init)begin
		elapsed_time <= 4'h0;
		slow_clk <= 26'b0;
	end

	else begin
		if(slow_clk == 26'd40_000_000)begin
			elapsed_time <= elapsed_time + 4'h1;
			slow_clk <= 26'd0;
		end
		else begin
			slow_clk <= slow_clk + 26'd1;
		end
	end
end

//投币模块
always@(posedge reset or negedge in_5j0 or negedge in_1y0 or negedge in_5y0)begin
	if(reset)begin
		old_money <= 0;
	end
	else begin
		if(!in_5j0)begin
			old_money <= old_money + 3'd5;
		end
		else if(!in_1y0)begin
			old_money <= old_money + 4'd10;
		end
		else if(!in_5y0)begin
			old_money <= old_money + 6'd50;
		end
	end
end

//状态转移逻辑
always@(*)
begin
	init = 1'b0;
	//有置零信号时恢复初始状态
	if(reset)begin
		next_state = IDLE;
	end
	
	else begin
	case(cur_state)
		IDLE:
			begin
				//默认状态下一直处于IDLE状态
				next_state = IDLE;
				/*if(!in_5j0)begin
					money = money + 5;
					next_state = IDLE;
				end
				
				else if(!in_1y0)begin
					money = money + 10;
					next_state = IDLE;
				end
				
				else if(!in_5y0)begin
					money = money + 50;
					next_state = IDLE;
				end*/
				
				if(in_buy1)begin
					init = 1'b1;
					if(now_money < 15)begin
						next_state = ERROR;
					end
					
					else begin
						//money = money - 15;
						//count1 = count1 + 1;
						next_state = SHOP_1;
					end
				end
				
				else if(in_buy2)begin
					init = 1'b1;
					if(now_money < 25)begin
						next_state = ERROR;
					end
					
					else begin
						//money = money - 25;
						//count2 = count2 + 1;
						next_state = SHOP_2;
					end
				end
			end
		SHOP_1:
			begin
				//当提示时间超过3秒后熄灭指示灯
				if(elapsed_time>4'h2)
				begin
					next_state=IDLE;
					init = 1'b1;
					//out_take = 1'b0;
				end
				//否则打开指示灯
				else begin
					next_state = SHOP;
					//init = 1'b1;
					//out_take = 1'b1;
				end
			end
		SHOP_2:
			begin
				
			end
		ERROR:
			begin
				//当提示时间超过3秒后熄灭指示灯
				if(elapsed_time>4'h2)begin
					next_state=IDLE;
					init = 1'b1;
					//out_less = 1'b0;
				end
				//否则打开指示灯
				else begin
					next_state = ERROR;
					//init = 1'b1;
					//out_less = 1'b1;
				end
			end
	endcase
	end
	
end


//状态更新逻辑
always@(posedge clk)begin
	if(reset)begin
		cur_state <= IDLE;
	end
	else begin
		cur_state <= next_state;
	end
end

//时序输出
always@(posedge clk)begin
	if(reset)begin
		count1 = 0;
		count2 = 0;
		out_less = 0;
		out_money = 0;
		out_take = 0;
	end
	
	else begin
		case(next_state)
			IDLE:begin
			
			end
			
			SHOP:begin
			
			end
			
			ERROR:begin
			
			end
		endcase
	end
end

//更新剩余的钱
assign now_money = old_money - count1*price1 - count2*price2;

//数码管显示
select_seg s1(clk, now_money, which_seg, seg);

endmodule