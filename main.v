module main(data,address,clk,rw);
	inout [7:0]data;
	output [15:0]address;
	input clk;
	input rw;
	wire[7:0] dataVideo;
	wire[15:0] addressVideo;
	wire writeEnabVideo;
	gpc_cpu CPU(.address(address), .data(data), .clk(clk), .rw(rw));
	videoCache vc(.cAddress(address), .cData(data), .vAddress(addressVideo), .vData(dataVideo), .wEnable(writeEnabVideo), .clk(clk));
endmodule