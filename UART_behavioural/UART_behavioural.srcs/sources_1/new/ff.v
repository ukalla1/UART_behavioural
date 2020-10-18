`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/15/2020 08:01:56 AM
// Design Name: 
// Module Name: ff
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


module ff(
    input clk,
    output clk_2
    );
    
    reg q = 0;
    
    wire d, qb;
    
    assign d = qb;
    
    assign qb = ~q;
    
    assign clk_2 = q;
    
    always @(posedge clk) begin
        q <= d;
    end
endmodule
