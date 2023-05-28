//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 22:15:45
// Design Name: 
// Module Name: dff_tb
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

`timescale 1ns / 1ns
`default_nettype none

module dff_tb();
reg i_D,i_clk,i_rst_n;
wire o_Q,o_Qbar;
dff D1(i_D,i_clk,i_rst_n,o_Q,o_Qbar);

initial begin
    i_clk=0;
    forever #20 i_clk = ~i_clk;
end
initial begin
    i_rst_n=0; i_D =0; 
    #5 i_rst_n=1; 
    #15 i_D =1; 
    #35 i_rst_n=0; 
    #10 i_rst_n=1; 
    #20 i_D =0;
    #10 $finish;
end
endmodule