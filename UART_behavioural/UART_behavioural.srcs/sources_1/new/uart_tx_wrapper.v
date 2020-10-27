`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/15/2020 08:32:29 AM
// Design Name: 
// Module Name: uart_tx_wrapper
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


module uart_tx_wrapper #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX = 5209
)(
    input clk,
    input rst,
    input [DATAWIDTH-1:0] tx_parallel_data,
    input tx_data_load,
    output tx_serial_data,
    output tx_ready
    );
    
    wire clk_2;
    
    wire tx_serial_data_int;
    
    wire tx_ready_int;
    
    reg [DATAWIDTH-1:0] tx_parallel_data_c0_0, tx_parallel_data_c1_0, tx_parallel_data_c1_1;
    
    reg tx_data_load_c0_0, tx_data_load_c1_0, tx_data_load_c1_1, tx_ready_c0_0, tx_ready_c1_0, tx_ready_c0_1, tx_serial_data_c0_0, tx_serial_data_c1_0, tx_serial_data_c0_1;
    
    ff clk_div(
        .clk(clk),
        .clk_2(clk_2)
    );
    
    assign tx_serial_data = tx_serial_data_c0_0;
    
    assign tx_ready = tx_ready_c0_0;
    
    always @(posedge clk_2) begin
        if(rst) begin
            tx_parallel_data_c1_0 <= {DATAWIDTH{1'b0}};
            tx_data_load_c1_0 <= 1'b0;
            
            tx_serial_data_c1_0 <= 1'b1;
            tx_ready_c1_0 <= 1'b1;
        end
        else begin
            tx_parallel_data_c1_0 <= tx_parallel_data_c0_0;
            tx_data_load_c1_0 <= tx_data_load_c0_0;
            
            tx_serial_data_c1_0 <= tx_serial_data_int;
            tx_ready_c1_0 <= tx_ready_int;
        end
        tx_parallel_data_c1_1 <= tx_parallel_data_c1_0;
        tx_data_load_c1_1 <= tx_data_load_c1_0;
        
//        tx_serial_data_c1_1 <= tx_serial_data_c1_0;
//        tx_ready_c1_1 <= tx_ready_c1_0;
    end
    
    always @(posedge clk) begin
        if(rst) begin
            tx_parallel_data_c0_0 <= {DATAWIDTH{1'b0}};
            tx_data_load_c0_0 <= 1'b0;
            
            tx_serial_data_c0_1 <= 1'b1;
            tx_ready_c0_1 <= 1'b1;
        end
        else begin
            tx_parallel_data_c0_0 <= tx_parallel_data;
            tx_data_load_c0_0 <= tx_data_load;
            
            tx_serial_data_c0_1 <= tx_serial_data_c1_0;
            tx_ready_c0_1 <= tx_ready_c1_0;
        end
        tx_serial_data_c0_0 <= tx_serial_data_c0_1;
        tx_ready_c0_0 <= tx_ready_c0_1;
    end
    
    uart_txm_ex #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX)
    )tx(
        .clk(clk_2),
        .rst(rst),
        .tx_parallel_data(tx_parallel_data_c1_1),
        .tx_data_load(tx_data_load_c1_1),
        .tx_serial_data(tx_serial_data_int),
        .tx_ready(tx_ready_int)
    );
endmodule
