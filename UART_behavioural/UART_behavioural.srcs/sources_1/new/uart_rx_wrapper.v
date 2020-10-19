`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/13/2020 01:40:58 PM
// Design Name: 
// Module Name: uart_rx_wrapper
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


module uart_rx_wrapper  #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX = 10417                     
)(
    input clk,
    input rst,
    input rx_serial_data,
    output [DATAWIDTH-1:0] o_rx_parallel_data,
    output ram_en,
    output reg [6:0] disp,
    output reg o_flag_err,
    output reg o_rx_ready,
    output reg [7:0] an
    );
    
    wire [DATAWIDTH-1:0] rx_parallel_data;
    
    wire flag_err, rx_ready;
    
    wire [6:0] disp0, disp1;
    
    reg [19:0] cnt;
    
    wire an_i0, an_i1;
    
    uart_rxm_ex #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX)
    )rx(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .ram_en(ram_en),
        .rx_parallel_data(rx_parallel_data),
        .flag_err(flag_err),
        .rx_ready(rx_ready)
    );
    
    seven_seg ln(
        .clk(clk),
        .rst(rst),
        .num(rx_parallel_data[3:0]),
        .disp(disp0)
    );
    
    seven_seg un(
        .clk(clk),
        .rst(rst),
        .num(rx_parallel_data[7:4]),
        .disp(disp1)
    );
    
    assign o_rx_parallel_data = rx_parallel_data;
    
    assign an_i0 = cnt[18];
    
    assign an_i1 = cnt[19];
    
    always @(posedge clk) begin
        if(rst) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt + 1'b1;
        end
        
        an[7:2] <= 6'b111_111;
        
        case({an_i0,an_i1})
            2'b10: begin
                an[0] <= 1'b1;
                an[1] <= 1'b0;
                disp <= disp1;
            end
            2'b11: begin
                an[1] <= 1'b1;
                an[0] <= 1'b0;
                disp <= disp0;
            end
        endcase
        
        o_rx_ready <= rx_ready;
        
        o_flag_err <= flag_err;
    end
    
endmodule
