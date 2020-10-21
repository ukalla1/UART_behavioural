// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Oct 21 14:53:11 2020
// Host        : ukallakuri-Lenovo-YOGA-910-13IKB running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ukallakuri/hardware_design/designs/uart/UART_behavioural/UART_behavioural.sim/sim_1/synth/timing/xsim/uart_top_tb_time_synth.v
// Design      : uart_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

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
    \tx_reg_reg[0] ,
    E,
    clk_IBUF_BUFG,
    wea,
    Q,
    \doutb_internal_reg[7]_0 ,
    \doutb_internal_reg[7]_1 );
  output [7:0]D;
  input \tx_reg_reg[0] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input wea;
  input [7:0]Q;
  input [4:0]\doutb_internal_reg[7]_0 ;
  input [4:0]\doutb_internal_reg[7]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]doutb_internal;
  wire [7:0]doutb_internal0;
  wire [4:0]\doutb_internal_reg[7]_0 ;
  wire [4:0]\doutb_internal_reg[7]_1 ;
  wire \tx_reg_reg[0] ;
  wire wea;
  wire [1:0]NLW_ram_dp_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_dp_reg_0_31_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[0]),
        .Q(doutb_internal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[1]),
        .Q(doutb_internal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[2]),
        .Q(doutb_internal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[3]),
        .Q(doutb_internal[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[4]),
        .Q(doutb_internal[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[5]),
        .Q(doutb_internal[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[6]),
        .Q(doutb_internal[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_internal_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(doutb_internal0[7]),
        .Q(doutb_internal[7]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ ram_dp_reg_0_31_0_5
       (.ADDRA(\doutb_internal_reg[7]_0 ),
        .ADDRB(\doutb_internal_reg[7]_0 ),
        .ADDRC(\doutb_internal_reg[7]_0 ),
        .ADDRD(\doutb_internal_reg[7]_1 ),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[1:0]),
        .DOB(doutb_internal0[3:2]),
        .DOC(doutb_internal0[5:4]),
        .DOD(NLW_ram_dp_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wea));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M_HD1 ram_dp_reg_0_31_6_7
       (.ADDRA(\doutb_internal_reg[7]_0 ),
        .ADDRB(\doutb_internal_reg[7]_0 ),
        .ADDRC(\doutb_internal_reg[7]_0 ),
        .ADDRD(\doutb_internal_reg[7]_1 ),
        .DIA(Q[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_internal0[7:6]),
        .DOB(NLW_ram_dp_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_dp_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_dp_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wea));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[0]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[1]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[2]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[3]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[4]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[5]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[6]_i_1 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[7]_i_2 
       (.I0(\tx_reg_reg[0] ),
        .I1(doutb_internal[7]),
        .O(D[7]));
endmodule

module uart_rx_wrapper
   (o_rx_flag_err_OBUF,
    ready_internal_reg,
    ready_internal_reg_0,
    rx_serial_data_internal,
    \FSM_sequential_state_reg[0] ,
    Q,
    rst_IBUF,
    CLK,
    state,
    tx_ready,
    \rx_shift_reg_reg[7] ,
    rx_on_IBUF,
    rx_serial_data_IBUF,
    wea);
  output o_rx_flag_err_OBUF;
  output ready_internal_reg;
  output ready_internal_reg_0;
  output rx_serial_data_internal;
  output \FSM_sequential_state_reg[0] ;
  output [7:0]Q;
  input rst_IBUF;
  input CLK;
  input [2:0]state;
  input tx_ready;
  input \rx_shift_reg_reg[7] ;
  input rx_on_IBUF;
  input rx_serial_data_IBUF;
  input wea;

  wire CLK;
  wire \FSM_sequential_state_reg[0] ;
  wire [7:0]Q;
  wire o_rx_flag_err_OBUF;
  wire ready_internal_reg;
  wire ready_internal_reg_0;
  wire rst_IBUF;
  wire rx_on_IBUF;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire \rx_shift_reg_reg[7] ;
  wire [2:0]state;
  wire tx_ready;
  wire wea;

  uart_rxm_ex rx
       (.CLK(CLK),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .Q(Q),
        .o_rx_flag_err_OBUF(o_rx_flag_err_OBUF),
        .ready_internal_reg_0(ready_internal_reg),
        .ready_internal_reg_1(ready_internal_reg_0),
        .rst_IBUF(rst_IBUF),
        .rx_on_IBUF(rx_on_IBUF),
        .rx_serial_data_IBUF(rx_serial_data_IBUF),
        .rx_serial_data_internal(rx_serial_data_internal),
        .\rx_shift_reg_reg[7]_0 (\rx_shift_reg_reg[7] ),
        .state(state),
        .tx_ready(tx_ready),
        .wea(wea));
endmodule

module uart_rxm_ex
   (o_rx_flag_err_OBUF,
    ready_internal_reg_0,
    ready_internal_reg_1,
    rx_serial_data_internal,
    \FSM_sequential_state_reg[0]_0 ,
    Q,
    rst_IBUF,
    CLK,
    state,
    tx_ready,
    \rx_shift_reg_reg[7]_0 ,
    rx_on_IBUF,
    rx_serial_data_IBUF,
    wea);
  output o_rx_flag_err_OBUF;
  output ready_internal_reg_0;
  output ready_internal_reg_1;
  output rx_serial_data_internal;
  output \FSM_sequential_state_reg[0]_0 ;
  output [7:0]Q;
  input rst_IBUF;
  input CLK;
  input [2:0]state;
  input tx_ready;
  input \rx_shift_reg_reg[7]_0 ;
  input rx_on_IBUF;
  input rx_serial_data_IBUF;
  input wea;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [7:0]Q;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire flag_err_internal;
  wire flag_err_internal_i_1_n_0;
  wire [13:1]in16;
  wire o_rx_flag_err_OBUF;
  wire ready_internal_i_1__0_n_0;
  wire ready_internal_reg_0;
  wire ready_internal_reg_1;
  wire rst_IBUF;
  wire rx_data;
  wire rx_on_IBUF;
  wire rx_ready;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire [7:0]rx_shift_reg;
  wire rx_shift_reg_0;
  wire \rx_shift_reg_reg[7]_0 ;
  wire sample_count0_carry__0_n_0;
  wire sample_count0_carry__0_n_1;
  wire sample_count0_carry__0_n_2;
  wire sample_count0_carry__0_n_3;
  wire sample_count0_carry__1_n_0;
  wire sample_count0_carry__1_n_1;
  wire sample_count0_carry__1_n_2;
  wire sample_count0_carry__1_n_3;
  wire sample_count0_carry_n_0;
  wire sample_count0_carry_n_1;
  wire sample_count0_carry_n_2;
  wire sample_count0_carry_n_3;
  wire \sample_count[0]_i_1__0_n_0 ;
  wire \sample_count[10]_i_1__0_n_0 ;
  wire \sample_count[11]_i_1__0_n_0 ;
  wire \sample_count[12]_i_1__0_n_0 ;
  wire \sample_count[13]_i_1_n_0 ;
  wire \sample_count[13]_i_2_n_0 ;
  wire \sample_count[13]_i_3_n_0 ;
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
  wire [2:0]state;
  wire state1;
  wire [0:0]state_1;
  wire tx_ready;
  wire wea;
  wire [3:0]NLW_sample_count0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sample_count0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFBAA0BFA)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(tx_ready),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(ready_internal_reg_1));
  LUT6 #(
    .INIT(64'hFA03FA030A030AF3)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(state1),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(flag_err_internal),
        .I3(state_1),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00005555000000C0)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(state[1]),
        .I1(rx_on_IBUF),
        .I2(rx_ready),
        .I3(rx_serial_data_IBUF),
        .I4(state[0]),
        .I5(state[2]),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF101F0F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state1),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(flag_err_internal),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state_1),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF02C)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(rx_ready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(ready_internal_reg_0));
  LUT6 #(
    .INIT(64'h00000000008FFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\sample_count_reg_n_0_[11] ),
        .I4(\sample_count_reg_n_0_[12] ),
        .I5(\sample_count_reg_n_0_[13] ),
        .O(state1));
  LUT5 #(
    .INIT(32'hBAFFAAAA)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_6_n_0 ),
        .I1(\sample_count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state[1]_i_7_n_0 ),
        .I3(\sample_count_reg_n_0_[7] ),
        .I4(\FSM_sequential_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\sample_count_reg_n_0_[6] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[3] ),
        .I3(\sample_count_reg_n_0_[5] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\sample_count_reg_n_0_[9] ),
        .I1(\sample_count_reg_n_0_[8] ),
        .I2(\sample_count_reg_n_0_[7] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\sample_count_reg_n_0_[12] ),
        .I2(\sample_count_reg_n_0_[13] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\sample_count_reg_n_0_[5] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .I3(\sample_count_reg_n_0_[3] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\sample_count_reg_n_0_[8] ),
        .I1(\sample_count_reg_n_0_[12] ),
        .I2(\sample_count_reg_n_0_[10] ),
        .I3(\sample_count_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "starting:01,receiving:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__1_n_0 ),
        .Q(state_1),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "starting:01,receiving:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(flag_err_internal),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEC10)) 
    \bit_count[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state_1),
        .I2(flag_err_internal),
        .I3(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hECFC1000)) 
    \bit_count[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state_1),
        .I2(flag_err_internal),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECFCFCFC10000000)) 
    \bit_count[2]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state_1),
        .I2(flag_err_internal),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'h0525)) 
    flag_err_internal_i_1
       (.I0(state_1),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(flag_err_internal),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .O(flag_err_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_err_internal_reg
       (.C(CLK),
        .CE(flag_err_internal_i_1_n_0),
        .D(flag_err_internal),
        .Q(o_rx_flag_err_OBUF),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFA2500)) 
    ready_internal_i_1__0
       (.I0(state_1),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(flag_err_internal),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .I4(rx_ready),
        .O(ready_internal_i_1__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_internal_i_1__0_n_0),
        .Q(rx_ready),
        .S(rst_IBUF));
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_data[7]_i_1 
       (.I0(state_1),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(flag_err_internal),
        .I3(\rx_shift_reg_reg[7]_0 ),
        .O(rx_data));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[0]),
        .Q(Q[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[1]),
        .Q(Q[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[2]),
        .Q(Q[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[3]),
        .Q(Q[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[4]),
        .Q(Q[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[5]),
        .Q(Q[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[6]),
        .Q(Q[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(rx_data),
        .D(rx_shift_reg[7]),
        .Q(Q[7]),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h11101010)) 
    rx_serial_data_internal_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rx_ready),
        .I4(rx_on_IBUF),
        .O(rx_serial_data_internal));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_shift_reg[7]_i_1 
       (.I0(state_1),
        .I1(flag_err_internal),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(rx_shift_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[0] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[1]),
        .Q(rx_shift_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[1] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[2]),
        .Q(rx_shift_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[2] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[3]),
        .Q(rx_shift_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[3] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[4]),
        .Q(rx_shift_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[4] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[5]),
        .Q(rx_shift_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[5] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[6]),
        .Q(rx_shift_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[6] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(rx_shift_reg[7]),
        .Q(rx_shift_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg_reg[7] 
       (.C(CLK),
        .CE(rx_shift_reg_0),
        .D(\rx_shift_reg_reg[7]_0 ),
        .Q(rx_shift_reg[7]),
        .R(rst_IBUF));
  CARRY4 sample_count0_carry
       (.CI(1'b0),
        .CO({sample_count0_carry_n_0,sample_count0_carry_n_1,sample_count0_carry_n_2,sample_count0_carry_n_3}),
        .CYINIT(\sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[4:1]),
        .S({\sample_count_reg_n_0_[4] ,\sample_count_reg_n_0_[3] ,\sample_count_reg_n_0_[2] ,\sample_count_reg_n_0_[1] }));
  CARRY4 sample_count0_carry__0
       (.CI(sample_count0_carry_n_0),
        .CO({sample_count0_carry__0_n_0,sample_count0_carry__0_n_1,sample_count0_carry__0_n_2,sample_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[8:5]),
        .S({\sample_count_reg_n_0_[8] ,\sample_count_reg_n_0_[7] ,\sample_count_reg_n_0_[6] ,\sample_count_reg_n_0_[5] }));
  CARRY4 sample_count0_carry__1
       (.CI(sample_count0_carry__0_n_0),
        .CO({sample_count0_carry__1_n_0,sample_count0_carry__1_n_1,sample_count0_carry__1_n_2,sample_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[12:9]),
        .S({\sample_count_reg_n_0_[12] ,\sample_count_reg_n_0_[11] ,\sample_count_reg_n_0_[10] ,\sample_count_reg_n_0_[9] }));
  CARRY4 sample_count0_carry__2
       (.CI(sample_count0_carry__1_n_0),
        .CO(NLW_sample_count0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sample_count0_carry__2_O_UNCONNECTED[3:1],in16[13]}),
        .S({1'b0,1'b0,1'b0,\sample_count_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \sample_count[0]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[10]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[10]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[11]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[11]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[12]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[12]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF55F7F7)) 
    \sample_count[13]_i_1 
       (.I0(state_1),
        .I1(\rx_shift_reg_reg[7]_0 ),
        .I2(state1),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(flag_err_internal),
        .O(\sample_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[13]_i_2 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[13]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF8C8FBCB)) 
    \sample_count[13]_i_3 
       (.I0(state1),
        .I1(state_1),
        .I2(flag_err_internal),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(\rx_shift_reg_reg[7]_0 ),
        .O(\sample_count[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[1]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[1]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[2]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[2]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[3]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[3]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[4]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[4]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[5]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[5]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[6]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[6]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[7]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[7]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[8]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[8]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF004000400040)) 
    \sample_count[9]_i_1__0 
       (.I0(flag_err_internal),
        .I1(state_1),
        .I2(\rx_shift_reg_reg[7]_0 ),
        .I3(state1),
        .I4(in16[9]),
        .I5(\sample_count[13]_i_3_n_0 ),
        .O(\sample_count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[0]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[10]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[11]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[12]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[13] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[13]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[13] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[1]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[2]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[3]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[4]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[5]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[6]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[7]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[8]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(CLK),
        .CE(\sample_count[13]_i_1_n_0 ),
        .D(\sample_count[9]_i_1__0_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF5F0040)) 
    wea_i_1
       (.I0(state[0]),
        .I1(rx_ready),
        .I2(state[1]),
        .I3(state[2]),
        .I4(wea),
        .O(\FSM_sequential_state_reg[0]_0 ));
endmodule

(* ADDRS_WIDTH = "5" *) (* BITCOUNTMAX = "8" *) (* DATAWIDTH = "8" *) 
(* RAMDEPTH = "32" *) (* SAMPLECOUNTMAX_RX = "10417" *) (* SAMPLECOUNTMAX_TX = "5209" *) 
(* idle = "3'b000" *) (* mem_read = "3'b100" *) (* mem_write = "3'b010" *) 
(* rx_data = "3'b001" *) (* rx_stop = "3'b011" *) (* tx_data = "3'b101" *) 
(* NotValidForBitStream *)
module uart_top
   (clk,
    rst,
    rx_serial_data,
    rx_on,
    tx_on,
    o_rx_flag_err,
    tx_serial_data);
  input clk;
  input rst;
  input rx_serial_data;
  input rx_on;
  input tx_on;
  output o_rx_flag_err;
  output tx_serial_data;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clk;
  wire clk_2;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enb__0;
  wire enb_i_2_n_0;
  wire o_rx_flag_err;
  wire o_rx_flag_err_OBUF;
  wire [4:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire \ram_addra[4]_i_1_n_0 ;
  wire \ram_addrb[4]_i_1_n_0 ;
  wire ram_n_0;
  wire ram_n_1;
  wire ram_n_2;
  wire ram_n_3;
  wire ram_n_4;
  wire ram_n_5;
  wire ram_n_6;
  wire ram_n_7;
  wire rst;
  wire rst_IBUF;
  wire [7:0]rx_data;
  wire rx_n_1;
  wire rx_n_2;
  wire rx_n_4;
  wire rx_on;
  wire rx_on_IBUF;
  wire rx_serial_data;
  wire rx_serial_data_IBUF;
  wire rx_serial_data_internal;
  wire rx_serial_data_internal_reg_n_0;
  wire [2:0]state;
  wire tx_data_load_reg_n_0;
  wire tx_n_0;
  wire tx_n_3;
  wire tx_n_4;
  wire tx_n_5;
  wire tx_on;
  wire tx_on_IBUF;
  wire tx_ready;
  wire tx_serial_data;
  wire tx_serial_data_OBUF;
  wire wea__0;

initial begin
 $sdf_annotate("uart_top_tb_time_synth.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "mem_write:010,mem_read:100,tx_data:101,idle:000,rx_stop:011,rx_data:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_n_2),
        .Q(state[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "mem_write:010,mem_read:100,tx_data:101,idle:000,rx_stop:011,rx_data:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rx_n_1),
        .Q(state[1]),
        .R(rst_IBUF));
  BUFG \FSM_sequential_state_reg[1]_i_2 
       (.I(tx_n_0),
        .O(clk_2));
  (* FSM_ENCODED_STATES = "mem_write:010,mem_read:100,tx_data:101,idle:000,rx_stop:011,rx_data:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_n_3),
        .Q(state[2]),
        .R(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    enb_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(enb_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_n_5),
        .Q(enb__0),
        .R(rst_IBUF));
  OBUF o_rx_flag_err_OBUF_inst
       (.I(o_rx_flag_err_OBUF),
        .O(o_rx_flag_err));
  ram_dp__sim_par ram
       (.D({ram_n_0,ram_n_1,ram_n_2,ram_n_3,ram_n_4,ram_n_5,ram_n_6,ram_n_7}),
        .E(enb__0),
        .Q(rx_data),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\doutb_internal_reg[7]_0 (addrb),
        .\doutb_internal_reg[7]_1 (addra),
        .\tx_reg_reg[0] (tx_data_load_reg_n_0),
        .wea(wea__0));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addra[0]_i_1 
       (.I0(addra[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addra[1]_i_1 
       (.I0(addra[0]),
        .I1(addra[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addra[2]_i_1 
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(addra[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addra[3]_i_1 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \ram_addra[4]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\ram_addra[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addra[4]_i_2 
       (.I0(addra[2]),
        .I1(addra[0]),
        .I2(addra[1]),
        .I3(addra[3]),
        .I4(addra[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addra[4]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(addra[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addra[4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(addra[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addra[4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(addra[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addra[4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(addra[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addra_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addra[4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(addra[4]),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addrb[0]_i_1 
       (.I0(addrb[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ram_addrb[1]_i_1 
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ram_addrb[2]_i_1 
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .I2(addrb[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ram_addrb[3]_i_1 
       (.I0(addrb[1]),
        .I1(addrb[0]),
        .I2(addrb[2]),
        .I3(addrb[3]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'h10)) 
    \ram_addrb[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\ram_addrb[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ram_addrb[4]_i_2 
       (.I0(addrb[2]),
        .I1(addrb[0]),
        .I2(addrb[1]),
        .I3(addrb[3]),
        .I4(addrb[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addrb[4]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(addrb[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addrb[4]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(addrb[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addrb[4]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(addrb[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addrb[4]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(addrb[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addrb_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram_addrb[4]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(addrb[4]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  uart_rx_wrapper rx
       (.CLK(clk_IBUF_BUFG),
        .\FSM_sequential_state_reg[0] (rx_n_4),
        .Q(rx_data),
        .o_rx_flag_err_OBUF(o_rx_flag_err_OBUF),
        .ready_internal_reg(rx_n_1),
        .ready_internal_reg_0(rx_n_2),
        .rst_IBUF(rst_IBUF),
        .rx_on_IBUF(rx_on_IBUF),
        .rx_serial_data_IBUF(rx_serial_data_IBUF),
        .rx_serial_data_internal(rx_serial_data_internal),
        .\rx_shift_reg_reg[7] (rx_serial_data_internal_reg_n_0),
        .state(state),
        .tx_ready(tx_ready),
        .wea(wea__0));
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
        .D({ram_n_0,ram_n_1,ram_n_2,ram_n_3,ram_n_4,ram_n_5,ram_n_6,ram_n_7}),
        .E(enb__0),
        .\FSM_sequential_state_reg[0] (tx_n_3),
        .\FSM_sequential_state_reg[2] (tx_n_5),
        .enb_reg(enb_i_2_n_0),
        .q_reg(tx_n_0),
        .ready_internal_reg(tx_n_4),
        .ready_internal_reg_0(clk_2),
        .ready_internal_reg_1(tx_data_load_reg_n_0),
        .rst_IBUF(rst_IBUF),
        .rx_on_IBUF(rx_on_IBUF),
        .state(state),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_ready(tx_ready),
        .tx_serial_data_OBUF(tx_serial_data_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    tx_data_load_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_n_4),
        .Q(tx_data_load_reg_n_0),
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
        .D(rx_n_4),
        .Q(wea__0),
        .R(rst_IBUF));
endmodule

module uart_tx_wrapper
   (q_reg,
    tx_serial_data_OBUF,
    tx_ready,
    \FSM_sequential_state_reg[0] ,
    ready_internal_reg,
    \FSM_sequential_state_reg[2] ,
    CLK,
    rst_IBUF,
    ready_internal_reg_0,
    tx_on_IBUF,
    rx_on_IBUF,
    state,
    ready_internal_reg_1,
    enb_reg,
    E,
    D);
  output q_reg;
  output tx_serial_data_OBUF;
  output tx_ready;
  output \FSM_sequential_state_reg[0] ;
  output ready_internal_reg;
  output \FSM_sequential_state_reg[2] ;
  input CLK;
  input rst_IBUF;
  input ready_internal_reg_0;
  input tx_on_IBUF;
  input rx_on_IBUF;
  input [2:0]state;
  input ready_internal_reg_1;
  input enb_reg;
  input [0:0]E;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[2] ;
  wire enb_reg;
  wire q_reg;
  wire ready_internal_reg;
  wire ready_internal_reg_0;
  wire ready_internal_reg_1;
  wire rst_IBUF;
  wire rx_on_IBUF;
  wire [2:0]state;
  wire tx_on_IBUF;
  wire tx_ready;
  wire tx_serial_data_OBUF;

  ff clk_div
       (.CLK(CLK),
        .q_reg_0(q_reg));
  uart_txm_ex tx
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .enb_reg(enb_reg),
        .ready_internal_reg_0(tx_ready),
        .ready_internal_reg_1(ready_internal_reg),
        .ready_internal_reg_2(ready_internal_reg_0),
        .ready_internal_reg_3(ready_internal_reg_1),
        .rst_IBUF(rst_IBUF),
        .rx_on_IBUF(rx_on_IBUF),
        .state(state),
        .tx_on_IBUF(tx_on_IBUF),
        .tx_serial_data_OBUF(tx_serial_data_OBUF));
endmodule

module uart_txm_ex
   (tx_serial_data_OBUF,
    ready_internal_reg_0,
    \FSM_sequential_state_reg[0]_0 ,
    ready_internal_reg_1,
    \FSM_sequential_state_reg[2] ,
    rst_IBUF,
    ready_internal_reg_2,
    tx_on_IBUF,
    rx_on_IBUF,
    state,
    ready_internal_reg_3,
    enb_reg,
    E,
    D);
  output tx_serial_data_OBUF;
  output ready_internal_reg_0;
  output \FSM_sequential_state_reg[0]_0 ;
  output ready_internal_reg_1;
  output \FSM_sequential_state_reg[2] ;
  input rst_IBUF;
  input ready_internal_reg_2;
  input tx_on_IBUF;
  input rx_on_IBUF;
  input [2:0]state;
  input ready_internal_reg_3;
  input enb_reg;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_state[1]_i_5__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire bit_count;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire enb_reg;
  wire ready_internal_i_1_n_0;
  wire ready_internal_reg_0;
  wire ready_internal_reg_1;
  wire ready_internal_reg_2;
  wire ready_internal_reg_3;
  wire rst_IBUF;
  wire rx_on_IBUF;
  wire sample_count0_carry__0_n_0;
  wire sample_count0_carry__0_n_1;
  wire sample_count0_carry__0_n_2;
  wire sample_count0_carry__0_n_3;
  wire sample_count0_carry__0_n_4;
  wire sample_count0_carry__0_n_5;
  wire sample_count0_carry__0_n_6;
  wire sample_count0_carry__0_n_7;
  wire sample_count0_carry__1_n_1;
  wire sample_count0_carry__1_n_2;
  wire sample_count0_carry__1_n_3;
  wire sample_count0_carry__1_n_4;
  wire sample_count0_carry__1_n_5;
  wire sample_count0_carry__1_n_6;
  wire sample_count0_carry__1_n_7;
  wire sample_count0_carry_n_0;
  wire sample_count0_carry_n_1;
  wire sample_count0_carry_n_2;
  wire sample_count0_carry_n_3;
  wire sample_count0_carry_n_4;
  wire sample_count0_carry_n_5;
  wire sample_count0_carry_n_6;
  wire sample_count0_carry_n_7;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[11]_i_1_n_0 ;
  wire \sample_count[12]_i_2_n_0 ;
  wire \sample_count[12]_i_3_n_0 ;
  wire \sample_count[12]_i_4_n_0 ;
  wire \sample_count[12]_i_5_n_0 ;
  wire \sample_count[12]_i_6_n_0 ;
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
  wire \sample_count_reg_n_0_[1] ;
  wire \sample_count_reg_n_0_[2] ;
  wire \sample_count_reg_n_0_[3] ;
  wire \sample_count_reg_n_0_[4] ;
  wire \sample_count_reg_n_0_[5] ;
  wire \sample_count_reg_n_0_[6] ;
  wire \sample_count_reg_n_0_[7] ;
  wire \sample_count_reg_n_0_[8] ;
  wire \sample_count_reg_n_0_[9] ;
  wire [2:0]state;
  wire [1:0]state_0;
  wire tx_data_load;
  wire tx_on_IBUF;
  wire [7:0]tx_reg;
  wire tx_reg_2;
  wire tx_serial_data_OBUF;
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
  wire [3:3]NLW_sample_count0_carry__1_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2__1_n_0 ),
        .I1(rst_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8898DDDD88988888)) 
    \FSM_sequential_state[0]_i_2__1 
       (.I0(state_0[0]),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\sample_count[12]_i_4_n_0 ),
        .I4(state_0[1]),
        .I5(ready_internal_reg_3),
        .O(\FSM_sequential_state[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state_0[0]),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(state_0[1]),
        .I3(rst_IBUF),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h10115555FFFFFFFF)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .I2(\FSM_sequential_state[1]_i_5__0_n_0 ),
        .I3(\sample_count_reg_n_0_[6] ),
        .I4(\sample_count_reg_n_0_[10] ),
        .I5(\sample_count_reg_n_0_[12] ),
        .O(\FSM_sequential_state[1]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_4__0 
       (.I0(\sample_count_reg_n_0_[7] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\sample_count_reg_n_0_[8] ),
        .O(\FSM_sequential_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \FSM_sequential_state[1]_i_5__0 
       (.I0(\sample_count_reg_n_0_[3] ),
        .I1(\sample_count_reg_n_0_[4] ),
        .I2(\sample_count_reg_n_0_[2] ),
        .I3(\sample_count_reg_n_0_[1] ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count_reg_n_0_[5] ),
        .O(\FSM_sequential_state[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000200)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(tx_on_IBUF),
        .I1(rx_on_IBUF),
        .I2(state[0]),
        .I3(ready_internal_reg_0),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tx_start:01,tx_data:10,idle:00,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state_0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0062)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(bit_count),
        .I2(state_0[1]),
        .I3(rst_IBUF),
        .O(\bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00006A22)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(bit_count),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(state_0[1]),
        .I4(rst_IBUF),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA2222)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(bit_count),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(state_0[1]),
        .I5(rst_IBUF),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00545555)) 
    \bit_count[2]_i_2 
       (.I0(state_0[0]),
        .I1(\sample_count[12]_i_4_n_0 ),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(state_0[1]),
        .O(bit_count));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(\bit_count[0]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(\bit_count[1]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(\bit_count[2]_i_1_n_0 ),
        .Q(\bit_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777777702000000)) 
    enb_i_1
       (.I0(enb_reg),
        .I1(state[2]),
        .I2(rx_on_IBUF),
        .I3(ready_internal_reg_0),
        .I4(tx_on_IBUF),
        .I5(E),
        .O(\FSM_sequential_state_reg[2] ));
  LUT5 #(
    .INIT(32'hFFF53005)) 
    ready_internal_i_1
       (.I0(ready_internal_reg_3),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(state_0[0]),
        .I3(state_0[1]),
        .I4(ready_internal_reg_0),
        .O(ready_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ready_internal_reg
       (.C(ready_internal_reg_2),
        .CE(1'b1),
        .D(ready_internal_i_1_n_0),
        .Q(ready_internal_reg_0),
        .S(rst_IBUF));
  CARRY4 sample_count0_carry
       (.CI(1'b0),
        .CO({sample_count0_carry_n_0,sample_count0_carry_n_1,sample_count0_carry_n_2,sample_count0_carry_n_3}),
        .CYINIT(\sample_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry_n_4,sample_count0_carry_n_5,sample_count0_carry_n_6,sample_count0_carry_n_7}),
        .S({\sample_count_reg_n_0_[4] ,\sample_count_reg_n_0_[3] ,\sample_count_reg_n_0_[2] ,\sample_count_reg_n_0_[1] }));
  CARRY4 sample_count0_carry__0
       (.CI(sample_count0_carry_n_0),
        .CO({sample_count0_carry__0_n_0,sample_count0_carry__0_n_1,sample_count0_carry__0_n_2,sample_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__0_n_4,sample_count0_carry__0_n_5,sample_count0_carry__0_n_6,sample_count0_carry__0_n_7}),
        .S({\sample_count_reg_n_0_[8] ,\sample_count_reg_n_0_[7] ,\sample_count_reg_n_0_[6] ,\sample_count_reg_n_0_[5] }));
  CARRY4 sample_count0_carry__1
       (.CI(sample_count0_carry__0_n_0),
        .CO({NLW_sample_count0_carry__1_CO_UNCONNECTED[3],sample_count0_carry__1_n_1,sample_count0_carry__1_n_2,sample_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sample_count0_carry__1_n_4,sample_count0_carry__1_n_5,sample_count0_carry__1_n_6,sample_count0_carry__1_n_7}),
        .S({\sample_count_reg_n_0_[12] ,\sample_count_reg_n_0_[11] ,\sample_count_reg_n_0_[10] ,\sample_count_reg_n_0_[9] }));
  LUT6 #(
    .INIT(64'h0000EE880404EE8C)) 
    \sample_count[0]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(\sample_count_reg_n_0_[0] ),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[10]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__1_n_6),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[11]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__1_n_5),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \sample_count[12]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .O(tx_serial_data_internal));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[12]_i_2 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__1_n_4),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sample_count[12]_i_3 
       (.I0(\sample_count[12]_i_5_n_0 ),
        .I1(\sample_count[12]_i_6_n_0 ),
        .I2(\sample_count_reg_n_0_[6] ),
        .I3(\sample_count_reg_n_0_[7] ),
        .I4(\sample_count_reg_n_0_[4] ),
        .I5(\sample_count_reg_n_0_[5] ),
        .O(\sample_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_count[12]_i_4 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .O(\sample_count[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_count[12]_i_5 
       (.I0(\sample_count_reg_n_0_[11] ),
        .I1(\sample_count_reg_n_0_[9] ),
        .I2(\sample_count_reg_n_0_[8] ),
        .I3(\sample_count_reg_n_0_[12] ),
        .I4(\sample_count_reg_n_0_[10] ),
        .O(\sample_count[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_count[12]_i_6 
       (.I0(\sample_count_reg_n_0_[2] ),
        .I1(\sample_count_reg_n_0_[3] ),
        .I2(\sample_count_reg_n_0_[0] ),
        .I3(\sample_count_reg_n_0_[1] ),
        .O(\sample_count[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[1]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry_n_7),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[2]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry_n_6),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[3]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry_n_5),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[4]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry_n_4),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[5]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__0_n_7),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[6]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__0_n_6),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[7]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__0_n_5),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[8]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__0_n_4),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE880000EA880000)) 
    \sample_count[9]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I4(sample_count0_carry__1_n_7),
        .I5(\sample_count[12]_i_4_n_0 ),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[0] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[10] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[11] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[11]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[11] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[12] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[12]_i_2_n_0 ),
        .Q(\sample_count_reg_n_0_[12] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[1] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[2] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[3] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[4] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[5] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[6] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[7] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[8] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sample_count_reg[9] 
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(\sample_count_reg_n_0_[9] ),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'h2F20)) 
    tx_data_load_i_1
       (.I0(ready_internal_reg_0),
        .I1(state[2]),
        .I2(tx_data_load),
        .I3(ready_internal_reg_3),
        .O(ready_internal_reg_1));
  LUT6 #(
    .INIT(64'h4040414040404040)) 
    tx_data_load_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(tx_on_IBUF),
        .I4(rx_on_IBUF),
        .I5(ready_internal_reg_0),
        .O(tx_data_load));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_reg[7]_i_1 
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .O(tx_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[0]),
        .Q(tx_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[1]),
        .Q(tx_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[2]),
        .Q(tx_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[3]),
        .Q(tx_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[4]),
        .Q(tx_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[5]),
        .Q(tx_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[6]),
        .Q(tx_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(ready_internal_reg_2),
        .CE(tx_reg_2),
        .D(D[7]),
        .Q(tx_reg[7]),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'hB833)) 
    tx_serial_data_internal_i_1
       (.I0(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I1(state_0[0]),
        .I2(\tx_shift_reg_reg_n_0_[0] ),
        .I3(state_0[1]),
        .O(tx_serial_data_internal_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_serial_data_internal_reg
       (.C(ready_internal_reg_2),
        .CE(tx_serial_data_internal),
        .D(tx_serial_data_internal_i_1_n_0),
        .Q(tx_serial_data_OBUF),
        .S(rst_IBUF));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[0]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[0]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[1] ),
        .O(tx_shift_reg[0]));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[1]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[1]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[2] ),
        .O(tx_shift_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[2]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[2]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[3] ),
        .O(tx_shift_reg[2]));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[3]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[3]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[4] ),
        .O(tx_shift_reg[3]));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[4]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[4]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[5] ),
        .O(tx_shift_reg[4]));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[5]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[5]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[6] ),
        .O(tx_shift_reg[5]));
  LUT4 #(
    .INIT(16'hDD0D)) 
    \tx_shift_reg[6]_i_1 
       (.I0(state_0[0]),
        .I1(tx_reg[6]),
        .I2(state_0[1]),
        .I3(\tx_shift_reg_reg_n_0_[7] ),
        .O(tx_shift_reg[6]));
  LUT5 #(
    .INIT(32'h11117775)) 
    \tx_shift_reg[7]_i_1 
       (.I0(state_0[1]),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(\sample_count[12]_i_3_n_0 ),
        .I3(\sample_count[12]_i_4_n_0 ),
        .I4(state_0[0]),
        .O(tx_shift_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_shift_reg[7]_i_2 
       (.I0(tx_reg[7]),
        .I1(state_0[0]),
        .O(tx_shift_reg[7]));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[0] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[0]),
        .Q(\tx_shift_reg_reg_n_0_[0] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[1] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[1]),
        .Q(\tx_shift_reg_reg_n_0_[1] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[2] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[2]),
        .Q(\tx_shift_reg_reg_n_0_[2] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[3] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[3]),
        .Q(\tx_shift_reg_reg_n_0_[3] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[4] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[4]),
        .Q(\tx_shift_reg_reg_n_0_[4] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[5] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[5]),
        .Q(\tx_shift_reg_reg_n_0_[5] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[6] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[6]),
        .Q(\tx_shift_reg_reg_n_0_[6] ),
        .S(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \tx_shift_reg_reg[7] 
       (.C(ready_internal_reg_2),
        .CE(tx_shift_reg_1),
        .D(tx_shift_reg[7]),
        .Q(\tx_shift_reg_reg_n_0_[7] ),
        .S(rst_IBUF));
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
