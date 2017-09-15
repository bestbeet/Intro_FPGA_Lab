`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:34 10/18/2016 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    output [3:0] o
    );
	 
   reg [3:0] tmp = 4'b0000;
   reg [31:0] tmp_div;
	reg sclk;
	assign o = tmp;
	always @(posedge sclk)
      tmp <= tmp + 1;
	always @(posedge clk)
		begin
			 if(tmp_div == 25000000)
				begin sclk <= 1; tmp_div <=0; end
			 else begin sclk <=0; tmp_div <= tmp_div +1; end
		end
endmodule
