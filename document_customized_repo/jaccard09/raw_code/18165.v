module backprop_backprop_Pipeline_activations1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_16_address0,oracle_activations2_16_ce0,oracle_activations2_16_q0,oracle_activations2_18_address0,oracle_activations2_18_ce0,oracle_activations2_18_q0,oracle_activations2_20_address0,oracle_activations2_20_ce0,oracle_activations2_20_q0,oracle_activations2_22_address0,oracle_activations2_22_ce0,oracle_activations2_22_q0,oracle_activations2_24_address0,oracle_activations2_24_ce0,oracle_activations2_24_q0,oracle_activations2_26_address0,oracle_activations2_26_ce0,oracle_activations2_26_q0,oracle_activations2_28_address0,oracle_activations2_28_ce0,oracle_activations2_28_q0,oracle_activations2_30_address0,oracle_activations2_30_ce0,oracle_activations2_30_q0,empty,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,oracle_activations2_17_address0,oracle_activations2_17_ce0,oracle_activations2_17_q0,oracle_activations2_19_address0,oracle_activations2_19_ce0,oracle_activations2_19_q0,oracle_activations2_21_address0,oracle_activations2_21_ce0,oracle_activations2_21_q0,oracle_activations2_23_address0,oracle_activations2_23_ce0,oracle_activations2_23_q0,oracle_activations2_25_address0,oracle_activations2_25_ce0,oracle_activations2_25_q0,oracle_activations2_27_address0,oracle_activations2_27_ce0,oracle_activations2_27_q0,oracle_activations2_29_address0,oracle_activations2_29_ce0,oracle_activations2_29_q0,oracle_activations2_31_address0,oracle_activations2_31_ce0,oracle_activations2_31_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,add113_i_out,add113_i_out_ap_vld,grp_fu_11177_p_din0,grp_fu_11177_p_din1,grp_fu_11177_p_opcode,grp_fu_11177_p_dout0,grp_fu_11177_p_ce,grp_fu_7944_p_din0,grp_fu_7944_p_din1,grp_fu_7944_p_dout0,grp_fu_7944_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [0:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [0:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [0:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [0:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [0:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [0:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [0:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [0:0] oracle_activations2_16_address0;
output   oracle_activations2_16_ce0;
input  [63:0] oracle_activations2_16_q0;
output  [0:0] oracle_activations2_18_address0;
output   oracle_activations2_18_ce0;
input  [63:0] oracle_activations2_18_q0;
output  [0:0] oracle_activations2_20_address0;
output   oracle_activations2_20_ce0;
input  [63:0] oracle_activations2_20_q0;
output  [0:0] oracle_activations2_22_address0;
output   oracle_activations2_22_ce0;
input  [63:0] oracle_activations2_22_q0;
output  [0:0] oracle_activations2_24_address0;
output   oracle_activations2_24_ce0;
input  [63:0] oracle_activations2_24_q0;
output  [0:0] oracle_activations2_26_address0;
output   oracle_activations2_26_ce0;
input  [63:0] oracle_activations2_26_q0;
output  [0:0] oracle_activations2_28_address0;
output   oracle_activations2_28_ce0;
input  [63:0] oracle_activations2_28_q0;
output  [0:0] oracle_activations2_30_address0;
output   oracle_activations2_30_ce0;
input  [63:0] oracle_activations2_30_q0;
input  [6:0] empty;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [0:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [0:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [0:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [0:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [0:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [0:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [0:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [0:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [0:0] oracle_activations2_17_address0;
output   oracle_activations2_17_ce0;
input  [63:0] oracle_activations2_17_q0;
output  [0:0] oracle_activations2_19_address0;
output   oracle_activations2_19_ce0;
input  [63:0] oracle_activations2_19_q0;
output  [0:0] oracle_activations2_21_address0;
output   oracle_activations2_21_ce0;
input  [63:0] oracle_activations2_21_q0;
output  [0:0] oracle_activations2_23_address0;
output   oracle_activations2_23_ce0;
input  [63:0] oracle_activations2_23_q0;
output  [0:0] oracle_activations2_25_address0;
output   oracle_activations2_25_ce0;
input  [63:0] oracle_activations2_25_q0;
output  [0:0] oracle_activations2_27_address0;
output   oracle_activations2_27_ce0;
input  [63:0] oracle_activations2_27_q0;
output  [0:0] oracle_activations2_29_address0;
output   oracle_activations2_29_ce0;
input  [63:0] oracle_activations2_29_q0;
output  [0:0] oracle_activations2_31_address0;
output   oracle_activations2_31_ce0;
input  [63:0] oracle_activations2_31_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [63:0] add113_i_out;
output   add113_i_out_ap_vld;
output  [63:0] grp_fu_11177_p_din0;
output  [63:0] grp_fu_11177_p_din1;
output  [0:0] grp_fu_11177_p_opcode;
input  [63:0] grp_fu_11177_p_dout0;
output   grp_fu_11177_p_ce;
output  [63:0] grp_fu_7944_p_din0;
output  [63:0] grp_fu_7944_p_din1;
input  [63:0] grp_fu_7944_p_dout0;
output   grp_fu_7944_p_ce;
reg ap_idle;
reg add113_i_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_43_reg_1647;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] j_3_reg_1641;
wire   [63:0] tmp_s_fu_1187_p35;
reg   [63:0] tmp_s_reg_1971;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_59_fu_1323_p35;
reg   [63:0] tmp_59_reg_1976;
wire   [63:0] tmp_60_fu_1395_p35;
reg   [63:0] tmp_60_reg_1981;
wire   [63:0] tmp_61_fu_1531_p35;
reg   [63:0] tmp_61_reg_1986;
reg   [63:0] mul8_i3_reg_1991;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i3_reg_2001;
reg   [63:0] add11_i3_reg_2006;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln101_1_fu_1106_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln105_fu_1148_p1;
reg   [63:0] add113_i_fu_210;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] j_fu_214;
wire   [6:0] add_ln104_fu_1607_p2;
wire    ap_block_pp0_stage15_11001;
reg   [6:0] ap_sig_allocacmp_j_3;
wire    ap_block_pp0_stage8_01001;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_16_ce0_local;
reg    oracle_activations2_18_ce0_local;
reg    oracle_activations2_20_ce0_local;
reg    oracle_activations2_22_ce0_local;
reg    oracle_activations2_24_ce0_local;
reg    oracle_activations2_26_ce0_local;
reg    oracle_activations2_28_ce0_local;
reg    oracle_activations2_30_ce0_local;
reg    weights2_0_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_12_ce0_local;
reg    weights2_14_ce0_local;
reg    weights2_16_ce0_local;
reg    weights2_18_ce0_local;
reg    weights2_20_ce0_local;
reg    weights2_22_ce0_local;
reg    weights2_24_ce0_local;
reg    weights2_26_ce0_local;
reg    weights2_28_ce0_local;
reg    weights2_30_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    oracle_activations2_17_ce0_local;
reg    oracle_activations2_19_ce0_local;
reg    oracle_activations2_21_ce0_local;
reg    oracle_activations2_23_ce0_local;
reg    oracle_activations2_25_ce0_local;
reg    oracle_activations2_27_ce0_local;
reg    oracle_activations2_29_ce0_local;
reg    oracle_activations2_31_ce0_local;
reg    weights2_1_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_13_ce0_local;
reg    weights2_15_ce0_local;
reg    weights2_17_ce0_local;
reg    weights2_19_ce0_local;
reg    weights2_21_ce0_local;
reg    weights2_23_ce0_local;
reg    weights2_25_ce0_local;
reg    weights2_27_ce0_local;
reg    weights2_29_ce0_local;
reg    weights2_31_ce0_local;
reg   [63:0] grp_fu_1063_p0;
reg   [63:0] grp_fu_1063_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1067_p0;
reg   [63:0] grp_fu_1067_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] lshr_ln101_1_fu_1092_p4;
wire   [6:0] zext_ln101_fu_1102_p1;
wire   [6:0] add_ln105_fu_1142_p2;
wire   [63:0] tmp_s_fu_1187_p33;
wire   [4:0] trunc_ln104_fu_1184_p1;
wire   [63:0] tmp_59_fu_1323_p2;
wire   [63:0] tmp_59_fu_1323_p4;
wire   [63:0] tmp_59_fu_1323_p6;
wire   [63:0] tmp_59_fu_1323_p8;
wire   [63:0] tmp_59_fu_1323_p10;
wire   [63:0] tmp_59_fu_1323_p12;
wire   [63:0] tmp_59_fu_1323_p14;
wire   [63:0] tmp_59_fu_1323_p16;
wire   [63:0] tmp_59_fu_1323_p18;
wire   [63:0] tmp_59_fu_1323_p20;
wire   [63:0] tmp_59_fu_1323_p22;
wire   [63:0] tmp_59_fu_1323_p24;
wire   [63:0] tmp_59_fu_1323_p26;
wire   [63:0] tmp_59_fu_1323_p28;
wire   [63:0] tmp_59_fu_1323_p30;
wire   [63:0] tmp_59_fu_1323_p32;
wire   [63:0] tmp_59_fu_1323_p33;
wire   [63:0] tmp_60_fu_1395_p33;
wire   [63:0] tmp_61_fu_1531_p2;
wire   [63:0] tmp_61_fu_1531_p4;
wire   [63:0] tmp_61_fu_1531_p6;
wire   [63:0] tmp_61_fu_1531_p8;
wire   [63:0] tmp_61_fu_1531_p10;
wire   [63:0] tmp_61_fu_1531_p12;
wire   [63:0] tmp_61_fu_1531_p14;
wire   [63:0] tmp_61_fu_1531_p16;
wire   [63:0] tmp_61_fu_1531_p18;
wire   [63:0] tmp_61_fu_1531_p20;
wire   [63:0] tmp_61_fu_1531_p22;
wire   [63:0] tmp_61_fu_1531_p24;
wire   [63:0] tmp_61_fu_1531_p26;
wire   [63:0] tmp_61_fu_1531_p28;
wire   [63:0] tmp_61_fu_1531_p30;
wire   [63:0] tmp_61_fu_1531_p32;
wire   [63:0] tmp_61_fu_1531_p33;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1187_p1;
wire   [4:0] tmp_s_fu_1187_p3;
wire   [4:0] tmp_s_fu_1187_p5;
wire   [4:0] tmp_s_fu_1187_p7;
wire   [4:0] tmp_s_fu_1187_p9;
wire   [4:0] tmp_s_fu_1187_p11;
wire   [4:0] tmp_s_fu_1187_p13;
wire   [4:0] tmp_s_fu_1187_p15;
wire  signed [4:0] tmp_s_fu_1187_p17;
wire  signed [4:0] tmp_s_fu_1187_p19;
wire  signed [4:0] tmp_s_fu_1187_p21;
wire  signed [4:0] tmp_s_fu_1187_p23;
wire  signed [4:0] tmp_s_fu_1187_p25;
wire  signed [4:0] tmp_s_fu_1187_p27;
wire  signed [4:0] tmp_s_fu_1187_p29;
wire  signed [4:0] tmp_s_fu_1187_p31;
wire   [4:0] tmp_59_fu_1323_p1;
wire   [4:0] tmp_59_fu_1323_p3;
wire   [4:0] tmp_59_fu_1323_p5;
wire   [4:0] tmp_59_fu_1323_p7;
wire   [4:0] tmp_59_fu_1323_p9;
wire   [4:0] tmp_59_fu_1323_p11;
wire   [4:0] tmp_59_fu_1323_p13;
wire   [4:0] tmp_59_fu_1323_p15;
wire  signed [4:0] tmp_59_fu_1323_p17;
wire  signed [4:0] tmp_59_fu_1323_p19;
wire  signed [4:0] tmp_59_fu_1323_p21;
wire  signed [4:0] tmp_59_fu_1323_p23;
wire  signed [4:0] tmp_59_fu_1323_p25;
wire  signed [4:0] tmp_59_fu_1323_p27;
wire  signed [4:0] tmp_59_fu_1323_p29;
wire  signed [4:0] tmp_59_fu_1323_p31;
wire   [4:0] tmp_60_fu_1395_p1;
wire   [4:0] tmp_60_fu_1395_p3;
wire   [4:0] tmp_60_fu_1395_p5;
wire   [4:0] tmp_60_fu_1395_p7;
wire   [4:0] tmp_60_fu_1395_p9;
wire   [4:0] tmp_60_fu_1395_p11;
wire   [4:0] tmp_60_fu_1395_p13;
wire   [4:0] tmp_60_fu_1395_p15;
wire  signed [4:0] tmp_60_fu_1395_p17;
wire  signed [4:0] tmp_60_fu_1395_p19;
wire  signed [4:0] tmp_60_fu_1395_p21;
wire  signed [4:0] tmp_60_fu_1395_p23;
wire  signed [4:0] tmp_60_fu_1395_p25;
wire  signed [4:0] tmp_60_fu_1395_p27;
wire  signed [4:0] tmp_60_fu_1395_p29;
wire  signed [4:0] tmp_60_fu_1395_p31;
wire   [4:0] tmp_61_fu_1531_p1;
wire   [4:0] tmp_61_fu_1531_p3;
wire   [4:0] tmp_61_fu_1531_p5;
wire   [4:0] tmp_61_fu_1531_p7;
wire   [4:0] tmp_61_fu_1531_p9;
wire   [4:0] tmp_61_fu_1531_p11;
wire   [4:0] tmp_61_fu_1531_p13;
wire   [4:0] tmp_61_fu_1531_p15;
wire  signed [4:0] tmp_61_fu_1531_p17;
wire  signed [4:0] tmp_61_fu_1531_p19;
wire  signed [4:0] tmp_61_fu_1531_p21;
wire  signed [4:0] tmp_61_fu_1531_p23;
wire  signed [4:0] tmp_61_fu_1531_p25;
wire  signed [4:0] tmp_61_fu_1531_p27;
wire  signed [4:0] tmp_61_fu_1531_p29;
wire  signed [4:0] tmp_61_fu_1531_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add113_i_fu_210 = 64'd0;
#0 j_fu_214 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1168(.din0(oracle_activations2_q0),.din1(oracle_activations2_2_q0),.din2(oracle_activations2_4_q0),.din3(oracle_activations2_6_q0),.din4(oracle_activations2_8_q0),.din5(oracle_activations2_10_q0),.din6(oracle_activations2_12_q0),.din7(oracle_activations2_14_q0),.din8(oracle_activations2_16_q0),.din9(oracle_activations2_18_q0),.din10(oracle_activations2_20_q0),.din11(oracle_activations2_22_q0),.din12(oracle_activations2_24_q0),.din13(oracle_activations2_26_q0),.din14(oracle_activations2_28_q0),.din15(oracle_activations2_30_q0),.def(tmp_s_fu_1187_p33),.sel(trunc_ln104_fu_1184_p1),.dout(tmp_s_fu_1187_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1169(.din0(tmp_59_fu_1323_p2),.din1(tmp_59_fu_1323_p4),.din2(tmp_59_fu_1323_p6),.din3(tmp_59_fu_1323_p8),.din4(tmp_59_fu_1323_p10),.din5(tmp_59_fu_1323_p12),.din6(tmp_59_fu_1323_p14),.din7(tmp_59_fu_1323_p16),.din8(tmp_59_fu_1323_p18),.din9(tmp_59_fu_1323_p20),.din10(tmp_59_fu_1323_p22),.din11(tmp_59_fu_1323_p24),.din12(tmp_59_fu_1323_p26),.din13(tmp_59_fu_1323_p28),.din14(tmp_59_fu_1323_p30),.din15(tmp_59_fu_1323_p32),.def(tmp_59_fu_1323_p33),.sel(trunc_ln104_fu_1184_p1),.dout(tmp_59_fu_1323_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1170(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_3_q0),.din2(oracle_activations2_5_q0),.din3(oracle_activations2_7_q0),.din4(oracle_activations2_9_q0),.din5(oracle_activations2_11_q0),.din6(oracle_activations2_13_q0),.din7(oracle_activations2_15_q0),.din8(oracle_activations2_17_q0),.din9(oracle_activations2_19_q0),.din10(oracle_activations2_21_q0),.din11(oracle_activations2_23_q0),.din12(oracle_activations2_25_q0),.din13(oracle_activations2_27_q0),.din14(oracle_activations2_29_q0),.din15(oracle_activations2_31_q0),.def(tmp_60_fu_1395_p33),.sel(trunc_ln104_fu_1184_p1),.dout(tmp_60_fu_1395_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_x_U1171(.din0(tmp_61_fu_1531_p2),.din1(tmp_61_fu_1531_p4),.din2(tmp_61_fu_1531_p6),.din3(tmp_61_fu_1531_p8),.din4(tmp_61_fu_1531_p10),.din5(tmp_61_fu_1531_p12),.din6(tmp_61_fu_1531_p14),.din7(tmp_61_fu_1531_p16),.din8(tmp_61_fu_1531_p18),.din9(tmp_61_fu_1531_p20),.din10(tmp_61_fu_1531_p22),.din11(tmp_61_fu_1531_p24),.din12(tmp_61_fu_1531_p26),.din13(tmp_61_fu_1531_p28),.din14(tmp_61_fu_1531_p30),.din15(tmp_61_fu_1531_p32),.def(tmp_61_fu_1531_p33),.sel(trunc_ln104_fu_1184_p1),.dout(tmp_61_fu_1531_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add113_i_fu_210 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_fu_210 <= grp_fu_11177_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_214 <= 7'd0;
    end else if (((tmp_43_reg_1647 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j_fu_214 <= add_ln104_fu_1607_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i3_reg_2006 <= grp_fu_11177_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_3_reg_1641 <= ap_sig_allocacmp_j_3;
        tmp_43_reg_1647 <= ap_sig_allocacmp_j_3[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i3_reg_2001 <= grp_fu_7944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i3_reg_1991 <= grp_fu_7944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_59_reg_1976 <= tmp_59_fu_1323_p35;
        tmp_60_reg_1981 <= tmp_60_fu_1395_p35;
        tmp_61_reg_1986 <= tmp_61_fu_1531_p35;
        tmp_s_reg_1971 <= tmp_s_fu_1187_p35;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_43_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_out_ap_vld = 1'b1;
    end else begin
        add113_i_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_43_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_214;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1063_p0 = add11_i3_reg_2006;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1063_p0 = add113_i_fu_210;
    end else begin
        grp_fu_1063_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1063_p1 = mul8_1_i3_reg_2001;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1063_p1 = mul8_i3_reg_1991;
    end else begin
        grp_fu_1063_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1067_p0 = tmp_60_reg_1981;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1067_p0 = tmp_s_reg_1971;
        end else begin
            grp_fu_1067_p0 = 'bx;
        end
    end else begin
        grp_fu_1067_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1067_p1 = tmp_61_reg_1986;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1067_p1 = tmp_59_reg_1976;
        end else begin
            grp_fu_1067_p1 = 'bx;
        end
    end else begin
        grp_fu_1067_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_16_ce0_local = 1'b1;
    end else begin
        oracle_activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_17_ce0_local = 1'b1;
    end else begin
        oracle_activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_18_ce0_local = 1'b1;
    end else begin
        oracle_activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_19_ce0_local = 1'b1;
    end else begin
        oracle_activations2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_20_ce0_local = 1'b1;
    end else begin
        oracle_activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_21_ce0_local = 1'b1;
    end else begin
        oracle_activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_22_ce0_local = 1'b1;
    end else begin
        oracle_activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_23_ce0_local = 1'b1;
    end else begin
        oracle_activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_24_ce0_local = 1'b1;
    end else begin
        oracle_activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_25_ce0_local = 1'b1;
    end else begin
        oracle_activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_26_ce0_local = 1'b1;
    end else begin
        oracle_activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_27_ce0_local = 1'b1;
    end else begin
        oracle_activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_28_ce0_local = 1'b1;
    end else begin
        oracle_activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_29_ce0_local = 1'b1;
    end else begin
        oracle_activations2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_30_ce0_local = 1'b1;
    end else begin
        oracle_activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_31_ce0_local = 1'b1;
    end else begin
        oracle_activations2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add113_i_out = add113_i_fu_210;
assign add_ln104_fu_1607_p2 = (j_3_reg_1641 + 7'd2);
assign add_ln105_fu_1142_p2 = (zext_ln101_fu_1102_p1 + empty);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_11177_p_ce = 1'b1;
assign grp_fu_11177_p_din0 = grp_fu_1063_p0;
assign grp_fu_11177_p_din1 = grp_fu_1063_p1;
assign grp_fu_11177_p_opcode = 2'd0;
assign grp_fu_7944_p_ce = 1'b1;
assign grp_fu_7944_p_din0 = grp_fu_1067_p0;
assign grp_fu_7944_p_din1 = grp_fu_1067_p1;
assign lshr_ln101_1_fu_1092_p4 = {{ap_sig_allocacmp_j_3[6:5]}};
assign oracle_activations2_10_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_16_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_16_ce0 = oracle_activations2_16_ce0_local;
assign oracle_activations2_17_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_17_ce0 = oracle_activations2_17_ce0_local;
assign oracle_activations2_18_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_18_ce0 = oracle_activations2_18_ce0_local;
assign oracle_activations2_19_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_19_ce0 = oracle_activations2_19_ce0_local;
assign oracle_activations2_1_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_20_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_20_ce0 = oracle_activations2_20_ce0_local;
assign oracle_activations2_21_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_21_ce0 = oracle_activations2_21_ce0_local;
assign oracle_activations2_22_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_22_ce0 = oracle_activations2_22_ce0_local;
assign oracle_activations2_23_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_23_ce0 = oracle_activations2_23_ce0_local;
assign oracle_activations2_24_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_24_ce0 = oracle_activations2_24_ce0_local;
assign oracle_activations2_25_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_25_ce0 = oracle_activations2_25_ce0_local;
assign oracle_activations2_26_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_26_ce0 = oracle_activations2_26_ce0_local;
assign oracle_activations2_27_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_27_ce0 = oracle_activations2_27_ce0_local;
assign oracle_activations2_28_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_28_ce0 = oracle_activations2_28_ce0_local;
assign oracle_activations2_29_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_29_ce0 = oracle_activations2_29_ce0_local;
assign oracle_activations2_2_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_30_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_30_ce0 = oracle_activations2_30_ce0_local;
assign oracle_activations2_31_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_31_ce0 = oracle_activations2_31_ce0_local;
assign oracle_activations2_3_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln101_1_fu_1106_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign tmp_59_fu_1323_p10 = weights2_8_q0;
assign tmp_59_fu_1323_p12 = weights2_10_q0;
assign tmp_59_fu_1323_p14 = weights2_12_q0;
assign tmp_59_fu_1323_p16 = weights2_14_q0;
assign tmp_59_fu_1323_p18 = weights2_16_q0;
assign tmp_59_fu_1323_p2 = weights2_0_q0;
assign tmp_59_fu_1323_p20 = weights2_18_q0;
assign tmp_59_fu_1323_p22 = weights2_20_q0;
assign tmp_59_fu_1323_p24 = weights2_22_q0;
assign tmp_59_fu_1323_p26 = weights2_24_q0;
assign tmp_59_fu_1323_p28 = weights2_26_q0;
assign tmp_59_fu_1323_p30 = weights2_28_q0;
assign tmp_59_fu_1323_p32 = weights2_30_q0;
assign tmp_59_fu_1323_p33 = 'bx;
assign tmp_59_fu_1323_p4 = weights2_2_q0;
assign tmp_59_fu_1323_p6 = weights2_4_q0;
assign tmp_59_fu_1323_p8 = weights2_6_q0;
assign tmp_60_fu_1395_p33 = 'bx;
assign tmp_61_fu_1531_p10 = weights2_9_q0;
assign tmp_61_fu_1531_p12 = weights2_11_q0;
assign tmp_61_fu_1531_p14 = weights2_13_q0;
assign tmp_61_fu_1531_p16 = weights2_15_q0;
assign tmp_61_fu_1531_p18 = weights2_17_q0;
assign tmp_61_fu_1531_p2 = weights2_1_q0;
assign tmp_61_fu_1531_p20 = weights2_19_q0;
assign tmp_61_fu_1531_p22 = weights2_21_q0;
assign tmp_61_fu_1531_p24 = weights2_23_q0;
assign tmp_61_fu_1531_p26 = weights2_25_q0;
assign tmp_61_fu_1531_p28 = weights2_27_q0;
assign tmp_61_fu_1531_p30 = weights2_29_q0;
assign tmp_61_fu_1531_p32 = weights2_31_q0;
assign tmp_61_fu_1531_p33 = 'bx;
assign tmp_61_fu_1531_p4 = weights2_3_q0;
assign tmp_61_fu_1531_p6 = weights2_5_q0;
assign tmp_61_fu_1531_p8 = weights2_7_q0;
assign tmp_s_fu_1187_p33 = 'bx;
assign trunc_ln104_fu_1184_p1 = j_3_reg_1641[4:0];
assign weights2_0_address0 = zext_ln105_fu_1148_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln105_fu_1148_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln105_fu_1148_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln105_fu_1148_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln105_fu_1148_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln105_fu_1148_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln105_fu_1148_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_16_address0 = zext_ln105_fu_1148_p1;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_17_address0 = zext_ln105_fu_1148_p1;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_18_address0 = zext_ln105_fu_1148_p1;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_19_address0 = zext_ln105_fu_1148_p1;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_1_address0 = zext_ln105_fu_1148_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_20_address0 = zext_ln105_fu_1148_p1;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_21_address0 = zext_ln105_fu_1148_p1;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_22_address0 = zext_ln105_fu_1148_p1;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_23_address0 = zext_ln105_fu_1148_p1;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_24_address0 = zext_ln105_fu_1148_p1;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_25_address0 = zext_ln105_fu_1148_p1;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_26_address0 = zext_ln105_fu_1148_p1;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_27_address0 = zext_ln105_fu_1148_p1;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_28_address0 = zext_ln105_fu_1148_p1;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_29_address0 = zext_ln105_fu_1148_p1;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_2_address0 = zext_ln105_fu_1148_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_30_address0 = zext_ln105_fu_1148_p1;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_31_address0 = zext_ln105_fu_1148_p1;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_3_address0 = zext_ln105_fu_1148_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_4_address0 = zext_ln105_fu_1148_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_5_address0 = zext_ln105_fu_1148_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_6_address0 = zext_ln105_fu_1148_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln105_fu_1148_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln105_fu_1148_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln105_fu_1148_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln101_1_fu_1106_p1 = lshr_ln101_1_fu_1092_p4;
assign zext_ln101_fu_1102_p1 = lshr_ln101_1_fu_1092_p4;
assign zext_ln105_fu_1148_p1 = add_ln105_fu_1142_p2;
endmodule 