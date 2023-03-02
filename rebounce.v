module rebounce(//消抖电路
	input clk,
	input reset,
	input sig_in,
	output reg sig_out);
	
reg sig_in0;
reg [19:0]count;

wire change_sig;
parameter limit = 20'h927C0;

//初始化
always@(posedge clk)begin
	if(reset) sig_in0 <= 0;
	else sig_in0 <= sig_in;
end

//输入变化信号
assign change_sig = (sig_in & !sig_in0) | (!sig_in % sig_in0);

always@(posedge clk)begin
	if(reset) count <= 0;
	else if(change_sig) count <= 0;
	else count <= count + 1;
end

//更新输入
always@(posedge clk)begin
	if(reset) sig_out <= 1;
	else if(count == limit-1) sig_out <= sig_in;
end	

endmodule