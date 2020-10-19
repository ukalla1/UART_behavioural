`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 04:38:44 PM
// Design Name: 
// Module Name: uart_top_tb
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


module uart_top_tb #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX_RX = 10417,
    parameter SAMPLECOUNTMAX_TX = 5209,
    parameter RAMDEPTH = 32
);

    reg clk;
    reg rst;
    reg rx_serial_data;
    reg load_tx_data;
    wire tx_serial_data;
    wire o_rx_flag_err;
    wire [6:0] disp;
    wire o_rx_ready;
    wire [7:0] an;
    wire tx_ready;
    
    integer period = 10;
    
    reg flag = 0;
    
    reg [7:0] i, j;
    
    uart_top #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX_RX(SAMPLECOUNTMAX_RX),
        .SAMPLECOUNTMAX_TX(SAMPLECOUNTMAX_TX),
        .RAMDEPTH(RAMDEPTH)
    )uut(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .load_tx_data(load_tx_data),
        .tx_serial_data(tx_serial_data),
        .o_rx_flag_err(o_rx_flag_err),
        .disp(disp),
        .o_rx_ready(o_rx_ready),
        .an(an),
        .tx_ready(tx_ready)
    );
    
    initial begin
        clk = 1'b1;
    end
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        rst = 1'b1;
        load_tx_data = 1'b0;
        rx_serial_data = 1'b1;
        
        #(1000*period);
        
        rst = 1'b0;
        rx_serial_data = 1'b1;
        
        #(1000*period);
        
        fork
        
            for (i=0; i<=8; i = i+1) begin
                rx_serial_data = 1'b0;
                #(SAMPLECOUNTMAX_RX*period);
                for (j=0; j<8; j=j+1) begin
                    rx_serial_data = i[j];
                    #(SAMPLECOUNTMAX_RX*period);
                    if(j == 7) begin
                        rx_serial_data = 1'b1;
                        #(SAMPLECOUNTMAX_RX*period);
                    end
                end
            end
            
            for(i=0; i<=8; i=i+1) begin
                #(16*SAMPLECOUNTMAX_RX*period);
                load_tx_data = 1'b1;
                #(2*period);
                load_tx_data = 1'b0;
                #(SAMPLECOUNTMAX_TX*(period*2));
            end
        
        join
        
        $finish;
        
    end
    
endmodule
