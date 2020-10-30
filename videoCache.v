module videoCache(input [15:0]cAddress,input [7:0]cData,output [14:0]vAddress,output [7:0]vData, input wEnable,input clk);
	wire[15:0] iAddress;
	wire[7:0] iData;
	
	wire writeEnable;
	
	reg[14:0] oAddress;
	reg[7:0] oData;
	
	reg[15:0] sAddress;
	reg[7:0] sData;

	always @ (posedge clk)
	begin
		if(iAddress>=16'h8000&& iAddress<=16'hF530)
		begin
			sAddress <= iAddress;
			sData <= iData;
		end
		if(writeEnable==1'b01)
		begin
			oAddress <= sAddress-16'h8000;
			oData <= sData;
		end else
		begin
			
		end
		
	end
	assign iAddress=cAddress;
	assign iData=cData;
	
	assign vAddress= wEnable ? oAddress : {15'bz};
	assign vData= wEnable ? oData : {7'bz};
	
	assign writeEnable = wEnable;

	
endmodule