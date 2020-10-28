module gpc_cpu (data, address, clk, rw);
	output [15:0]address;
	output rw;
	input clk;
	inout [7:0]data;
	
	reg EQFlag;
	reg ZeroFlag;
	reg CarryFlag;
	reg CompareFlag;
	reg regRw;

	reg[3:0] StepCounter;
	wire[7:0] MemoryOut;
	reg[7:0] MemoryBuffer;
	wire[7:0] dataW;
	reg[7:0] dataReg;
	reg[7:0] A_Register;
	reg[7:0] B_Register;
	reg[7:0] SUM_Register;
	reg[7:0] OR_Register;
	reg[7:0] NOT_Register;
	reg[7:0] AND_Register;
	reg[7:0] XOR_Register;
	reg[7:0] SL_Register;
	reg[7:0] SR_Register;
	reg[7:0] INST_Register;
	reg[15:0] X_Register;
	reg[15:0] Y_Register;	
	reg[15:0] MemoryPointer;
	reg[15:0] StackPointer;
	
	initial begin
		MemoryPointer<=16'b0;
		X_Register<=16'b0;
		StackPointer<=16'b0;
		A_Register<=8'b0;
		B_Register<=8'b0;
		ZeroFlag<=1'b0;
		EQFlag<=1'b0;
		CarryFlag<=1'b0;
		StepCounter<=3'b0;
		regRw<=1'b0;
	end
	
	
	
	always @ (posedge clk)
	begin
		//UpdateRegisters
		OR_Register<=A_Register|B_Register;
		AND_Register<=A_Register&B_Register;
		XOR_Register<=A_Register^B_Register;
		SUM_Register<=A_Register+B_Register;
		NOT_Register<=~A_Register;
		ZeroFlag<=A_Register==8'b00000000;
		
		SL_Register<=A_Register<<1;
		SR_Register<=A_Register>>1;
		StepCounter=StepCounter+1'b1;
		if(A_Register==B_Register)
			EQFlag=1'b01;
		else
			EQFlag=1'b00;
		dataReg<=dataW;
		if(StepCounter<3)
		begin
			if(StepCounter==1)
				regRw<=1'b0;
			else
				INST_Register=dataReg;
		end else 
		case(INST_Register)
		
//NO Operation
		
			8'h00:	begin												//NOP
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
		
//MemoryOperations 0x01-0x0F
		
			8'h01:	case(StepCounter)								//LDA
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							7:	MemoryPointer<=X_Register;
							8:	A_Register<=dataReg;
							default:	begin
											MemoryPointer<=Y_Register;
											StepCounter<=1'b0;	
										end
						endcase
			8'h02:	case(StepCounter)								//LDA(IMM)
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4: A_Register<=dataReg;
							default: begin
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
			8'h03:	case(StepCounter)								//LDB
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							7:	MemoryPointer<=X_Register;
							8:	B_Register<=dataReg;
							default:	begin
											MemoryPointer<=Y_Register;
											StepCounter<=1'b0;	
										end
						endcase
			8'h04:	case(StepCounter)								//LDB(IMM)
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4: B_Register<=dataReg;
							default: begin
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase						
			8'h05:	case(StepCounter)								//STA
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=A_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
			8'h06:	case(StepCounter)								//STB
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=A_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
			
