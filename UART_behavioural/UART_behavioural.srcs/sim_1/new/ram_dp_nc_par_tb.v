`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 12:05:51 PM
// Design Name: 
// Module Name: ram_dp_nc_par_tb
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


module ram_dp_nc_par_tb #(
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = "",
    localparam ADDRS_WIDTH = clogb2(RAM_DEPTH-1)
);

    reg clk;
    reg wea;
    reg enb;
    reg [DATA_WIDTH-1:0] dina;
    reg [ADDRS_WIDTH-1:0] addra;
    reg [ADDRS_WIDTH-1:0] addrb;
    wire [DATA_WIDTH-1:0] doutb;
    
    integer period = 10, i, j;
    
    ram_dp__sim_par #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE)
    )uut(
        .clk(clk),
        .wea(wea),
        .enb(enb),
        .dina(dina),
        .addra(addra),
        .addrb(addrb),
        .doutb(doutb)
    );
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        wea = 1'b0;
        enb = 1'b0;
        
        #(2*period);
        wea = 1'b1;
        i= 0;
        addra = i;
        dina = 8'h02;
        
        #(period);
        enb = 1'b1;
        fork
            for (i=1; i<=RAM_DEPTH-1; i=i+1) begin
                addra = i;
                dina = i;
                #period;    
            end
            for (j=0; j<=RAM_DEPTH-8; j=j+1) begin
                addrb = j;
                #period;
            end
        join
    end
    
    function integer clogb2;
        input integer depth;
        for (clogb2=0; depth>0; clogb2=clogb2+1) begin
            depth = depth >> 1;
        end
    endfunction
    
endmodule
