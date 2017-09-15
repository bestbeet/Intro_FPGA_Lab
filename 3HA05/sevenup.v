`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:59 10/18/2016 
// Design Name: 
// Module Name:    decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sevenup(
	 input clk,
	 input mode,
    output com,
	 output [6:0] segment
    );
	reg [3:0] tmp = 4'b0000;
   reg [31:0] tmp_div;
	reg sclk;
	reg [6:0] so;
	assign segment = so;
   assign com = 0;	 
	always @(posedge sclk)
      begin
		if(mode == 0) 
			tmp <= tmp+1; 
		else 
			tmp<= tmp-1; 
		end 
	always @(posedge clk)
		begin
			 if(tmp_div == 25000000)
				begin sclk <= 1; tmp_div <=0; end
			 else begin sclk <=0; tmp_div <= tmp_div +1; end
		end

   always @*
       case (tmp)
            4'b0000  : so <= 7'b0111111;
            4'b0001  : so <= 7'b0000110;
				4'b0010  : so <= 7'b1011011;
				4'b0011  : so <= 7'b1001111;
				4'b0100  : so <= 7'b1100110;
				4'b0101  : so <= 7'b1101101;
				4'b0110  : so <= 7'b1111101;
				4'b0111  : so <= 7'b0000111;
				4'b1000  : so <= 7'b1111111;
				4'b1001  : so <= 7'b1101111;
				4'b1010  : so <= 7'b1110111;
				4'b1011  : so <= 7'b1111100;
				4'b1100  : so <= 7'b1011000;
				4'b1101  : so <= 7'b1011110;
				4'b1110  : so <= 7'b1111001;
				4'b1111  : so <= 7'b1110001;
         endcase
				

endmodule
