`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Uttej
// 
// Create Date: 10/18/2020 04:38:44 PM
// Design Name: 
// Module Name: uart_top_tb
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


module uart_top_tb #(
    parameter DATAWIDTH = 8,
    parameter BITCOUNTMAX = DATAWIDTH,
    parameter SAMPLECOUNTMAX_RX = 10417,
    parameter SAMPLECOUNTMAX_TX = 5209,
    parameter RAMDEPTH = 32
);

    reg clk;
    reg rst;
    reg rx_serial_data;
    reg tx_on;
    reg rx_on;
    wire tx_serial_data;
    wire o_rx_flag_err;
//    wire [6:0] disp;
//    wire [7:0] an;

    wire serial_data;
//    reg s = 0;
//    reg [79:0] tx_verf_reg, rx_verf_reg;
    
//    always @(posedge s) begin
//        if(rst) begin
//            tx_verf_reg = 0;
//            rx_verf_reg = 0;
//        end
//        else begin
//            if(rx_on) begin
//                rx_verf_reg = {serial_data, rx_verf_reg[79:1]};
//            end
//            else if(tx_on) begin
//                tx_verf_reg = {serial_data, tx_verf_reg[79:1]};
//            end
//        end
//    end
    
    integer period = 10;
    
    reg [7:0] data, i=0, j=0;
    
    uart_top #(
        .DATAWIDTH(DATAWIDTH),
        .BITCOUNTMAX(BITCOUNTMAX),
        .SAMPLECOUNTMAX_RX(SAMPLECOUNTMAX_RX),
        .SAMPLECOUNTMAX_TX(SAMPLECOUNTMAX_TX),
        .RAMDEPTH(RAMDEPTH)
    )uut(
        .clk(clk),
        .rst(rst),
        .rx_serial_data(rx_serial_data),
        .tx_on(tx_on),
        .rx_on(rx_on),
        .tx_serial_data(tx_serial_data),
        .o_rx_flag_err(o_rx_flag_err)
//        .disp(disp),
//        .an(an)
    );
    
    initial begin
        clk = 1'b0;
    end
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    assign serial_data = tx_on ? tx_serial_data : rx_on ? rx_serial_data: 1'bz;
    
    initial begin
    
        rst = 1'b1;
        rx_on = 1'b0;
        tx_on = 1'b0;
        rx_serial_data = 1'b1;
        
        #(1000*period);
        
//        rst = 1'b0;
//        rx_on = 1'b1;
//                data = 8'ha;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'hb;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'hc;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'hd;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'he;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'hf;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'h1a;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//                data = 8'h1b;
//        rx_serial_data = 1'b0;
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            rx_serial_data = data[i];
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        rx_serial_data = 1'b1;
//        #(SAMPLECOUNTMAX_RX*period);
        
//        rx_on = 1'b0;
        
//        #(10000*period);
        
//        tx_on =  1'b1;
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        #(SAMPLECOUNTMAX_RX*period);
//        for (i=0;i<8;i=i+1) begin
//            #(SAMPLECOUNTMAX_RX*period);
//        end
//        #(SAMPLECOUNTMAX_RX*period);
        
//        tx_on = 1'b0;
        
//        #(10000*period);
        
        rst = 1'b0;
        rx_on = 1'b1;
        for(i=0; i<8; i=i+1) begin
            data =i;
            rx_serial_data = 1'b0;
            #(SAMPLECOUNTMAX_RX*period);
            display;
            for(j=0; j<8; j=j+1) begin
                rx_serial_data = data[j];
                #(SAMPLECOUNTMAX_RX*period);
                display;
            end
            rx_serial_data = 1'b1;
            #(SAMPLECOUNTMAX_RX*period);
            display;
        end
        rx_on = 1'b0;
        
        #(1000*period);
        
        $display("*******************************************************Starting tx_on*******************************************************");
        
        tx_on = 1'b1;
        for(i=0; i<8; i=i+1) begin
            #(SAMPLECOUNTMAX_RX*period);
            display;
            for(j=0; j<8; j=j+1) begin
                #(SAMPLECOUNTMAX_RX*period);
                display;
            end
            #(SAMPLECOUNTMAX_RX*period);
            display;
        end
        tx_on = 1'b0;
        
        $finish;
    end
    
    task display;
        $display("serial_data: %b", serial_data);
    endtask
    
endmodule
