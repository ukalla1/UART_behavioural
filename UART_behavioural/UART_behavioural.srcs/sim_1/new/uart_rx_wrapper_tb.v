`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/13/2020 05:32:19 PM
// Design Name: 
// Module Name: uart_rx_wrapper_tb
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


module uart_rx_wrapper_tb#(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,              //data + parity (even parity)
    parameter SAMPLECOUNTMAX = 10417                     //200_000_000 / 115200  i.e, clk_freq / baud_rate
)(
    );
    
    reg clk;
    reg rst;
    reg rx_serial_data;
    reg [DATAWIDTH-1:0] data;
    wire [DATAWIDTH-1:0] o_rx_parallel_data;
    wire [6:0] disp;
    wire o_flag_err;
    wire o_rx_ready;
    
    integer period = 10, i;
    
    uart_rx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX)
    )uut(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .disp(disp),
        .o_rx_parallel_data(o_rx_parallel_data),
        .o_flag_err(o_flag_err),
        .o_rx_ready(o_rx_ready)
    );
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        rst = 1'b1;
        rx_serial_data = 1'b0;
        
        #(1000*period);
        
        rst = 1'b0;
        rx_serial_data = 1'b1;
        
        #(1000*period);
        
        rx_serial_data = 1'b0;
        
        #(SAMPLECOUNTMAX*period);
        
        data = 8'h61;
        
        for (i=0; i<DATAWIDTH; i=i+1) begin
            rx_serial_data = data[i];
            #(SAMPLECOUNTMAX*period);
        end
        
        rx_serial_data = 1'b1;
        
        #(10000*period);
        
        rx_serial_data = 1'b0;
        
        #((SAMPLECOUNTMAX)*period);
        
        data = 8'b00011011;
        
        for (i=0; i<DATAWIDTH; i=i+1) begin
            rx_serial_data = data[i];
            #(SAMPLECOUNTMAX*period);
        end
        
        rx_serial_data = 1'b1;
        
        #(10000*period);
        $finish;
    end
endmodule
