`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 08:22:25 PM
// Design Name: 
// Module Name: ram_top
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


module ram_top #(
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = "",
    parameter ADDRS_WIDTH = clogb2(RAM_DEPTH-1)
)(
    input clk,
    input rst,
    input wea_m1,
    input enb_m1,
    input enb_m2,
    input [DATA_WIDTH-1:0] dina_m1,
    output [DATA_WIDTH-1:0] doutb_m2
    );
    
    reg [ADDRS_WIDTH-1:0] addra_m1, addrb_m1, addra_m2, addrb_m2;
    
    wire [DATA_WIDTH-1:0] mem_out_m1;
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )mem1(
        .clk(clk),
        .wea(wea_m1),
        .enb(enb_m1),
        .dina(dina_m1),
        .addra(addra_m1),
        .addrb(addrb_m1),
        .doutb(mem_out_m1)
    );
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE),
        .ADDRS_WIDTH(ADDRS_WIDTH)
    )mem2(
        .clk(clk),
        .wea(enb_m1),
        .enb(enb_m2),
        .dina(mem_out_m1),
        .addra(addra_m2),
        .addrb(addrb_m2),
        .doutb(doutb_m2)
    );
    
    always @(posedge clk) begin
        if(rst) begin
            addra_m1 <= {(ADDRS_WIDTH){1'b0}};
            addrb_m1 <= {(ADDRS_WIDTH){1'b0}};
        end
        else begin
            if(wea_m1) begin
                addra_m1 <= addra_m1 + 1'b1;
            end
            
            if(enb_m1) begin
                addrb_m1 <= addrb_m1 + 1'b1; 
            end
        end
    end
    
    always @(posedge clk) begin
        if(rst) begin
            addra_m2 <= {(ADDRS_WIDTH){1'b0}};
            addrb_m2 <= {(ADDRS_WIDTH){1'b0}};
        end
        else begin
            if(enb_m1) begin
                addra_m2 <= addra_m2 + 1'b1;
            end
            
            if(enb_m2) begin
                addrb_m2 <= addrb_m2 + 1'b1; 
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
