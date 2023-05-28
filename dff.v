//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 22:08:22
// Design Name: 
// Module Name: dff
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

module dff(i_D,i_clk,i_rst_n,o_Q,o_Qbar);

input wire i_D,i_clk,i_rst_n;
output reg o_Q,o_Qbar;

always @(posedge i_clk,negedge i_rst_n)
begin
    if(!i_rst_n)begin
        o_Q=0;
        o_Qbar=1;
    end
    else begin
        o_Q<=i_D;
        o_Qbar<=~i_D;
    end
end
endmodule
