
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 09:46:48 AM
// Design Name: 
// Module Name: siso_shift_reg
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


module siso_shift_reg(clk,rst,in,Q);
input clk,rst,in;
output  Q;
wire [2:0] q;

D_ff d1(clk,rst,in,q[0]);
D_ff d2(clk,rst,q[0],q[1]);
D_ff d3(clk,rst,q[1],q[2]);
D_ff d4(clk,rst,q[2],Q);



endmodule
