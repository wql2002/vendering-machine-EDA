module debounce(
	input reset, clk, in,
	output reg steady);
	
parameter limit = 1500000;
reg [24:0] count;
reg old;

always@(posedge clk)begin
	if(reset)begin
		count <= 0;
		old <= in;
		steady <= in;
	end
	//当状态变化时，更新状态并重新计时
	else if(in != old)begin
		old <= in;
		count <= 0;
	end
	//状态稳定后更新输出
	else if(count == limit)begin
		steady <= old;
	end
	//等待稳定过程
	else begin
		count <= count + 1'd1;
	end
end

endmodule