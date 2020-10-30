module RamChip (CLK, AddressIN, DataIN, AddressOut, DataOut, WE);

parameter AddressSize = 15;
parameter WordSize = 8;

input [AddressSize:0] AddressIN;
input [WordSize-1:0] DataIN;
input [AddressSize-1:0] AddressOut;
input WE;
output [WordSize-1:0] DataOut;
input CLK;

reg [WordSize-1:0] temp_data;
reg [WordSize-1:0] Mem [0:(1<<AddressSize)-1];

always @(posedge CLK) begin
	if(WE==1'b1)
		Mem[AddressIN-16'h8000]<= DataIN;
end

always @(posedge CLK) begin
		temp_data<=Mem[AddressOut];
end

assign DataOut = temp_data;
endmodule