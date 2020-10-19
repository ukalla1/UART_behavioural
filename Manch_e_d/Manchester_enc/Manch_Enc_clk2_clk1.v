`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2020 11:51:57 AM
// Design Name: 
// Module Name: Manch_data_sipo_TX
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


module Manch_Enc_clk2_clk1 #(
    parameter N = 9
    
)(
    input clk_2x,
//    input clk_1x,
    input rst,
    input go,
    //Uttej add begin//
    input [N-1:0] data_sample_new,
    //Uttej add end//
    output reg enc_ser_out,
    //Uttej add begin//
    output reg done
    //Uttej add end//
    );
   
//reg [11:0] data_sample_new = 12'b1010_1111_1011;
//reg data_sample_new;
reg [3:0] i = 0;
reg [3:0] j = 0;
reg test_data_sample = 0;

//always@(posedge clk_1x)begin
//    if(go)begin
//        data_sample_new <= data_sample[j];
//        j<= j+1;
//    end
//    else
//    data_sample_new <= 0;
//end
    

always@(posedge clk_2x)begin
    if(!go)begin
        enc_ser_out <= 0;
        i <= 0;
        j <= 0;
        //Uttej add begin//
        done <= 1'b0;
        //Uttej add end//
    end
    else if (go)begin 
        if(i < (N))begin
        //Uttej add begin//
            done <= 1'b0;
            if(j == 0)begin
//                enc_ser_out <= data_sample_new[i] ^ clk_1x;
                enc_ser_out <= data_sample_new[i] ^ 1;
                test_data_sample <= data_sample_new[i];
                j<= j+1'b1;
                i<= i;
            end
            else if(j == 1)begin
//                enc_ser_out <= data_sample_new[i] ^ clk_1x;
                enc_ser_out <= data_sample_new[i] ^ 0;
                test_data_sample <= data_sample_new[i];
                j<= 0;
                i<= i+1'b1;
            end 
         end 
       else begin
            enc_ser_out <= 0;
            //Uttej add begin//
            if(i == N-1) begin
                done <= 1'b1;
            end
            //Uttej add end//
       end  
    end       
    else if(rst) begin
        enc_ser_out <= 0;
        i<= 0;
        j<= 0;
        //Uttej add begin//
        done <= 1'b0;
        //Uttej add end//
    end 
end


        
    endmodule

