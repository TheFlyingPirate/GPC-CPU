module main(data,address,clk,rw,r,g,b,vs,hs);
	input clk;
	inout [7:0]data;
	output r;
	output g;
	output b;
	output vs;
	output hs;
	wire ramCS;
	wire firmCS;
	output rw;
	output [15:0]address;
	wire[7:0] dataVideo;
	wire[7:0] VRVGADat;
	wire[14:0] VRVGAAddr;	
	wire[14:0] addressVideo;
	wire[7:0] fwData;
	assign ramCS = address<16'h8000 ? 1'b1 : 1'b0;
	assign firmCS = address<16'h8000 & address<16'h80FF ? 1'b0 : 1'b1;
	
	LRAM RAM (.clk(clk),.addr(address),.data(data),.cs(ramCS),.we(rw),.oe(~rw));
	RamChip VRAM(.CLK(clk),.AddressIN(address),.DataIN(data),.AddressOut(VRVGAAddr),.DataOut(VRVGADat),.WE(rw));
	//videoCache vc(.cAddress(address), .cData(data), .vAddress(addressVideo), .vData(dataVideo), .wEnable(writeEnableVideo), .clk(clk));
	gpc_cpu CPU(.address(address), .data(data), .clk(clk), .rw(rw));
	VGADriver VGA(.address(VRVGAAddr),.data(VRVGADat),.clk(clk),.R(r),.G(g),.B(b),.vSync(vs),.hSync(hs));
	ROM_Firmware firmware(.clk(clk),.addr(address),.data(data),.cs(firmCS),.we(rw),.oe(~rw));

	
endmodule