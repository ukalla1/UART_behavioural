`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 08:36:38 PM
// Design Name: 
// Module Name: ram_top_tb
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


module ram_top_tb #(
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = ""
);

    reg clk;
    reg rst;
    reg wea_m1;
    reg enb_m1;
    reg enb_m2;
    reg [DATA_WIDTH-1:0] dina_m1;
    wire [DATA_WIDTH-1:0] doutb_m2;
    
    integer period = 10, i=0, j = 0;
    
    ram_top #(
        .DATA_WIDTH(DATA_WIDTH),
        .RAM_DEPTH(RAM_DEPTH),
        .INIT_FILE(INIT_FILE)
    )uut(
        .clk(clk),
        .rst(rst),
        .wea_m1(wea_m1),
        .enb_m1(enb_m1),
        .enb_m2(enb_m2),
        .dina_m1(dina_m1),
        .doutb_m2(doutb_m2)
    );
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        rst = 1'b1;
        wea_m1 = 1'b0;
        enb_m1 = 1'b0;
        enb_m2 = 1'b0;
        
        #(20*period);
        
        rst = 1'b0;
        
        wea_m1 = 1'b1;
        dina_m1 = 8'h01;
        
        #(period);
        
        fork
            for(i=0; i<RAM_DEPTH; i=i+1) begin
                wea_m1 = 1'b1;
                dina_m1 = i;
                #(period);
                enb_m1 = 1'b1;
            end
            
            for(j=0; j<RAM_DEPTH; j=j+1) begin
                #(4*period);
                enb_m2 = 1'b1;
                #(period);
            end
        join
        
        #(100*period);
        $finish;
    
    end
    
endmodule
