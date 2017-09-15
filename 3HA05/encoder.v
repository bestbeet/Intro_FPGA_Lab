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
module encoder(
    output [2:0] i,
    input [7:0] o
    );

   reg [2:0] so;
   assign i = so;
  

   always @*
       case (i)
            8'b00000001 : so <= 3'b000;
            8'b00000010 : so <= 3'b001;
            8'b00000100 : so <= 3'b010;
            8'b00001000 : so <= 3'b011;
            8'b00010000 : so <= 3'b100;
            8'b00100000 : so <= 3'b101;
            8'b01000000 : so <= 3'b110;
            8'b10000000 : so <= 3'b111;
            default : so <= 8'b00000000;
         endcase
				

endmodule
