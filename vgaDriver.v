module VGADriver(output [14:0]address, input [7:0]data, input clk, output R, output G, output B, output vSync, output hSync);
	reg [14:0] addressW;
	wire [7:0] dataW;
	reg red;
	reg green;
	reg blue;
	reg vSyncR;
	reg hSyncR;
	reg [14:0] PixelPos;
	reg[3:0] vOffset;
	reg[7:0] vPixel;
	reg[8:0] hPos;
	reg[9:0] vPos;
	reg[2:0] clockSpliter;
	reg[7:0] currentPixel;
	integer i;
	initial begin
		hPos<=1'b0;
		PixelPos=1'b0;
		vPos<=1'b0;
		vOffset<=1'b0;
		currentPixel<=1'b0;
		clockSpliter<=1'b0;
	
	end
	
	
	
	always @ (posedge clk)
	begin
		
		if(hPos<200)
			if(vPos<600)
			begin
				red<=currentPixel[7];
				green<=currentPixel[4];
				blue<=currentPixel[1];
			end
		if(hPos==200)
		begin
		
		end
		
		if(hPos>=209&&hPos<=241)
		begin
			hSyncR<=1'b0;
			
		end else
		begin
			hSyncR<=1'b1;
		end
		
		if(vPos>600&&vPos<605)
		begin
			vSyncR<=1'b0;
		end else
		begin
			vSyncR<=1'b1;
		end

		
		
		
		

		if(clockSpliter==5)
		begin
		
			//clockSpliter<=1'b0;
	
			if(hPos>=264-2)
			begin
				hPos<=0;
				
				if(vPos>=628-2)
				begin
				vPos<=0;
				vPixel<=0;
				end else
				begin
					if(vOffset==3)
					begin
						vPixel<=vPixel+1'b1;
						vOffset<=1'b0;
					end else
					begin
						vOffset<=vOffset+1'b1;
					end
					vPos<=vPos+1'b1;
					if(vPos<600)
						PixelPos<=PixelPos+1'b1;
				end
	
			end else
			begin
				
				hPos<=hPos+1'b1;
				if(hPos<200)
					PixelPos<=PixelPos+1'b1;
			end
			if(hPos<200)
			begin
				
				if(vPos<600)
				begin
					
					addressW<=PixelPos;
					currentPixel<=dataW;
				end
			end
				clockSpliter<=1'b0;
				
		end else
		
		begin
		
			clockSpliter<=clockSpliter+1'b1;
		end	
		end
	assign address = addressW;
	assign dataW = data;

	assign R = red;
	assign G = green;
	assign B = blue;
	assign hSync = hSyncR;
	assign vSync = vSyncR;
endmodule