// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct 26 12:52:00 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/uart/UART_behavioural/UART_behavioural.sim/sim_1/impl/timing/xsim/uart_top_tb_time_impl.v
// Design      : uart_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ff
   (q_reg_0,
    CLK);
  output q_reg_0;
  input CLK;

  wire CLK;
  wire q_reg_0;
  wire qb;

  LUT1 #(
    .INIT(2'h1)) 
    q_i_1
       (.I0(q_reg_0),
        .O(qb));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(qb),
        .Q(q_reg_0),
        .R(1'b0));
endmodule

module ram_dp__sim_par
   (D,
    CLK,
    ram_dp_reg_0,
    ram_dp_reg_1,
    SR,
    Q,
    ram_dp_reg_2,
    ram_dp_reg_3);
  output [7:0]D;
  input CLK;
  input ram_dp_reg_0;
  input ram_dp_reg_1;
  input [0:0]SR;
  input [7:0]Q;
  input [7:0]ram_dp_reg_2;
  input [7:0]ram_dp_reg_3;

  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire ram_dp_reg_0;
  wire ram_dp_reg_1;
  wire [7:0]ram_dp_reg_2;
  wire [7:0]ram_dp_reg_3;
  wire [15:0]NLW_ram_dp_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_dp_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "ram_dp" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_dp_reg
       (.ADDRARDADDR({1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,ram_dp_reg_2,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_dp_reg_3}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_dp_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_dp_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_dp_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_dp_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ram_dp_reg_0),
        .ENBWREN(ram_dp_reg_1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(SR),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module seven_seg
   (D,
    an_i1,
    Q,
    \display_reg_reg[2]_0 ,
    SR,
    \display_reg_reg[6]_0 ,
    CLK);
  output [6:0]D;
  input an_i1;
  input [6:0]Q;
  input [3:0]\display_reg_reg[2]_0 ;
  input [0:0]SR;
  input [4:0]\display_reg_reg[6]_0 ;
  input CLK;

  wire CLK;
  wire [6:0]D;
  wire [6:0]Q;
  wire [0:0]SR;
  wire an_i1;
  wire [6:0]disp0;
  wire [2:0]display_reg;
  wire [3:0]\display_reg_reg[2]_0 ;
  wire [4:0]\display_reg_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[0]_i_1 
       (.I0(disp0[0]),
        .I1(an_i1),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[1]_i_1 
       (.I0(disp0[1]),
        .I1(an_i1),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[2]_i_1 
       (.I0(disp0[2]),
        .I1(an_i1),
        .I2(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[3]_i_1 
       (.I0(disp0[3]),
        .I1(an_i1),
        .I2(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[4]_i_1 
       (.I0(disp0[4]),
        .I1(an_i1),
        .I2(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[5]_i_1 
       (.I0(disp0[5]),
        .I1(an_i1),
        .I2(Q[5]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \disp[6]_i_1 
       (.I0(disp0[6]),
        .I1(an_i1),
        .I2(Q[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hEAA5)) 
    \display_reg[0]_i_1 
       (.I0(\display_reg_reg[2]_0 [3]),
        .I1(\display_reg_reg[2]_0 [0]),
        .I2(\display_reg_reg[2]_0 [2]),
        .I3(\display_reg_reg[2]_0 [1]),
        .O(display_reg[0]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_reg[2]_i_1 
       (.I0(\display_reg_reg[2]_0 [3]),
        .I1(\display_reg_reg[2]_0 [1]),
        .I2(\display_reg_reg[2]_0 [2]),
        .I3(\display_reg_reg[2]_0 [0]),
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
        .D(\display_reg_reg[6]_0 [0]),
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
        .D(\display_reg_reg[6]_0 [1]),
        .Q(disp0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\display_reg_reg[6]_0 [2]),
        .Q(disp0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\display_reg_reg[6]_0 [3]),
        .Q(disp0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\display_reg_reg[6]_0 [4]),
        .Q(disp0[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "seven_seg" *) 
module seven_seg_0
   (Q,
    \display_reg_reg[2]_0 ,
    SR,
    D,
    CLK);
  output [6:0]Q;
  input [3:0]\display_reg_reg[2]_0 ;
  input [0:0]SR;
  input [4:0]D;
  input CLK;

  wire CLK;
  wire [4:0]D;
  wire [6:0]Q;
  wire [0:0]SR;
  wire [2:0]display_reg;
  wire [3:0]\display_reg_reg[2]_0 ;

  LUT4 #(
    .INIT(16'hEAA5)) 
    \display_reg[0]_i_1 
       (.I0(\display_reg_reg[2]_0 [3]),
        .I1(\display_reg_reg[2]_0 [0]),
        .I2(\display_reg_reg[2]_0 [2]),
        .I3(\display_reg_reg[2]_0 [1]),
        .O(display_reg[0]));
  LUT4 #(
    .INIT(16'h5710)) 
    \display_reg[2]_i_1 
       (.I0(\display_reg_reg[2]_0 [3]),
        .I1(\display_reg_reg[2]_0 [1]),
        .I2(\display_reg_reg[2]_0 [2]),
        .I3(\display_reg_reg[2]_0 [0]),
        .O(display_reg[2]));
  FDSE #(
    .INIT(1'b1)) 
    \display_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[0]),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(display_reg[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \display_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[6]),
        .R(SR));
endmodule

module uart_rx_wrapper
   (o_rx_flag_err_OBUF,
    rx_ready,
    rx_serial_data_internal,
    D,
    \rx_data_reg[7] ,
    \FSM_onehot_state_reg[3] ,
    \disp_reg[6]_0 ,
    \an_reg[1]_0 ,
    SR,
    CLK,
    Q,
    rx_on_IBUF,
    rx_serial_data_IBUF,
    \rx_shift_reg_reg[7] ,
    wea_reg);
  output o_rx_flag_err_OBUF;
  output rx_ready;
  output rx_serial_data_internal;
  output [1:0]D;
  output [7:0]\rx_data_reg[7] ;
  output \FSM_onehot_state_reg[3] ;
  output [6:0]\disp_reg[6]_0 ;
  output [1:0]\an_reg[1]_0 ;
  input [0:0]SR;
  input CLK;
  input [3:0]Q;
  input rx_on_IBUF;
  input rx_serial_data_IBUF;
  input \rx_shift_reg_reg[7] ;
  input wea_reg;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_state_reg[3] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire an_i1;
  wire [1:0]\an_reg[1]_0 ;
  wire \cnt[0]_i_2_n_0 ;
  wire [18:18]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [6:0]disp1;
  wire [6:0]\disp_reg[6]_0 ;
  wire ln_n_0;
  wire ln_n_1;
  wire ln_n_2;
  wire ln_n_3;
  wire ln_n_4;
  wire ln_n_5;
  wire ln_n_6;
  wire o_rx_flag_err_OBUF;
  wire [0:0]p_1_out;
  wire [7:0]\rx_data_reg[7] ;
  wire rx_n_18;
  wire rx_n_19;
  wire rx_n_20;
  wire rx_n_21;
  wire rx_n_22;
  wire rx_n_5;
  wire rx_n_6;
  wire rx_n_7;
  wire rx_n_8;
  wire rx_n_9;
  wire rx_on_IBUF;
  wire rx_ready;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire \rx_shift_reg_reg[7] ;
  wire wea_reg;
  wire [2:0]\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \an[0]_i_1 
       (.I0(an_i1),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(p_1_out),
        .Q(\an_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[1] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(an_i1),
        .Q(\an_reg[1]_0 [1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({an_i1,cnt_reg,\cnt_reg_n_0_[17] ,\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(an_i1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[0] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_6),
        .Q(\disp_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[1] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_5),
        .Q(\disp_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[2] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_4),
        .Q(\disp_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[3] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_3),
        .Q(\disp_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[4] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_2),
        .Q(\disp_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[5] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_1),
        .Q(\disp_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \disp_reg[6] 
       (.C(CLK),
        .CE(cnt_reg),
        .D(ln_n_0),
        .Q(\disp_reg[6]_0 [6]),
        .R(1'b0));
  seven_seg ln
       (.CLK(CLK),
        .D({ln_n_0,ln_n_1,ln_n_2,ln_n_3,ln_n_4,ln_n_5,ln_n_6}),
        .Q(disp1),
        .SR(SR),
        .an_i1(an_i1),
        .\display_reg_reg[2]_0 (\rx_data_reg[7] [3:0]),
        .\display_reg_reg[6]_0 ({rx_n_5,rx_n_6,rx_n_7,rx_n_8,rx_n_9}));
  uart_rxm_ex rx
       (.CLK(CLK),
        .D(D),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3] ),
        .Q(Q),
        .SR(SR),
        .o_rx_flag_err_OBUF(o_rx_flag_err_OBUF),
        .ready_internal_reg_0(rx_ready),
        .\rx_data_reg[1]_0 ({rx_n_5,rx_n_6,rx_n_7,rx_n_8,rx_n_9}),
        .\rx_data_reg[5]_0 ({rx_n_18,rx_n_19,rx_n_20,rx_n_21,rx_n_22}),
        .\rx_data_reg[7]_0 (\rx_data_reg[7] ),
        .rx_on_IBUF(rx_on_IBUF),
        .rx_serial_data_IBUF(rx_serial_data_IBUF),
        .rx_serial_data_internal(rx_serial_data_internal),
        .\rx_shift_reg_reg[7]_0 (\rx_shift_reg_reg[7] ),
        .wea_reg(wea_reg));
  seven_seg_0 un
       (.CLK(CLK),
        .D({rx_n_18,rx_n_19,rx_n_20,rx_n_21,rx_n_22}),
        .Q(disp1),
        .SR(SR),
        .\display_reg_reg[2]_0 (\rx_data_reg[7] [7:4]));
endmodule

module uart_rxm_ex
   (o_rx_flag_err_OBUF,
    ready_internal_reg_0,
    rx_serial_data_internal,
    D,
    \rx_data_reg[1]_0 ,
    \rx_data_reg[7]_0 ,
    \rx_data_reg[5]_0 ,
    \FSM_onehot_state_reg[3] ,
    SR,
    CLK,
    Q,
    rx_on_IBUF,
    rx_serial_data_IBUF,
    \rx_shift_reg_reg[7]_0 ,
    wea_reg);
  output o_rx_flag_err_OBUF;
  output ready_internal_reg_0;
  output rx_serial_data_internal;
  output [1:0]D;
  output [4:0]\rx_data_reg[1]_0 ;
  output [7:0]\rx_data_reg[7]_0 ;
  output [4:0]\rx_data_reg[5]_0 ;
  output \FSM_onehot_state_reg[3] ;
  input [0:0]SR;
  input CLK;
  input [3:0]Q;
  input rx_on_IBUF;
  input rx_serial_data_IBUF;
  input \rx_shift_reg_reg[7]_0 ;
  input wea_reg;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire flag_err_internal;
  wire [13:1]in11;
  wire o_rx_flag_err_OBUF;
  wire ready_internal_i_1_n_0;
  wire ready_internal_reg_0;
  wire rx_data;
  wire [4:0]\rx_data_reg[1]_0 ;
  wire [4:0]\rx_data_reg[5]_0 ;
  wire [7:0]\rx_data_reg[7]_0 ;
  wire rx_on_IBUF;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire [7:0]rx_shift_reg;
  wire rx_shift_reg_0;
  wire \rx_shift_reg_reg[7]_0 ;
  wire sample_count;
  wire sample_count0_carry__0_n_0;
  wire sample_count0_carry__1_n_0;
  wire sample_count0_carry_n_0;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[11]_i_1_n_0 ;
  wire \sample_count[12]_i_1_n_0 ;
  wire \sample_count[13]_i_2_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[4]_i_1_n_0 ;
  wire \sample_count[5]_i_1_n_0 ;
  wire \sample_count[6]_i_1_n_0 ;
  wire \sample_count[7]_i_1_n_0 ;
  wire \sample_count[8]_i_1_n_0 ;
  wire \sample_count[9]_i_1_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[10] ;
  wire \sample_count_reg_n_0_[11] ;
  wire \sample_count_reg_n_0_[12] ;
  wire \sample_count_reg_n_0_[13] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire \sample_count_reg_n_0_[4] ;
  wire \sample_count_reg_n_0_[5] ;
  wire \sample_count_reg_n_0_[6] ;
  wire \sample_count_reg_n_0_[7] ;
  wire \sample_count_reg_n_0_[8] ;
  wire \sample_count_reg_n_0_[9] ;
  wire [0:0]state;
  wire wea_reg;
  wire [2:0]NLW_sample_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_count0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sample_count0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(rx_on_IBUF),
        .I1(rx_serial_data_IBUF),
        .I2(Q[0]),
        .I3(ready_internal_reg_0),
        .I4(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[2]),
        .I1(ready_internal_reg_0),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC1F0C1FFC100C10F)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\rx_shift_reg_reg[7]_0 ),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAFF0300)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFAAAA)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(\sample_count_reg_n_0_[7] ),
        .I4(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008FFFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_7_n_0 ),
        .I1(\FSM_sequential_state[1]_i_8_n_0 ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\sample_count_reg_n_0_[11] ),
        .I4(\sample_count_reg_n_0_[12] ),
        .I5(\sample_count_reg_n_0_[13] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\sample_count_reg_n_0_[12] ),
        .I2(\sample_count_reg_n_0_[13] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\sample_count_reg_n_0_[8] ),
        .I1(\sample_count_reg_n_0_[12] ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\sample_count_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\sample_count_reg_n_0_[6] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[5] ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\sample_count_reg_n_0_[9] ),
        .I1(\sample_count_reg_n_0_[8] ),
        .I2(\sample_count_reg_n_0_[7] ),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "starting:01,receiving:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state),
        .R(SR));
  (* FSM_ENCODED_STATES = "starting:01,receiving:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEC10)) 
    \bit_count[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFDF00200)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF0000080000)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \display_reg[1]_i_1 
       (.I0(\rx_data_reg[7]_0 [1]),
        .I1(\rx_data_reg[7]_0 [0]),
        .I2(\rx_data_reg[7]_0 [2]),
        .I3(\rx_data_reg[7]_0 [3]),
        .O(\rx_data_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \display_reg[1]_i_1__0 
       (.I0(\rx_data_reg[7]_0 [5]),
        .I1(\rx_data_reg[7]_0 [4]),
        .I2(\rx_data_reg[7]_0 [6]),
        .I3(\rx_data_reg[7]_0 [7]),
        .O(\rx_data_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \display_reg[3]_i_1 
       (.I0(\rx_data_reg[7]_0 [1]),
        .I1(\rx_data_reg[7]_0 [0]),
        .I2(\rx_data_reg[7]_0 [2]),
        .I3(\rx_data_reg[7]_0 [3]),
        .O(\rx_data_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \display_reg[3]_i_1__0 
       (.I0(\rx_data_reg[7]_0 [5]),
        .I1(\rx_data_reg[7]_0 [4]),
        .I2(\rx_data_reg[7]_0 [6]),
        .I3(\rx_data_reg[7]_0 [7]),
        .O(\rx_data_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h0004)) 
    \display_reg[4]_i_1 
       (.I0(\rx_data_reg[7]_0 [2]),
        .I1(\rx_data_reg[7]_0 [1]),
        .I2(\rx_data_reg[7]_0 [0]),
        .I3(\rx_data_reg[7]_0 [3]),
        .O(\rx_data_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \display_reg[4]_i_1__0 
       (.I0(\rx_data_reg[7]_0 [6]),
        .I1(\rx_data_reg[7]_0 [5]),
        .I2(\rx_data_reg[7]_0 [4]),
        .I3(\rx_data_reg[7]_0 [7]),
        .O(\rx_data_reg[5]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \display_reg[5]_i_1 
       (.I0(\rx_data_reg[7]_0 [1]),
        .I1(\rx_data_reg[7]_0 [0]),
        .I2(\rx_data_reg[7]_0 [2]),
        .I3(\rx_data_reg[7]_0 [3]),
        .O(\rx_data_reg[1]_0 [3]));
  LUT4 #(
    .INIT(16'h0060)) 
    \display_reg[5]_i_1__0 
       (.I0(\rx_data_reg[7]_0 [5]),
        .I1(\rx_data_reg[7]_0 [4]),
        .I2(\rx_data_reg[7]_0 [6]),
        .I3(\rx_data_reg[7]_0 [7]),
        .O(\rx_data_reg[5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_reg[6]_i_1 
       (.I0(\rx_data_reg[7]_0 [1]),
        .I1(\rx_data_reg[7]_0 [0]),
        .I2(\rx_data_reg[7]_0 [2]),
        .I3(\rx_data_reg[7]_0 [3]),
        .O(\rx_data_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_reg[6]_i_1__0 
       (.I0(\rx_data_reg[7]_0 [5]),
        .I1(\rx_data_reg[7]_0 [4]),
        .I2(\rx_data_reg[7]_0 [6]),
        .I3(\rx_data_reg[7]_0 [7]),
        .O(\rx_data_reg[5]_0 [4]));
  LUT4 #(
    .INIT(16'h100F)) 
    flag_err_internal_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(flag_err_internal));
  FDRE #(
    .INIT(1'b0)) 
    flag_err_internal_reg
       (.C(CLK),
        .CE(flag_err_internal),
        .D(\FSM_sequential_state_reg_n_0_[1] ),
        .Q(o_rx_flag_err_OBUF),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFC400C)) 
    ready_internal_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(ready_internal_reg_0),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_internal_i_1_n_0),
        .Q(ready_internal_reg_0),
        .S(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \rx_data[7]_i_1 
       (.I0(\rx_shift_reg_reg[7]_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(rx_data));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[0]),
        .Q(\rx_data_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[1]),
        .Q(\rx_data_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[2]),
        .Q(\rx_data_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[3]),
        .Q(\rx_data_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[4]),
        .Q(\rx_data_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[5]),
        .Q(\rx_data_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[6]),
        .Q(\rx_data_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[7]),
        .Q(\rx_data_reg[7]_0 [7]),
        .R(SR));
  LUT4 #(
    .INIT(16'hEAAA)) 
    rx_serial_data_internal_i_1
       (.I0(Q[1]),
        .I1(rx_on_IBUF),
        .I2(ready_internal_reg_0),
        .I3(Q[0]),
        .O(rx_serial_data_internal));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_shift_reg[7]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(rx_shift_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[1]),
        .Q(rx_shift_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[2]),
        .Q(rx_shift_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[3]),
        .Q(rx_shift_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[4]),
        .Q(rx_shift_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[5]),
        .Q(rx_shift_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[6]),
        .Q(rx_shift_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[7]),
        .Q(rx_shift_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(\rx_shift_reg_reg[7]_0 ),
        .Q(rx_shift_reg[7]),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry
       (.CI(1'b0),
        .CO({sample_count0_carry_n_0,NLW_sample_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[4:1]),
        .S({\sample_count_reg_n_0_[4] ,\sample_count_reg_n_0_[3] ,\sample_count_reg_n_0_[2] ,\sample_count_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__0
       (.CI(sample_count0_carry_n_0),
        .CO({sample_count0_carry__0_n_0,NLW_sample_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:5]),
        .S({\sample_count_reg_n_0_[8] ,\sample_count_reg_n_0_[7] ,\sample_count_reg_n_0_[6] ,\sample_count_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__1
       (.CI(sample_count0_carry__0_n_0),
        .CO({sample_count0_carry__1_n_0,NLW_sample_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[12:9]),
        .S({\sample_count_reg_n_0_[12] ,\sample_count_reg_n_0_[11] ,\sample_count_reg_n_0_[10] ,\sample_count_reg_n_0_[9] }));
  CARRY4 sample_count0_carry__2
       (.CI(sample_count0_carry__1_n_0),
        .CO(NLW_sample_count0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sample_count0_carry__2_O_UNCONNECTED[3:1],in11[13]}),
        .S({1'b0,1'b0,1'b0,\sample_count_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h555544445F500055)) 
    \sample_count[0]_i_1 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[10]_i_1 
       (.I0(in11[10]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[11]_i_1 
       (.I0(in11[11]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[12]_i_1 
       (.I0(in11[12]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF755F7)) 
    \sample_count[13]_i_1 
       (.I0(state),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(sample_count));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[13]_i_2 
       (.I0(in11[13]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[1]_i_1 
       (.I0(in11[1]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[2]_i_1 
       (.I0(in11[2]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[3]_i_1 
       (.I0(in11[3]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[4]_i_1 
       (.I0(in11[4]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[5]_i_1 
       (.I0(in11[5]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[6]_i_1 
       (.I0(in11[6]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[7]_i_1 
       (.I0(in11[7]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[8]_i_1 
       (.I0(in11[8]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AFA000AA)) 
    \sample_count[9]_i_1 
       (.I0(in11[9]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(state),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[11]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[12]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[13] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[13]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(CLK),
        .CE(sample_count),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hF5E0)) 
    wea_i_1
       (.I0(Q[3]),
        .I1(ready_internal_reg_0),
        .I2(Q[2]),
        .I3(wea_reg),
        .O(\FSM_onehot_state_reg[3] ));
endmodule

(* ADDRS_WIDTH = "8" *) (* BITCOUNTMAX = "8" *) (* DATAWIDTH = "8" *) 
(* ECO_CHECKSUM = "8202530d" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* RAMDEPTH = "256" *) (* SAMPLECOUNTMAX_RX = "10417" *) 
(* SAMPLECOUNTMAX_TX = "5209" *) (* idle = "3'b000" *) (* mem_read = "3'b100" *) 
(* mem_write = "3'b010" *) (* rx_data = "3'b001" *) (* rx_stop = "3'b011" *) 
(* tx_data = "3'b110" *) (* tx_idle = "3'b101" *) 
(* NotValidForBitStream *)
module uart_top
   (clk,
    rst,
    rx_serial_data,
    rx_on,
    tx_on,
    o_rx_flag_err,
    tx_serial_data,
    rx_disp,
    an);
  input clk;
  input rst;
  input rx_serial_data;
  input rx_on;
  input tx_on;
  output o_rx_flag_err;
  output tx_serial_data;
  output [6:0]rx_disp;
  output [7:0]an;

  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [7:0]an;
  wire [1:0]an_OBUF;
  wire clk;
  wire clk_2;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cntr;
  wire \cntr[0]_i_1_n_0 ;
  wire \cntr[1]_i_1_n_0 ;
  wire \cntr[2]_i_1_n_0 ;
  wire \cntr[3]_i_2_n_0 ;
  wire [3:0]cntr__0;
  wire enb_reg_n_0;
  wire o_rx_flag_err;
  wire o_rx_flag_err_OBUF;
  wire [7:0]o_rx_parallel_data;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire ram_addra;
  wire \ram_addra[7]_i_2_n_0 ;
  wire [7:0]ram_addra_reg__0;
  wire ram_addrb;
  wire \ram_addrb[7]_i_2_n_0 ;
  wire [7:0]ram_addrb_reg__0;
  wire rst;
  wire rst_IBUF;
  wire [6:0]rx_disp;
  wire [6:0]rx_disp_OBUF;
  wire rx_n_13;
  wire rx_n_3;
  wire rx_n_4;
  wire rx_on;
  wire rx_on_IBUF;
  wire rx_ready;
  wire rx_serial_data;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire rx_serial_data_internal_reg_n_0;
  wire tx_data_load__0;
  wire tx_n_0;
  wire tx_n_2;
  wire tx_n_3;
  wire tx_n_4;
  wire tx_n_5;
  wire tx_n_6;
  wire tx_on;
  wire tx_on_IBUF;
  wire [7:0]tx_parallel_data_c0_0;
  wire tx_serial_data;
  wire tx_serial_data_OBUF;
  wire wea_reg_n_0;

initial begin
 $sdf_annotate("uart_top_tb_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(ram_addrb),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ram_addra),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(cntr__0[3]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(tx_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(rx_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(rx_n_3),
        .Q(ram_addra),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(tx_n_3),
        .Q(ram_addrb),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(ram_addrb),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "tx_idle:0100000,mem_write:0000100,mem_read:0010000,tx_data:1000000,idle:0000001,rx_stop:0001000,rx_data:0000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(tx_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  BUFG \FSM_sequential_state_reg[1]_i_2 
       (.I(tx_n_0),
        .O(clk_2));
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
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cntr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(cntr__0[3]),
        .I2(cntr__0[0]),
        .O(\cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cntr[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(cntr__0[3]),
        .I2(cntr__0[0]),
        .I3(cntr__0[1]),
        .O(\cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \cntr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(cntr__0[3]),
        .I2(cntr__0[0]),
        .I3(cntr__0[1]),
        .I4(cntr__0[2]),
        .O(\cntr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cntr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(cntr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \cntr[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(cntr__0[3]),
        .I2(cntr__0[1]),
        .I3(cntr__0[0]),
        .I4(cntr__0[2]),
        .O(\cntr[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cntr),
        .D(\cntr[0]_i_1_n_0 ),
        .Q(cntr__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cntr),
        .D(\cntr[1]_i_1_n_0 ),
        .Q(cntr__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cntr),
        .D(\cntr[2]_i_1_n_0 ),
        .Q(cntr__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cntr),
        .D(\cntr[3]_i_2_n_0 ),
        .Q(cntr__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_n_6),
        .Q(enb_reg_n_0),
        .R(rst_IBUF));
  OBUF o_rx_flag_err_OBUF_inst
       (.I(o_rx_flag_err_OBUF),
        .O(o_rx_flag_err));
  ram_dp__sim_par ram
       (.CLK(clk_IBUF_BUFG),
        .D(tx_parallel_data_c0_0),
        .Q(ram_addra_reg__0),
        .SR(rst_IBUF),
        .ram_dp_reg_0(wea_reg_n_0),
        .ram_dp_reg_1(enb_reg_n_0),
        .ram_dp_reg_2(ram_addrb_reg__0),
        .ram_dp_reg_3(o_rx_parallel_data));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addra[0]_i_1 
       (.I0(ram_addra_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[1]_i_1 
       (.I0(ram_addra_reg__0[0]),
        .I1(ram_addra_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[2]_i_1 
       (.I0(ram_addra_reg__0[0]),
        .I1(ram_addra_reg__0[1]),
        .I2(ram_addra_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addra[3]_i_1 
       (.I0(ram_addra_reg__0[1]),
        .I1(ram_addra_reg__0[0]),
        .I2(ram_addra_reg__0[2]),
        .I3(ram_addra_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addra[4]_i_1 
       (.I0(ram_addra_reg__0[2]),
        .I1(ram_addra_reg__0[0]),
        .I2(ram_addra_reg__0[1]),
        .I3(ram_addra_reg__0[3]),
        .I4(ram_addra_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ram_addra[5]_i_1 
       (.I0(ram_addra_reg__0[3]),
        .I1(ram_addra_reg__0[1]),
        .I2(ram_addra_reg__0[0]),
        .I3(ram_addra_reg__0[2]),
        .I4(ram_addra_reg__0[4]),
        .I5(ram_addra_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[6]_i_1 
       (.I0(\ram_addra[7]_i_2_n_0 ),
        .I1(ram_addra_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[7]_i_1 
       (.I0(\ram_addra[7]_i_2_n_0 ),
        .I1(ram_addra_reg__0[6]),
        .I2(ram_addra_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ram_addra[7]_i_2 
       (.I0(ram_addra_reg__0[5]),
        .I1(ram_addra_reg__0[3]),
        .I2(ram_addra_reg__0[1]),
        .I3(ram_addra_reg__0[0]),
        .I4(ram_addra_reg__0[2]),
        .I5(ram_addra_reg__0[4]),
        .O(\ram_addra[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[0]),
        .Q(ram_addra_reg__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[1]),
        .Q(ram_addra_reg__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[2]),
        .Q(ram_addra_reg__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[3]),
        .Q(ram_addra_reg__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[4]),
        .Q(ram_addra_reg__0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[5]),
        .Q(ram_addra_reg__0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[6]),
        .Q(ram_addra_reg__0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addra),
        .D(p_0_in[7]),
        .Q(ram_addra_reg__0[7]),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addrb[0]_i_1 
       (.I0(ram_addrb_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addrb[1]_i_1 
       (.I0(ram_addrb_reg__0[0]),
        .I1(ram_addrb_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addrb[2]_i_1 
       (.I0(ram_addrb_reg__0[0]),
        .I1(ram_addrb_reg__0[1]),
        .I2(ram_addrb_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addrb[3]_i_1 
       (.I0(ram_addrb_reg__0[1]),
        .I1(ram_addrb_reg__0[0]),
        .I2(ram_addrb_reg__0[2]),
        .I3(ram_addrb_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addrb[4]_i_1 
       (.I0(ram_addrb_reg__0[2]),
        .I1(ram_addrb_reg__0[0]),
        .I2(ram_addrb_reg__0[1]),
        .I3(ram_addrb_reg__0[3]),
        .I4(ram_addrb_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ram_addrb[5]_i_1 
       (.I0(ram_addrb_reg__0[3]),
        .I1(ram_addrb_reg__0[1]),
        .I2(ram_addrb_reg__0[0]),
        .I3(ram_addrb_reg__0[2]),
        .I4(ram_addrb_reg__0[4]),
        .I5(ram_addrb_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addrb[6]_i_1 
       (.I0(\ram_addrb[7]_i_2_n_0 ),
        .I1(ram_addrb_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addrb[7]_i_1 
       (.I0(\ram_addrb[7]_i_2_n_0 ),
        .I1(ram_addrb_reg__0[6]),
        .I2(ram_addrb_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ram_addrb[7]_i_2 
       (.I0(ram_addrb_reg__0[5]),
        .I1(ram_addrb_reg__0[3]),
        .I2(ram_addrb_reg__0[1]),
        .I3(ram_addrb_reg__0[0]),
        .I4(ram_addrb_reg__0[2]),
        .I5(ram_addrb_reg__0[4]),
        .O(\ram_addrb[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[0]),
        .Q(ram_addrb_reg__0[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[1]),
        .Q(ram_addrb_reg__0[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[2]),
        .Q(ram_addrb_reg__0[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[3]),
        .Q(ram_addrb_reg__0[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[4]),
        .Q(ram_addrb_reg__0[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[5]),
        .Q(ram_addrb_reg__0[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[6]),
        .Q(ram_addrb_reg__0[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ram_addrb),
        .D(p_0_in__0[7]),
        .Q(ram_addrb_reg__0[7]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  uart_rx_wrapper rx
       (.CLK(clk_IBUF_BUFG),
        .D({rx_n_3,rx_n_4}),
        .\FSM_onehot_state_reg[3] (rx_n_13),
        .Q({ram_addra,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .SR(rst_IBUF),
        .\an_reg[1]_0 (an_OBUF),
        .\disp_reg[6]_0 (rx_disp_OBUF),
        .o_rx_flag_err_OBUF(o_rx_flag_err_OBUF),
        .\rx_data_reg[7] (o_rx_parallel_data),
        .rx_on_IBUF(rx_on_IBUF),
        .rx_ready(rx_ready),
        .rx_serial_data_IBUF(rx_serial_data_IBUF),
        .rx_serial_data_internal(rx_serial_data_internal),
        .\rx_shift_reg_reg[7] (rx_serial_data_internal_reg_n_0),
        .wea_reg(wea_reg_n_0));
  OBUF \rx_disp_OBUF[0]_inst 
       (.I(rx_disp_OBUF[0]),
        .O(rx_disp[0]));
  OBUF \rx_disp_OBUF[1]_inst 
       (.I(rx_disp_OBUF[1]),
        .O(rx_disp[1]));
  OBUF \rx_disp_OBUF[2]_inst 
       (.I(rx_disp_OBUF[2]),
        .O(rx_disp[2]));
  OBUF \rx_disp_OBUF[3]_inst 
       (.I(rx_disp_OBUF[3]),
        .O(rx_disp[3]));
  OBUF \rx_disp_OBUF[4]_inst 
       (.I(rx_disp_OBUF[4]),
        .O(rx_disp[4]));
  OBUF \rx_disp_OBUF[5]_inst 
       (.I(rx_disp_OBUF[5]),
        .O(rx_disp[5]));
  OBUF \rx_disp_OBUF[6]_inst 
       (.I(rx_disp_OBUF[6]),
        .O(rx_disp[6]));
  IBUF rx_on_IBUF_inst
       (.I(rx_on),
        .O(rx_on_IBUF));
  IBUF rx_serial_data_IBUF_inst
       (.I(rx_serial_data),
        .O(rx_serial_data_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    rx_serial_data_internal_reg
       (.C(clk_IBUF_BUFG),
        .CE(rx_serial_data_internal),
        .D(rx_serial_data_IBUF),
        .Q(rx_serial_data_internal_reg_n_0),
        .S(rst_IBUF));
  uart_tx_wrapper tx
       (.CLK(clk_IBUF_BUFG),
        .D({tx_n_2,tx_n_3,tx_n_4}),
        .\FSM_onehot_state_reg[4] (tx_n_5),
        .\FSM_onehot_state_reg[4]_0 (tx_n_6),
        .Q({\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,ram_addrb,ram_addra,\FSM_onehot_state_reg_n_0_[0] }),
        .SR(rst_IBUF),
        .clk_2(clk_2),
        .enb_reg(enb_reg_n_0),
        .q_reg(tx_n_0),
        .rx_on_IBUF(rx_on_IBUF),
        .rx_ready(rx_ready),
        .rx_serial_data_IBUF(rx_serial_data_IBUF),
        .tx_data_load__0(tx_data_load__0),
        .tx_on_IBUF(tx_on_IBUF),
        .\tx_parallel_data_c1_0_reg[7]_0 (tx_parallel_data_c0_0),
        .tx_serial_data_OBUF(tx_serial_data_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_n_5),
        .Q(tx_data_load__0),
        .R(rst_IBUF));
  IBUF tx_on_IBUF_inst
       (.I(tx_on),
        .O(tx_on_IBUF));
  OBUF tx_serial_data_OBUF_inst
       (.I(tx_serial_data_OBUF),
        .O(tx_serial_data));
  FDRE #(
    .INIT(1'b0)) 
    wea_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_n_13),
        .Q(wea_reg_n_0),
        .R(rst_IBUF));
endmodule

module uart_tx_wrapper
   (q_reg,
    tx_serial_data_OBUF,
    D,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[4]_0 ,
    CLK,
    SR,
    tx_data_load__0,
    clk_2,
    Q,
    tx_on_IBUF,
    rx_on_IBUF,
    rx_ready,
    rx_serial_data_IBUF,
    enb_reg,
    \tx_parallel_data_c1_0_reg[7]_0 );
  output q_reg;
  output tx_serial_data_OBUF;
  output [2:0]D;
  output \FSM_onehot_state_reg[4] ;
  output \FSM_onehot_state_reg[4]_0 ;
  input CLK;
  input [0:0]SR;
  input tx_data_load__0;
  input clk_2;
  input [4:0]Q;
  input tx_on_IBUF;
  input rx_on_IBUF;
  input rx_ready;
  input rx_serial_data_IBUF;
  input enb_reg;
  input [7:0]\tx_parallel_data_c1_0_reg[7]_0 ;

  wire CLK;
  wire [2:0]D;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_2;
  wire enb;
  wire enb_reg;
  wire q_reg;
  wire ready_internal;
  wire rx_on_IBUF;
  wire rx_ready;
  wire rx_serial_data_IBUF;
  wire tx_data_load__0;
  wire tx_data_load_c0_0;
  wire tx_data_load_c1_0;
  wire tx_data_load_c1_1;
  wire tx_on_IBUF;
  wire [7:0]tx_parallel_data_c1_0;
  wire [7:0]\tx_parallel_data_c1_0_reg[7]_0 ;
  wire [7:0]tx_parallel_data_c1_1;
  wire tx_ready;
  wire tx_ready_c0_1;
  wire tx_ready_c1_0;
  wire tx_serial_data_OBUF;
  wire tx_serial_data_c0_1;
  wire tx_serial_data_c1_0;
  wire tx_serial_data_int;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(tx_ready),
        .I3(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA2AAA2A002AAA2A)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(Q[0]),
        .I1(tx_ready),
        .I2(tx_on_IBUF),
        .I3(rx_on_IBUF),
        .I4(rx_ready),
        .I5(rx_serial_data_IBUF),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[0]),
        .I1(tx_on_IBUF),
        .I2(tx_ready),
        .I3(rx_on_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(Q[3]),
        .I1(tx_ready),
        .I2(Q[4]),
        .O(D[2]));
  ff clk_div
       (.CLK(CLK),
        .q_reg_0(q_reg));
  LUT6 #(
    .INIT(64'hF5F55555B0A00000)) 
    enb_i_1
       (.I0(Q[2]),
        .I1(rx_on_IBUF),
        .I2(tx_ready),
        .I3(tx_on_IBUF),
        .I4(Q[0]),
        .I5(enb_reg),
        .O(\FSM_onehot_state_reg[4]_0 ));
  uart_txm_ex tx
       (.Q(tx_parallel_data_c1_1),
        .SR(SR),
        .clk_2(clk_2),
        .ready_internal(ready_internal),
        .tx_data_load_c1_1(tx_data_load_c1_1),
        .tx_serial_data_int(tx_serial_data_int));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_c0_0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_data_load__0),
        .Q(tx_data_load_c0_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_c1_0_reg
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_data_load_c0_0),
        .Q(tx_data_load_c1_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_c1_1_reg
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_data_load_c1_0),
        .Q(tx_data_load_c1_1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    tx_data_load_i_1
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(enb),
        .I3(tx_data_load__0),
        .O(\FSM_onehot_state_reg[4] ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    tx_data_load_i_2
       (.I0(Q[2]),
        .I1(rx_on_IBUF),
        .I2(tx_ready),
        .I3(tx_on_IBUF),
        .I4(Q[0]),
        .O(enb));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[0] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [0]),
        .Q(tx_parallel_data_c1_0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[1] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [1]),
        .Q(tx_parallel_data_c1_0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[2] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [2]),
        .Q(tx_parallel_data_c1_0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[3] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [3]),
        .Q(tx_parallel_data_c1_0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[4] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [4]),
        .Q(tx_parallel_data_c1_0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[5] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [5]),
        .Q(tx_parallel_data_c1_0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[6] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [6]),
        .Q(tx_parallel_data_c1_0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_0_reg[7] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\tx_parallel_data_c1_0_reg[7]_0 [7]),
        .Q(tx_parallel_data_c1_0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[0] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[0]),
        .Q(tx_parallel_data_c1_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[1] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[1]),
        .Q(tx_parallel_data_c1_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[2] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[2]),
        .Q(tx_parallel_data_c1_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[3] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[3]),
        .Q(tx_parallel_data_c1_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[4] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[4]),
        .Q(tx_parallel_data_c1_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[5] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[5]),
        .Q(tx_parallel_data_c1_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[6] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[6]),
        .Q(tx_parallel_data_c1_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_parallel_data_c1_1_reg[7] 
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_parallel_data_c1_0[7]),
        .Q(tx_parallel_data_c1_1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_ready_c0_0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_ready_c0_1),
        .Q(tx_ready),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    tx_ready_c0_1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_ready_c1_0),
        .Q(tx_ready_c0_1),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    tx_ready_c1_0_reg
       (.C(clk_2),
        .CE(1'b1),
        .D(ready_internal),
        .Q(tx_ready_c1_0),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_serial_data_c0_0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_serial_data_c0_1),
        .Q(tx_serial_data_OBUF),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_c0_1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_serial_data_c1_0),
        .Q(tx_serial_data_c0_1),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_c1_0_reg
       (.C(clk_2),
        .CE(1'b1),
        .D(tx_serial_data_int),
        .Q(tx_serial_data_c1_0),
        .S(SR));
endmodule

module uart_txm_ex
   (tx_serial_data_int,
    ready_internal,
    SR,
    clk_2,
    tx_data_load_c1_1,
    Q);
  output tx_serial_data_int;
  output ready_internal;
  input [0:0]SR;
  input clk_2;
  input tx_data_load_c1_1;
  input [7:0]Q;

  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_state[1]_i_5__0_n_0 ;
  wire \FSM_sequential_state[1]_i_6__0_n_0 ;
  wire \FSM_sequential_state[1]_i_7__0_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire clk_2;
  wire ready_internal;
  wire ready_internal_i_1__0_n_0;
  wire sample_count0_carry__0_n_0;
  wire sample_count0_carry__0_n_4;
  wire sample_count0_carry__0_n_5;
  wire sample_count0_carry__0_n_6;
  wire sample_count0_carry__0_n_7;
  wire sample_count0_carry__1_n_4;
  wire sample_count0_carry__1_n_5;
  wire sample_count0_carry__1_n_6;
  wire sample_count0_carry__1_n_7;
  wire sample_count0_carry_n_0;
  wire sample_count0_carry_n_4;
  wire sample_count0_carry_n_5;
  wire sample_count0_carry_n_6;
  wire sample_count0_carry_n_7;
  wire \sample_count[0]_i_1__0_n_0 ;
  wire \sample_count[10]_i_1__0_n_0 ;
  wire \sample_count[11]_i_1__0_n_0 ;
  wire \sample_count[12]_i_2_n_0 ;
  wire \sample_count[12]_i_3_n_0 ;
  wire \sample_count[12]_i_4_n_0 ;
  wire \sample_count[12]_i_5_n_0 ;
  wire \sample_count[1]_i_1__0_n_0 ;
  wire \sample_count[2]_i_1__0_n_0 ;
  wire \sample_count[3]_i_1__0_n_0 ;
  wire \sample_count[4]_i_1__0_n_0 ;
  wire \sample_count[5]_i_1__0_n_0 ;
  wire \sample_count[6]_i_1__0_n_0 ;
  wire \sample_count[7]_i_1__0_n_0 ;
  wire \sample_count[8]_i_1__0_n_0 ;
  wire \sample_count[9]_i_1__0_n_0 ;
  wire \sample_count_reg_n_0_[0] ;
  wire \sample_count_reg_n_0_[10] ;
  wire \sample_count_reg_n_0_[11] ;
  wire \sample_count_reg_n_0_[12] ;
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire \sample_count_reg_n_0_[4] ;
  wire \sample_count_reg_n_0_[5] ;
  wire \sample_count_reg_n_0_[6] ;
  wire \sample_count_reg_n_0_[7] ;
  wire \sample_count_reg_n_0_[8] ;
  wire \sample_count_reg_n_0_[9] ;
  wire [1:0]state;
  wire tx_data_load_c1_1;
  wire [7:0]tx_reg;
  wire \tx_reg[0]_i_1_n_0 ;
  wire \tx_reg[1]_i_1_n_0 ;
  wire \tx_reg[2]_i_1_n_0 ;
  wire \tx_reg[3]_i_1_n_0 ;
  wire \tx_reg[4]_i_1_n_0 ;
  wire \tx_reg[5]_i_1_n_0 ;
  wire \tx_reg[6]_i_1_n_0 ;
  wire \tx_reg[7]_i_2_n_0 ;
  wire tx_reg_0;
  wire tx_serial_data_int;
  wire tx_serial_data_internal;
  wire tx_serial_data_internal_i_1_n_0;
  wire [7:0]tx_shift_reg;
  wire tx_shift_reg_1;
  wire \tx_shift_reg_reg_n_0_[0] ;
  wire \tx_shift_reg_reg_n_0_[1] ;
  wire \tx_shift_reg_reg_n_0_[2] ;
  wire \tx_shift_reg_reg_n_0_[3] ;
  wire \tx_shift_reg_reg_n_0_[4] ;
  wire \tx_shift_reg_reg_n_0_[5] ;
  wire \tx_shift_reg_reg_n_0_[6] ;
  wire \tx_shift_reg_reg_n_0_[7] ;
  wire [2:0]NLW_sample_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sample_count0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sample_count0_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h02020E02F2F20E02)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(tx_data_load_c1_1),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I5(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFC8C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h05FFFFFF05FF45FF)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\FSM_sequential_state[1]_i_5__0_n_0 ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\sample_count_reg_n_0_[12] ),
        .I4(\FSM_sequential_state[1]_i_6__0_n_0 ),
        .I5(\FSM_sequential_state[1]_i_7__0_n_0 ),
        .O(\FSM_sequential_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h5545444400000000)) 
    \FSM_sequential_state[1]_i_4__0 
       (.I0(state[1]),
        .I1(\sample_count_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[1]_i_5__0_n_0 ),
        .I3(\FSM_sequential_state[1]_i_6__0_n_0 ),
        .I4(\sample_count_reg_n_0_[10] ),
        .I5(\sample_count_reg_n_0_[12] ),
        .O(\FSM_sequential_state[1]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h15FF)) 
    \FSM_sequential_state[1]_i_5__0 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[6] ),
        .O(\FSM_sequential_state[1]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_6__0 
       (.I0(\sample_count_reg_n_0_[7] ),
        .I1(\sample_count_reg_n_0_[8] ),
        .I2(\sample_count_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[1]_i_7__0 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\sample_count_reg_n_0_[2] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(\sample_count_reg_n_0_[5] ),
        .I4(\sample_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_7__0_n_0 ));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEA04)) 
    \bit_count[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I3(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCDC0020)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F7F000000800)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_2),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFDFD01C1)) 
    ready_internal_i_1__0
       (.I0(tx_data_load_c1_1),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(ready_internal),
        .O(ready_internal_i_1__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(clk_2),
        .CE(1'b1),
        .D(ready_internal_i_1__0_n_0),
        .Q(ready_internal),
        .S(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry
       (.CI(1'b0),
        .CO({sample_count0_carry_n_0,NLW_sample_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry_n_4,sample_count0_carry_n_5,sample_count0_carry_n_6,sample_count0_carry_n_7}),
        .S({\sample_count_reg_n_0_[4] ,\sample_count_reg_n_0_[3] ,\sample_count_reg_n_0_[2] ,\sample_count_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__0
       (.CI(sample_count0_carry_n_0),
        .CO({sample_count0_carry__0_n_0,NLW_sample_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__0_n_4,sample_count0_carry__0_n_5,sample_count0_carry__0_n_6,sample_count0_carry__0_n_7}),
        .S({\sample_count_reg_n_0_[8] ,\sample_count_reg_n_0_[7] ,\sample_count_reg_n_0_[6] ,\sample_count_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 sample_count0_carry__1
       (.CI(sample_count0_carry__0_n_0),
        .CO(NLW_sample_count0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__1_n_4,sample_count0_carry__1_n_5,sample_count0_carry__1_n_6,sample_count0_carry__1_n_7}),
        .S({\sample_count_reg_n_0_[12] ,\sample_count_reg_n_0_[11] ,\sample_count_reg_n_0_[10] ,\sample_count_reg_n_0_[9] }));
  LUT5 #(
    .INIT(32'h11101010)) 
    \sample_count[0]_i_1__0 
       (.I0(\sample_count_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .O(\sample_count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[10]_i_1__0 
       (.I0(sample_count0_carry__1_n_6),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[11]_i_1__0 
       (.I0(sample_count0_carry__1_n_5),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[11]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \sample_count[12]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .O(tx_serial_data_internal));
  LUT6 #(
    .INIT(64'hAA8AAA80AA000000)) 
    \sample_count[12]_i_2 
       (.I0(sample_count0_carry__1_n_4),
        .I1(\sample_count[12]_i_3_n_0 ),
        .I2(\sample_count[12]_i_4_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_5_n_0 ),
        .I5(state[1]),
        .O(\sample_count[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \sample_count[12]_i_3 
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(\sample_count_reg_n_0_[10] ),
        .I2(\sample_count_reg_n_0_[6] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(\sample_count_reg_n_0_[4] ),
        .I5(\sample_count_reg_n_0_[12] ),
        .O(\sample_count[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sample_count[12]_i_4 
       (.I0(\sample_count_reg_n_0_[1] ),
        .I1(\sample_count_reg_n_0_[5] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(\sample_count_reg_n_0_[2] ),
        .I4(\sample_count_reg_n_0_[11] ),
        .I5(\FSM_sequential_state[1]_i_6__0_n_0 ),
        .O(\sample_count[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55557F77)) 
    \sample_count[12]_i_5 
       (.I0(\sample_count_reg_n_0_[12] ),
        .I1(\sample_count_reg_n_0_[10] ),
        .I2(\FSM_sequential_state[1]_i_6__0_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5__0_n_0 ),
        .I4(\sample_count_reg_n_0_[11] ),
        .O(\sample_count[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[1]_i_1__0 
       (.I0(sample_count0_carry_n_7),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[2]_i_1__0 
       (.I0(sample_count0_carry_n_6),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[3]_i_1__0 
       (.I0(sample_count0_carry_n_5),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[4]_i_1__0 
       (.I0(sample_count0_carry_n_4),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[5]_i_1__0 
       (.I0(sample_count0_carry__0_n_7),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[6]_i_1__0 
       (.I0(sample_count0_carry__0_n_6),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[7]_i_1__0 
       (.I0(sample_count0_carry__0_n_5),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[8]_i_1__0 
       (.I0(sample_count0_carry__0_n_4),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA888A880A800A880)) 
    \sample_count[9]_i_1__0 
       (.I0(sample_count0_carry__1_n_7),
        .I1(state[1]),
        .I2(\sample_count[12]_i_5_n_0 ),
        .I3(state[0]),
        .I4(\sample_count[12]_i_4_n_0 ),
        .I5(\sample_count[12]_i_3_n_0 ),
        .O(\sample_count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[0]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[10]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[11]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[12]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[1]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[2]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[3]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[4]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[5]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[6]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[7]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[8]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[9]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[0]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[0]),
        .O(\tx_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[1]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[1]),
        .O(\tx_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[2]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[2]),
        .O(\tx_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[3]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[3]),
        .O(\tx_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[4]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[4]),
        .O(\tx_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[5]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[5]),
        .O(\tx_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[6]_i_1 
       (.I0(tx_data_load_c1_1),
        .I1(Q[6]),
        .O(\tx_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_reg[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(tx_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[7]_i_2 
       (.I0(tx_data_load_c1_1),
        .I1(Q[7]),
        .O(\tx_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[0]_i_1_n_0 ),
        .Q(tx_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[1]_i_1_n_0 ),
        .Q(tx_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[2]_i_1_n_0 ),
        .Q(tx_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[3]_i_1_n_0 ),
        .Q(tx_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[4]_i_1_n_0 ),
        .Q(tx_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[5]_i_1_n_0 ),
        .Q(tx_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[6]_i_1_n_0 ),
        .Q(tx_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(clk_2),
        .CE(tx_reg_0),
        .D(\tx_reg[7]_i_2_n_0 ),
        .Q(tx_reg[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'hB833)) 
    tx_serial_data_internal_i_1
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state[0]),
        .I2(\tx_shift_reg_reg_n_0_[0] ),
        .I3(state[1]),
        .O(tx_serial_data_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_internal_reg
       (.C(clk_2),
        .CE(tx_serial_data_internal),
        .D(tx_serial_data_internal_i_1_n_0),
        .Q(tx_serial_data_int),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[0]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[1] ),
        .I2(tx_reg[0]),
        .I3(state[0]),
        .O(tx_shift_reg[0]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[1]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[2] ),
        .I2(tx_reg[1]),
        .I3(state[0]),
        .O(tx_shift_reg[1]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[2]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[3] ),
        .I2(tx_reg[2]),
        .I3(state[0]),
        .O(tx_shift_reg[2]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[3]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[4] ),
        .I2(tx_reg[3]),
        .I3(state[0]),
        .O(tx_shift_reg[3]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[4]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[5] ),
        .I2(tx_reg[4]),
        .I3(state[0]),
        .O(tx_shift_reg[4]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[5]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[6] ),
        .I2(tx_reg[5]),
        .I3(state[0]),
        .O(tx_shift_reg[5]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \tx_shift_reg[6]_i_1 
       (.I0(state[1]),
        .I1(\tx_shift_reg_reg_n_0_[7] ),
        .I2(tx_reg[6]),
        .I3(state[0]),
        .O(tx_shift_reg[6]));
  LUT4 #(
    .INIT(16'hFF07)) 
    \tx_shift_reg[7]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .O(tx_shift_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_shift_reg[7]_i_2 
       (.I0(tx_reg[7]),
        .I1(state[0]),
        .O(tx_shift_reg[7]));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[0] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[0]),
        .Q(\tx_shift_reg_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[1] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[1]),
        .Q(\tx_shift_reg_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[2] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[2]),
        .Q(\tx_shift_reg_reg_n_0_[2] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[3] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[3]),
        .Q(\tx_shift_reg_reg_n_0_[3] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[4] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[4]),
        .Q(\tx_shift_reg_reg_n_0_[4] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[5] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[5]),
        .Q(\tx_shift_reg_reg_n_0_[5] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[6] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[6]),
        .Q(\tx_shift_reg_reg_n_0_[6] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[7] 
       (.C(clk_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[7]),
        .Q(\tx_shift_reg_reg_n_0_[7] ),
        .S(SR));
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
