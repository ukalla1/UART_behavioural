`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/13/2020 10:54:40 AM
// Design Name: 
// Module Name: uart_rx_ex_tb
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


module uart_rx_ex_tb #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,              //data + parity (even parity)
    parameter SAMPLECOUNTMAX = 1736                     //200_000_000 / 115200  i.e, clk_freq / baud_rate
)(
    );
    
    reg clk;
    reg rst;
    reg rx_serial_data;
    reg [DATAWIDTH-1:0] data;
    wire [DATAWIDTH-1:0] rx_parallel_data;
    wire flag_err;
    wire rx_ready;
    
    integer period = 10, i;
    
    uart_rxm_ex #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX)
    )uut(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .rx_parallel_data(rx_parallel_data),
        .flag_err(flag_err),
        .rx_ready(rx_ready)
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
        
        #(1736*period);
        
        data = 8'b10010011;
        
        for (i=0; i<DATAWIDTH; i=i+1) begin
            rx_serial_data = data[i];
            #(1736*period);
        end
        
//        rx_serial_data = 1'b0;
        
//        #(1736*period);
        
//        rx_serial_data = 1'b1;
        
//        #(1736*period);
        
        rx_serial_data = 1'b1;
        
        #(10000*period);
        $finish;
    end
    
endmodule
