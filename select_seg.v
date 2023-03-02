module select_seg(//分频显示电路
	input clk,
	input [11:0]in,
	output reg [2:0]this_seg,
	output reg [6:0]seg);
	
	reg [18:0] times;
	reg [3:0] cur_data;
	reg [11:0] deci_data;
	reg [11:0] temp1, temp2;
	
	initial times = 0;
	initial this_seg = 3'b011;
	
	always@(posedge clk)begin
		//2进制转化为10进制
		deci_data[11:8] <= in / 7'd100 % 4'd10;
		temp1 <= in % 7'd100;
		deci_data[7:4] <= temp1 / 4'd10;
		temp2 <= temp1 % 4'd10;
		deci_data[3:0] <= temp2;
		//循环扫描显示数码管
		case(times)
			19'd000000:begin this_seg <= 4'b011; cur_data <= deci_data[11:8]; end
			19'd100000:begin this_seg <= 4'b101; cur_data <= deci_data[7:4];end
			19'd200000:begin this_seg <= 4'b110; cur_data <= deci_data[3:0];end
		endcase
		//时间增加
		times <= times + 1;
		if(times == 19'd300000) times <= 0;
			
		case(cur_data)
			4'b0000: seg <= 7'b1000000;    //0
         4'b0001: seg <= 7'b1111001;    //1
         4'b0010: seg <= 7'b0100100;    //2
         4'b0011: seg <= 7'b0110000;    //3
         4'b0100: seg <= 7'b0011001;    //4
         4'b0101: seg <= 7'b0010010;    //5
         4'b0110: seg <= 7'b0000010;    //6
         4'b0111: seg <= 7'b1111000;    //7
         4'b1000: seg <= 7'b0000000;    //8
         4'b1001: seg <= 7'b0010000;    //9
		endcase
			
	end
endmodule