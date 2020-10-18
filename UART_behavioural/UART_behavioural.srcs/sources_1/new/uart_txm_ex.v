`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/14/2020 07:24:11 PM
// Design Name: 
// Module Name: uart_txm_ex
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


module uart_txm_ex #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX = 868
)(
    input clk,
    input rst,
    input [DATAWIDTH-1:0] tx_parallel_data,
    input tx_data_load,
    output tx_serial_data,
    output tx_ready
    );
    
    reg [DATAWIDTH-1:0] tx_shift_reg;
    
    reg [DATAWIDTH-1:0] tx_reg;
    
    reg tx_serial_data_internal, ready_internal;
    
    localparam BCWIDTH = 3, SCWIDTH = 13;
    
    reg [BCWIDTH-1:0] bit_count;
    
    reg [SCWIDTH-1:0] sample_count;
    
    reg [1:0] state;
    
    localparam idle = 2'b00, tx_start = 2'b01, tx_data = 2'b10, stop = 2'b11;
    
    assign tx_serial_data = tx_serial_data_internal;
    
    assign tx_ready = ready_internal;
    
    always @(posedge clk) begin
        if(rst) begin
            state <= idle;
            ready_internal <= 1'b1;
            tx_shift_reg <= {(DATAWIDTH){1'b1}};
            tx_reg <= {(DATAWIDTH){1'b0}};
            tx_serial_data_internal <= 1'b1;
            bit_count <= {(BCWIDTH){1'b0}};
            sample_count <= {(SCWIDTH){1'b0}};
        end
        else begin
            case(state)
                idle: begin
                    tx_serial_data_internal <= 1'b1;
                    tx_shift_reg <= {(DATAWIDTH){1'b1}};
                    bit_count <= {(BCWIDTH){1'b0}};
                    sample_count <= {(SCWIDTH){1'b0}};
                    if(tx_data_load) begin
                        tx_reg <= tx_parallel_data;
                        state <= tx_start;
                        ready_internal <= 1'b0;
                    end
                    else begin
                        tx_reg <= {(DATAWIDTH){1'b0}};
                        ready_internal <= 1'b1;
                        state <= idle;
                    end
                end
                
                tx_start: begin
                    tx_serial_data_internal <= 1'b0;
                    if(sample_count < SAMPLECOUNTMAX) begin
                        sample_count <= sample_count + 1'b1;
                        state <= tx_start;
                    end
                    else begin
                        tx_shift_reg <= tx_reg;
                        sample_count <= {(SCWIDTH){1'b0}};
                        state <= tx_data;
                    end
                end
                
                tx_data: begin
                    tx_serial_data_internal <= tx_shift_reg[0];
                    if(bit_count < BITCOUNTMAX-1) begin
                        if(sample_count < SAMPLECOUNTMAX) begin
                            sample_count <= sample_count + 1'b1;
                            state <= tx_data;
                        end
                        else begin
                            sample_count <= {(SCWIDTH){1'b0}};
                            bit_count <= bit_count + 1'b1;
                            tx_shift_reg <= {1'b1, tx_shift_reg[DATAWIDTH-1:1]};
                            state <= tx_data;
                        end
                    end
                    else begin
                        if(sample_count == 0) begin
                            sample_count <= sample_count + 1'b1;
                            state <= tx_data;
                        end
                        else if (sample_count < SAMPLECOUNTMAX) begin
                            sample_count <= sample_count + 1'b1;
                            state <= tx_data;
                        end
                        else begin
                            tx_shift_reg <= {1'b1, tx_shift_reg[DATAWIDTH-1:1]};
                            bit_count <= {(BCWIDTH){1'b0}};
                            sample_count <= {(SCWIDTH){1'b0}};
                            state <= stop;
                        end
                    end
                end
                
                stop: begin
                    if(sample_count < SAMPLECOUNTMAX) begin
                        tx_serial_data_internal <= 1'b1;
                        sample_count <= sample_count + 1'b1;
                        state <= stop;
                    end
                    else begin
                        ready_internal <= 1'b1;
                        state <= idle;
                    end
                end
                
            endcase
        end
    end
    
endmodule
