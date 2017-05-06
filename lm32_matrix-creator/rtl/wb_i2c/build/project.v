////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: project.v
// /___/   /\     Timestamp: Tue Apr 18 03:05:23 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -sim -ofmt verilog -w project.ngc 
// Device	: xc6slx4-tqg144-2
// Input file	: project.ngc
// Output file	: project.v
// # of Modules	: 1
// Design Name	: i2c_master_wb
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module i2c_master_wb (
  clk, reset, wb_stb_i, wb_cyc_i, wb_we_i, wb_ack_o, sda, scl, wb_adr_i, wb_sel_i, wb_dat_i, wb_dat_o
);
  input clk;
  input reset;
  input wb_stb_i;
  input wb_cyc_i;
  input wb_we_i;
  output wb_ack_o;
  inout sda;
  inout scl;
  input [31 : 0] wb_adr_i;
  input [3 : 0] wb_sel_i;
  input [31 : 0] wb_dat_i;
  output [31 : 0] wb_dat_o;
  wire wb_adr_i_4_IBUF_0;
  wire wb_adr_i_3_IBUF_1;
  wire wb_adr_i_2_IBUF_2;
  wire wb_dat_i_0_IBUF_3;
  wire wb_dat_i_6_IBUF_4;
  wire wb_dat_i_5_IBUF_5;
  wire wb_dat_i_4_IBUF_6;
  wire wb_dat_i_3_IBUF_7;
  wire wb_dat_i_2_IBUF_8;
  wire wb_dat_i_1_IBUF_9;
  wire wb_dat_i_7_IBUF_10;
  wire clk_BUFGP_11;
  wire reset_IBUF_BUFG_12;
  wire wb_stb_i_IBUF_13;
  wire wb_cyc_i_IBUF_14;
  wire wb_we_i_IBUF_15;
  wire \i2c0/busy ;
  wire \i2c0/ack_error_25 ;
  wire wb_dat_o_8_OBUF_26;
  wire N1;
  wire ack_30;
  wire wb_dat_o_7_31;
  wire wb_dat_o_6_32;
  wire wb_dat_o_5_33;
  wire wb_dat_o_4_34;
  wire wb_dat_o_3_35;
  wire wb_dat_o_2_36;
  wire wb_dat_o_1_37;
  wire wb_dat_o_0_38;
  wire ena_39;
  wire rw_40;
  wire wb_stb_i_wb_cyc_i_AND_34_o;
  wire wb_ack_o_OBUF_57;
  wire wb_rd_ack_AND_36_o;
  wire _n0282_inv;
  wire _n0303_inv;
  wire _n0289_inv;
  wire _n0296_inv;
  wire _n0231_0;
  wire _n0232_0_72;
  wire \i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_3_73 ;
  wire \i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_4_74 ;
  wire \i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_3_75 ;
  wire \i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_4_76 ;
  wire \i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_3_77 ;
  wire \i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_4_78 ;
  wire \i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_3_79 ;
  wire \i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_4_80 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_82 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_83 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_84 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_85 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_86 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_87 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_88 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_89 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<0>_90 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_lut<0> ;
  wire \i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_3_92 ;
  wire \i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_4_93 ;
  wire \i2c0/state_FSM_FFd1-In ;
  wire \i2c0/state_FSM_FFd2-In ;
  wire \i2c0/state_FSM_FFd3-In ;
  wire \i2c0/state_FSM_FFd4-In ;
  wire \i2c0/Mcount_count9 ;
  wire \i2c0/Mcount_count8 ;
  wire \i2c0/Mcount_count7 ;
  wire \i2c0/Mcount_count6 ;
  wire \i2c0/Mcount_count5 ;
  wire \i2c0/Mcount_count4 ;
  wire \i2c0/Mcount_count3 ;
  wire \i2c0/Mcount_count2 ;
  wire \i2c0/Mcount_count1 ;
  wire \i2c0/Mcount_count ;
  wire \i2c0/GND_2_o_GND_2_o_equal_1_o_inv ;
  wire \i2c0/_n0340_inv_128 ;
  wire \i2c0/_n0293_inv ;
  wire \i2c0/_n0376_inv ;
  wire \i2c0/_n0286_inv ;
  wire \i2c0/scl_ena_scl_clk_AND_29_o_inv ;
  wire \i2c0/_n0297_inv ;
  wire \i2c0/_n0356_inv_134 ;
  wire \i2c0/GND_2_o_count[9]_AND_2_o_135 ;
  wire \i2c0/count[9]_GND_2_o_LessThan_6_o ;
  wire \i2c0/count[9]_GND_2_o_LessThan_4_o ;
  wire \i2c0/data_rx[0]_sda_MUX_82_o ;
  wire \i2c0/data_rx[1]_sda_MUX_81_o ;
  wire \i2c0/data_rx[2]_sda_MUX_80_o ;
  wire \i2c0/data_rx[3]_sda_MUX_79_o ;
  wire \i2c0/data_rx[4]_sda_MUX_78_o ;
  wire \i2c0/data_rx[5]_sda_MUX_77_o ;
  wire \i2c0/data_rx[6]_sda_MUX_76_o ;
  wire \i2c0/data_rx[7]_sda_MUX_75_o ;
  wire \i2c0/GND_2_o_addr_rw[7]_Mux_17_o ;
  wire \i2c0/_n0228 ;
  wire \i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<0> ;
  wire \i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<2> ;
  wire \i2c0/bit_cnt[2]_addr_rw[7]_Mux_13_o ;
  wire \i2c0/state[3]_scl_ena_Select_63_o ;
  wire \i2c0/GND_2_o_GND_2_o_equal_1_o ;
  wire \i2c0/GND_2_o_data_tx[7]_Mux_25_o ;
  wire \i2c0/bit_cnt[2]_data_tx[7]_Mux_20_o ;
  wire \i2c0/ena_INV_16_o ;
  wire \i2c0/_n0231 ;
  wire \i2c0/data_clk_data_clk_prev_AND_3_o ;
  wire \i2c0/sda_ena_n ;
  wire \i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ;
  wire \i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<2> ;
  wire \i2c0/_n0304 ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<1> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<2> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<3> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<4> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<5> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<6> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<7> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<8> ;
  wire \i2c0/count[9]_GND_2_o_add_1_OUT<9> ;
  wire \i2c0/bit_cnt[2]_data_wr[7]_Mux_35_o ;
  wire \i2c0/addr_rw[7]_addr[6]_equal_41_o ;
  wire \i2c0/data_clk_173 ;
  wire \i2c0/scl_clk_174 ;
  wire \i2c0/data_clk_prev_191 ;
  wire \i2c0/sda_int ;
  wire \i2c0/scl_ena_193 ;
  wire \i2c0/state_FSM_FFd4_196 ;
  wire \i2c0/state_FSM_FFd3_197 ;
  wire \i2c0/state_FSM_FFd2_198 ;
  wire \i2c0/state_FSM_FFd1_199 ;
  wire _n0232_011;
  wire \wb_adr_i[4]_i2c_state[0]_Select_12_o<0>1 ;
  wire _n0231_02;
  wire \i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>12 ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire \i2c0/addr_rw[7]_addr[6]_equal_41_o8 ;
  wire \i2c0/addr_rw[7]_addr[6]_equal_41_o81_228 ;
  wire \i2c0/Mmux__n03042 ;
  wire N12;
  wire \i2c0/state_FSM_FFd4-In1_231 ;
  wire N14;
  wire N16;
  wire ack_glue_set_283;
  wire \i2c0/data_clk_glue_set_284 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_rt_285 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_rt_286 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_rt_287 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_rt_288 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_rt_289 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_rt_290 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_rt_291 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_rt_292 ;
  wire \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<9>_rt_293 ;
  wire ena_rstpot_294;
  wire rw_rstpot_295;
  wire \i2c0/busy_rstpot_296 ;
  wire \i2c0/scl_clk_rstpot_297 ;
  wire \i2c0/data_clk_prev_rstpot_298 ;
  wire N20;
  wire N21;
  wire N22;
  wire N23;
  wire N24;
  wire \i2c0/sda_int_LD_304 ;
  wire \i2c0/sda_int_C_305 ;
  wire \i2c0/sda_int_P_306 ;
  wire \i2c0/busy_LD_307 ;
  wire \i2c0/busy_C_308 ;
  wire \i2c0/busy_P_309 ;
  wire reset_IBUF_310;
  wire wb_dat_o_7_1_311;
  wire wb_dat_o_6_1_312;
  wire wb_dat_o_5_1_313;
  wire wb_dat_o_4_1_314;
  wire wb_dat_o_3_1_315;
  wire wb_dat_o_2_1_316;
  wire wb_dat_o_1_1_317;
  wire wb_dat_o_0_1_318;
  wire [7 : 0] \i2c0/data_rd ;
  wire [6 : 0] addr;
  wire [7 : 0] data_wr;
  wire [7 : 0] GND_1_o_GND_1_o_mux_33_OUT;
  wire [2 : 0] \i2c0/bit_cnt ;
  wire [9 : 0] \i2c0/Mcount_count_lut ;
  wire [8 : 0] \i2c0/Mcount_count_cy ;
  wire [7 : 0] \i2c0/data_rx ;
  wire [7 : 0] \i2c0/addr_rw ;
  wire [9 : 0] \i2c0/count ;
  wire [7 : 0] \i2c0/data_tx ;
  GND   XST_GND (
    .G(wb_dat_o_8_OBUF_26)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   data_wr_0 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_0_IBUF_3),
    .R(reset_IBUF_310),
    .Q(data_wr[0])
  );
  FDRE   data_wr_1 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_1_IBUF_9),
    .R(reset_IBUF_310),
    .Q(data_wr[1])
  );
  FDRE   data_wr_2 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_2_IBUF_8),
    .R(reset_IBUF_310),
    .Q(data_wr[2])
  );
  FDRE   data_wr_3 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_3_IBUF_7),
    .R(reset_IBUF_310),
    .Q(data_wr[3])
  );
  FDRE   data_wr_4 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_4_IBUF_6),
    .R(reset_IBUF_310),
    .Q(data_wr[4])
  );
  FDRE   data_wr_5 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_5_IBUF_5),
    .R(reset_IBUF_310),
    .Q(data_wr[5])
  );
  FDRE   data_wr_6 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_6_IBUF_4),
    .R(reset_IBUF_310),
    .Q(data_wr[6])
  );
  FDRE   data_wr_7 (
    .C(clk_BUFGP_11),
    .CE(_n0303_inv),
    .D(wb_dat_i_7_IBUF_10),
    .R(reset_IBUF_310),
    .Q(data_wr[7])
  );
  FDRE   addr_0 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_0_IBUF_3),
    .R(reset_IBUF_310),
    .Q(addr[0])
  );
  FDRE   addr_1 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_1_IBUF_9),
    .R(reset_IBUF_310),
    .Q(addr[1])
  );
  FDRE   addr_2 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_2_IBUF_8),
    .R(reset_IBUF_310),
    .Q(addr[2])
  );
  FDRE   addr_3 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_3_IBUF_7),
    .R(reset_IBUF_310),
    .Q(addr[3])
  );
  FDRE   addr_4 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_4_IBUF_6),
    .R(reset_IBUF_310),
    .Q(addr[4])
  );
  FDRE   addr_5 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_5_IBUF_5),
    .R(reset_IBUF_310),
    .Q(addr[5])
  );
  FDRE   addr_6 (
    .C(clk_BUFGP_11),
    .CE(_n0296_inv),
    .D(wb_dat_i_6_IBUF_4),
    .R(reset_IBUF_310),
    .Q(addr[6])
  );
  FDR   wb_dat_o_2 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[2]),
    .R(_n0231_0),
    .Q(wb_dat_o_2_36)
  );
  FDR   wb_dat_o_0 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[0]),
    .R(_n0231_0),
    .Q(wb_dat_o_0_38)
  );
  FDR   wb_dat_o_7 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[7]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_7_31)
  );
  FDR   wb_dat_o_4 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[4]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_4_34)
  );
  FDR   wb_dat_o_6 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[6]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_6_32)
  );
  FDR   wb_dat_o_5 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[5]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_5_33)
  );
  FDR   wb_dat_o_3 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[3]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_3_35)
  );
  FDR   wb_dat_o_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[1]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_1_37)
  );
  MUXF7   \i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_2_f7  (
    .I0(\i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_4_74 ),
    .I1(\i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_3_73 ),
    .S(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<2> ),
    .O(\i2c0/GND_2_o_addr_rw[7]_Mux_17_o )
  );
  MUXF7   \i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_2_f7  (
    .I0(\i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_4_76 ),
    .I1(\i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_3_75 ),
    .S(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<2> ),
    .O(\i2c0/GND_2_o_data_tx[7]_Mux_25_o )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_3  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/addr_rw [6]),
    .I3(\i2c0/addr_rw [7]),
    .I4(\i2c0/addr_rw [5]),
    .I5(\i2c0/addr_rw [4]),
    .O(\i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_3_77 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_4  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/addr_rw [2]),
    .I3(\i2c0/addr_rw [3]),
    .I4(\i2c0/addr_rw [1]),
    .I5(\i2c0/addr_rw [0]),
    .O(\i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_4_78 )
  );
  MUXF7   \i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_2_f7  (
    .I0(\i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_4_78 ),
    .I1(\i2c0/Mmux_bit_cnt[2]_addr_rw[7]_Mux_13_o_3_77 ),
    .S(\i2c0/bit_cnt [2]),
    .O(\i2c0/bit_cnt[2]_addr_rw[7]_Mux_13_o )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_3  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/data_tx [6]),
    .I3(\i2c0/data_tx [7]),
    .I4(\i2c0/data_tx [5]),
    .I5(\i2c0/data_tx [4]),
    .O(\i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_3_79 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_4  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/data_tx [2]),
    .I3(\i2c0/data_tx [3]),
    .I4(\i2c0/data_tx [1]),
    .I5(\i2c0/data_tx [0]),
    .O(\i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_4_80 )
  );
  MUXF7   \i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_2_f7  (
    .I0(\i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_4_80 ),
    .I1(\i2c0/Mmux_bit_cnt[2]_data_tx[7]_Mux_20_o_3_79 ),
    .S(\i2c0/bit_cnt [2]),
    .O(\i2c0/bit_cnt[2]_data_tx[7]_Mux_20_o )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<9>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_82 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<9>_rt_293 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<9> )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<8>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_83 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_rt_285 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<8> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_83 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_rt_285 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_82 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<7>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_84 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_rt_286 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<7> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_84 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_rt_286 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_83 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<6>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_85 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_rt_287 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<6> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_85 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_rt_287 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_84 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<5>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_86 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_rt_288 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<5> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_86 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_rt_288 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_85 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<4>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_87 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_rt_289 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<4> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_87 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_rt_289 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_86 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<3>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_88 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_rt_290 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<3> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_88 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_rt_290 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_87 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<2>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_89 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_rt_291 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<2> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_89 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_rt_291 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_88 )
  );
  XORCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<1>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<0>_90 ),
    .LI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_rt_292 ),
    .O(\i2c0/count[9]_GND_2_o_add_1_OUT<1> )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>  (
    .CI(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<0>_90 ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_rt_292 ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_89 )
  );
  MUXCY   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<0>  (
    .CI(wb_dat_o_8_OBUF_26),
    .DI(N1),
    .S(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_lut<0> ),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<0>_90 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_3  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(data_wr[6]),
    .I3(data_wr[7]),
    .I4(data_wr[5]),
    .I5(data_wr[4]),
    .O(\i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_3_92 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_4  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(data_wr[2]),
    .I3(data_wr[3]),
    .I4(data_wr[1]),
    .I5(data_wr[0]),
    .O(\i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_4_93 )
  );
  MUXF7   \i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_2_f7  (
    .I0(\i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_4_93 ),
    .I1(\i2c0/Mmux_bit_cnt[2]_data_wr[7]_Mux_35_o_3_92 ),
    .S(\i2c0/bit_cnt [2]),
    .O(\i2c0/bit_cnt[2]_data_wr[7]_Mux_35_o )
  );
  FDC_1 #(
    .INIT ( 1'b0 ))
  \i2c0/state_FSM_FFd1  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/state_FSM_FFd1-In ),
    .Q(\i2c0/state_FSM_FFd1_199 )
  );
  FDC_1 #(
    .INIT ( 1'b0 ))
  \i2c0/state_FSM_FFd2  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/state_FSM_FFd2-In ),
    .Q(\i2c0/state_FSM_FFd2_198 )
  );
  FDC_1 #(
    .INIT ( 1'b0 ))
  \i2c0/state_FSM_FFd4  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/state_FSM_FFd4-In ),
    .Q(\i2c0/state_FSM_FFd4_196 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_9  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count9 ),
    .Q(\i2c0/count [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_8  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count8 ),
    .Q(\i2c0/count [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_7  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count7 ),
    .Q(\i2c0/count [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_6  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count6 ),
    .Q(\i2c0/count [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_5  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count5 ),
    .Q(\i2c0/count [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_4  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count4 ),
    .Q(\i2c0/count [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_3  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count3 ),
    .Q(\i2c0/count [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_2  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count2 ),
    .Q(\i2c0/count [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_1  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count1 ),
    .Q(\i2c0/count [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \i2c0/count_0  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/Mcount_count ),
    .Q(\i2c0/count [0])
  );
  FDC_1 #(
    .INIT ( 1'b0 ))
  \i2c0/state_FSM_FFd3  (
    .C(clk_BUFGP_11),
    .CLR(reset_IBUF_310),
    .D(\i2c0/state_FSM_FFd3-In ),
    .Q(\i2c0/state_FSM_FFd3_197 )
  );
  XORCY   \i2c0/Mcount_count_xor<9>  (
    .CI(\i2c0/Mcount_count_cy [8]),
    .LI(\i2c0/Mcount_count_lut [9]),
    .O(\i2c0/Mcount_count9 )
  );
  XORCY   \i2c0/Mcount_count_xor<8>  (
    .CI(\i2c0/Mcount_count_cy [7]),
    .LI(\i2c0/Mcount_count_lut [8]),
    .O(\i2c0/Mcount_count8 )
  );
  MUXCY   \i2c0/Mcount_count_cy<8>  (
    .CI(\i2c0/Mcount_count_cy [7]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [8]),
    .O(\i2c0/Mcount_count_cy [8])
  );
  XORCY   \i2c0/Mcount_count_xor<7>  (
    .CI(\i2c0/Mcount_count_cy [6]),
    .LI(\i2c0/Mcount_count_lut [7]),
    .O(\i2c0/Mcount_count7 )
  );
  MUXCY   \i2c0/Mcount_count_cy<7>  (
    .CI(\i2c0/Mcount_count_cy [6]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [7]),
    .O(\i2c0/Mcount_count_cy [7])
  );
  XORCY   \i2c0/Mcount_count_xor<6>  (
    .CI(\i2c0/Mcount_count_cy [5]),
    .LI(\i2c0/Mcount_count_lut [6]),
    .O(\i2c0/Mcount_count6 )
  );
  MUXCY   \i2c0/Mcount_count_cy<6>  (
    .CI(\i2c0/Mcount_count_cy [5]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [6]),
    .O(\i2c0/Mcount_count_cy [6])
  );
  XORCY   \i2c0/Mcount_count_xor<5>  (
    .CI(\i2c0/Mcount_count_cy [4]),
    .LI(\i2c0/Mcount_count_lut [5]),
    .O(\i2c0/Mcount_count5 )
  );
  MUXCY   \i2c0/Mcount_count_cy<5>  (
    .CI(\i2c0/Mcount_count_cy [4]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [5]),
    .O(\i2c0/Mcount_count_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<5>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [5]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [5])
  );
  XORCY   \i2c0/Mcount_count_xor<4>  (
    .CI(\i2c0/Mcount_count_cy [3]),
    .LI(\i2c0/Mcount_count_lut [4]),
    .O(\i2c0/Mcount_count4 )
  );
  MUXCY   \i2c0/Mcount_count_cy<4>  (
    .CI(\i2c0/Mcount_count_cy [3]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [4]),
    .O(\i2c0/Mcount_count_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<4>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [4]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [4])
  );
  XORCY   \i2c0/Mcount_count_xor<3>  (
    .CI(\i2c0/Mcount_count_cy [2]),
    .LI(\i2c0/Mcount_count_lut [3]),
    .O(\i2c0/Mcount_count3 )
  );
  MUXCY   \i2c0/Mcount_count_cy<3>  (
    .CI(\i2c0/Mcount_count_cy [2]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [3]),
    .O(\i2c0/Mcount_count_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<3>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [3]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [3])
  );
  XORCY   \i2c0/Mcount_count_xor<2>  (
    .CI(\i2c0/Mcount_count_cy [1]),
    .LI(\i2c0/Mcount_count_lut [2]),
    .O(\i2c0/Mcount_count2 )
  );
  MUXCY   \i2c0/Mcount_count_cy<2>  (
    .CI(\i2c0/Mcount_count_cy [1]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [2]),
    .O(\i2c0/Mcount_count_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<2>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [2]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [2])
  );
  XORCY   \i2c0/Mcount_count_xor<1>  (
    .CI(\i2c0/Mcount_count_cy [0]),
    .LI(\i2c0/Mcount_count_lut [1]),
    .O(\i2c0/Mcount_count1 )
  );
  MUXCY   \i2c0/Mcount_count_cy<1>  (
    .CI(\i2c0/Mcount_count_cy [0]),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [1]),
    .O(\i2c0/Mcount_count_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<1>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [1]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [1])
  );
  XORCY   \i2c0/Mcount_count_xor<0>  (
    .CI(\i2c0/GND_2_o_GND_2_o_equal_1_o_inv ),
    .LI(\i2c0/Mcount_count_lut [0]),
    .O(\i2c0/Mcount_count )
  );
  MUXCY   \i2c0/Mcount_count_cy<0>  (
    .CI(\i2c0/GND_2_o_GND_2_o_equal_1_o_inv ),
    .DI(wb_dat_o_8_OBUF_26),
    .S(\i2c0/Mcount_count_lut [0]),
    .O(\i2c0/Mcount_count_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/Mcount_count_lut<0>  (
    .I0(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .I1(\i2c0/count [0]),
    .I2(wb_dat_o_8_OBUF_26),
    .O(\i2c0/Mcount_count_lut [0])
  );
  FDCE_1   \i2c0/data_rd_7  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [7]),
    .Q(\i2c0/data_rd [7])
  );
  FDCE_1   \i2c0/data_rd_6  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [6]),
    .Q(\i2c0/data_rd [6])
  );
  FDCE_1   \i2c0/data_rd_5  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [5]),
    .Q(\i2c0/data_rd [5])
  );
  FDCE_1   \i2c0/data_rd_4  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [4]),
    .Q(\i2c0/data_rd [4])
  );
  FDCE_1   \i2c0/data_rd_3  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [3]),
    .Q(\i2c0/data_rd [3])
  );
  FDCE_1   \i2c0/data_rd_2  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [2]),
    .Q(\i2c0/data_rd [2])
  );
  FDCE_1   \i2c0/data_rd_1  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [1]),
    .Q(\i2c0/data_rd [1])
  );
  FDCE_1   \i2c0/data_rd_0  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0293_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/data_rx [0]),
    .Q(\i2c0/data_rd [0])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_7  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[7]_sda_MUX_75_o ),
    .Q(\i2c0/data_rx [7])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_6  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[6]_sda_MUX_76_o ),
    .Q(\i2c0/data_rx [6])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_5  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[5]_sda_MUX_77_o ),
    .Q(\i2c0/data_rx [5])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_4  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[4]_sda_MUX_78_o ),
    .Q(\i2c0/data_rx [4])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_3  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[3]_sda_MUX_79_o ),
    .Q(\i2c0/data_rx [3])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_2  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[2]_sda_MUX_80_o ),
    .Q(\i2c0/data_rx [2])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_1  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[1]_sda_MUX_81_o ),
    .Q(\i2c0/data_rx [1])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_rx_0  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0376_inv ),
    .D(\i2c0/data_rx[0]_sda_MUX_82_o ),
    .Q(\i2c0/data_rx [0])
  );
  FDPE_1 #(
    .INIT ( 1'b1 ))
  \i2c0/bit_cnt_2  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0286_inv ),
    .D(\i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<2> ),
    .PRE(reset_IBUF_310),
    .Q(\i2c0/bit_cnt [2])
  );
  FDPE_1 #(
    .INIT ( 1'b1 ))
  \i2c0/bit_cnt_1  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0286_inv ),
    .D(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ),
    .PRE(reset_IBUF_310),
    .Q(\i2c0/bit_cnt [1])
  );
  FDPE_1 #(
    .INIT ( 1'b1 ))
  \i2c0/bit_cnt_0  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0286_inv ),
    .D(\i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<0> ),
    .PRE(reset_IBUF_310),
    .Q(\i2c0/bit_cnt [0])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/ack_error  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0297_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/_n0228 ),
    .Q(\i2c0/ack_error_25 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_7  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[6]),
    .Q(\i2c0/addr_rw [7])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_6  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[5]),
    .Q(\i2c0/addr_rw [6])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_5  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[4]),
    .Q(\i2c0/addr_rw [5])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_4  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[3]),
    .Q(\i2c0/addr_rw [4])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_3  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[2]),
    .Q(\i2c0/addr_rw [3])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_2  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[1]),
    .Q(\i2c0/addr_rw [2])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_1  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(addr[0]),
    .Q(\i2c0/addr_rw [1])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/addr_rw_0  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(rw_40),
    .Q(\i2c0/addr_rw [0])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/scl_ena  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0297_inv ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/state[3]_scl_ena_Select_63_o ),
    .Q(\i2c0/scl_ena_193 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_7  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[7]),
    .Q(\i2c0/data_tx [7])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_6  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[6]),
    .Q(\i2c0/data_tx [6])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_5  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[5]),
    .Q(\i2c0/data_tx [5])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_4  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[4]),
    .Q(\i2c0/data_tx [4])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_3  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[3]),
    .Q(\i2c0/data_tx [3])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_2  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[2]),
    .Q(\i2c0/data_tx [2])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_1  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[1]),
    .Q(\i2c0/data_tx [1])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/data_tx_0  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0356_inv_134 ),
    .D(data_wr[0]),
    .Q(\i2c0/data_tx [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  wb_stb_i_wb_cyc_i_AND_34_o1 (
    .I0(wb_stb_i_IBUF_13),
    .I1(wb_cyc_i_IBUF_14),
    .O(wb_stb_i_wb_cyc_i_AND_34_o)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<1>11  (
    .I0(\i2c0/bit_cnt [1]),
    .I1(\i2c0/bit_cnt [0]),
    .O(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \i2c0/scl_ena_scl_clk_AND_29_o_inv1  (
    .I0(\i2c0/scl_clk_174 ),
    .I1(\i2c0/scl_ena_193 ),
    .O(\i2c0/scl_ena_scl_clk_AND_29_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \i2c0/ena_INV_16_o1  (
    .I0(ena_39),
    .I1(\i2c0/addr_rw[7]_addr[6]_equal_41_o ),
    .O(\i2c0/ena_INV_16_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \i2c0/_n02311  (
    .I0(reset_IBUF_310),
    .I1(\i2c0/count[9]_GND_2_o_LessThan_4_o ),
    .O(\i2c0/_n0231 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \i2c0/data_clk_data_clk_prev_AND_3_o1  (
    .I0(\i2c0/data_clk_prev_191 ),
    .I1(\i2c0/data_clk_173 ),
    .O(\i2c0/data_clk_data_clk_prev_AND_3_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \i2c0/_n0297_inv1  (
    .I0(\i2c0/data_clk_173 ),
    .I1(\i2c0/data_clk_prev_191 ),
    .O(\i2c0/_n0297_inv )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  _n0232_0111 (
    .I0(wb_adr_i_4_IBUF_0),
    .I1(wb_adr_i_3_IBUF_1),
    .I2(wb_adr_i_2_IBUF_2),
    .O(_n0232_011)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \wb_adr_i[4]_i2c_state[0]_Select_12_o<0>11  (
    .I0(wb_adr_i_3_IBUF_1),
    .I1(wb_adr_i_4_IBUF_0),
    .I2(wb_adr_i_2_IBUF_2),
    .O(\wb_adr_i[4]_i2c_state[0]_Select_12_o<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hD5FFD5D580AA8080 ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[2]11  (
    .I0(wb_rd_ack_AND_36_o),
    .I1(\i2c0/ack_error_25 ),
    .I2(\wb_adr_i[4]_i2c_state[0]_Select_12_o<0>1 ),
    .I3(_n0232_011),
    .I4(\i2c0/data_rd [2]),
    .I5(wb_dat_o_2_36),
    .O(GND_1_o_GND_1_o_mux_33_OUT[2])
  );
  LUT6 #(
    .INIT ( 64'hD5FFD5D580AA8080 ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[0]11  (
    .I0(wb_rd_ack_AND_36_o),
    .I1(\i2c0/busy ),
    .I2(\wb_adr_i[4]_i2c_state[0]_Select_12_o<0>1 ),
    .I3(_n0232_011),
    .I4(\i2c0/data_rd [0]),
    .I5(wb_dat_o_0_38),
    .O(GND_1_o_GND_1_o_mux_33_OUT[0])
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  _n0231_01 (
    .I0(_n0231_02),
    .I1(wb_adr_i_3_IBUF_1),
    .I2(wb_adr_i_4_IBUF_0),
    .I3(reset_IBUF_310),
    .O(_n0231_0)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>121  (
    .I0(\i2c0/bit_cnt [0]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [2]),
    .O(\i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>12 )
  );
  LUT6 #(
    .INIT ( 64'h0220022002200000 ))
  \i2c0/Mmux__n022811  (
    .I0(\i2c0/state_FSM_FFd3_197 ),
    .I1(\i2c0/state_FSM_FFd1_199 ),
    .I2(\i2c0/state_FSM_FFd4_196 ),
    .I3(\i2c0/state_FSM_FFd2_198 ),
    .I4(\i2c0/ack_error_25 ),
    .I5(N16),
    .O(\i2c0/_n0228 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A9AAA8A9A8AAA ))
  \i2c0/state_FSM_FFd3-In1  (
    .I0(\i2c0/state_FSM_FFd3_197 ),
    .I1(\i2c0/data_clk_prev_191 ),
    .I2(\i2c0/data_clk_173 ),
    .I3(\i2c0/state_FSM_FFd2_198 ),
    .I4(\i2c0/state_FSM_FFd4_196 ),
    .I5(\i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>12 ),
    .O(\i2c0/state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h288CAAAE ))
  \i2c0/state[3]_scl_ena_Select_63_o1  (
    .I0(\i2c0/scl_ena_193 ),
    .I1(\i2c0/state_FSM_FFd4_196 ),
    .I2(\i2c0/state_FSM_FFd3_197 ),
    .I3(\i2c0/state_FSM_FFd2_198 ),
    .I4(\i2c0/state_FSM_FFd1_199 ),
    .O(\i2c0/state[3]_scl_ena_Select_63_o )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>11  (
    .I0(\i2c0/bit_cnt [2]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [0]),
    .O(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hCCCC2CCCCCCCECCC ))
  \i2c0/state_FSM_FFd2-In1  (
    .I0(\i2c0/state_FSM_FFd4_196 ),
    .I1(\i2c0/state_FSM_FFd2_198 ),
    .I2(\i2c0/state_FSM_FFd3_197 ),
    .I3(\i2c0/data_clk_173 ),
    .I4(\i2c0/data_clk_prev_191 ),
    .I5(\i2c0/ena_INV_16_o ),
    .O(\i2c0/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h8ABA8A8A8A8A8A8A ))
  \i2c0/state_FSM_FFd1-In1  (
    .I0(\i2c0/state_FSM_FFd1_199 ),
    .I1(\i2c0/data_clk_prev_191 ),
    .I2(\i2c0/data_clk_173 ),
    .I3(ena_39),
    .I4(\i2c0/state_FSM_FFd3_197 ),
    .I5(\i2c0/state_FSM_FFd2_198 ),
    .O(\i2c0/state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h0000200000000000 ))
  _n0282_inv1 (
    .I0(wb_adr_i_2_IBUF_2),
    .I1(ack_30),
    .I2(wb_stb_i_wb_cyc_i_AND_34_o),
    .I3(wb_we_i_IBUF_15),
    .I4(wb_adr_i_3_IBUF_1),
    .I5(wb_adr_i_4_IBUF_0),
    .O(_n0282_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  _n0303_inv1 (
    .I0(wb_adr_i_2_IBUF_2),
    .I1(ack_30),
    .I2(wb_stb_i_wb_cyc_i_AND_34_o),
    .I3(wb_we_i_IBUF_15),
    .I4(wb_adr_i_3_IBUF_1),
    .I5(wb_adr_i_4_IBUF_0),
    .O(_n0303_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  _n0289_inv1 (
    .I0(wb_adr_i_2_IBUF_2),
    .I1(ack_30),
    .I2(wb_adr_i_3_IBUF_1),
    .I3(wb_we_i_IBUF_15),
    .I4(wb_adr_i_4_IBUF_0),
    .I5(wb_stb_i_wb_cyc_i_AND_34_o),
    .O(_n0289_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000200000000000 ))
  _n0296_inv1 (
    .I0(wb_adr_i_3_IBUF_1),
    .I1(ack_30),
    .I2(wb_stb_i_wb_cyc_i_AND_34_o),
    .I3(wb_we_i_IBUF_15),
    .I4(wb_adr_i_4_IBUF_0),
    .I5(wb_adr_i_2_IBUF_2),
    .O(_n0296_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  \i2c0/_n0376_inv1  (
    .I0(reset_IBUF_310),
    .I1(\i2c0/data_clk_173 ),
    .I2(\i2c0/state_FSM_FFd2_198 ),
    .I3(\i2c0/data_clk_prev_191 ),
    .I4(\i2c0/state_FSM_FFd3_197 ),
    .I5(\i2c0/state_FSM_FFd4_196 ),
    .O(\i2c0/_n0376_inv )
  );
  LUT6 #(
    .INIT ( 64'h0000200000000000 ))
  \i2c0/_n0293_inv1  (
    .I0(\i2c0/state_FSM_FFd2_198 ),
    .I1(\i2c0/state_FSM_FFd1_199 ),
    .I2(\i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>12 ),
    .I3(\i2c0/data_clk_data_clk_prev_AND_3_o ),
    .I4(\i2c0/state_FSM_FFd3_197 ),
    .I5(\i2c0/state_FSM_FFd4_196 ),
    .O(\i2c0/_n0293_inv )
  );
  LUT5 #(
    .INIT ( 32'hABAAA8AA ))
  \i2c0/Mmux_data_rx[1]_sda_MUX_81_o11  (
    .I0(\i2c0/data_rx [1]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [0]),
    .I4(N16),
    .O(\i2c0/data_rx[1]_sda_MUX_81_o )
  );
  LUT5 #(
    .INIT ( 32'hABAAA8AA ))
  \i2c0/Mmux_data_rx[2]_sda_MUX_80_o11  (
    .I0(\i2c0/data_rx [2]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [1]),
    .I4(N16),
    .O(\i2c0/data_rx[2]_sda_MUX_80_o )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \i2c0/Mmux_data_rx[3]_sda_MUX_79_o11  (
    .I0(\i2c0/data_rx [3]),
    .I1(\i2c0/bit_cnt [2]),
    .I2(\i2c0/bit_cnt [0]),
    .I3(\i2c0/bit_cnt [1]),
    .I4(N16),
    .O(\i2c0/data_rx[3]_sda_MUX_79_o )
  );
  LUT5 #(
    .INIT ( 32'hABAAA8AA ))
  \i2c0/Mmux_data_rx[4]_sda_MUX_78_o11  (
    .I0(\i2c0/data_rx [4]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/bit_cnt [1]),
    .I3(\i2c0/bit_cnt [2]),
    .I4(N16),
    .O(\i2c0/data_rx[4]_sda_MUX_78_o )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \i2c0/Mmux_data_rx[5]_sda_MUX_77_o11  (
    .I0(\i2c0/data_rx [5]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [0]),
    .I4(N16),
    .O(\i2c0/data_rx[5]_sda_MUX_77_o )
  );
  LUT5 #(
    .INIT ( 32'hBAAA8AAA ))
  \i2c0/Mmux_data_rx[6]_sda_MUX_76_o11  (
    .I0(\i2c0/data_rx [6]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [1]),
    .I4(N16),
    .O(\i2c0/data_rx[6]_sda_MUX_76_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \i2c0/Mmux_data_rx[7]_sda_MUX_75_o11  (
    .I0(\i2c0/data_rx [7]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [0]),
    .I4(N16),
    .O(\i2c0/data_rx[7]_sda_MUX_75_o )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEFEE22222022 ))
  \i2c0/Mmux_sda_ena_n11  (
    .I0(\i2c0/sda_int ),
    .I1(\i2c0/state_FSM_FFd1_199 ),
    .I2(\i2c0/state_FSM_FFd3_197 ),
    .I3(\i2c0/state_FSM_FFd4_196 ),
    .I4(\i2c0/state_FSM_FFd2_198 ),
    .I5(\i2c0/data_clk_prev_191 ),
    .O(\i2c0/sda_ena_n )
  );
  LUT5 #(
    .INIT ( 32'hFFDFFFFF ))
  \i2c0/GND_2_o_GND_2_o_equal_1_o<9>_SW0  (
    .I0(\i2c0/count [0]),
    .I1(\i2c0/count [4]),
    .I2(\i2c0/count [5]),
    .I3(\i2c0/count [3]),
    .I4(\i2c0/count [2]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \i2c0/GND_2_o_GND_2_o_equal_1_o<9>  (
    .I0(\i2c0/count [9]),
    .I1(\i2c0/count [8]),
    .I2(\i2c0/count [7]),
    .I3(\i2c0/count [6]),
    .I4(\i2c0/count [1]),
    .I5(N2),
    .O(\i2c0/GND_2_o_GND_2_o_equal_1_o )
  );
  LUT5 #(
    .INIT ( 32'h777FFFFF ))
  \i2c0/count[9]_GND_2_o_LessThan_4_o1_SW0  (
    .I0(\i2c0/count[9]_GND_2_o_add_1_OUT<5> ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<4> ),
    .I2(\i2c0/count[9]_GND_2_o_add_1_OUT<1> ),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<2> ),
    .I4(\i2c0/count[9]_GND_2_o_add_1_OUT<3> ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF11110111 ))
  \i2c0/count[9]_GND_2_o_LessThan_4_o1  (
    .I0(\i2c0/count[9]_GND_2_o_add_1_OUT<9> ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<8> ),
    .I2(\i2c0/count[9]_GND_2_o_add_1_OUT<7> ),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<6> ),
    .I4(N4),
    .I5(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .O(\i2c0/count[9]_GND_2_o_LessThan_4_o )
  );
  LUT4 #(
    .INIT ( 16'h57FF ))
  \i2c0/count[9]_GND_2_o_LessThan_6_o1_SW0  (
    .I0(\i2c0/count[9]_GND_2_o_add_1_OUT<5> ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<2> ),
    .I2(\i2c0/count[9]_GND_2_o_add_1_OUT<3> ),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<4> ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55551555 ))
  \i2c0/count[9]_GND_2_o_LessThan_6_o1  (
    .I0(\i2c0/count[9]_GND_2_o_add_1_OUT<9> ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<8> ),
    .I2(\i2c0/count[9]_GND_2_o_add_1_OUT<7> ),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<6> ),
    .I4(N6),
    .I5(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .O(\i2c0/count[9]_GND_2_o_LessThan_6_o )
  );
  LUT6 #(
    .INIT ( 64'h1555FFFFFFFFFFFF ))
  \i2c0/GND_2_o_count[9]_AND_2_o_SW0  (
    .I0(\i2c0/count[9]_GND_2_o_add_1_OUT<4> ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<2> ),
    .I2(\i2c0/count[9]_GND_2_o_add_1_OUT<1> ),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<3> ),
    .I4(\i2c0/count[9]_GND_2_o_add_1_OUT<6> ),
    .I5(\i2c0/count[9]_GND_2_o_add_1_OUT<5> ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h5555555510115555 ))
  \i2c0/GND_2_o_count[9]_AND_2_o  (
    .I0(\i2c0/count[9]_GND_2_o_LessThan_6_o ),
    .I1(\i2c0/count[9]_GND_2_o_add_1_OUT<8> ),
    .I2(N10),
    .I3(\i2c0/count[9]_GND_2_o_add_1_OUT<7> ),
    .I4(\i2c0/count[9]_GND_2_o_add_1_OUT<9> ),
    .I5(\i2c0/GND_2_o_GND_2_o_equal_1_o ),
    .O(\i2c0/GND_2_o_count[9]_AND_2_o_135 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \i2c0/addr_rw[7]_addr[6]_equal_41_o81  (
    .I0(\i2c0/addr_rw [6]),
    .I1(\i2c0/addr_rw [2]),
    .I2(\i2c0/addr_rw [0]),
    .I3(addr[5]),
    .I4(addr[1]),
    .I5(rw_40),
    .O(\i2c0/addr_rw[7]_addr[6]_equal_41_o8 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \i2c0/addr_rw[7]_addr[6]_equal_41_o82  (
    .I0(\i2c0/addr_rw [3]),
    .I1(\i2c0/addr_rw [4]),
    .I2(\i2c0/addr_rw [5]),
    .I3(addr[2]),
    .I4(addr[3]),
    .I5(addr[4]),
    .O(\i2c0/addr_rw[7]_addr[6]_equal_41_o81_228 )
  );
  LUT6 #(
    .INIT ( 64'h8421000000000000 ))
  \i2c0/addr_rw[7]_addr[6]_equal_41_o83  (
    .I0(\i2c0/addr_rw [1]),
    .I1(\i2c0/addr_rw [7]),
    .I2(addr[0]),
    .I3(addr[6]),
    .I4(\i2c0/addr_rw[7]_addr[6]_equal_41_o81_228 ),
    .I5(\i2c0/addr_rw[7]_addr[6]_equal_41_o8 ),
    .O(\i2c0/addr_rw[7]_addr[6]_equal_41_o )
  );
  LUT6 #(
    .INIT ( 64'h1015000050550000 ))
  \i2c0/_n0340_inv  (
    .I0(\i2c0/state_FSM_FFd1_199 ),
    .I1(\i2c0/state_FSM_FFd2_198 ),
    .I2(\i2c0/state_FSM_FFd3_197 ),
    .I3(N12),
    .I4(\i2c0/data_clk_data_clk_prev_AND_3_o ),
    .I5(\i2c0/ena_INV_16_o ),
    .O(\i2c0/_n0340_inv_128 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \i2c0/_n0356_inv_SW0  (
    .I0(\i2c0/state_FSM_FFd1_199 ),
    .I1(reset_IBUF_310),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0800000008000008 ))
  \i2c0/_n0356_inv  (
    .I0(\i2c0/data_clk_data_clk_prev_AND_3_o ),
    .I1(ena_39),
    .I2(N14),
    .I3(\i2c0/state_FSM_FFd3_197 ),
    .I4(\i2c0/state_FSM_FFd2_198 ),
    .I5(\i2c0/state_FSM_FFd4_196 ),
    .O(\i2c0/_n0356_inv_134 )
  );
  IBUF   wb_adr_i_4_IBUF (
    .I(wb_adr_i[4]),
    .O(wb_adr_i_4_IBUF_0)
  );
  IBUF   wb_adr_i_3_IBUF (
    .I(wb_adr_i[3]),
    .O(wb_adr_i_3_IBUF_1)
  );
  IBUF   wb_adr_i_2_IBUF (
    .I(wb_adr_i[2]),
    .O(wb_adr_i_2_IBUF_2)
  );
  IBUF   wb_dat_i_7_IBUF (
    .I(wb_dat_i[7]),
    .O(wb_dat_i_7_IBUF_10)
  );
  IBUF   wb_dat_i_6_IBUF (
    .I(wb_dat_i[6]),
    .O(wb_dat_i_6_IBUF_4)
  );
  IBUF   wb_dat_i_5_IBUF (
    .I(wb_dat_i[5]),
    .O(wb_dat_i_5_IBUF_5)
  );
  IBUF   wb_dat_i_4_IBUF (
    .I(wb_dat_i[4]),
    .O(wb_dat_i_4_IBUF_6)
  );
  IBUF   wb_dat_i_3_IBUF (
    .I(wb_dat_i[3]),
    .O(wb_dat_i_3_IBUF_7)
  );
  IBUF   wb_dat_i_2_IBUF (
    .I(wb_dat_i[2]),
    .O(wb_dat_i_2_IBUF_8)
  );
  IBUF   wb_dat_i_1_IBUF (
    .I(wb_dat_i[1]),
    .O(wb_dat_i_1_IBUF_9)
  );
  IBUF   wb_dat_i_0_IBUF (
    .I(wb_dat_i[0]),
    .O(wb_dat_i_0_IBUF_3)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_310)
  );
  IBUF   wb_stb_i_IBUF (
    .I(wb_stb_i),
    .O(wb_stb_i_IBUF_13)
  );
  IBUF   wb_cyc_i_IBUF (
    .I(wb_cyc_i),
    .O(wb_cyc_i_IBUF_14)
  );
  IBUF   wb_we_i_IBUF (
    .I(wb_we_i),
    .O(wb_we_i_IBUF_15)
  );
  IOBUF   sda_IOBUF (
    .I(wb_dat_o_8_OBUF_26),
    .T(\i2c0/sda_ena_n ),
    .O(N16),
    .IO(sda)
  );
  OBUFT   scl_OBUFT (
    .I(wb_dat_o_8_OBUF_26),
    .T(\i2c0/scl_ena_scl_clk_AND_29_o_inv ),
    .O(scl)
  );
  OBUF   wb_dat_o_31_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[31])
  );
  OBUF   wb_dat_o_30_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[30])
  );
  OBUF   wb_dat_o_29_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[29])
  );
  OBUF   wb_dat_o_28_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[28])
  );
  OBUF   wb_dat_o_27_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[27])
  );
  OBUF   wb_dat_o_26_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[26])
  );
  OBUF   wb_dat_o_25_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[25])
  );
  OBUF   wb_dat_o_24_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[24])
  );
  OBUF   wb_dat_o_23_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[23])
  );
  OBUF   wb_dat_o_22_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[22])
  );
  OBUF   wb_dat_o_21_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[21])
  );
  OBUF   wb_dat_o_20_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[20])
  );
  OBUF   wb_dat_o_19_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[19])
  );
  OBUF   wb_dat_o_18_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[18])
  );
  OBUF   wb_dat_o_17_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[17])
  );
  OBUF   wb_dat_o_16_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[16])
  );
  OBUF   wb_dat_o_15_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[15])
  );
  OBUF   wb_dat_o_14_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[14])
  );
  OBUF   wb_dat_o_13_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[13])
  );
  OBUF   wb_dat_o_12_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[12])
  );
  OBUF   wb_dat_o_11_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[11])
  );
  OBUF   wb_dat_o_10_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[10])
  );
  OBUF   wb_dat_o_9_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[9])
  );
  OBUF   wb_dat_o_8_OBUF (
    .I(wb_dat_o_8_OBUF_26),
    .O(wb_dat_o[8])
  );
  OBUF   wb_dat_o_7_OBUF (
    .I(wb_dat_o_7_1_311),
    .O(wb_dat_o[7])
  );
  OBUF   wb_dat_o_6_OBUF (
    .I(wb_dat_o_6_1_312),
    .O(wb_dat_o[6])
  );
  OBUF   wb_dat_o_5_OBUF (
    .I(wb_dat_o_5_1_313),
    .O(wb_dat_o[5])
  );
  OBUF   wb_dat_o_4_OBUF (
    .I(wb_dat_o_4_1_314),
    .O(wb_dat_o[4])
  );
  OBUF   wb_dat_o_3_OBUF (
    .I(wb_dat_o_3_1_315),
    .O(wb_dat_o[3])
  );
  OBUF   wb_dat_o_2_OBUF (
    .I(wb_dat_o_2_1_316),
    .O(wb_dat_o[2])
  );
  OBUF   wb_dat_o_1_OBUF (
    .I(wb_dat_o_1_1_317),
    .O(wb_dat_o[1])
  );
  OBUF   wb_dat_o_0_OBUF (
    .I(wb_dat_o_0_1_318),
    .O(wb_dat_o[0])
  );
  OBUF   wb_ack_o_OBUF (
    .I(wb_ack_o_OBUF_57),
    .O(wb_ack_o)
  );
  FDR   ack (
    .C(clk_BUFGP_11),
    .D(ack_glue_set_283),
    .R(reset_IBUF_310),
    .Q(ack_30)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \i2c0/data_clk  (
    .C(clk_BUFGP_11),
    .D(\i2c0/data_clk_glue_set_284 ),
    .R(\i2c0/_n0231 ),
    .Q(\i2c0/data_clk_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_rt  (
    .I0(\i2c0/count [8]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<8>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_rt  (
    .I0(\i2c0/count [7]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<7>_rt_286 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_rt  (
    .I0(\i2c0/count [6]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<6>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_rt  (
    .I0(\i2c0/count [5]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<5>_rt_288 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_rt  (
    .I0(\i2c0/count [4]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<4>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_rt  (
    .I0(\i2c0/count [3]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<3>_rt_290 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_rt  (
    .I0(\i2c0/count [2]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<2>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_rt  (
    .I0(\i2c0/count [1]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_cy<1>_rt_292 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<9>_rt  (
    .I0(\i2c0/count [9]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_xor<9>_rt_293 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  ena_rstpot (
    .I0(_n0282_inv),
    .I1(ena_39),
    .I2(wb_dat_i_0_IBUF_3),
    .O(ena_rstpot_294)
  );
  FDR   ena (
    .C(clk_BUFGP_11),
    .D(ena_rstpot_294),
    .R(reset_IBUF_310),
    .Q(ena_39)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  rw_rstpot (
    .I0(_n0289_inv),
    .I1(rw_40),
    .I2(wb_dat_i_0_IBUF_3),
    .O(rw_rstpot_295)
  );
  FDR   rw (
    .C(clk_BUFGP_11),
    .D(rw_rstpot_295),
    .R(reset_IBUF_310),
    .Q(rw_40)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \i2c0/scl_clk  (
    .C(clk_BUFGP_11),
    .D(\i2c0/scl_clk_rstpot_297 ),
    .R(\i2c0/_n0231 ),
    .Q(\i2c0/scl_clk_174 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \i2c0/data_clk_prev  (
    .C(clk_BUFGP_11),
    .D(\i2c0/data_clk_prev_rstpot_298 ),
    .Q(\i2c0/data_clk_prev_191 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \i2c0/Mmux_bit_cnt[2]_PWR_2_o_mux_26_OUT31  (
    .I0(\i2c0/bit_cnt [2]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/bit_cnt [1]),
    .O(\i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \i2c0/Mcount_count_lut<9>  (
    .I0(\i2c0/count [9]),
    .I1(\i2c0/count [8]),
    .I2(\i2c0/count [7]),
    .I3(\i2c0/count [6]),
    .I4(N2),
    .I5(\i2c0/count [1]),
    .O(\i2c0/Mcount_count_lut [9])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \i2c0/Mcount_count_lut<8>  (
    .I0(\i2c0/count [8]),
    .I1(\i2c0/count [9]),
    .I2(\i2c0/count [7]),
    .I3(\i2c0/count [6]),
    .I4(N2),
    .I5(\i2c0/count [1]),
    .O(\i2c0/Mcount_count_lut [8])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \i2c0/Mcount_count_lut<7>  (
    .I0(\i2c0/count [7]),
    .I1(\i2c0/count [9]),
    .I2(\i2c0/count [8]),
    .I3(\i2c0/count [6]),
    .I4(N2),
    .I5(\i2c0/count [1]),
    .O(\i2c0/Mcount_count_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \i2c0/Mcount_count_lut<6>  (
    .I0(\i2c0/count [6]),
    .I1(\i2c0/count [9]),
    .I2(\i2c0/count [8]),
    .I3(\i2c0/count [7]),
    .I4(N2),
    .I5(\i2c0/count [1]),
    .O(\i2c0/Mcount_count_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hD6D7 ))
  _n0232_0_SW0 (
    .I0(wb_we_i_IBUF_15),
    .I1(wb_adr_i_4_IBUF_0),
    .I2(wb_adr_i_3_IBUF_1),
    .I3(wb_adr_i_2_IBUF_2),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_3  (
    .I0(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/addr_rw [7]),
    .I3(\i2c0/addr_rw [6]),
    .I4(\i2c0/addr_rw [4]),
    .I5(\i2c0/addr_rw [5]),
    .O(\i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_3_73 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_4  (
    .I0(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/addr_rw [3]),
    .I3(\i2c0/addr_rw [2]),
    .I4(\i2c0/addr_rw [0]),
    .I5(\i2c0/addr_rw [1]),
    .O(\i2c0/Mmux_GND_2_o_addr_rw[7]_Mux_17_o_4_74 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_3  (
    .I0(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/data_tx [7]),
    .I3(\i2c0/data_tx [6]),
    .I4(\i2c0/data_tx [4]),
    .I5(\i2c0/data_tx [5]),
    .O(\i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_3_75 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_4  (
    .I0(\i2c0/bit_cnt[2]_GND_2_o_sub_31_OUT<1> ),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/data_tx [3]),
    .I3(\i2c0/data_tx [2]),
    .I4(\i2c0/data_tx [0]),
    .I5(\i2c0/data_tx [1]),
    .O(\i2c0/Mmux_GND_2_o_data_tx[7]_Mux_25_o_4_76 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  wb_ack_o1 (
    .I0(wb_stb_i_IBUF_13),
    .I1(wb_cyc_i_IBUF_14),
    .I2(ack_30),
    .O(wb_ack_o_OBUF_57)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  wb_rd_ack_AND_36_o1 (
    .I0(ack_30),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_cyc_i_IBUF_14),
    .I3(wb_stb_i_IBUF_13),
    .O(wb_rd_ack_AND_36_o)
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \i2c0/Mmux_data_rx[0]_sda_MUX_82_o11  (
    .I0(\i2c0/data_rx [0]),
    .I1(\i2c0/bit_cnt [0]),
    .I2(\i2c0/bit_cnt [1]),
    .I3(\i2c0/bit_cnt [2]),
    .I4(N16),
    .O(\i2c0/data_rx[0]_sda_MUX_82_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFF7FFFFFFFFFFF ))
  \i2c0/GND_2_o_GND_2_o_equal_1_o_inv1  (
    .I0(\i2c0/count [9]),
    .I1(\i2c0/count [8]),
    .I2(\i2c0/count [7]),
    .I3(\i2c0/count [6]),
    .I4(N2),
    .I5(\i2c0/count [1]),
    .O(\i2c0/GND_2_o_GND_2_o_equal_1_o_inv )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  _n0231_021 (
    .I0(ack_30),
    .I1(wb_stb_i_IBUF_13),
    .I2(wb_cyc_i_IBUF_14),
    .I3(wb_we_i_IBUF_15),
    .O(_n0231_02)
  );
  LUT6 #(
    .INIT ( 64'h0004000000040400 ))
  \i2c0/_n0286_inv1  (
    .I0(\i2c0/data_clk_prev_191 ),
    .I1(\i2c0/data_clk_173 ),
    .I2(\i2c0/state_FSM_FFd1_199 ),
    .I3(\i2c0/state_FSM_FFd3_197 ),
    .I4(\i2c0/state_FSM_FFd2_198 ),
    .I5(\i2c0/state_FSM_FFd4_196 ),
    .O(\i2c0/_n0286_inv )
  );
  LUT5 #(
    .INIT ( 32'hBAAAAAAA ))
  _n0232_0 (
    .I0(reset_IBUF_310),
    .I1(ack_30),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(N8),
    .O(_n0232_0_72)
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \i2c0/Mmux__n030421  (
    .I0(\i2c0/bit_cnt [0]),
    .I1(\i2c0/bit_cnt [1]),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/GND_2_o_addr_rw[7]_Mux_17_o ),
    .O(\i2c0/Mmux__n03042 )
  );
  LUT5 #(
    .INIT ( 32'h99999991 ))
  \i2c0/_n0340_inv_SW0  (
    .I0(\i2c0/state_FSM_FFd2_198 ),
    .I1(\i2c0/state_FSM_FFd4_196 ),
    .I2(\i2c0/bit_cnt [2]),
    .I3(\i2c0/bit_cnt [0]),
    .I4(\i2c0/bit_cnt [1]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0002000255570002 ))
  \i2c0/state_FSM_FFd4-In1  (
    .I0(\i2c0/state_FSM_FFd3_197 ),
    .I1(\i2c0/bit_cnt [2]),
    .I2(\i2c0/bit_cnt [0]),
    .I3(\i2c0/bit_cnt [1]),
    .I4(ena_39),
    .I5(\i2c0/state_FSM_FFd1_199 ),
    .O(\i2c0/state_FSM_FFd4-In1_231 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/data_clk_prev_rstpot  (
    .I0(reset_IBUF_310),
    .I1(\i2c0/data_clk_173 ),
    .I2(\i2c0/data_clk_prev_191 ),
    .O(\i2c0/data_clk_prev_rstpot_298 )
  );
  LUT5 #(
    .INIT ( 32'hEFEE4544 ))
  \i2c0/data_clk_glue_set  (
    .I0(reset_IBUF_310),
    .I1(\i2c0/GND_2_o_count[9]_AND_2_o_135 ),
    .I2(\i2c0/count[9]_GND_2_o_LessThan_4_o ),
    .I3(\i2c0/count[9]_GND_2_o_LessThan_6_o ),
    .I4(\i2c0/data_clk_173 ),
    .O(\i2c0/data_clk_glue_set_284 )
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[6]11  (
    .I0(wb_dat_o_6_32),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [6]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[6])
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[7]11  (
    .I0(wb_dat_o_7_31),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [7]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[7])
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[5]11  (
    .I0(wb_dat_o_5_33),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [5]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[5])
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[4]11  (
    .I0(wb_dat_o_4_34),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [4]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[4])
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[3]11  (
    .I0(wb_dat_o_3_35),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [3]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[3])
  );
  LUT6 #(
    .INIT ( 64'hAAAABAAAAAAA8AAA ))
  \Mmux_GND_1_o_GND_1_o_mux_33_OUT[1]11  (
    .I0(wb_dat_o_1_37),
    .I1(wb_we_i_IBUF_15),
    .I2(wb_stb_i_IBUF_13),
    .I3(wb_cyc_i_IBUF_14),
    .I4(ack_30),
    .I5(\i2c0/data_rd [1]),
    .O(GND_1_o_GND_1_o_mux_33_OUT[1])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \i2c0/scl_clk_rstpot  (
    .I0(reset_IBUF_310),
    .I1(\i2c0/count[9]_GND_2_o_LessThan_6_o ),
    .I2(\i2c0/count[9]_GND_2_o_LessThan_4_o ),
    .I3(\i2c0/scl_clk_174 ),
    .O(\i2c0/scl_clk_rstpot_297 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  ack_glue_set (
    .I0(ack_30),
    .I1(wb_cyc_i_IBUF_14),
    .I2(wb_stb_i_IBUF_13),
    .O(ack_glue_set_283)
  );
  MUXF7   \i2c0/busy_rstpot  (
    .I0(\i2c0/busy ),
    .I1(N20),
    .S(\i2c0/data_clk_data_clk_prev_AND_3_o ),
    .O(\i2c0/busy_rstpot_296 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA3BBBAA883BB8 ))
  \i2c0/busy_rstpot_G  (
    .I0(\i2c0/busy ),
    .I1(\i2c0/state_FSM_FFd3_197 ),
    .I2(ena_39),
    .I3(\i2c0/state_FSM_FFd2_198 ),
    .I4(\i2c0/state_FSM_FFd1_199 ),
    .I5(\i2c0/state_FSM_FFd4_196 ),
    .O(N20)
  );
  MUXF7   \i2c0/Mmux__n030424  (
    .I0(N21),
    .I1(N22),
    .S(\i2c0/state_FSM_FFd2_198 ),
    .O(\i2c0/_n0304 )
  );
  LUT6 #(
    .INIT ( 64'hFFF7DDD5AAA28880 ))
  \i2c0/Mmux__n030424_F  (
    .I0(\i2c0/state_FSM_FFd3_197 ),
    .I1(\i2c0/state_FSM_FFd4_196 ),
    .I2(\i2c0/bit_cnt[2]_data_tx[7]_Mux_20_o ),
    .I3(\i2c0/addr_rw [0]),
    .I4(\i2c0/Mmux__n03042 ),
    .I5(\i2c0/bit_cnt[2]_addr_rw[7]_Mux_13_o ),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'hFDFDFDECB9B9B9A8 ))
  \i2c0/Mmux__n030424_G  (
    .I0(\i2c0/state_FSM_FFd4_196 ),
    .I1(\i2c0/state_FSM_FFd3_197 ),
    .I2(\i2c0/ena_INV_16_o ),
    .I3(\i2c0/GND_2_o_data_tx[7]_Mux_25_o ),
    .I4(\i2c0/Msub_bit_cnt[2]_GND_2_o_sub_31_OUT_xor<2>12 ),
    .I5(\i2c0/bit_cnt[2]_data_wr[7]_Mux_35_o ),
    .O(N22)
  );
  MUXF7   \i2c0/state_FSM_FFd4-In4  (
    .I0(N23),
    .I1(N24),
    .S(\i2c0/state_FSM_FFd2_198 ),
    .O(\i2c0/state_FSM_FFd4-In )
  );
  LUT6 #(
    .INIT ( 64'hB999AAAAA888AAAA ))
  \i2c0/state_FSM_FFd4-In4_F  (
    .I0(\i2c0/state_FSM_FFd4_196 ),
    .I1(\i2c0/data_clk_prev_191 ),
    .I2(\i2c0/addr_rw [0]),
    .I3(\i2c0/state_FSM_FFd3_197 ),
    .I4(\i2c0/data_clk_173 ),
    .I5(\i2c0/state_FSM_FFd4-In1_231 ),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'hAA8AAAAABA8AAAAA ))
  \i2c0/state_FSM_FFd4-In4_G  (
    .I0(\i2c0/state_FSM_FFd4_196 ),
    .I1(\i2c0/data_clk_prev_191 ),
    .I2(\i2c0/data_clk_173 ),
    .I3(ena_39),
    .I4(\i2c0/state_FSM_FFd3_197 ),
    .I5(\i2c0/addr_rw[7]_addr[6]_equal_41_o ),
    .O(N24)
  );
  LD #(
    .INIT ( 1'b1 ))
  \i2c0/sda_int_LD  (
    .D(wb_dat_o_8_OBUF_26),
    .G(reset_IBUF_BUFG_12),
    .Q(\i2c0/sda_int_LD_304 )
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  \i2c0/sda_int_C  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0340_inv_128 ),
    .CLR(reset_IBUF_310),
    .D(\i2c0/_n0304 ),
    .Q(\i2c0/sda_int_C_305 )
  );
  FDE_1 #(
    .INIT ( 1'b1 ))
  \i2c0/sda_int_P  (
    .C(clk_BUFGP_11),
    .CE(\i2c0/_n0340_inv_128 ),
    .D(\i2c0/_n0304 ),
    .Q(\i2c0/sda_int_P_306 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/sda_int1  (
    .I0(\i2c0/sda_int_LD_304 ),
    .I1(\i2c0/sda_int_C_305 ),
    .I2(\i2c0/sda_int_P_306 ),
    .O(\i2c0/sda_int )
  );
  LD #(
    .INIT ( 1'b0 ))
  \i2c0/busy_LD  (
    .D(N1),
    .G(reset_IBUF_BUFG_12),
    .Q(\i2c0/busy_LD_307 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \i2c0/busy_C  (
    .C(clk_BUFGP_11),
    .D(\i2c0/busy_rstpot_296 ),
    .Q(\i2c0/busy_C_308 )
  );
  FDP_1 #(
    .INIT ( 1'b1 ))
  \i2c0/busy_P  (
    .C(clk_BUFGP_11),
    .D(\i2c0/busy_rstpot_296 ),
    .PRE(reset_IBUF_310),
    .Q(\i2c0/busy_P_309 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \i2c0/busy1  (
    .I0(\i2c0/busy_LD_307 ),
    .I1(\i2c0/busy_C_308 ),
    .I2(\i2c0/busy_P_309 ),
    .O(\i2c0/busy )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_11)
  );
  BUFG   reset_IBUF_BUFG (
    .O(reset_IBUF_BUFG_12),
    .I(reset_IBUF_310)
  );
  INV   \i2c0/Madd_count[9]_GND_2_o_add_1_OUT_lut<0>_INV_0  (
    .I(\i2c0/count [0]),
    .O(\i2c0/Madd_count[9]_GND_2_o_add_1_OUT_lut<0> )
  );
  INV   \i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<0>1_INV_0  (
    .I(\i2c0/bit_cnt [0]),
    .O(\i2c0/bit_cnt[2]_PWR_2_o_mux_26_OUT<0> )
  );
  FDR   wb_dat_o_7_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[7]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_7_1_311)
  );
  FDR   wb_dat_o_6_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[6]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_6_1_312)
  );
  FDR   wb_dat_o_5_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[5]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_5_1_313)
  );
  FDR   wb_dat_o_4_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[4]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_4_1_314)
  );
  FDR   wb_dat_o_3_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[3]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_3_1_315)
  );
  FDR   wb_dat_o_2_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[2]),
    .R(_n0231_0),
    .Q(wb_dat_o_2_1_316)
  );
  FDR   wb_dat_o_1_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[1]),
    .R(_n0232_0_72),
    .Q(wb_dat_o_1_1_317)
  );
  FDR   wb_dat_o_0_1 (
    .C(clk_BUFGP_11),
    .D(GND_1_o_GND_1_o_mux_33_OUT[0]),
    .R(_n0231_0),
    .Q(wb_dat_o_0_1_318)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

