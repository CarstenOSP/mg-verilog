module syrk_syrk_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,B_4_address0,B_4_ce0,B_4_q0,B_5_address0,B_5_ce0,B_5_q0,B_6_address0,B_6_ce0,B_6_q0,B_7_address0,B_7_ce0,B_7_q0,buff_A0_address0,buff_A0_ce0,buff_A0_we0,buff_A0_d0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_we0,buff_A0_1_d0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_we0,buff_A0_2_d0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_we0,buff_A0_3_d0,buff_A0_4_address0,buff_A0_4_ce0,buff_A0_4_we0,buff_A0_4_d0,buff_A0_5_address0,buff_A0_5_ce0,buff_A0_5_we0,buff_A0_5_d0,buff_A0_6_address0,buff_A0_6_ce0,buff_A0_6_we0,buff_A0_6_d0,buff_A0_7_address0,buff_A0_7_ce0,buff_A0_7_we0,buff_A0_7_d0,buff_A1_address0,buff_A1_ce0,buff_A1_we0,buff_A1_d0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_we0,buff_A1_1_d0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_we0,buff_A1_2_d0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_we0,buff_A1_3_d0,buff_A1_4_address0,buff_A1_4_ce0,buff_A1_4_we0,buff_A1_4_d0,buff_A1_5_address0,buff_A1_5_ce0,buff_A1_5_we0,buff_A1_5_d0,buff_A1_6_address0,buff_A1_6_ce0,buff_A1_6_we0,buff_A1_6_d0,buff_A1_7_address0,buff_A1_7_ce0,buff_A1_7_we0,buff_A1_7_d0,buff_A1_8_address0,buff_A1_8_ce0,buff_A1_8_we0,buff_A1_8_d0,buff_A1_9_address0,buff_A1_9_ce0,buff_A1_9_we0,buff_A1_9_d0,buff_A1_10_address0,buff_A1_10_ce0,buff_A1_10_we0,buff_A1_10_d0,buff_A1_11_address0,buff_A1_11_ce0,buff_A1_11_we0,buff_A1_11_d0,buff_A1_12_address0,buff_A1_12_ce0,buff_A1_12_we0,buff_A1_12_d0,buff_A1_13_address0,buff_A1_13_ce0,buff_A1_13_we0,buff_A1_13_d0,buff_A1_14_address0,buff_A1_14_ce0,buff_A1_14_we0,buff_A1_14_d0,buff_A1_15_address0,buff_A1_15_ce0,buff_A1_15_we0,buff_A1_15_d0,buff_A1_16_address0,buff_A1_16_ce0,buff_A1_16_we0,buff_A1_16_d0,buff_A1_17_address0,buff_A1_17_ce0,buff_A1_17_we0,buff_A1_17_d0,buff_A1_18_address0,buff_A1_18_ce0,buff_A1_18_we0,buff_A1_18_d0,buff_A1_19_address0,buff_A1_19_ce0,buff_A1_19_we0,buff_A1_19_d0,buff_A1_20_address0,buff_A1_20_ce0,buff_A1_20_we0,buff_A1_20_d0,buff_A1_21_address0,buff_A1_21_ce0,buff_A1_21_we0,buff_A1_21_d0,buff_A1_22_address0,buff_A1_22_ce0,buff_A1_22_we0,buff_A1_22_d0,buff_A1_23_address0,buff_A1_23_ce0,buff_A1_23_we0,buff_A1_23_d0,buff_A1_24_address0,buff_A1_24_ce0,buff_A1_24_we0,buff_A1_24_d0,buff_A1_25_address0,buff_A1_25_ce0,buff_A1_25_we0,buff_A1_25_d0,buff_A1_26_address0,buff_A1_26_ce0,buff_A1_26_we0,buff_A1_26_d0,buff_A1_27_address0,buff_A1_27_ce0,buff_A1_27_we0,buff_A1_27_d0,buff_A1_28_address0,buff_A1_28_ce0,buff_A1_28_we0,buff_A1_28_d0,buff_A1_29_address0,buff_A1_29_ce0,buff_A1_29_we0,buff_A1_29_d0,buff_A1_30_address0,buff_A1_30_ce0,buff_A1_30_we0,buff_A1_30_d0,buff_A1_31_address0,buff_A1_31_ce0,buff_A1_31_we0,buff_A1_31_d0,buff_B_address0,buff_B_ce0,buff_B_we0,buff_B_d0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_we0,buff_B_1_d0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_we0,buff_B_2_d0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_we0,buff_B_3_d0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_we0,buff_B_4_d0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_we0,buff_B_5_d0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_we0,buff_B_6_d0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_we0,buff_B_7_d0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [8:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [8:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [8:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [8:0] A_4_address0;
output   A_4_ce0;
input  [31:0] A_4_q0;
output  [8:0] A_5_address0;
output   A_5_ce0;
input  [31:0] A_5_q0;
output  [8:0] A_6_address0;
output   A_6_ce0;
input  [31:0] A_6_q0;
output  [8:0] A_7_address0;
output   A_7_ce0;
input  [31:0] A_7_q0;
output  [8:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [8:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [8:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [8:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [8:0] B_4_address0;
output   B_4_ce0;
input  [31:0] B_4_q0;
output  [8:0] B_5_address0;
output   B_5_ce0;
input  [31:0] B_5_q0;
output  [8:0] B_6_address0;
output   B_6_ce0;
input  [31:0] B_6_q0;
output  [8:0] B_7_address0;
output   B_7_ce0;
input  [31:0] B_7_q0;
output  [8:0] buff_A0_address0;
output   buff_A0_ce0;
output   buff_A0_we0;
output  [31:0] buff_A0_d0;
output  [8:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
output   buff_A0_1_we0;
output  [31:0] buff_A0_1_d0;
output  [8:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
output   buff_A0_2_we0;
output  [31:0] buff_A0_2_d0;
output  [8:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
output   buff_A0_3_we0;
output  [31:0] buff_A0_3_d0;
output  [8:0] buff_A0_4_address0;
output   buff_A0_4_ce0;
output   buff_A0_4_we0;
output  [31:0] buff_A0_4_d0;
output  [8:0] buff_A0_5_address0;
output   buff_A0_5_ce0;
output   buff_A0_5_we0;
output  [31:0] buff_A0_5_d0;
output  [8:0] buff_A0_6_address0;
output   buff_A0_6_ce0;
output   buff_A0_6_we0;
output  [31:0] buff_A0_6_d0;
output  [8:0] buff_A0_7_address0;
output   buff_A0_7_ce0;
output   buff_A0_7_we0;
output  [31:0] buff_A0_7_d0;
output  [6:0] buff_A1_address0;
output   buff_A1_ce0;
output   buff_A1_we0;
output  [31:0] buff_A1_d0;
output  [6:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
output   buff_A1_1_we0;
output  [31:0] buff_A1_1_d0;
output  [6:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
output   buff_A1_2_we0;
output  [31:0] buff_A1_2_d0;
output  [6:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
output   buff_A1_3_we0;
output  [31:0] buff_A1_3_d0;
output  [6:0] buff_A1_4_address0;
output   buff_A1_4_ce0;
output   buff_A1_4_we0;
output  [31:0] buff_A1_4_d0;
output  [6:0] buff_A1_5_address0;
output   buff_A1_5_ce0;
output   buff_A1_5_we0;
output  [31:0] buff_A1_5_d0;
output  [6:0] buff_A1_6_address0;
output   buff_A1_6_ce0;
output   buff_A1_6_we0;
output  [31:0] buff_A1_6_d0;
output  [6:0] buff_A1_7_address0;
output   buff_A1_7_ce0;
output   buff_A1_7_we0;
output  [31:0] buff_A1_7_d0;
output  [6:0] buff_A1_8_address0;
output   buff_A1_8_ce0;
output   buff_A1_8_we0;
output  [31:0] buff_A1_8_d0;
output  [6:0] buff_A1_9_address0;
output   buff_A1_9_ce0;
output   buff_A1_9_we0;
output  [31:0] buff_A1_9_d0;
output  [6:0] buff_A1_10_address0;
output   buff_A1_10_ce0;
output   buff_A1_10_we0;
output  [31:0] buff_A1_10_d0;
output  [6:0] buff_A1_11_address0;
output   buff_A1_11_ce0;
output   buff_A1_11_we0;
output  [31:0] buff_A1_11_d0;
output  [6:0] buff_A1_12_address0;
output   buff_A1_12_ce0;
output   buff_A1_12_we0;
output  [31:0] buff_A1_12_d0;
output  [6:0] buff_A1_13_address0;
output   buff_A1_13_ce0;
output   buff_A1_13_we0;
output  [31:0] buff_A1_13_d0;
output  [6:0] buff_A1_14_address0;
output   buff_A1_14_ce0;
output   buff_A1_14_we0;
output  [31:0] buff_A1_14_d0;
output  [6:0] buff_A1_15_address0;
output   buff_A1_15_ce0;
output   buff_A1_15_we0;
output  [31:0] buff_A1_15_d0;
output  [6:0] buff_A1_16_address0;
output   buff_A1_16_ce0;
output   buff_A1_16_we0;
output  [31:0] buff_A1_16_d0;
output  [6:0] buff_A1_17_address0;
output   buff_A1_17_ce0;
output   buff_A1_17_we0;
output  [31:0] buff_A1_17_d0;
output  [6:0] buff_A1_18_address0;
output   buff_A1_18_ce0;
output   buff_A1_18_we0;
output  [31:0] buff_A1_18_d0;
output  [6:0] buff_A1_19_address0;
output   buff_A1_19_ce0;
output   buff_A1_19_we0;
output  [31:0] buff_A1_19_d0;
output  [6:0] buff_A1_20_address0;
output   buff_A1_20_ce0;
output   buff_A1_20_we0;
output  [31:0] buff_A1_20_d0;
output  [6:0] buff_A1_21_address0;
output   buff_A1_21_ce0;
output   buff_A1_21_we0;
output  [31:0] buff_A1_21_d0;
output  [6:0] buff_A1_22_address0;
output   buff_A1_22_ce0;
output   buff_A1_22_we0;
output  [31:0] buff_A1_22_d0;
output  [6:0] buff_A1_23_address0;
output   buff_A1_23_ce0;
output   buff_A1_23_we0;
output  [31:0] buff_A1_23_d0;
output  [6:0] buff_A1_24_address0;
output   buff_A1_24_ce0;
output   buff_A1_24_we0;
output  [31:0] buff_A1_24_d0;
output  [6:0] buff_A1_25_address0;
output   buff_A1_25_ce0;
output   buff_A1_25_we0;
output  [31:0] buff_A1_25_d0;
output  [6:0] buff_A1_26_address0;
output   buff_A1_26_ce0;
output   buff_A1_26_we0;
output  [31:0] buff_A1_26_d0;
output  [6:0] buff_A1_27_address0;
output   buff_A1_27_ce0;
output   buff_A1_27_we0;
output  [31:0] buff_A1_27_d0;
output  [6:0] buff_A1_28_address0;
output   buff_A1_28_ce0;
output   buff_A1_28_we0;
output  [31:0] buff_A1_28_d0;
output  [6:0] buff_A1_29_address0;
output   buff_A1_29_ce0;
output   buff_A1_29_we0;
output  [31:0] buff_A1_29_d0;
output  [6:0] buff_A1_30_address0;
output   buff_A1_30_ce0;
output   buff_A1_30_we0;
output  [31:0] buff_A1_30_d0;
output  [6:0] buff_A1_31_address0;
output   buff_A1_31_ce0;
output   buff_A1_31_we0;
output  [31:0] buff_A1_31_d0;
output  [8:0] buff_B_address0;
output   buff_B_ce0;
output   buff_B_we0;
output  [31:0] buff_B_d0;
output  [8:0] buff_B_1_address0;
output   buff_B_1_ce0;
output   buff_B_1_we0;
output  [31:0] buff_B_1_d0;
output  [8:0] buff_B_2_address0;
output   buff_B_2_ce0;
output   buff_B_2_we0;
output  [31:0] buff_B_2_d0;
output  [8:0] buff_B_3_address0;
output   buff_B_3_ce0;
output   buff_B_3_we0;
output  [31:0] buff_B_3_d0;
output  [8:0] buff_B_4_address0;
output   buff_B_4_ce0;
output   buff_B_4_we0;
output  [31:0] buff_B_4_d0;
output  [8:0] buff_B_5_address0;
output   buff_B_5_ce0;
output   buff_B_5_we0;
output  [31:0] buff_B_5_d0;
output  [8:0] buff_B_6_address0;
output   buff_B_6_ce0;
output   buff_B_6_we0;
output  [31:0] buff_B_6_d0;
output  [8:0] buff_B_7_address0;
output   buff_B_7_ce0;
output   buff_B_7_we0;
output  [31:0] buff_B_7_d0;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_1180_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln11_1_fu_1237_p1;
reg   [1:0] trunc_ln11_1_reg_1492;
wire   [2:0] lshr_ln5_1_fu_1241_p4;
reg   [2:0] lshr_ln5_1_reg_1496;
wire   [63:0] zext_ln13_fu_1259_p1;
reg   [63:0] zext_ln13_reg_1501;
reg   [3:0] tmp_1_reg_1601;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1319_p1;
reg   [6:0] j_fu_206;
wire   [6:0] add_ln12_fu_1297_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_210;
wire   [6:0] select_ln11_fu_1225_p3;
reg   [9:0] indvar_flatten_fu_214;
wire   [9:0] add_ln11_1_fu_1186_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    A_2_ce0_local;
reg    B_2_ce0_local;
reg    A_3_ce0_local;
reg    B_3_ce0_local;
reg    A_4_ce0_local;
reg    B_4_ce0_local;
reg    A_5_ce0_local;
reg    B_5_ce0_local;
reg    A_6_ce0_local;
reg    B_6_ce0_local;
reg    A_7_ce0_local;
reg    B_7_ce0_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_we0_local;
reg    buff_C_out_7_ce0_local;
reg    buff_A0_we0_local;
wire   [31:0] bitcast_ln13_fu_1355_p1;
reg    buff_A0_ce0_local;
reg    buff_A0_1_we0_local;
wire   [31:0] bitcast_ln13_1_fu_1369_p1;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_we0_local;
wire   [31:0] bitcast_ln13_2_fu_1383_p1;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_we0_local;
wire   [31:0] bitcast_ln13_3_fu_1397_p1;
reg    buff_A0_3_ce0_local;
reg    buff_A0_4_we0_local;
wire   [31:0] bitcast_ln13_4_fu_1411_p1;
reg    buff_A0_4_ce0_local;
reg    buff_A0_5_we0_local;
wire   [31:0] bitcast_ln13_5_fu_1425_p1;
reg    buff_A0_5_ce0_local;
reg    buff_A0_6_we0_local;
wire   [31:0] bitcast_ln13_6_fu_1439_p1;
reg    buff_A0_6_ce0_local;
reg    buff_A0_7_we0_local;
wire   [31:0] bitcast_ln13_7_fu_1453_p1;
reg    buff_A0_7_ce0_local;
reg    buff_A1_2_we0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_6_we0_local;
reg    buff_A1_6_ce0_local;
reg    buff_A1_10_we0_local;
reg    buff_A1_10_ce0_local;
reg    buff_A1_14_we0_local;
reg    buff_A1_14_ce0_local;
reg    buff_A1_18_we0_local;
reg    buff_A1_18_ce0_local;
reg    buff_A1_22_we0_local;
reg    buff_A1_22_ce0_local;
reg    buff_A1_26_we0_local;
reg    buff_A1_26_ce0_local;
reg    buff_A1_30_we0_local;
reg    buff_A1_30_ce0_local;
reg    buff_A1_1_we0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_5_we0_local;
reg    buff_A1_5_ce0_local;
reg    buff_A1_9_we0_local;
reg    buff_A1_9_ce0_local;
reg    buff_A1_13_we0_local;
reg    buff_A1_13_ce0_local;
reg    buff_A1_17_we0_local;
reg    buff_A1_17_ce0_local;
reg    buff_A1_21_we0_local;
reg    buff_A1_21_ce0_local;
reg    buff_A1_25_we0_local;
reg    buff_A1_25_ce0_local;
reg    buff_A1_29_we0_local;
reg    buff_A1_29_ce0_local;
reg    buff_A1_we0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_4_we0_local;
reg    buff_A1_4_ce0_local;
reg    buff_A1_8_we0_local;
reg    buff_A1_8_ce0_local;
reg    buff_A1_12_we0_local;
reg    buff_A1_12_ce0_local;
reg    buff_A1_16_we0_local;
reg    buff_A1_16_ce0_local;
reg    buff_A1_20_we0_local;
reg    buff_A1_20_ce0_local;
reg    buff_A1_24_we0_local;
reg    buff_A1_24_ce0_local;
reg    buff_A1_28_we0_local;
reg    buff_A1_28_ce0_local;
reg    buff_A1_3_we0_local;
reg    buff_A1_3_ce0_local;
reg    buff_A1_7_we0_local;
reg    buff_A1_7_ce0_local;
reg    buff_A1_11_we0_local;
reg    buff_A1_11_ce0_local;
reg    buff_A1_15_we0_local;
reg    buff_A1_15_ce0_local;
reg    buff_A1_19_we0_local;
reg    buff_A1_19_ce0_local;
reg    buff_A1_23_we0_local;
reg    buff_A1_23_ce0_local;
reg    buff_A1_27_we0_local;
reg    buff_A1_27_ce0_local;
reg    buff_A1_31_we0_local;
reg    buff_A1_31_ce0_local;
reg    buff_B_we0_local;
wire   [31:0] bitcast_ln15_fu_1364_p1;
reg    buff_B_ce0_local;
reg    buff_B_1_we0_local;
wire   [31:0] bitcast_ln15_1_fu_1378_p1;
reg    buff_B_1_ce0_local;
reg    buff_B_2_we0_local;
wire   [31:0] bitcast_ln15_2_fu_1392_p1;
reg    buff_B_2_ce0_local;
reg    buff_B_3_we0_local;
wire   [31:0] bitcast_ln15_3_fu_1406_p1;
reg    buff_B_3_ce0_local;
reg    buff_B_4_we0_local;
wire   [31:0] bitcast_ln15_4_fu_1420_p1;
reg    buff_B_4_ce0_local;
reg    buff_B_5_we0_local;
wire   [31:0] bitcast_ln15_5_fu_1434_p1;
reg    buff_B_5_ce0_local;
reg    buff_B_6_we0_local;
wire   [31:0] bitcast_ln15_6_fu_1448_p1;
reg    buff_B_6_ce0_local;
reg    buff_B_7_we0_local;
wire   [31:0] bitcast_ln15_7_fu_1462_p1;
reg    buff_B_7_ce0_local;
wire   [0:0] tmp_4_fu_1209_p3;
wire   [6:0] add_ln11_fu_1203_p2;
wire   [6:0] select_ln5_fu_1217_p3;
wire   [5:0] trunc_ln11_fu_1233_p1;
wire   [8:0] tmp_fu_1251_p3;
wire   [6:0] tmp_2_fu_1313_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 j_fu_206 = 7'd0;
#0 i_fu_210 = 7'd0;
#0 indvar_flatten_fu_214 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_210 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_210 <= select_ln11_fu_1225_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_1180_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_214 <= add_ln11_1_fu_1186_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_214 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_206 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_206 <= add_ln12_fu_1297_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln5_1_reg_1496 <= {{select_ln5_fu_1217_p3[5:3]}};
        tmp_1_reg_1601 <= {{select_ln11_fu_1225_p3[5:2]}};
        trunc_ln11_1_reg_1492 <= trunc_ln11_1_fu_1237_p1;
        zext_ln13_reg_1501[8 : 0] <= zext_ln13_fu_1259_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_0_ce0_local = 1'b1;
    end else begin
        A_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_1_ce0_local = 1'b1;
    end else begin
        A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_2_ce0_local = 1'b1;
    end else begin
        A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_3_ce0_local = 1'b1;
    end else begin
        A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_4_ce0_local = 1'b1;
    end else begin
        A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_5_ce0_local = 1'b1;
    end else begin
        A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_6_ce0_local = 1'b1;
    end else begin
        A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_7_ce0_local = 1'b1;
    end else begin
        A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_0_ce0_local = 1'b1;
    end else begin
        B_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_ce0_local = 1'b1;
    end else begin
        B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_2_ce0_local = 1'b1;
    end else begin
        B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_3_ce0_local = 1'b1;
    end else begin
        B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_4_ce0_local = 1'b1;
    end else begin
        B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_ce0_local = 1'b1;
    end else begin
        B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_6_ce0_local = 1'b1;
    end else begin
        B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_7_ce0_local = 1'b1;
    end else begin
        B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln11_fu_1180_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_214;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_we0_local = 1'b1;
    end else begin
        buff_A0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_we0_local = 1'b1;
    end else begin
        buff_A0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_we0_local = 1'b1;
    end else begin
        buff_A0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_4_ce0_local = 1'b1;
    end else begin
        buff_A0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_4_we0_local = 1'b1;
    end else begin
        buff_A0_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_5_ce0_local = 1'b1;
    end else begin
        buff_A0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_5_we0_local = 1'b1;
    end else begin
        buff_A0_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_6_ce0_local = 1'b1;
    end else begin
        buff_A0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_6_we0_local = 1'b1;
    end else begin
        buff_A0_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_7_ce0_local = 1'b1;
    end else begin
        buff_A0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_7_we0_local = 1'b1;
    end else begin
        buff_A0_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_we0_local = 1'b1;
    end else begin
        buff_A0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_10_ce0_local = 1'b1;
    end else begin
        buff_A1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_10_we0_local = 1'b1;
    end else begin
        buff_A1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_11_ce0_local = 1'b1;
    end else begin
        buff_A1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_11_we0_local = 1'b1;
    end else begin
        buff_A1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_12_ce0_local = 1'b1;
    end else begin
        buff_A1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_12_we0_local = 1'b1;
    end else begin
        buff_A1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_13_ce0_local = 1'b1;
    end else begin
        buff_A1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_13_we0_local = 1'b1;
    end else begin
        buff_A1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_14_ce0_local = 1'b1;
    end else begin
        buff_A1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_14_we0_local = 1'b1;
    end else begin
        buff_A1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_15_ce0_local = 1'b1;
    end else begin
        buff_A1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_15_we0_local = 1'b1;
    end else begin
        buff_A1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_16_ce0_local = 1'b1;
    end else begin
        buff_A1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_16_we0_local = 1'b1;
    end else begin
        buff_A1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_17_ce0_local = 1'b1;
    end else begin
        buff_A1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_17_we0_local = 1'b1;
    end else begin
        buff_A1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_18_ce0_local = 1'b1;
    end else begin
        buff_A1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_18_we0_local = 1'b1;
    end else begin
        buff_A1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_19_ce0_local = 1'b1;
    end else begin
        buff_A1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_19_we0_local = 1'b1;
    end else begin
        buff_A1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_1_we0_local = 1'b1;
    end else begin
        buff_A1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_20_ce0_local = 1'b1;
    end else begin
        buff_A1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_20_we0_local = 1'b1;
    end else begin
        buff_A1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_21_ce0_local = 1'b1;
    end else begin
        buff_A1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_21_we0_local = 1'b1;
    end else begin
        buff_A1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_22_ce0_local = 1'b1;
    end else begin
        buff_A1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_22_we0_local = 1'b1;
    end else begin
        buff_A1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_23_ce0_local = 1'b1;
    end else begin
        buff_A1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_23_we0_local = 1'b1;
    end else begin
        buff_A1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_24_ce0_local = 1'b1;
    end else begin
        buff_A1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_24_we0_local = 1'b1;
    end else begin
        buff_A1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_25_ce0_local = 1'b1;
    end else begin
        buff_A1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_25_we0_local = 1'b1;
    end else begin
        buff_A1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_26_ce0_local = 1'b1;
    end else begin
        buff_A1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_26_we0_local = 1'b1;
    end else begin
        buff_A1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_27_ce0_local = 1'b1;
    end else begin
        buff_A1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_27_we0_local = 1'b1;
    end else begin
        buff_A1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_28_ce0_local = 1'b1;
    end else begin
        buff_A1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_28_we0_local = 1'b1;
    end else begin
        buff_A1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_29_ce0_local = 1'b1;
    end else begin
        buff_A1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_29_we0_local = 1'b1;
    end else begin
        buff_A1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_2_we0_local = 1'b1;
    end else begin
        buff_A1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_30_ce0_local = 1'b1;
    end else begin
        buff_A1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_30_we0_local = 1'b1;
    end else begin
        buff_A1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_31_ce0_local = 1'b1;
    end else begin
        buff_A1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_31_we0_local = 1'b1;
    end else begin
        buff_A1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_3_we0_local = 1'b1;
    end else begin
        buff_A1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_4_ce0_local = 1'b1;
    end else begin
        buff_A1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_4_we0_local = 1'b1;
    end else begin
        buff_A1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_5_ce0_local = 1'b1;
    end else begin
        buff_A1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_5_we0_local = 1'b1;
    end else begin
        buff_A1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_6_ce0_local = 1'b1;
    end else begin
        buff_A1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd2))) begin
        buff_A1_6_we0_local = 1'b1;
    end else begin
        buff_A1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_7_ce0_local = 1'b1;
    end else begin
        buff_A1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd3))) begin
        buff_A1_7_we0_local = 1'b1;
    end else begin
        buff_A1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_8_ce0_local = 1'b1;
    end else begin
        buff_A1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_8_we0_local = 1'b1;
    end else begin
        buff_A1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_9_ce0_local = 1'b1;
    end else begin
        buff_A1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd1))) begin
        buff_A1_9_we0_local = 1'b1;
    end else begin
        buff_A1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_1492 == 2'd0))) begin
        buff_A1_we0_local = 1'b1;
    end else begin
        buff_A1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_1_we0_local = 1'b1;
    end else begin
        buff_B_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_2_we0_local = 1'b1;
    end else begin
        buff_B_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_3_we0_local = 1'b1;
    end else begin
        buff_B_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_4_we0_local = 1'b1;
    end else begin
        buff_B_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_5_we0_local = 1'b1;
    end else begin
        buff_B_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_6_we0_local = 1'b1;
    end else begin
        buff_B_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_7_we0_local = 1'b1;
    end else begin
        buff_B_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_we0_local = 1'b1;
    end else begin
        buff_B_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = zext_ln13_fu_1259_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln13_fu_1259_p1;
assign A_1_ce0 = A_1_ce0_local;
assign A_2_address0 = zext_ln13_fu_1259_p1;
assign A_2_ce0 = A_2_ce0_local;
assign A_3_address0 = zext_ln13_fu_1259_p1;
assign A_3_ce0 = A_3_ce0_local;
assign A_4_address0 = zext_ln13_fu_1259_p1;
assign A_4_ce0 = A_4_ce0_local;
assign A_5_address0 = zext_ln13_fu_1259_p1;
assign A_5_ce0 = A_5_ce0_local;
assign A_6_address0 = zext_ln13_fu_1259_p1;
assign A_6_ce0 = A_6_ce0_local;
assign A_7_address0 = zext_ln13_fu_1259_p1;
assign A_7_ce0 = A_7_ce0_local;
assign B_0_address0 = zext_ln13_fu_1259_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln13_fu_1259_p1;
assign B_1_ce0 = B_1_ce0_local;
assign B_2_address0 = zext_ln13_fu_1259_p1;
assign B_2_ce0 = B_2_ce0_local;
assign B_3_address0 = zext_ln13_fu_1259_p1;
assign B_3_ce0 = B_3_ce0_local;
assign B_4_address0 = zext_ln13_fu_1259_p1;
assign B_4_ce0 = B_4_ce0_local;
assign B_5_address0 = zext_ln13_fu_1259_p1;
assign B_5_ce0 = B_5_ce0_local;
assign B_6_address0 = zext_ln13_fu_1259_p1;
assign B_6_ce0 = B_6_ce0_local;
assign B_7_address0 = zext_ln13_fu_1259_p1;
assign B_7_ce0 = B_7_ce0_local;
assign add_ln11_1_fu_1186_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln11_fu_1203_p2 = (i_fu_210 + 7'd1);
assign add_ln12_fu_1297_p2 = (select_ln5_fu_1217_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln13_1_fu_1369_p1 = A_1_q0;
assign bitcast_ln13_2_fu_1383_p1 = A_2_q0;
assign bitcast_ln13_3_fu_1397_p1 = A_3_q0;
assign bitcast_ln13_4_fu_1411_p1 = A_4_q0;
assign bitcast_ln13_5_fu_1425_p1 = A_5_q0;
assign bitcast_ln13_6_fu_1439_p1 = A_6_q0;
assign bitcast_ln13_7_fu_1453_p1 = A_7_q0;
assign bitcast_ln13_fu_1355_p1 = A_0_q0;
assign bitcast_ln15_1_fu_1378_p1 = B_1_q0;
assign bitcast_ln15_2_fu_1392_p1 = B_2_q0;
assign bitcast_ln15_3_fu_1406_p1 = B_3_q0;
assign bitcast_ln15_4_fu_1420_p1 = B_4_q0;
assign bitcast_ln15_5_fu_1434_p1 = B_5_q0;
assign bitcast_ln15_6_fu_1448_p1 = B_6_q0;
assign bitcast_ln15_7_fu_1462_p1 = B_7_q0;
assign bitcast_ln15_fu_1364_p1 = B_0_q0;
assign buff_A0_1_address0 = zext_ln13_reg_1501;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_d0 = bitcast_ln13_1_fu_1369_p1;
assign buff_A0_1_we0 = buff_A0_1_we0_local;
assign buff_A0_2_address0 = zext_ln13_reg_1501;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_2_d0 = bitcast_ln13_2_fu_1383_p1;
assign buff_A0_2_we0 = buff_A0_2_we0_local;
assign buff_A0_3_address0 = zext_ln13_reg_1501;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_3_d0 = bitcast_ln13_3_fu_1397_p1;
assign buff_A0_3_we0 = buff_A0_3_we0_local;
assign buff_A0_4_address0 = zext_ln13_reg_1501;
assign buff_A0_4_ce0 = buff_A0_4_ce0_local;
assign buff_A0_4_d0 = bitcast_ln13_4_fu_1411_p1;
assign buff_A0_4_we0 = buff_A0_4_we0_local;
assign buff_A0_5_address0 = zext_ln13_reg_1501;
assign buff_A0_5_ce0 = buff_A0_5_ce0_local;
assign buff_A0_5_d0 = bitcast_ln13_5_fu_1425_p1;
assign buff_A0_5_we0 = buff_A0_5_we0_local;
assign buff_A0_6_address0 = zext_ln13_reg_1501;
assign buff_A0_6_ce0 = buff_A0_6_ce0_local;
assign buff_A0_6_d0 = bitcast_ln13_6_fu_1439_p1;
assign buff_A0_6_we0 = buff_A0_6_we0_local;
assign buff_A0_7_address0 = zext_ln13_reg_1501;
assign buff_A0_7_ce0 = buff_A0_7_ce0_local;
assign buff_A0_7_d0 = bitcast_ln13_7_fu_1453_p1;
assign buff_A0_7_we0 = buff_A0_7_we0_local;
assign buff_A0_address0 = zext_ln13_reg_1501;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_d0 = bitcast_ln13_fu_1355_p1;
assign buff_A0_we0 = buff_A0_we0_local;
assign buff_A1_10_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_10_ce0 = buff_A1_10_ce0_local;
assign buff_A1_10_d0 = bitcast_ln13_2_fu_1383_p1;
assign buff_A1_10_we0 = buff_A1_10_we0_local;
assign buff_A1_11_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_11_ce0 = buff_A1_11_ce0_local;
assign buff_A1_11_d0 = bitcast_ln13_2_fu_1383_p1;
assign buff_A1_11_we0 = buff_A1_11_we0_local;
assign buff_A1_12_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_12_ce0 = buff_A1_12_ce0_local;
assign buff_A1_12_d0 = bitcast_ln13_3_fu_1397_p1;
assign buff_A1_12_we0 = buff_A1_12_we0_local;
assign buff_A1_13_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_13_ce0 = buff_A1_13_ce0_local;
assign buff_A1_13_d0 = bitcast_ln13_3_fu_1397_p1;
assign buff_A1_13_we0 = buff_A1_13_we0_local;
assign buff_A1_14_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_14_ce0 = buff_A1_14_ce0_local;
assign buff_A1_14_d0 = bitcast_ln13_3_fu_1397_p1;
assign buff_A1_14_we0 = buff_A1_14_we0_local;
assign buff_A1_15_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_15_ce0 = buff_A1_15_ce0_local;
assign buff_A1_15_d0 = bitcast_ln13_3_fu_1397_p1;
assign buff_A1_15_we0 = buff_A1_15_we0_local;
assign buff_A1_16_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_16_ce0 = buff_A1_16_ce0_local;
assign buff_A1_16_d0 = bitcast_ln13_4_fu_1411_p1;
assign buff_A1_16_we0 = buff_A1_16_we0_local;
assign buff_A1_17_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_17_ce0 = buff_A1_17_ce0_local;
assign buff_A1_17_d0 = bitcast_ln13_4_fu_1411_p1;
assign buff_A1_17_we0 = buff_A1_17_we0_local;
assign buff_A1_18_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_18_ce0 = buff_A1_18_ce0_local;
assign buff_A1_18_d0 = bitcast_ln13_4_fu_1411_p1;
assign buff_A1_18_we0 = buff_A1_18_we0_local;
assign buff_A1_19_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_19_ce0 = buff_A1_19_ce0_local;
assign buff_A1_19_d0 = bitcast_ln13_4_fu_1411_p1;
assign buff_A1_19_we0 = buff_A1_19_we0_local;
assign buff_A1_1_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_1_d0 = bitcast_ln13_fu_1355_p1;
assign buff_A1_1_we0 = buff_A1_1_we0_local;
assign buff_A1_20_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_20_ce0 = buff_A1_20_ce0_local;
assign buff_A1_20_d0 = bitcast_ln13_5_fu_1425_p1;
assign buff_A1_20_we0 = buff_A1_20_we0_local;
assign buff_A1_21_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_21_ce0 = buff_A1_21_ce0_local;
assign buff_A1_21_d0 = bitcast_ln13_5_fu_1425_p1;
assign buff_A1_21_we0 = buff_A1_21_we0_local;
assign buff_A1_22_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_22_ce0 = buff_A1_22_ce0_local;
assign buff_A1_22_d0 = bitcast_ln13_5_fu_1425_p1;
assign buff_A1_22_we0 = buff_A1_22_we0_local;
assign buff_A1_23_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_23_ce0 = buff_A1_23_ce0_local;
assign buff_A1_23_d0 = bitcast_ln13_5_fu_1425_p1;
assign buff_A1_23_we0 = buff_A1_23_we0_local;
assign buff_A1_24_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_24_ce0 = buff_A1_24_ce0_local;
assign buff_A1_24_d0 = bitcast_ln13_6_fu_1439_p1;
assign buff_A1_24_we0 = buff_A1_24_we0_local;
assign buff_A1_25_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_25_ce0 = buff_A1_25_ce0_local;
assign buff_A1_25_d0 = bitcast_ln13_6_fu_1439_p1;
assign buff_A1_25_we0 = buff_A1_25_we0_local;
assign buff_A1_26_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_26_ce0 = buff_A1_26_ce0_local;
assign buff_A1_26_d0 = bitcast_ln13_6_fu_1439_p1;
assign buff_A1_26_we0 = buff_A1_26_we0_local;
assign buff_A1_27_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_27_ce0 = buff_A1_27_ce0_local;
assign buff_A1_27_d0 = bitcast_ln13_6_fu_1439_p1;
assign buff_A1_27_we0 = buff_A1_27_we0_local;
assign buff_A1_28_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_28_ce0 = buff_A1_28_ce0_local;
assign buff_A1_28_d0 = bitcast_ln13_7_fu_1453_p1;
assign buff_A1_28_we0 = buff_A1_28_we0_local;
assign buff_A1_29_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_29_ce0 = buff_A1_29_ce0_local;
assign buff_A1_29_d0 = bitcast_ln13_7_fu_1453_p1;
assign buff_A1_29_we0 = buff_A1_29_we0_local;
assign buff_A1_2_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_2_d0 = bitcast_ln13_fu_1355_p1;
assign buff_A1_2_we0 = buff_A1_2_we0_local;
assign buff_A1_30_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_30_ce0 = buff_A1_30_ce0_local;
assign buff_A1_30_d0 = bitcast_ln13_7_fu_1453_p1;
assign buff_A1_30_we0 = buff_A1_30_we0_local;
assign buff_A1_31_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_31_ce0 = buff_A1_31_ce0_local;
assign buff_A1_31_d0 = bitcast_ln13_7_fu_1453_p1;
assign buff_A1_31_we0 = buff_A1_31_we0_local;
assign buff_A1_3_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_3_d0 = bitcast_ln13_fu_1355_p1;
assign buff_A1_3_we0 = buff_A1_3_we0_local;
assign buff_A1_4_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_4_ce0 = buff_A1_4_ce0_local;
assign buff_A1_4_d0 = bitcast_ln13_1_fu_1369_p1;
assign buff_A1_4_we0 = buff_A1_4_we0_local;
assign buff_A1_5_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_5_ce0 = buff_A1_5_ce0_local;
assign buff_A1_5_d0 = bitcast_ln13_1_fu_1369_p1;
assign buff_A1_5_we0 = buff_A1_5_we0_local;
assign buff_A1_6_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_6_ce0 = buff_A1_6_ce0_local;
assign buff_A1_6_d0 = bitcast_ln13_1_fu_1369_p1;
assign buff_A1_6_we0 = buff_A1_6_we0_local;
assign buff_A1_7_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_7_ce0 = buff_A1_7_ce0_local;
assign buff_A1_7_d0 = bitcast_ln13_1_fu_1369_p1;
assign buff_A1_7_we0 = buff_A1_7_we0_local;
assign buff_A1_8_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_8_ce0 = buff_A1_8_ce0_local;
assign buff_A1_8_d0 = bitcast_ln13_2_fu_1383_p1;
assign buff_A1_8_we0 = buff_A1_8_we0_local;
assign buff_A1_9_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_9_ce0 = buff_A1_9_ce0_local;
assign buff_A1_9_d0 = bitcast_ln13_2_fu_1383_p1;
assign buff_A1_9_we0 = buff_A1_9_we0_local;
assign buff_A1_address0 = zext_ln14_fu_1319_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_d0 = bitcast_ln13_fu_1355_p1;
assign buff_A1_we0 = buff_A1_we0_local;
assign buff_B_1_address0 = zext_ln13_reg_1501;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_d0 = bitcast_ln15_1_fu_1378_p1;
assign buff_B_1_we0 = buff_B_1_we0_local;
assign buff_B_2_address0 = zext_ln13_reg_1501;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_d0 = bitcast_ln15_2_fu_1392_p1;
assign buff_B_2_we0 = buff_B_2_we0_local;
assign buff_B_3_address0 = zext_ln13_reg_1501;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_d0 = bitcast_ln15_3_fu_1406_p1;
assign buff_B_3_we0 = buff_B_3_we0_local;
assign buff_B_4_address0 = zext_ln13_reg_1501;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_d0 = bitcast_ln15_4_fu_1420_p1;
assign buff_B_4_we0 = buff_B_4_we0_local;
assign buff_B_5_address0 = zext_ln13_reg_1501;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_d0 = bitcast_ln15_5_fu_1434_p1;
assign buff_B_5_we0 = buff_B_5_we0_local;
assign buff_B_6_address0 = zext_ln13_reg_1501;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_d0 = bitcast_ln15_6_fu_1448_p1;
assign buff_B_6_we0 = buff_B_6_we0_local;
assign buff_B_7_address0 = zext_ln13_reg_1501;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_d0 = bitcast_ln15_7_fu_1462_p1;
assign buff_B_7_we0 = buff_B_7_we0_local;
assign buff_B_address0 = zext_ln13_reg_1501;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_d0 = bitcast_ln15_fu_1364_p1;
assign buff_B_we0 = buff_B_we0_local;
assign buff_C_out_1_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = 32'd0;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = 32'd0;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = 32'd0;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = 32'd0;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = 32'd0;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = 32'd0;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = 32'd0;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = zext_ln13_fu_1259_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = 32'd0;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign icmp_ln11_fu_1180_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1241_p4 = {{select_ln5_fu_1217_p3[5:3]}};
assign select_ln11_fu_1225_p3 = ((tmp_4_fu_1209_p3[0:0] == 1'b1) ? add_ln11_fu_1203_p2 : i_fu_210);
assign select_ln5_fu_1217_p3 = ((tmp_4_fu_1209_p3[0:0] == 1'b1) ? 7'd0 : j_fu_206);
assign tmp_2_fu_1313_p3 = {{tmp_1_reg_1601}, {lshr_ln5_1_reg_1496}};
assign tmp_4_fu_1209_p3 = j_fu_206[32'd6];
assign tmp_fu_1251_p3 = {{trunc_ln11_fu_1233_p1}, {lshr_ln5_1_fu_1241_p4}};
assign trunc_ln11_1_fu_1237_p1 = select_ln11_fu_1225_p3[1:0];
assign trunc_ln11_fu_1233_p1 = select_ln11_fu_1225_p3[5:0];
assign zext_ln13_fu_1259_p1 = tmp_fu_1251_p3;
assign zext_ln14_fu_1319_p1 = tmp_2_fu_1313_p3;
always @ (posedge ap_clk) begin
    zext_ln13_reg_1501[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 