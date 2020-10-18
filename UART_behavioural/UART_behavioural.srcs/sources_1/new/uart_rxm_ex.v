`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/13/2020 08:27:16 AM
// Design Name: 
// Module Name: uart_rxm_ex
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


module uart_rxm_ex  #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,              //data + parity (even parity)
    parameter SAMPLECOUNTMAX = 1736                     //200_000_000 / 115200  i.e, clk_freq / baud_rate
)(
    input clk,
    input rst,
    input rx_serial_data,
    output [DATAWIDTH-1:0] rx_parallel_data,
    output flag_err,
    output rx_ready
    );
    
    reg [DATAWIDTH-1:0] rx_shift_reg;                                  //data
    
    reg [DATAWIDTH-1:0] rx_data;
    
    localparam BCWIDTH = 3, SCWIDTH = 14;                             //log(DATAWIDTH), log(SAMPLECOUNTMAX)
    
    reg [BCWIDTH-1:0] bit_count;
    
    reg [SCWIDTH-1:0] sample_count;
    
    reg [2:0] state;
    
    reg flag_err_internal, ready_internal;
    
    localparam idle = 3'b000, starting = 3'b001, receiving = 3'b010, stop = 3'b011;//, check_parity = 3'b100;
    
    assign flag_err = flag_err_internal;
    
    assign rx_ready = ready_internal;
    
    assign rx_parallel_data = rx_data;
    
    always @(posedge clk) begin
        if(rst) begin
            state <= idle;
            ready_internal <= 1'b1;
            flag_err_internal <= 1'b0;
            rx_shift_reg <= {(DATAWIDTH){1'b0}};
            rx_data <= {(DATAWIDTH-1){1'b0}};
            bit_count <= {(BCWIDTH-1){1'b0}};
            sample_count <= {(SCWIDTH-1){1'b0}};
        end
        else begin
            case(state)
                idle: begin
                    bit_count <= {(BCWIDTH-1){1'b0}};
                    sample_count <= {(SCWIDTH-1){1'b0}};
                    flag_err_internal <= 1'b0;
                    ready_internal <= 1'b1;
                    if(!rx_serial_data) begin
                        state <= starting;
                        ready_internal <= 1'b0;
                        sample_count <= sample_count + 1'b1;
                    end
                    else begin
                        state <= idle;
                    end
                end
                
                starting: begin
                    if(sample_count < (SAMPLECOUNTMAX/2)) begin
                        sample_count <= sample_count + 1'b1;
                        state <= starting;
                    end
                    else begin
                        if(!rx_serial_data) begin
                            sample_count <= {(SCWIDTH-1){1'b0}};
                            state <= receiving; 
                        end
                        else begin
                            state <= idle;
                        end
                    end
                end
                
                receiving: begin
                    if (sample_count < SAMPLECOUNTMAX) begin
                        sample_count <= sample_count + 1'b1;
                        state <= receiving;
                    end
                    else begin
                        if (bit_count < BITCOUNTMAX-1) begin
                            sample_count <= {(SCWIDTH-1){1'b0}};
                            rx_shift_reg <= {rx_serial_data, rx_shift_reg[DATAWIDTH-1:1]};
                            bit_count <= bit_count + 1'b1;
                            state <= receiving;
                        end
                        else begin
                            rx_shift_reg <= {rx_serial_data, rx_shift_reg[DATAWIDTH-1:1]};
                            sample_count <= {(SCWIDTH-1){1'b0}};
                            bit_count <= {(BCWIDTH-1){1'b0}};
                            state <= stop;
                        end
                    end
                end
                
                stop: begin
                    if (sample_count < SAMPLECOUNTMAX/2) begin
                        sample_count <= sample_count + 1'b1;
                        state <= stop;
                    end
                    else begin
                        if (rx_serial_data) begin
                            rx_data <= rx_shift_reg[DATAWIDTH-1:0];
                            state = idle;
                        end
                        else begin
                            flag_err_internal <= 1'b1;
                            state = idle;
                        end
                    end
                end
                
                default: begin
                    state <= idle;
                end
                
            endcase
        end
    end
    
endmodule
