`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/19/2020 08:31:46 AM
// Design Name: 
// Module Name: ram_manchDec_rx
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


module ram_manchDec_rx #(
    parameter counter_max = 20,
    parameter half_counter_max = 10,
    parameter DATA_WIDTH = 1,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = "",
    parameter ADDRS_WIDTH = clogb2(RAM_DEPTH-1)
)(
    input rst,
    input clk_20x,
    input manch_decode_input,
    input clk,
    input enb,
    output [DATA_WIDTH-1:0] doutb
    );
    
    wire decoder_out, flag;
    
    wire [DATA_WIDTH-1:0] parallel_out;
    
    reg [ADDRS_WIDTH-1:0] addra, addrb;
    
    manch_decoder #(
        .counter_max(counter_max),
        .half_counter_max(half_counter_max)
    )manch_decoder(
        .rst(rst),
        .clk_20x(clk_20x),
        .manch_decode_input(manch_decode_input),
        .dout(decoder_out),
        .parallel_out(parallel_out),
        .flag(flag)
    );
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )ram_tx(
        .clk(clk),
        .wea(flag),
        .enb(enb),
        .addra(addra),
        .addrb(addrb),
        .dina(decoder_out),
        .doutb(doutb)
    );
    
    always @(posedge clk) begin
        if(rst) begin
           addra <= {(ADDRS_WIDTH){1'b0}};
           addrb <= {(ADDRS_WIDTH){1'b0}};
        end
        else begin
            if(flag) begin
                addra <= addra + 1'b1;
            end
            
            if(enb) begin
                addrb <= addrb + 1'b1;
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
