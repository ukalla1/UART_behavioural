// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Oct 14 21:41:49 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/uart/UART_behavioural/UART_behavioural.sim/sim_1/impl/timing/xsim/uart_rx_wrapper_tb_time_impl.v
// Design      : uart_rx_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module seven_seg
   (\display_reg_reg[6]_0 ,
    Q,
    SR,
    D,
    CLK,
    \disp_reg[6] ,
    cnt);
  output [6:0]\display_reg_reg[6]_0 ;
  input [3:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input CLK;
  input [6:0]\disp_reg[6] ;
  input cnt;

  wire CLK;
  wire [4:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire cnt;
  wire [6:0]disp0;
  wire [6:0]\disp_reg[6] ;
  wire [2:0]display_reg;
  wire [6:0]\display_reg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[0]_i_1 
       (.I0(disp0[0]),
        .I1(\disp_reg[6] [0]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[1]_i_1 
       (.I0(disp0[1]),
        .I1(\disp_reg[6] [1]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[2]_i_1 
       (.I0(disp0[2]),
        .I1(\disp_reg[6] [2]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[3]_i_1 
       (.I0(disp0[3]),
        .I1(\disp_reg[6] [3]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[4]_i_1 
       (.I0(disp0[4]),
        .I1(\disp_reg[6] [4]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[5]_i_1 
       (.I0(disp0[5]),
        .I1(\disp_reg[6] [5]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \disp[6]_i_2 
       (.I0(disp0[6]),
        .I1(\disp_reg[6] [6]),
        .I2(cnt),
        .O(\display_reg_reg[6]_0 [6]));
  LUT4 #(
    .INIT(16'hEAA5)) 
    \display_reg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(display_reg[0]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_reg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(display_reg[2]));
  FDSE #(
    .INIT(1'b1)) 
    \display_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[0]),
        .Q(disp0[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(disp0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[2]),
        .Q(disp0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(disp0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(disp0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(disp0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(disp0[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "seven_seg" *) 
module seven_seg_0
   (\display_reg_reg[6]_0 ,
    Q,
    SR,
    D,
    CLK);
  output [6:0]\display_reg_reg[6]_0 ;
  input [3:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input CLK;

  wire CLK;
  wire [4:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [2:0]display_reg;
  wire [6:0]\display_reg_reg[6]_0 ;

  LUT4 #(
    .INIT(16'hEAA5)) 
    \display_reg[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(display_reg[0]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_reg[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(display_reg[2]));
  FDSE #(
    .INIT(1'b1)) 
    \display_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[0]),
        .Q(\display_reg_reg[6]_0 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\display_reg_reg[6]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[2]),
        .Q(\display_reg_reg[6]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\display_reg_reg[6]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\display_reg_reg[6]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\display_reg_reg[6]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\display_reg_reg[6]_0 [6]),
        .R(SR));
endmodule

(* BITCOUNTMAX = "9" *) (* DATAWIDTH = "8" *) (* ECO_CHECKSUM = "db5a2bd5" *) 
(* SAMPLECOUNTMAX = "1736" *) 
(* NotValidForBitStream *)
module uart_rx_wrapper
   (clk,
    rst,
    rx_serial_data,
    o_rx_parallel_data,
    disp,
    o_flag_err,
    o_rx_ready,
    an);
  input clk;
  input rst;
  input rx_serial_data;
  output [7:0]o_rx_parallel_data;
  output [6:0]disp;
  output o_flag_err;
  output o_rx_ready;
  output [7:0]an;

  wire [7:0]an;
  wire [1:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire cnt_i_1_n_0;
  wire [6:0]disp;
  wire [6:0]disp1;
  wire \disp[6]_i_1_n_0 ;
  wire [6:0]disp_OBUF;
  wire flag_err;
  wire ln_n_0;
  wire ln_n_1;
  wire ln_n_2;
  wire ln_n_3;
  wire ln_n_4;
  wire ln_n_5;
  wire ln_n_6;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire o_flag_err;
  wire o_flag_err_OBUF;
  wire [7:0]o_rx_parallel_data;
  wire [7:0]o_rx_parallel_data_OBUF;
  wire o_rx_ready;
  wire o_rx_ready_OBUF;
  wire ready_internal;
  wire rst;
  wire rst_IBUF;
  wire rx_n_15;
  wire rx_n_16;
  wire rx_n_17;
  wire rx_n_18;
  wire rx_n_19;
  wire rx_n_2;
  wire rx_n_3;
  wire rx_n_4;
  wire rx_n_5;
  wire rx_n_6;
  wire rx_serial_data;
  wire rx_serial_data_IBUF;

initial begin
 $sdf_annotate("uart_rx_wrapper_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(1'b1),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(1'b1),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(1'b1),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(1'b1),
        .O(an[7]));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_i_1_n_0),
        .D(1'b0),
        .Q(an_OBUF[0]),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt),
        .D(1'b0),
        .Q(an_OBUF[1]),
        .S(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_i_1
       (.I0(cnt),
        .O(cnt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnt_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_i_1_n_0),
        .Q(cnt),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \disp[6]_i_1 
       (.I0(rst_IBUF),
        .O(\disp[6]_i_1_n_0 ));
  OBUF \disp_OBUF[0]_inst 
       (.I(disp_OBUF[0]),
        .O(disp[0]));
  OBUF \disp_OBUF[1]_inst 
       (.I(disp_OBUF[1]),
        .O(disp[1]));
  OBUF \disp_OBUF[2]_inst 
       (.I(disp_OBUF[2]),
        .O(disp[2]));
  OBUF \disp_OBUF[3]_inst 
       (.I(disp_OBUF[3]),
        .O(disp[3]));
  OBUF \disp_OBUF[4]_inst 
       (.I(disp_OBUF[4]),
        .O(disp[4]));
  OBUF \disp_OBUF[5]_inst 
       (.I(disp_OBUF[5]),
        .O(disp[5]));
  OBUF \disp_OBUF[6]_inst 
       (.I(disp_OBUF[6]),
        .O(disp[6]));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_6),
        .Q(disp_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_5),
        .Q(disp_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_4),
        .Q(disp_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_3),
        .Q(disp_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_2),
        .Q(disp_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_1),
        .Q(disp_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\disp[6]_i_1_n_0 ),
        .D(ln_n_0),
        .Q(disp_OBUF[6]),
        .R(1'b0));
  seven_seg ln
       (.CLK(clk_IBUF_BUFG),
        .D({rx_n_2,rx_n_3,rx_n_4,rx_n_5,rx_n_6}),
        .Q(o_rx_parallel_data_OBUF[3:0]),
        .SR(rst_IBUF),
        .cnt(cnt),
        .\disp_reg[6] (disp1),
        .\display_reg_reg[6]_0 ({ln_n_0,ln_n_1,ln_n_2,ln_n_3,ln_n_4,ln_n_5,ln_n_6}));
  OBUF o_flag_err_OBUF_inst
       (.I(o_flag_err_OBUF),
        .O(o_flag_err));
  FDRE #(
    .INIT(1'b0)) 
    o_flag_err_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(flag_err),
        .Q(o_flag_err_OBUF),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[0]_inst 
       (.I(lopt),
        .O(o_rx_parallel_data[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[1]_inst 
       (.I(lopt_1),
        .O(o_rx_parallel_data[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[2]_inst 
       (.I(lopt_2),
        .O(o_rx_parallel_data[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[3]_inst 
       (.I(lopt_3),
        .O(o_rx_parallel_data[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[4]_inst 
       (.I(lopt_4),
        .O(o_rx_parallel_data[4]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[5]_inst 
       (.I(lopt_5),
        .O(o_rx_parallel_data[5]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[6]_inst 
       (.I(lopt_6),
        .O(o_rx_parallel_data[6]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \o_rx_parallel_data_OBUF[7]_inst 
       (.I(lopt_7),
        .O(o_rx_parallel_data[7]));
  OBUF o_rx_ready_OBUF_inst
       (.I(o_rx_ready_OBUF),
        .O(o_rx_ready));
  FDRE #(
    .INIT(1'b0)) 
    o_rx_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ready_internal),
        .Q(o_rx_ready_OBUF),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  uart_rxm_ex rx
       (.CLK(clk_IBUF_BUFG),
        .D({rx_n_2,rx_n_3,rx_n_4,rx_n_5,rx_n_6}),
        .Q(o_rx_parallel_data_OBUF),
        .SR(rst_IBUF),
        .flag_err(flag_err),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .ready_internal(ready_internal),
        .\rx_data_reg[5]_0 ({rx_n_15,rx_n_16,rx_n_17,rx_n_18,rx_n_19}),
        .rx_serial_data_IBUF(rx_serial_data_IBUF));
  IBUF rx_serial_data_IBUF_inst
       (.I(rx_serial_data),
        .O(rx_serial_data_IBUF));
  seven_seg_0 un
       (.CLK(clk_IBUF_BUFG),
        .D({rx_n_15,rx_n_16,rx_n_17,rx_n_18,rx_n_19}),
        .Q(o_rx_parallel_data_OBUF[7:4]),
        .SR(rst_IBUF),
        .\display_reg_reg[6]_0 (disp1));
endmodule

module uart_rxm_ex
   (ready_internal,
    flag_err,
    D,
    Q,
    \rx_data_reg[5]_0 ,
    SR,
    rx_serial_data_IBUF,
    CLK,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output ready_internal;
  output flag_err;
  output [4:0]D;
  output [7:0]Q;
  output [4:0]\rx_data_reg[5]_0 ;
  input [0:0]SR;
  input rx_serial_data_IBUF;
  input CLK;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire CLK;
  wire [4:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[3]_i_1_n_0 ;
  wire \bit_count[3]_i_2_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire \bit_count_reg_n_0_[3] ;
  wire [10:1]data3;
  wire flag_err;
  wire flag_err_internal_i_1_n_0;
  wire flag_err_internal_i_2_n_0;
  wire [7:0]p_1_in;
  wire ready_internal;
  wire ready_internal_i_1_n_0;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire \rx_data_reg[0]_lopt_replica_1 ;
  wire \rx_data_reg[1]_lopt_replica_1 ;
  wire \rx_data_reg[2]_lopt_replica_1 ;
  wire \rx_data_reg[3]_lopt_replica_1 ;
  wire \rx_data_reg[4]_lopt_replica_1 ;
  wire [4:0]\rx_data_reg[5]_0 ;
  wire \rx_data_reg[5]_lopt_replica_1 ;
  wire \rx_data_reg[6]_lopt_replica_1 ;
  wire \rx_data_reg[7]_lopt_replica_1 ;
  wire rx_serial_data_IBUF;
  wire \rx_shift_reg[8]_i_1_n_0 ;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire [10:0]sample_count;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[10]_i_4_n_0 ;
  wire [10:0]sample_count_0;
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

  assign lopt = \rx_data_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \rx_data_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \rx_data_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \rx_data_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \rx_data_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \rx_data_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \rx_data_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \rx_data_reg[7]_lopt_replica_1 ;
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00022222)) 
    \bit_count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \bit_count[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00002A80)) 
    \bit_count[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \bit_count[3]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\bit_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00028000)) 
    \bit_count[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count_reg_n_0_[3] ),
        .O(\bit_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(CLK),
        .CE(\bit_count[3]_i_1_n_0 ),
        .D(\bit_count[3]_i_2_n_0 ),
        .Q(\bit_count_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \display_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \display_reg[1]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\rx_data_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \display_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \display_reg[3]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\rx_data_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h0004)) 
    \display_reg[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0004)) 
    \display_reg[4]_i_1__0 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[7]),
        .O(\rx_data_reg[5]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \display_reg[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \display_reg[5]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\rx_data_reg[5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_reg[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_reg[6]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\rx_data_reg[5]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFBAFF0000BA00)) 
    flag_err_internal_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(rx_serial_data_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\rx_data[7]_i_2_n_0 ),
        .I4(flag_err_internal_i_2_n_0),
        .I5(flag_err),
        .O(flag_err_internal_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFF0000)) 
    flag_err_internal_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(sample_count[10]),
        .I3(sample_count[9]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(flag_err_internal_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_err_internal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(flag_err_internal_i_1_n_0),
        .Q(flag_err),
        .R(SR));
  LUT3 #(
    .INIT(8'h01)) 
    ready_internal_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(CLK),
        .CE(ready_internal_i_1_n_0),
        .D(rx_serial_data_IBUF),
        .Q(ready_internal),
        .S(SR));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_data[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\rx_data[7]_i_2_n_0 ),
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
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(\rx_data_reg[0]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[1]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\rx_data_reg[1]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[2]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\rx_data_reg[2]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[3]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\rx_data_reg[3]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[4]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\rx_data_reg[4]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(Q[5]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\rx_data_reg[5]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(Q[6]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\rx_data_reg[6]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[7]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7]_lopt_replica 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\rx_data_reg[7]_lopt_replica_1 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00001000)) 
    \rx_shift_reg[8]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[0]_i_3_n_0 ),
        .I4(\state[2]_i_2_n_0 ),
        .O(\rx_shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(p_1_in[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(p_1_in[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[8] 
       (.C(CLK),
        .CE(\rx_shift_reg[8]_i_1_n_0 ),
        .D(rx_serial_data_IBUF),
        .Q(p_1_in[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0300FF880000FCBB)) 
    \sample_count[0]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(sample_count[0]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[0]));
  LUT6 #(
    .INIT(64'h4540454555555555)) 
    \sample_count[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[1]_i_2_n_0 ),
        .I4(rx_serial_data_IBUF),
        .I5(\state_reg_n_0_[0] ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[10]_i_2 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[10]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_count[10]_i_3 
       (.I0(sample_count[8]),
        .I1(sample_count[6]),
        .I2(\sample_count[10]_i_4_n_0 ),
        .I3(sample_count[7]),
        .I4(sample_count[9]),
        .I5(sample_count[10]),
        .O(data3[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sample_count[10]_i_4 
       (.I0(sample_count[5]),
        .I1(sample_count[3]),
        .I2(sample_count[1]),
        .I3(sample_count[0]),
        .I4(sample_count[2]),
        .I5(sample_count[4]),
        .O(\sample_count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[1]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[1]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[1]_i_2 
       (.I0(sample_count[0]),
        .I1(sample_count[1]),
        .O(data3[1]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[2]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[2]_i_2 
       (.I0(sample_count[0]),
        .I1(sample_count[1]),
        .I2(sample_count[2]),
        .O(data3[2]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[3]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[3]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_count[3]_i_2 
       (.I0(sample_count[1]),
        .I1(sample_count[0]),
        .I2(sample_count[2]),
        .I3(sample_count[3]),
        .O(data3[3]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[4]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[4]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_count[4]_i_2 
       (.I0(sample_count[2]),
        .I1(sample_count[0]),
        .I2(sample_count[1]),
        .I3(sample_count[3]),
        .I4(sample_count[4]),
        .O(data3[4]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[5]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[5]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_count[5]_i_2 
       (.I0(sample_count[3]),
        .I1(sample_count[1]),
        .I2(sample_count[0]),
        .I3(sample_count[2]),
        .I4(sample_count[4]),
        .I5(sample_count[5]),
        .O(data3[5]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[6]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[6]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \sample_count[6]_i_2 
       (.I0(\sample_count[10]_i_4_n_0 ),
        .I1(sample_count[6]),
        .O(data3[6]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[7]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[7]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[7]));
  LUT3 #(
    .INIT(8'h78)) 
    \sample_count[7]_i_2 
       (.I0(\sample_count[10]_i_4_n_0 ),
        .I1(sample_count[6]),
        .I2(sample_count[7]),
        .O(data3[7]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[8]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[8]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[8]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_count[8]_i_2 
       (.I0(sample_count[6]),
        .I1(\sample_count[10]_i_4_n_0 ),
        .I2(sample_count[7]),
        .I3(sample_count[8]),
        .O(data3[8]));
  LUT6 #(
    .INIT(64'hFF880300FCBB0000)) 
    \sample_count[9]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data3[9]),
        .I5(rx_serial_data_IBUF),
        .O(sample_count_0[9]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_count[9]_i_2 
       (.I0(sample_count[7]),
        .I1(\sample_count[10]_i_4_n_0 ),
        .I2(sample_count[6]),
        .I3(sample_count[8]),
        .I4(sample_count[9]),
        .O(data3[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[0]),
        .Q(sample_count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[10]),
        .Q(sample_count[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[1]),
        .Q(sample_count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[2]),
        .Q(sample_count[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[3]),
        .Q(sample_count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[4]),
        .Q(sample_count[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[5]),
        .Q(sample_count[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[6]),
        .Q(sample_count[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[7]),
        .Q(sample_count[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[8]),
        .Q(sample_count[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(CLK),
        .CE(\sample_count[10]_i_1_n_0 ),
        .D(sample_count_0[9]),
        .Q(sample_count[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000EE22222E)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\state[2]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F7000000F7FFFF)) 
    \state[0]_i_2 
       (.I0(sample_count[8]),
        .I1(sample_count[9]),
        .I2(\state[1]_i_3_n_0 ),
        .I3(sample_count[10]),
        .I4(\state_reg_n_0_[0] ),
        .I5(rx_serial_data_IBUF),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \state[0]_i_3 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[3] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF100F10)) 
    \state[1]_i_1 
       (.I0(rx_serial_data_IBUF),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_2_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \state[1]_i_2 
       (.I0(sample_count[8]),
        .I1(sample_count[9]),
        .I2(\state[1]_i_3_n_0 ),
        .I3(sample_count[10]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \state[1]_i_3 
       (.I0(sample_count[5]),
        .I1(sample_count[6]),
        .I2(sample_count[4]),
        .I3(sample_count[3]),
        .I4(sample_count[2]),
        .I5(sample_count[7]),
        .O(\state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(sample_count[10]),
        .I2(sample_count[9]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \state[2]_i_3 
       (.I0(sample_count[6]),
        .I1(sample_count[7]),
        .I2(sample_count[5]),
        .I3(sample_count[4]),
        .I4(sample_count[3]),
        .I5(sample_count[8]),
        .O(\state[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
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
