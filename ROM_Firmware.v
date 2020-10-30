module ROM_Firmware(clk, addr, data, cs, we, oe);
	input clk;
	input [15:0] addr;
	inout [7:0] data;
	input cs;
	input we;
	input oe;

	reg [7:0] tmp_data;
	reg [7:0] mem[0:16];
	initial begin
		mem[0]	<=8'h02;//0
		mem[1]	<=8'h07;//1
		mem[2]	<=8'h04;//2
		mem[3]	<=8'h03;//3
		mem[4]	<=8'h11;//4
		mem[5]	<=8'h00;//5
		mem[6]	<=8'h00;//6
		mem[7]	<=8'h01;//7
		mem[8]	<=8'h00;//8
		mem[9]	<=8'h00;//9
		mem[10]	<=8'h11;//A
		mem[11]	<=8'h00;//B
		mem[12]	<=8'h00;//C
		mem[13]	<=8'h30;//D
		mem[14]	<=8'h80;//E
		mem[15]	<=8'h07;//F
	end
	
	
	


	assign data = cs & oe & !we ? mem[addr-16'h8000] : 8'hz;
endmodule