//Arithmetic Operations 0x10-0x2F		
			
			8'h10:	begin												//ADD
							A_Register<=SUM_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h11:	case(StepCounter)								//ADD
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=SUM_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase	
			8'h12:	begin	
						case(StepCounter)				//ADC
							3: {CarryFlag,SUM_Register}<={1'b0,A_Register} + {1'b0,B_Register};
							4: begin
									A_Register<=SUM_Register;
									MemoryPointer<=MemoryPointer+1'b1;
									StepCounter<=1'b0;
								end
						endcase
						end
			8'h13:	case(StepCounter)								//ADC
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									{CarryFlag,SUM_Register}<={1'b0,A_Register} + {1'b0,B_Register};
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=SUM_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase			
			8'h14:	begin												//OR
							A_Register=OR_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h15:	case(StepCounter)								//OR
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=OR_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase						
			8'h16:	begin												//AND
							A_Register=AND_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h17:	case(StepCounter)								//AND
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=AND_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase				
			8'h18:	begin												//NOT
							A_Register=NOT_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h19:	case(StepCounter)								//NOT
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=SUM_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase						
			8'h1a:	begin												//XOR
							A_Register=XOR_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h1b:	case(StepCounter)								//XOR
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=XOR_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
			8'h1c:	begin												//SL
							A_Register=SL_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h1d:	case(StepCounter)								//SL
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=SL_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
			8'h1e:	begin												//SR
							A_Register=SR_Register;
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end
			8'h1f:	case(StepCounter)								//SR
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5: MemoryPointer<=MemoryPointer+1'b1;
							6:	begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;									
								end
							7:	begin
									MemoryPointer<=X_Register;
									regRw=1'b1;
								end
							8:	MemoryBuffer<=SR_Register;
							default: begin
											regRw=1'b0;
											MemoryPointer<=MemoryPointer+1'b1;
											StepCounter<=1'b0;
										end
						endcase
						
			8'h20:	begin
							CompareFlag<=A_Register>B_Register;
							MemoryPointer<=X_Register;
							StepCounter<=1'b0;
						end
//Branching Instructions 0x30-0x3F
			
			8'h30: 	case(StepCounter)								//JMP
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
			8'h31:	if(ZeroFlag==1'b0)							//JZE
						begin
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end else
						begin
							case(StepCounter)								
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
						
						end
			8'h32:	if(CarryFlag==1'b0)							//JCA
						begin
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end else
						begin
							case(StepCounter)								
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
						
						end
			8'h33:	if(EQFlag==1'b0)							//JEQ
						begin
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end else
						begin
							case(StepCounter)								
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
						
						end
			8'h34:	if(EQFlag==1'b1)							//JNE
						begin
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end else
						begin
							case(StepCounter)								
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
						
						end
			8'h35: 	case(StepCounter)								//JSR
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							7: begin
									MemoryPointer=StackPointer;
									regRw=1'b1;
								end
							8: begin
									StackPointer<=StackPointer-1'b1;
									MemoryBuffer<=Y_Register>>8;
								end
							9:	MemoryPointer<=StackPointer;
							10:	MemoryBuffer<=Y_Register&16'h0000FFFF;	
							default:	begin
											regRw=1'b0;
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
			8'h36:	case(StepCounter)									//RSR
							3:	StackPointer<=StackPointer + 1'b1;
							4:	MemoryPointer<=StackPointer;
							5: Y_Register<=dataReg;
							6:	StackPointer<=StackPointer + 1'b1;
							7: MemoryPointer<=StackPointer;
							8: Y_Register<=Y_Register+(dataReg<<8);
							default:	begin
											MemoryPointer<=Y_Register;
											StepCounter<=1'b0;
										end							
						endcase
			8'h37:	if(CompareFlag==1'b0)							//JCM
						begin
							MemoryPointer<=MemoryPointer+1'b1;
							StepCounter<=1'b0;
						end else
						begin
							case(StepCounter)								
							3:	MemoryPointer<=MemoryPointer+1'b1;
							4:	X_Register<=dataReg<<8;
							5:	MemoryPointer<=MemoryPointer+1'b1;
							6: begin
									Y_Register<=MemoryPointer;
									X_Register<=X_Register+dataReg;
								end 
							default:	begin
											MemoryPointer<=X_Register;
											StepCounter<=1'b0;
										end
						endcase
						
						end
		endcase
	end	
	assign MemoryOut = MemoryPointer;
	assign data = regRw ? MemoryBuffer:8'bZ;
	assign dataW = data;
	assign address = MemoryOut;
	assign rw=regRw;

endmodule





