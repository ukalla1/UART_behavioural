`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2020 11:11:07 AM
// Design Name: 
// Module Name: Rx_Enable_
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: To display the bits
// 
//////////////////////////////////////////////////////////////////////////////////
module RX_Enable# (  
                     parameter counter_value = 20 ,
                     parameter first_trans_counter_val = 10,
                     parameter N = 8
                     
 )(
     input clk ,
     input rst,
     input din,
//     output reg out_clk,
     output reg [N-1:0]d_temp_out, //8 bits are displayed at once
     output reg done
);
reg [4:0]counter_begin;
//reg out_clk = 0;
reg Rx_Enable_1;
reg [5:0]counter ;
reg [N-1:0]byteShiftReg = 8'b0; 
reg [3:0]i = 4'b0;

initial begin
counter_begin = 5'b0;
//out_clk = 0;
Rx_Enable_1 = 0;
counter = 0;
d_temp_out =0;
end

//always @(*)begin
//d_temp_out = din;
//end


always @(posedge clk)begin

  if(rst)begin
  counter_begin <= 0;
  Rx_Enable_1 <= 0;
  end
  
    else if(counter_begin < first_trans_counter_val)begin
      if(din == 1'b1)begin
        counter_begin <= counter_begin + 1'b1;
      end
    end
    else if(counter_begin == (first_trans_counter_val))begin
        Rx_Enable_1 <= 1'b1;
//        done <= 1'b1;
    
    end
    else begin
        counter_begin <=0;
    end
end

always@(posedge clk)begin
 if(rst)begin
  byteShiftReg <= 0;
  counter <= 0;
  d_temp_out <= 0;
  i<= 0;
 end
 else if(Rx_Enable_1)begin
  if(i < (N))begin
   if (counter == 0)begin
//      out_clk <= ~out_clk;
    byteShiftReg <= byteShiftReg >> 1;
    byteShiftReg[N-1] <= din;
    counter <= counter+1'b1;
   end
   else if (counter < (counter_value-1) )begin
    counter <= counter+1'b1;
   end
   else begin
     counter <= 0;
     i <= i+1;
//     d_temp_out <= din;
   end
  end
//  else if(i >= N)begin
//      byteShiftReg <= 0;
//      counter <= 0;
//      d_temp_out <= 0;
//      i<= 0;
//  end
 end
  d_temp_out <= byteShiftReg ;
  done <= 1'b1;
 end


endmodule


