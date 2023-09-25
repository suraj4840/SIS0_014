TB_code:


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2023 09:55:47 AM
// Design Name: 
// Module Name: siso_shift_reg_tb
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


module siso_shift_reg_tb();
reg clk,rst,in;
wire [2:0] q;
wire Q;

siso_shift_reg dut(clk,rst,in,Q);

initial 
begin
    clk=1'b0;
    rst=1'b1;
   // in= 1'b0;
    #10
    rst=1'b0;
end  
 always #5 clk = ~clk;
 
 
initial 
begin 
   in =1'b0;
   #15
   in=1'b1;
   #10
   in=1'b0;
   #10
   in=1'b1;
   #10
   in=1'b0;
   #200
   $finish;
end

endmodule



