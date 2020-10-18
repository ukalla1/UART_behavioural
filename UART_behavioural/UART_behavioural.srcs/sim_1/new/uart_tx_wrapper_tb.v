`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 08:37:29 AM
// Design Name: 
// Module Name: uart_tx_wrapper_tb
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


module uart_tx_wrapper_tb #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX = 5209
)(
    );
    
    reg clk;
    reg rst;
    reg [DATAWIDTH-1:0] tx_parallel_data;
    reg tx_data_load;
    wire tx_serial_data;
    wire tx_ready;
    
    integer period = 10;
    
    uart_tx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX)
    )uut(
        .clk(clk),
        .rst(rst),
        .tx_parallel_data(tx_parallel_data),
        .tx_data_load(tx_data_load),
        .tx_serial_data(tx_serial_data),
        .tx_ready(tx_ready)
    );
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        rst = 1'b1;
        tx_parallel_data = 8'b0100_0001;
        tx_data_load = 1'b1;
        
        #(500*period);
        tx_data_load = 1'b0;
        
        #(500*period);
        rst = 1'b0;
        
        #(500*period);
        tx_parallel_data = 8'b0101_0101;
        tx_data_load = 1'b1;
        
        #(500*period);
        tx_data_load = 1'b0;
        tx_parallel_data = 8'b0100_0001;
        
        #((SAMPLECOUNTMAX*20)*period);
        $finish;
    end
    
endmodule

