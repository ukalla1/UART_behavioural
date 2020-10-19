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
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module manch_decoder #(
                //Uttej add begin//
                parameter DATAWIDTH = 8,
                //Uttej add end//
                parameter counter_max = 20,
                parameter half_counter_max = 10
)(
                input rst ,
                input clk_20x ,
                input manch_decode_input ,
                output dout,
                //Uttej add begin//
                output reg [DATAWIDTH-1:0] parallel_out,
                output reg flag
                //Uttej add end//
);
reg Rx_enable ;
reg din_temp1 ;
reg din_temp2  ;
reg [4:0] count = 1'b0 ;
reg clk1x = 1 ;
reg dout_temp ;
wire sample ;
reg [7:0]i;
reg [4:0]counter_1 = 0;

//Uttej add begin//
integer j = 0;
//Uttej add end//

//2 reg to store manchester encoded data

always @(posedge clk_20x)begin
    if (rst)begin
        din_temp1  <= 1'b0 ;
        din_temp2 <= 1'b0 ;
    end
    else begin
        din_temp2 <= din_temp1  ;
        din_temp1  <= manch_decode_input ;
    end
end

//Enable receiving when edge is detected


always @(posedge clk_20x)begin
    if (rst)
        Rx_enable <= 1'b0 ;
    else if (din_temp1  && !din_temp2)
        Rx_enable <= 1'b1 ;
//    else if (!din_temp1  && !din_temp2)
//        Rx_enable <= 1'b0 ;
end

// Sample at 5th and 15th cycle or 1/4th and 3/4th cycle

assign sample = (!count[4] && !count[3] && count[2] && !count[1] && !count[0])||(!count[4] && count[3] && count[2] && count[1] && !count[0]);

// Decode Manchester data

always @(posedge clk_20x)begin
    if (rst)begin
        dout_temp <= 1'b0 ;
        
        //Uttej add begin//
        parallel_out <= {DATAWIDTH{1'b0}};
        flag <= 1'b0;
        //Uttej add end//
    end
    else if (sample == 1'b1)begin
        dout_temp <= din_temp2 ^ clk1x ;
        
        //Uttej add begin//
        for(j=0; j<DATAWIDTH; j=j+1) begin
            if(j == 7) begin
                parallel_out <= {dout_temp, parallel_out[DATAWIDTH-1:1]};
                flag <= 1'b1;
            end
            else begin
                flag <= 1'b0;
            end
        end
        //Uttej add end//
        
    end
    else begin
        dout_temp <= dout_temp;
    end
end

assign dout = dout_temp;

//generating clk1x
always @(posedge clk_20x)begin
    if (rst)begin
        count = 5'b0 ;
    end
    else if (Rx_enable)begin
        if(count < (counter_max-1))begin
            count <= count + 1'b1;
        end
        else begin
            count <= 0 ;
        end
    end
    else begin
        count = 5'b0;
    end
 end
    
 always@(posedge clk_20x)begin
    if(Rx_enable)begin
        if(counter_1 == 0)begin
            clk1x <= ~clk1x;
            counter_1 <= counter_1 + 1'b1;
        end
        else if(counter_1 == 9)begin
            counter_1 <= 0;
        end
        else begin
            counter_1 <= counter_1 + 1'b1;
        end
    end
    else begin
        counter_1 <= 0;
    end
end

endmodule








