timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 09:46:48 AM
// Design Name: 
// Module Name: D_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_ff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always @(posedge clk,posedge rst)
begin
      if(rst)
          q<= 1'b0;
      else 
          q<=d;
end 
             
endmodule

