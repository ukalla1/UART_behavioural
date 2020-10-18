`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Engineer: Uttej Kallakuri 
// 
//////////////////////////////////////////////////////////////////////////////////

module seven_seg(
        input clk,
        input rst,
        input [3:0] num,
        output [6:0] disp
//        output reg [7:0] an
//        output gnd,
//        output vdd
);

reg [6:0] display_reg;

//assign vdd = 1'b1;
//assign gnd = 1'b0;
assign disp = display_reg;

//always @(*) begin
//    an[7:2] = 6'b111_111;
//    an[1] = 1'b0;
//    an[0] = 1'b0;
//end

always @(posedge clk) begin
    if (rst) begin
        display_reg         <=  7'b000_0001;
    end
    else begin
        case(num)
            4'b0000: begin
                display_reg <=  7'b000_0001;
            end
            4'b0001: begin
                display_reg <=  7'b100_1111;
            end
            4'b0010: begin
                display_reg <=  7'b001_0010;
            end
            4'b0011: begin
                display_reg <=  7'b000_0110;
            end
            4'b0100: begin
                display_reg <=  7'b100_1100;
            end
            4'b0101: begin
                display_reg <=  7'b010_0100;
            end
            4'b0110: begin
                display_reg <=  7'b010_0000;
            end
            4'b0111: begin
                display_reg <=  7'b000_1111;
            end
            4'b1000: begin
                display_reg <=  7'b000_0000;
            end
            4'b1001: begin
                display_reg <=  7'b000_0100;
            end
            default begin
                display_reg <=  7'b000_0001;
            end
        endcase
    end
end

endmodule