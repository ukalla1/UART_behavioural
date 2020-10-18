`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 08:04:38 AM
// Design Name: 
// Module Name: ff_tb
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


module ff_tb(
    );
    
    reg clk, rst;
    wire clk_2;
    
    integer period = 10;
    
    ff uut(
        .clk(clk),
        .rst(rst),
        .clk_2(clk_2)
    );
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        rst = 1'b1;
        
        #(10*period);
        
        rst = 1'b0;
        
        #(100*period);
        
        $finish;
    end
endmodule
