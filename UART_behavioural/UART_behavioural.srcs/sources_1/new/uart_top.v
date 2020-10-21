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
    input rx_on,
    input tx_on,
    output o_rx_flag_err,
    output tx_serial_data
    );
    
    wire rx_ready, tx_ready;
    
    wire [DATAWIDTH-1:0] o_rx_parallel_data, mem_out;
    
    reg rx_serial_data_internal;
    
    reg wea, enb, tx_data_load;
    
    reg [ADDRS_WIDTH-1:0] ram_addra, ram_addrb;
    
    reg [2:0] state;
    
    localparam idle = 3'b000, rx_data = 3'b001, mem_write = 3'b010, rx_stop = 3'b011, mem_read = 3'b100, tx_data = 3'b101;//, tx_stop = 3'b110;
    
    uart_rx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX_RX)
    )rx(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data_internal),
        .o_rx_parallel_data(o_rx_parallel_data),
        .o_flag_err(o_rx_flag_err),
        .o_rx_ready(rx_ready)
    );
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATAWIDTH),
        .RAM_DEPTH(RAMDEPTH),
        .INIT_FILE(""),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )ram(
        .clk(clk),
        .wea(wea),
        .enb(enb),
        .dina(o_rx_parallel_data),
        .addra(ram_addra),
        .addrb(ram_addrb),
        .doutb(mem_out));
        
    uart_tx_wrapper #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX(SAMPLECOUNTMAX_TX)
    )tx(
        .clk(clk),
        .rst(rst),
        .tx_data_load(tx_data_load),
        .tx_parallel_data(mem_out),
        .tx_serial_data(tx_serial_data),
        .tx_ready(tx_ready)
    );
        
        always @(posedge clk) begin
            if(rst) begin
                state <= idle;
                wea <= 1'b0;
                enb <= 1'b0;
                rx_serial_data_internal <= 1'b1;
                ram_addra <= {ADDRS_WIDTH{1'b0}};
                ram_addrb <= {ADDRS_WIDTH{1'b0}};
                tx_data_load <= 1'b0;
            end
            else begin
                case(state)
                    
                    idle: begin
                        if(rx_on) begin
                            if(rx_ready) begin
                                rx_serial_data_internal <= rx_serial_data;
                                if(!rx_serial_data) begin
                                    state <= rx_data;
                                end
                                else begin
                                    state <= idle;
                                end
                            end
                            else begin
                                state <= idle;
                            end
                        end
                        else if(tx_on) begin
                            if(tx_ready) begin
                                enb <= 1'b1;
                                tx_data_load <= 1'b1;
                                state <= mem_read;
                            end
                            else begin
                                state <= idle;
                            end
                        end
                        else begin
                            state <= idle;
                        end
                    end
                    
                    mem_read: begin
                        enb <= 1'b0;
                        ram_addrb <= ram_addrb + 1'b1;
                        state <= tx_data;
                    end
                    
                    tx_data: begin
                        tx_data_load <= 1'b0;
                        if(tx_ready) begin
                            state <= idle;
                        end
                        else begin
                            state <= tx_data;
                        end
                    end
                    
                    rx_data: begin
                        rx_serial_data_internal <= rx_serial_data;
                        state <= mem_write;
                    end
                    
                    mem_write: begin
                        if(!rx_ready) begin
                            state <= rx_data;
                        end
                        else begin
                            wea <= 1'b1;
                            state <= rx_stop;
                        end
                    end
                    
                    rx_stop: begin
                        wea <= 1'b0;
                        ram_addra <= ram_addra + 1'b1;
                        state <= idle;
                    end 
                endcase
            end
        end
    
    function integer clogb2;
        input integer depth;
        integer result;
        begin
            result = depth;
            for (clogb2=0; result>0; clogb2=clogb2+1) begin
                result = result >> 1;
            end
        end
    endfunction
    
endmodule
