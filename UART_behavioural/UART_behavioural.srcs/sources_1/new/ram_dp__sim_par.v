`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 12:14:12 PM
// Design Name: 
// Module Name: ram_dp__sim_par
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


module ram_dp__sim_par #(
    parameter DATA_WIDTH = 8,
    parameter RAM_DEPTH = 32,
    parameter INIT_FILE = "",
    parameter ADDRS_WIDTH = 5
)(
    input clk,
    input wea,
    input enb,
    input [DATA_WIDTH-1:0] dina,
    input [ADDRS_WIDTH-1:0] addra,
    input [ADDRS_WIDTH-1:0] addrb,
    output [DATA_WIDTH-1:0] doutb
    );
    
    reg [DATA_WIDTH-1:0] ram_dp [RAM_DEPTH-1:0];
    
    reg [DATA_WIDTH-1:0] doutb_internal = {DATA_WIDTH{1'b0}};
    
    generate
    if(INIT_FILE != "") begin: using_init_file
        initial begin
            $readmemh(INIT_FILE, ram_dp, 0, RAM_DEPTH-1);
        end
    end
    else begin: setting_to_zero
        integer index;
        initial begin
            for(index=0; index<RAM_DEPTH; index=index+1) begin
                ram_dp[index] <= {(DATA_WIDTH){1'b0}};
            end
        end
    end
    endgenerate

    always @(posedge clk) begin
        if(wea) begin
            ram_dp[addra] <= dina;
        end
        if(enb) begin
            doutb_internal = ram_dp[addrb];
        end
    end
    
    assign doutb = doutb_internal;
    
    
//    function integer clogb2;
//        input integer depth;
//        for (clogb2=0; depth>0; clogb2=clogb2+1) begin
//            depth = depth >> 1;
//        end
//    endfunction
    
endmodule
