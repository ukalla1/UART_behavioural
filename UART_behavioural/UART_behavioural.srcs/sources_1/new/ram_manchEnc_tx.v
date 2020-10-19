`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/19/2020 08:11:27 AM
// Design Name: 
// Module Name: ram_manchEnc_tx
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


module ram_manchEnc_tx #(
    parameter N = 9,
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = "",
    parameter ADDRS_WIDTH = clogb2(RAM_DEPTH-1)
)(
    input clk,
    input rst,
    input wea,
    input [DATA_WIDTH-1:0] dina,
    input clk_2x,
//    input clk_1x,
    input go,
    output enc_ser_out
    );
    
    reg [ADDRS_WIDTH-1:0] addra, addrb;
    
    wire done;
    
    wire [DATA_WIDTH-1:0] mem_out;
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )ram_tx(
        .clk(clk),
        .wea(wea),
        .enb(done),
        .dina(dina),
        .addra(addra),
        .addrb(addrb),
        .doutb(mem_out)
    );
    
    Manch_Enc_clk2_clk1 #(
        .N(DATA_WIDTH)
    )manch_encoder(
        .clk_2x(clk_2x),
//        .clk_1x(clk_1x),
        .go(go),
        .data_sample_new(mem_out),
        .enc_ser_out(enc_ser_out),
        .done(done)
    );
    
    always @(posedge clk) begin
        if(rst) begin
           addra <= {(ADDRS_WIDTH){1'b0}};
           addrb <= {(ADDRS_WIDTH){1'b0}};
        end
        else begin
            if(wea) begin
                addra <= addra + 1'b1;
            end
            
            if(done) begin
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
