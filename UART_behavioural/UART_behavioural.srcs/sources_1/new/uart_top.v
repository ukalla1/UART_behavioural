`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 03:58:57 PM
// Design Name: 
// Module Name: uart_top
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


module uart_top #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX_RX = 10417,
    parameter SAMPLECOUNTMAX_TX = 5209,
    parameter RAMDEPTH = 32,
    parameter ADDRS_WIDTH = clogb2(RAMDEPTH-1)
)(
    input clk,
    input rst,
    input rx_serial_data,
    input load_tx_data,
    output tx_serial_data,
    output o_rx_flag_err,
    output [6:0] disp,
    output o_rx_ready,
    output [7:0] an,
    output tx_ready
    );
    
    wire [DATAWIDTH-1:0] o_rx_parallel_data, tx_parallel_data;
    
    wire wea, enb;
    
    reg [ADDRS_WIDTH-1:0] ram_addra, ram_addrb;
    
    uart_rx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX_RX)
    )rx(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .o_rx_parallel_data(o_rx_parallel_data),
        .ram_en(wea),
        .disp(disp),
        .o_flag_err(o_rx_flag_err),
        .o_rx_ready(o_rx_ready),
        .an(an)
    );
    
    ram_dp__sim_par #(
        .DATAWIDTH(DATAWIDTH),
        .RAMDEPTH(RAMDEPTH),
        .INIT_FILE(""),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )ram(
        .clk(clk),
        .wea(wea),
        .enb(enb),
        .dina(o_rx_parallel_data),
        .addra(ram_addra),
        .addrb(ram_addrb),
        .doutb(tx_parallel_data)
    );
    
    uart_tx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX_TX)
    )tx(
        .clk(clk),
        .rst(rst),
        .tx_data_load(load_tx_data),
        .tx_parallel_data(tx_parallel_data),
        .tx_serial_data(tx_serial_data),
        .tx_ready(tx_ready)
    );
    
    assign enb = load_tx_data & tx_ready;
    
    always @(posedge clk) begin
        if (rst) begin
            ram_addra <= {ADDRS_WIDTH-1{1'b0}};
            ram_addrb <= {ADDRS_WIDTH-1{1'b0}};
        end
        else begin
            if(wea) begin
                ram_addra <= ram_addra + 1'b1;
            end
            
            if(enb && (o_rx_parallel_data != {DATAWIDTH{1'b1}})) begin
                ram_addrb <= ram_addrb + 1'b1;
            end
        end
    end
    
    function integer clogb2;
        input integer depth;
        for (clogb2=0; depth>0; clogb2=clogb2+1) begin
            depth = depth >> 1;
        end
    endfunction
    
endmodule
