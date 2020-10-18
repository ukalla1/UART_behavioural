// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 13 12:59:57 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ukallakuri/hardware_design/designs/uart/UART_behavioural/UART_behavioural.sim/sim_1/synth/func/xsim/uart_rx_ex_tb_func_synth.v
// Design      : uart_rxm_ex
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BCWIDTH = "4" *) (* BITCOUNTMAX = "9" *) (* DATAWIDTH = "8" *) 
(* SAMPLECOUNTMAX = "1736" *) (* SCWIDTH = "11" *) (* check_parity = "3'b100" *) 
(* idle = "3'b000" *) (* receiving = "3'b010" *) (* starting = "3'b001" *) 
(* stop = "3'b011" *) 
(* NotValidForBitStream *)
module uart_rxm_ex
   (clk,
    rst,
    rx_serial_data,
    rx_parallel_data,
    flag_err,
    ready);
  input clk;
  input rst;
  input rx_serial_data;
  output [7:0]rx_parallel_data;
  output flag_err;
  output ready;

  wire [3:0]bit_count;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[3]_i_2_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [10:1]data3;
  wire flag_err;
  wire flag_err_OBUF;
  wire flag_err_internal_i_1_n_0;
  wire flag_err_internal_i_2_n_0;
  wire [7:0]p_1_in;
  wire ready;
  wire ready_OBUF;
  wire ready_internal_i_1_n_0;
  wire rst;
  wire rst_IBUF;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire [7:0]rx_parallel_data;
  wire [7:0]rx_parallel_data_OBUF;
  wire rx_serial_data;
  wire rx_serial_data_IBUF;
  wire \rx_shift_reg[8]_i_1_n_0 ;
  wire \rx_shift_reg[8]_i_2_n_0 ;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire [10:0]sample_count;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[10]_i_3_n_0 ;
  wire \sample_count[10]_i_5_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[10] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire \sample_count_reg_n_0_[4] ;
  wire \sample_count_reg_n_0_[5] ;
  wire \sample_count_reg_n_0_[6] ;
  wire \sample_count_reg_n_0_[7] ;
  wire \sample_count_reg_n_0_[8] ;
  wire \sample_count_reg_n_0_[9] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00022222)) 
    \bit_count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \bit_count[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .I3(bit_count[3]),
        .O(\bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002A80)) 
    \bit_count[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \bit_count[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\bit_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00028000)) 
    \bit_count[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(bit_count[1]),
        .I2(bit_count[0]),
        .I3(bit_count[2]),
        .I4(bit_count[3]),
        .O(\bit_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(bit_count[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(bit_count[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(bit_count[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[3]_i_2_n_0 ),
        .Q(bit_count[3]),
        .R(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF flag_err_OBUF_inst
       (.I(flag_err_OBUF),
        .O(flag_err));
  LUT5 #(
    .INIT(32'h02020282)) 
    flag_err_internal_i_1
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[2]_i_2_n_0 ),
        .O(flag_err_internal_i_1_n_0));
  LUT3 #(
    .INIT(8'hAE)) 
    flag_err_internal_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(rx_serial_data_IBUF),
        .O(flag_err_internal_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_err_internal_reg
       (.C(clk_IBUF_BUFG),
        .CE(flag_err_internal_i_1_n_0),
        .D(flag_err_internal_i_2_n_0),
        .Q(flag_err_OBUF),
        .R(rst_IBUF));
  OBUF ready_OBUF_inst
       (.I(ready_OBUF),
        .O(ready));
  LUT3 #(
    .INIT(8'h01)) 
    ready_internal_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(clk_IBUF_BUFG),
        .CE(ready_internal_i_1_n_0),
        .D(rx_serial_data_IBUF),
        .Q(ready_OBUF),
        .S(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_data[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\rx_data[7]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h96FF)) 
    \rx_data[7]_i_2 
       (.I0(\rx_data[7]_i_3_n_0 ),
        .I1(\rx_data[7]_i_4_n_0 ),
        .I2(p_1_in[7]),
        .I3(\state_reg_n_0_[2] ),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \rx_data[7]_i_3 
       (.I0(p_1_in[5]),
        .I1(p_1_in[6]),
        .I2(p_1_in[3]),
        .I3(p_1_in[4]),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \rx_data[7]_i_4 
       (.I0(p_1_in[1]),
        .I1(p_1_in[2]),
        .I2(\rx_shift_reg_reg_n_0_[0] ),
        .I3(p_1_in[0]),
        .O(\rx_data[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(rx_parallel_data_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(rx_parallel_data_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(rx_parallel_data_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(rx_parallel_data_OBUF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(rx_parallel_data_OBUF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(rx_parallel_data_OBUF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(rx_parallel_data_OBUF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(rx_parallel_data_OBUF[7]),
        .R(rst_IBUF));
  OBUF \rx_parallel_data_OBUF[0]_inst 
       (.I(rx_parallel_data_OBUF[0]),
        .O(rx_parallel_data[0]));
  OBUF \rx_parallel_data_OBUF[1]_inst 
       (.I(rx_parallel_data_OBUF[1]),
        .O(rx_parallel_data[1]));
  OBUF \rx_parallel_data_OBUF[2]_inst 
       (.I(rx_parallel_data_OBUF[2]),
        .O(rx_parallel_data[2]));
  OBUF \rx_parallel_data_OBUF[3]_inst 
       (.I(rx_parallel_data_OBUF[3]),
        .O(rx_parallel_data[3]));
  OBUF \rx_parallel_data_OBUF[4]_inst 
       (.I(rx_parallel_data_OBUF[4]),
        .O(rx_parallel_data[4]));
  OBUF \rx_parallel_data_OBUF[5]_inst 
       (.I(rx_parallel_data_OBUF[5]),
        .O(rx_parallel_data[5]));
  OBUF \rx_parallel_data_OBUF[6]_inst 
       (.I(rx_parallel_data_OBUF[6]),
        .O(rx_parallel_data[6]));
  OBUF \rx_parallel_data_OBUF[7]_inst 
       (.I(rx_parallel_data_OBUF[7]),
        .O(rx_parallel_data[7]));
  IBUF rx_serial_data_IBUF_inst
       (.I(rx_serial_data),
        .O(rx_serial_data_IBUF));
  LUT5 #(
    .INIT(32'h00000400)) 
    \rx_shift_reg[8]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\rx_shift_reg[8]_i_2_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .O(\rx_shift_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \rx_shift_reg[8]_i_2 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[2]),
        .I3(bit_count[3]),
        .O(\rx_shift_reg[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(p_1_in[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(p_1_in[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(p_1_in[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(p_1_in[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(p_1_in[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(p_1_in[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(rx_serial_data_IBUF),
        .Q(p_1_in[7]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h0300FF880000FCBB)) 
    \sample_count[0]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[0]));
  LUT6 #(
    .INIT(64'h4540454555555555)) 
    \sample_count[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\sample_count[10]_i_3_n_0 ),
        .I4(rx_serial_data_IBUF),
        .I5(\state_reg_n_0_[0] ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[10]_i_2 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[10]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[10]));
  LUT4 #(
    .INIT(16'h00F7)) 
    \sample_count[10]_i_3 
       (.I0(\sample_count_reg_n_0_[8] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\sample_count_reg_n_0_[10] ),
        .O(\sample_count[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_count[10]_i_4 
       (.I0(\sample_count_reg_n_0_[8] ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\sample_count[10]_i_5_n_0 ),
        .I3(\sample_count_reg_n_0_[7] ),
        .I4(\sample_count_reg_n_0_[9] ),
        .I5(\sample_count_reg_n_0_[10] ),
        .O(data3[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sample_count[10]_i_5 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[3] ),
        .I2(\sample_count_reg_n_0_[1] ),
        .I3(\sample_count_reg_n_0_[0] ),
        .I4(\sample_count_reg_n_0_[2] ),
        .I5(\sample_count_reg_n_0_[4] ),
        .O(\sample_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[1]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[1]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[1]_i_2 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .O(data3[1]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[2]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[2]_i_2 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .O(data3[2]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[3]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[3]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_count[3]_i_2 
       (.I0(\sample_count_reg_n_0_[1] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .O(data3[3]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[4]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[4]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_count[4]_i_2 
       (.I0(\sample_count_reg_n_0_[2] ),
        .I1(\sample_count_reg_n_0_[0] ),
        .I2(\sample_count_reg_n_0_[1] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(\sample_count_reg_n_0_[4] ),
        .O(data3[4]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[5]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[5]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_count[5]_i_2 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count_reg_n_0_[1] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .I4(\sample_count_reg_n_0_[4] ),
        .I5(\sample_count_reg_n_0_[5] ),
        .O(data3[5]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[6]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[6]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[6]_i_2 
       (.I0(\sample_count[10]_i_5_n_0 ),
        .I1(\sample_count_reg_n_0_[6] ),
        .O(data3[6]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[7]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[7]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[7]_i_2 
       (.I0(\sample_count[10]_i_5_n_0 ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\sample_count_reg_n_0_[7] ),
        .O(data3[7]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[8]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[8]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_count[8]_i_2 
       (.I0(\sample_count_reg_n_0_[6] ),
        .I1(\sample_count[10]_i_5_n_0 ),
        .I2(\sample_count_reg_n_0_[7] ),
        .I3(\sample_count_reg_n_0_[8] ),
        .O(data3[8]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[9]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\sample_count[10]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[9]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_count[9]_i_2 
       (.I0(\sample_count_reg_n_0_[7] ),
        .I1(\sample_count[10]_i_5_n_0 ),
        .I2(\sample_count_reg_n_0_[6] ),
        .I3(\sample_count_reg_n_0_[8] ),
        .I4(\sample_count_reg_n_0_[9] ),
        .O(data3[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[0]),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[10]),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[1]),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[2]),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[3]),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[4]),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[5]),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[6]),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[7]),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[8]),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count[9]),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h00004540)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[0]_i_3_n_0 ),
        .I4(rst_IBUF),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA2AAA6A)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(\rx_shift_reg[8]_i_2_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F7000000F7FFFF)) 
    \state[0]_i_3 
       (.I0(\sample_count_reg_n_0_[8] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\sample_count_reg_n_0_[10] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(rx_serial_data_IBUF),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045554500)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[1]_i_2_n_0 ),
        .I5(rst_IBUF),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222200002000)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(rx_serial_data_IBUF),
        .I2(\sample_count_reg_n_0_[8] ),
        .I3(\sample_count_reg_n_0_[9] ),
        .I4(\state[1]_i_3_n_0 ),
        .I5(\sample_count_reg_n_0_[10] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \state[1]_i_3 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\sample_count_reg_n_0_[4] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(\sample_count_reg_n_0_[2] ),
        .I5(\sample_count_reg_n_0_[7] ),
        .O(\state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(rst_IBUF),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\sample_count_reg_n_0_[10] ),
        .I2(\sample_count_reg_n_0_[9] ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \state[2]_i_3 
       (.I0(\sample_count_reg_n_0_[6] ),
        .I1(\sample_count_reg_n_0_[7] ),
        .I2(\sample_count_reg_n_0_[5] ),
        .I3(\sample_count_reg_n_0_[4] ),
        .I4(\sample_count_reg_n_0_[3] ),
        .I5(\sample_count_reg_n_0_[8] ),
        .O(\state[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
