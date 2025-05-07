module syr2k_syr2k_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,C_0_address0,C_0_ce0,C_0_q0,C_1_address0,C_1_ce0,C_1_q0,C_2_address0,C_2_ce0,C_2_q0,C_3_address0,C_3_ce0,C_3_q0,buff_A0_address0,buff_A0_ce0,buff_A0_we0,buff_A0_d0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_we0,buff_A0_1_d0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_we0,buff_A0_2_d0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_we0,buff_A0_3_d0,buff_A1_address0,buff_A1_ce0,buff_A1_we0,buff_A1_d0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_we0,buff_A1_1_d0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_we0,buff_A1_2_d0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_we0,buff_A1_3_d0,buff_B0_address0,buff_B0_ce0,buff_B0_we0,buff_B0_d0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_we0,buff_B0_1_d0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_we0,buff_B0_2_d0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_we0,buff_B0_3_d0,buff_C_address0,buff_C_ce0,buff_C_we0,buff_C_d0,buff_C_1_address0,buff_C_1_ce0,buff_C_1_we0,buff_C_1_d0,buff_C_2_address0,buff_C_2_ce0,buff_C_2_we0,buff_C_2_d0,buff_C_3_address0,buff_C_3_ce0,buff_C_3_we0,buff_C_3_d0,buff_C_4_address0,buff_C_4_ce0,buff_C_4_we0,buff_C_4_d0,buff_C_5_address0,buff_C_5_ce0,buff_C_5_we0,buff_C_5_d0,buff_C_6_address0,buff_C_6_ce0,buff_C_6_we0,buff_C_6_d0,buff_C_7_address0,buff_C_7_ce0,buff_C_7_we0,buff_C_7_d0,buff_C_8_address0,buff_C_8_ce0,buff_C_8_we0,buff_C_8_d0,buff_C_9_address0,buff_C_9_ce0,buff_C_9_we0,buff_C_9_d0,buff_C_10_address0,buff_C_10_ce0,buff_C_10_we0,buff_C_10_d0,buff_C_11_address0,buff_C_11_ce0,buff_C_11_we0,buff_C_11_d0,buff_C_12_address0,buff_C_12_ce0,buff_C_12_we0,buff_C_12_d0,buff_C_13_address0,buff_C_13_ce0,buff_C_13_we0,buff_C_13_d0,buff_C_14_address0,buff_C_14_ce0,buff_C_14_we0,buff_C_14_d0,buff_C_15_address0,buff_C_15_ce0,buff_C_15_we0,buff_C_15_d0,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,buff_D_out_4_address0,buff_D_out_4_ce0,buff_D_out_4_we0,buff_D_out_4_d0,buff_D_out_5_address0,buff_D_out_5_ce0,buff_D_out_5_we0,buff_D_out_5_d0,buff_D_out_6_address0,buff_D_out_6_ce0,buff_D_out_6_we0,buff_D_out_6_d0,buff_D_out_7_address0,buff_D_out_7_ce0,buff_D_out_7_we0,buff_D_out_7_d0,buff_D_out_8_address0,buff_D_out_8_ce0,buff_D_out_8_we0,buff_D_out_8_d0,buff_D_out_9_address0,buff_D_out_9_ce0,buff_D_out_9_we0,buff_D_out_9_d0,buff_D_out_10_address0,buff_D_out_10_ce0,buff_D_out_10_we0,buff_D_out_10_d0,buff_D_out_11_address0,buff_D_out_11_ce0,buff_D_out_11_we0,buff_D_out_11_d0,buff_D_out_12_address0,buff_D_out_12_ce0,buff_D_out_12_we0,buff_D_out_12_d0,buff_D_out_13_address0,buff_D_out_13_ce0,buff_D_out_13_we0,buff_D_out_13_d0,buff_D_out_14_address0,buff_D_out_14_ce0,buff_D_out_14_we0,buff_D_out_14_d0,buff_D_out_15_address0,buff_D_out_15_ce0,buff_D_out_15_we0,buff_D_out_15_d0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_8_address0,tmp1_8_ce0,tmp1_8_we0,tmp1_8_d0,tmp1_9_address0,tmp1_9_ce0,tmp1_9_we0,tmp1_9_d0,tmp1_10_address0,tmp1_10_ce0,tmp1_10_we0,tmp1_10_d0,tmp1_11_address0,tmp1_11_ce0,tmp1_11_we0,tmp1_11_d0,tmp1_12_address0,tmp1_12_ce0,tmp1_12_we0,tmp1_12_d0,tmp1_13_address0,tmp1_13_ce0,tmp1_13_we0,tmp1_13_d0,tmp1_14_address0,tmp1_14_ce0,tmp1_14_we0,tmp1_14_d0,tmp1_15_address0,tmp1_15_ce0,tmp1_15_we0,tmp1_15_d0,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_we0,tmp2_1_d0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_we0,tmp2_2_d0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_we0,tmp2_3_d0,tmp2_4_address0,tmp2_4_ce0,tmp2_4_we0,tmp2_4_d0,tmp2_5_address0,tmp2_5_ce0,tmp2_5_we0,tmp2_5_d0,tmp2_6_address0,tmp2_6_ce0,tmp2_6_we0,tmp2_6_d0,tmp2_7_address0,tmp2_7_ce0,tmp2_7_we0,tmp2_7_d0,tmp2_8_address0,tmp2_8_ce0,tmp2_8_we0,tmp2_8_d0,tmp2_9_address0,tmp2_9_ce0,tmp2_9_we0,tmp2_9_d0,tmp2_10_address0,tmp2_10_ce0,tmp2_10_we0,tmp2_10_d0,tmp2_11_address0,tmp2_11_ce0,tmp2_11_we0,tmp2_11_d0,tmp2_12_address0,tmp2_12_ce0,tmp2_12_we0,tmp2_12_d0,tmp2_13_address0,tmp2_13_ce0,tmp2_13_we0,tmp2_13_d0,tmp2_14_address0,tmp2_14_ce0,tmp2_14_we0,tmp2_14_d0,tmp2_15_address0,tmp2_15_ce0,tmp2_15_we0,tmp2_15_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [9:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [9:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [9:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [9:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [9:0] C_0_address0;
output   C_0_ce0;
input  [31:0] C_0_q0;
output  [9:0] C_1_address0;
output   C_1_ce0;
input  [31:0] C_1_q0;
output  [9:0] C_2_address0;
output   C_2_ce0;
input  [31:0] C_2_q0;
output  [9:0] C_3_address0;
output   C_3_ce0;
input  [31:0] C_3_q0;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
output   buff_A0_we0;
output  [31:0] buff_A0_d0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
output   buff_A0_1_we0;
output  [31:0] buff_A0_1_d0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
output   buff_A0_2_we0;
output  [31:0] buff_A0_2_d0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
output   buff_A0_3_we0;
output  [31:0] buff_A0_3_d0;
output  [9:0] buff_A1_address0;
output   buff_A1_ce0;
output   buff_A1_we0;
output  [31:0] buff_A1_d0;
output  [9:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
output   buff_A1_1_we0;
output  [31:0] buff_A1_1_d0;
output  [9:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
output   buff_A1_2_we0;
output  [31:0] buff_A1_2_d0;
output  [9:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
output   buff_A1_3_we0;
output  [31:0] buff_A1_3_d0;
output  [9:0] buff_B0_address0;
output   buff_B0_ce0;
output   buff_B0_we0;
output  [31:0] buff_B0_d0;
output  [9:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
output   buff_B0_1_we0;
output  [31:0] buff_B0_1_d0;
output  [9:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
output   buff_B0_2_we0;
output  [31:0] buff_B0_2_d0;
output  [9:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
output   buff_B0_3_we0;
output  [31:0] buff_B0_3_d0;
output  [7:0] buff_C_address0;
output   buff_C_ce0;
output   buff_C_we0;
output  [31:0] buff_C_d0;
output  [7:0] buff_C_1_address0;
output   buff_C_1_ce0;
output   buff_C_1_we0;
output  [31:0] buff_C_1_d0;
output  [7:0] buff_C_2_address0;
output   buff_C_2_ce0;
output   buff_C_2_we0;
output  [31:0] buff_C_2_d0;
output  [7:0] buff_C_3_address0;
output   buff_C_3_ce0;
output   buff_C_3_we0;
output  [31:0] buff_C_3_d0;
output  [7:0] buff_C_4_address0;
output   buff_C_4_ce0;
output   buff_C_4_we0;
output  [31:0] buff_C_4_d0;
output  [7:0] buff_C_5_address0;
output   buff_C_5_ce0;
output   buff_C_5_we0;
output  [31:0] buff_C_5_d0;
output  [7:0] buff_C_6_address0;
output   buff_C_6_ce0;
output   buff_C_6_we0;
output  [31:0] buff_C_6_d0;
output  [7:0] buff_C_7_address0;
output   buff_C_7_ce0;
output   buff_C_7_we0;
output  [31:0] buff_C_7_d0;
output  [7:0] buff_C_8_address0;
output   buff_C_8_ce0;
output   buff_C_8_we0;
output  [31:0] buff_C_8_d0;
output  [7:0] buff_C_9_address0;
output   buff_C_9_ce0;
output   buff_C_9_we0;
output  [31:0] buff_C_9_d0;
output  [7:0] buff_C_10_address0;
output   buff_C_10_ce0;
output   buff_C_10_we0;
output  [31:0] buff_C_10_d0;
output  [7:0] buff_C_11_address0;
output   buff_C_11_ce0;
output   buff_C_11_we0;
output  [31:0] buff_C_11_d0;
output  [7:0] buff_C_12_address0;
output   buff_C_12_ce0;
output   buff_C_12_we0;
output  [31:0] buff_C_12_d0;
output  [7:0] buff_C_13_address0;
output   buff_C_13_ce0;
output   buff_C_13_we0;
output  [31:0] buff_C_13_d0;
output  [7:0] buff_C_14_address0;
output   buff_C_14_ce0;
output   buff_C_14_we0;
output  [31:0] buff_C_14_d0;
output  [7:0] buff_C_15_address0;
output   buff_C_15_ce0;
output   buff_C_15_we0;
output  [31:0] buff_C_15_d0;
output  [7:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [7:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [7:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
output   buff_D_out_2_we0;
output  [31:0] buff_D_out_2_d0;
output  [7:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
output   buff_D_out_3_we0;
output  [31:0] buff_D_out_3_d0;
output  [7:0] buff_D_out_4_address0;
output   buff_D_out_4_ce0;
output   buff_D_out_4_we0;
output  [31:0] buff_D_out_4_d0;
output  [7:0] buff_D_out_5_address0;
output   buff_D_out_5_ce0;
output   buff_D_out_5_we0;
output  [31:0] buff_D_out_5_d0;
output  [7:0] buff_D_out_6_address0;
output   buff_D_out_6_ce0;
output   buff_D_out_6_we0;
output  [31:0] buff_D_out_6_d0;
output  [7:0] buff_D_out_7_address0;
output   buff_D_out_7_ce0;
output   buff_D_out_7_we0;
output  [31:0] buff_D_out_7_d0;
output  [7:0] buff_D_out_8_address0;
output   buff_D_out_8_ce0;
output   buff_D_out_8_we0;
output  [31:0] buff_D_out_8_d0;
output  [7:0] buff_D_out_9_address0;
output   buff_D_out_9_ce0;
output   buff_D_out_9_we0;
output  [31:0] buff_D_out_9_d0;
output  [7:0] buff_D_out_10_address0;
output   buff_D_out_10_ce0;
output   buff_D_out_10_we0;
output  [31:0] buff_D_out_10_d0;
output  [7:0] buff_D_out_11_address0;
output   buff_D_out_11_ce0;
output   buff_D_out_11_we0;
output  [31:0] buff_D_out_11_d0;
output  [7:0] buff_D_out_12_address0;
output   buff_D_out_12_ce0;
output   buff_D_out_12_we0;
output  [31:0] buff_D_out_12_d0;
output  [7:0] buff_D_out_13_address0;
output   buff_D_out_13_ce0;
output   buff_D_out_13_we0;
output  [31:0] buff_D_out_13_d0;
output  [7:0] buff_D_out_14_address0;
output   buff_D_out_14_ce0;
output   buff_D_out_14_we0;
output  [31:0] buff_D_out_14_d0;
output  [7:0] buff_D_out_15_address0;
output   buff_D_out_15_ce0;
output   buff_D_out_15_we0;
output  [31:0] buff_D_out_15_d0;
output  [7:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
output  [7:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
output  [7:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
output  [7:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
output  [7:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
output  [7:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
output  [7:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
output  [7:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
output  [7:0] tmp1_8_address0;
output   tmp1_8_ce0;
output   tmp1_8_we0;
output  [31:0] tmp1_8_d0;
output  [7:0] tmp1_9_address0;
output   tmp1_9_ce0;
output   tmp1_9_we0;
output  [31:0] tmp1_9_d0;
output  [7:0] tmp1_10_address0;
output   tmp1_10_ce0;
output   tmp1_10_we0;
output  [31:0] tmp1_10_d0;
output  [7:0] tmp1_11_address0;
output   tmp1_11_ce0;
output   tmp1_11_we0;
output  [31:0] tmp1_11_d0;
output  [7:0] tmp1_12_address0;
output   tmp1_12_ce0;
output   tmp1_12_we0;
output  [31:0] tmp1_12_d0;
output  [7:0] tmp1_13_address0;
output   tmp1_13_ce0;
output   tmp1_13_we0;
output  [31:0] tmp1_13_d0;
output  [7:0] tmp1_14_address0;
output   tmp1_14_ce0;
output   tmp1_14_we0;
output  [31:0] tmp1_14_d0;
output  [7:0] tmp1_15_address0;
output   tmp1_15_ce0;
output   tmp1_15_we0;
output  [31:0] tmp1_15_d0;
output  [7:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
output  [7:0] tmp2_1_address0;
output   tmp2_1_ce0;
output   tmp2_1_we0;
output  [31:0] tmp2_1_d0;
output  [7:0] tmp2_2_address0;
output   tmp2_2_ce0;
output   tmp2_2_we0;
output  [31:0] tmp2_2_d0;
output  [7:0] tmp2_3_address0;
output   tmp2_3_ce0;
output   tmp2_3_we0;
output  [31:0] tmp2_3_d0;
output  [7:0] tmp2_4_address0;
output   tmp2_4_ce0;
output   tmp2_4_we0;
output  [31:0] tmp2_4_d0;
output  [7:0] tmp2_5_address0;
output   tmp2_5_ce0;
output   tmp2_5_we0;
output  [31:0] tmp2_5_d0;
output  [7:0] tmp2_6_address0;
output   tmp2_6_ce0;
output   tmp2_6_we0;
output  [31:0] tmp2_6_d0;
output  [7:0] tmp2_7_address0;
output   tmp2_7_ce0;
output   tmp2_7_we0;
output  [31:0] tmp2_7_d0;
output  [7:0] tmp2_8_address0;
output   tmp2_8_ce0;
output   tmp2_8_we0;
output  [31:0] tmp2_8_d0;
output  [7:0] tmp2_9_address0;
output   tmp2_9_ce0;
output   tmp2_9_we0;
output  [31:0] tmp2_9_d0;
output  [7:0] tmp2_10_address0;
output   tmp2_10_ce0;
output   tmp2_10_we0;
output  [31:0] tmp2_10_d0;
output  [7:0] tmp2_11_address0;
output   tmp2_11_ce0;
output   tmp2_11_we0;
output  [31:0] tmp2_11_d0;
output  [7:0] tmp2_12_address0;
output   tmp2_12_ce0;
output   tmp2_12_we0;
output  [31:0] tmp2_12_d0;
output  [7:0] tmp2_13_address0;
output   tmp2_13_ce0;
output   tmp2_13_we0;
output  [31:0] tmp2_13_d0;
output  [7:0] tmp2_14_address0;
output   tmp2_14_ce0;
output   tmp2_14_we0;
output  [31:0] tmp2_14_d0;
output  [7:0] tmp2_15_address0;
output   tmp2_15_ce0;
output   tmp2_15_we0;
output  [31:0] tmp2_15_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14_fu_1456_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln14_fu_1504_p1;
reg   [5:0] trunc_ln14_reg_1734;
wire   [1:0] trunc_ln14_1_fu_1508_p1;
reg   [1:0] trunc_ln14_1_reg_1739;
reg   [1:0] trunc_ln14_1_reg_1739_pp0_iter1_reg;
reg   [3:0] lshr_ln5_2_reg_1743;
reg   [3:0] tmp_7_reg_1749;
wire   [63:0] zext_ln16_fu_1559_p1;
reg   [63:0] zext_ln16_reg_1754;
wire   [63:0] zext_ln20_fu_1581_p1;
reg   [63:0] zext_ln20_reg_1830;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_234;
wire   [6:0] add_ln15_fu_1532_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_238;
wire   [6:0] select_ln14_fu_1496_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten_fu_242;
wire   [10:0] add_ln14_1_fu_1462_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    C_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    C_1_ce0_local;
reg    A_2_ce0_local;
reg    B_2_ce0_local;
reg    C_2_ce0_local;
reg    A_3_ce0_local;
reg    B_3_ce0_local;
reg    C_3_ce0_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_6_we0_local;
reg    buff_D_out_6_ce0_local;
reg    buff_D_out_10_we0_local;
reg    buff_D_out_10_ce0_local;
reg    buff_D_out_14_we0_local;
reg    buff_D_out_14_ce0_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_6_we0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_10_we0_local;
reg    tmp1_10_ce0_local;
reg    tmp1_14_we0_local;
reg    tmp1_14_ce0_local;
reg    tmp2_2_we0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_6_we0_local;
reg    tmp2_6_ce0_local;
reg    tmp2_10_we0_local;
reg    tmp2_10_ce0_local;
reg    tmp2_14_we0_local;
reg    tmp2_14_ce0_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_5_we0_local;
reg    buff_D_out_5_ce0_local;
reg    buff_D_out_9_we0_local;
reg    buff_D_out_9_ce0_local;
reg    buff_D_out_13_we0_local;
reg    buff_D_out_13_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_5_we0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_9_we0_local;
reg    tmp1_9_ce0_local;
reg    tmp1_13_we0_local;
reg    tmp1_13_ce0_local;
reg    tmp2_1_we0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_5_we0_local;
reg    tmp2_5_ce0_local;
reg    tmp2_9_we0_local;
reg    tmp2_9_ce0_local;
reg    tmp2_13_we0_local;
reg    tmp2_13_ce0_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_4_we0_local;
reg    buff_D_out_4_ce0_local;
reg    buff_D_out_8_we0_local;
reg    buff_D_out_8_ce0_local;
reg    buff_D_out_12_we0_local;
reg    buff_D_out_12_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    tmp1_4_we0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_8_we0_local;
reg    tmp1_8_ce0_local;
reg    tmp1_12_we0_local;
reg    tmp1_12_ce0_local;
reg    tmp2_we0_local;
reg    tmp2_ce0_local;
reg    tmp2_4_we0_local;
reg    tmp2_4_ce0_local;
reg    tmp2_8_we0_local;
reg    tmp2_8_ce0_local;
reg    tmp2_12_we0_local;
reg    tmp2_12_ce0_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
reg    buff_D_out_7_we0_local;
reg    buff_D_out_7_ce0_local;
reg    buff_D_out_11_we0_local;
reg    buff_D_out_11_ce0_local;
reg    buff_D_out_15_we0_local;
reg    buff_D_out_15_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_7_we0_local;
reg    tmp1_7_ce0_local;
reg    tmp1_11_we0_local;
reg    tmp1_11_ce0_local;
reg    tmp1_15_we0_local;
reg    tmp1_15_ce0_local;
reg    tmp2_3_we0_local;
reg    tmp2_3_ce0_local;
reg    tmp2_7_we0_local;
reg    tmp2_7_ce0_local;
reg    tmp2_11_we0_local;
reg    tmp2_11_ce0_local;
reg    tmp2_15_we0_local;
reg    tmp2_15_ce0_local;
reg    buff_A0_we0_local;
wire   [31:0] bitcast_ln16_fu_1633_p1;
reg    buff_A0_ce0_local;
reg    buff_A0_1_we0_local;
wire   [31:0] bitcast_ln16_1_fu_1652_p1;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_we0_local;
wire   [31:0] bitcast_ln16_2_fu_1671_p1;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_we0_local;
wire   [31:0] bitcast_ln16_3_fu_1690_p1;
reg    buff_A0_3_ce0_local;
reg    buff_A1_we0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_we0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_we0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_we0_local;
reg    buff_A1_3_ce0_local;
reg    buff_B0_we0_local;
wire   [31:0] bitcast_ln18_fu_1639_p1;
reg    buff_B0_ce0_local;
reg    buff_B0_1_we0_local;
wire   [31:0] bitcast_ln18_1_fu_1658_p1;
reg    buff_B0_1_ce0_local;
reg    buff_B0_2_we0_local;
wire   [31:0] bitcast_ln18_2_fu_1677_p1;
reg    buff_B0_2_ce0_local;
reg    buff_B0_3_we0_local;
wire   [31:0] bitcast_ln18_3_fu_1696_p1;
reg    buff_B0_3_ce0_local;
reg    buff_C_2_we0_local;
wire   [31:0] bitcast_ln20_fu_1644_p1;
reg    buff_C_2_ce0_local;
reg    buff_C_6_we0_local;
wire   [31:0] bitcast_ln20_1_fu_1663_p1;
reg    buff_C_6_ce0_local;
reg    buff_C_10_we0_local;
wire   [31:0] bitcast_ln20_2_fu_1682_p1;
reg    buff_C_10_ce0_local;
reg    buff_C_14_we0_local;
wire   [31:0] bitcast_ln20_3_fu_1701_p1;
reg    buff_C_14_ce0_local;
reg    buff_C_1_we0_local;
reg    buff_C_1_ce0_local;
reg    buff_C_5_we0_local;
reg    buff_C_5_ce0_local;
reg    buff_C_9_we0_local;
reg    buff_C_9_ce0_local;
reg    buff_C_13_we0_local;
reg    buff_C_13_ce0_local;
reg    buff_C_we0_local;
reg    buff_C_ce0_local;
reg    buff_C_4_we0_local;
reg    buff_C_4_ce0_local;
reg    buff_C_8_we0_local;
reg    buff_C_8_ce0_local;
reg    buff_C_12_we0_local;
reg    buff_C_12_ce0_local;
reg    buff_C_3_we0_local;
reg    buff_C_3_ce0_local;
reg    buff_C_7_we0_local;
reg    buff_C_7_ce0_local;
reg    buff_C_11_we0_local;
reg    buff_C_11_ce0_local;
reg    buff_C_15_we0_local;
reg    buff_C_15_ce0_local;
wire   [0:0] tmp_fu_1480_p3;
wire   [6:0] add_ln14_fu_1474_p2;
wire   [6:0] select_ln5_fu_1488_p3;
wire   [9:0] tmp_s_fu_1553_p3;
wire   [7:0] tmp_8_fu_1575_p3;
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
#0 j_fu_234 = 7'd0;
#0 i_fu_238 = 7'd0;
#0 indvar_flatten_fu_242 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((icmp_ln14_fu_1456_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_238 <= select_ln14_fu_1496_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_238 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_1456_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_242 <= add_ln14_1_fu_1462_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_242 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_1456_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_234 <= add_ln15_fu_1532_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_234 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln5_2_reg_1743 <= {{select_ln5_fu_1488_p3[5:2]}};
        tmp_7_reg_1749 <= {{select_ln14_fu_1496_p3[5:2]}};
        trunc_ln14_1_reg_1739 <= trunc_ln14_1_fu_1508_p1;
        trunc_ln14_1_reg_1739_pp0_iter1_reg <= trunc_ln14_1_reg_1739;
        trunc_ln14_reg_1734 <= trunc_ln14_fu_1504_p1;
        zext_ln16_reg_1754[9 : 0] <= zext_ln16_fu_1559_p1[9 : 0];
        zext_ln20_reg_1830[7 : 0] <= zext_ln20_fu_1581_p1[7 : 0];
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
        C_0_ce0_local = 1'b1;
    end else begin
        C_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_1_ce0_local = 1'b1;
    end else begin
        C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_2_ce0_local = 1'b1;
    end else begin
        C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_3_ce0_local = 1'b1;
    end else begin
        C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_1456_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_238;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_242;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_234;
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
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_we0_local = 1'b1;
    end else begin
        buff_A1_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_we0_local = 1'b1;
    end else begin
        buff_A1_2_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_we0_local = 1'b1;
    end else begin
        buff_A1_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_we0_local = 1'b1;
    end else begin
        buff_A1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_1_we0_local = 1'b1;
    end else begin
        buff_B0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_2_we0_local = 1'b1;
    end else begin
        buff_B0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_3_we0_local = 1'b1;
    end else begin
        buff_B0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_we0_local = 1'b1;
    end else begin
        buff_B0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_10_ce0_local = 1'b1;
    end else begin
        buff_C_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd2))) begin
        buff_C_10_we0_local = 1'b1;
    end else begin
        buff_C_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_11_ce0_local = 1'b1;
    end else begin
        buff_C_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd3))) begin
        buff_C_11_we0_local = 1'b1;
    end else begin
        buff_C_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_12_ce0_local = 1'b1;
    end else begin
        buff_C_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd0))) begin
        buff_C_12_we0_local = 1'b1;
    end else begin
        buff_C_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_13_ce0_local = 1'b1;
    end else begin
        buff_C_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd1))) begin
        buff_C_13_we0_local = 1'b1;
    end else begin
        buff_C_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_14_ce0_local = 1'b1;
    end else begin
        buff_C_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd2))) begin
        buff_C_14_we0_local = 1'b1;
    end else begin
        buff_C_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_15_ce0_local = 1'b1;
    end else begin
        buff_C_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd3))) begin
        buff_C_15_we0_local = 1'b1;
    end else begin
        buff_C_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd1))) begin
        buff_C_1_we0_local = 1'b1;
    end else begin
        buff_C_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_2_ce0_local = 1'b1;
    end else begin
        buff_C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd2))) begin
        buff_C_2_we0_local = 1'b1;
    end else begin
        buff_C_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_3_ce0_local = 1'b1;
    end else begin
        buff_C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd3))) begin
        buff_C_3_we0_local = 1'b1;
    end else begin
        buff_C_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_4_ce0_local = 1'b1;
    end else begin
        buff_C_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd0))) begin
        buff_C_4_we0_local = 1'b1;
    end else begin
        buff_C_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_5_ce0_local = 1'b1;
    end else begin
        buff_C_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd1))) begin
        buff_C_5_we0_local = 1'b1;
    end else begin
        buff_C_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_6_ce0_local = 1'b1;
    end else begin
        buff_C_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd2))) begin
        buff_C_6_we0_local = 1'b1;
    end else begin
        buff_C_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_7_ce0_local = 1'b1;
    end else begin
        buff_C_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd3))) begin
        buff_C_7_we0_local = 1'b1;
    end else begin
        buff_C_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_8_ce0_local = 1'b1;
    end else begin
        buff_C_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd0))) begin
        buff_C_8_we0_local = 1'b1;
    end else begin
        buff_C_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_9_ce0_local = 1'b1;
    end else begin
        buff_C_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd1))) begin
        buff_C_9_we0_local = 1'b1;
    end else begin
        buff_C_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln14_1_reg_1739_pp0_iter1_reg == 2'd0))) begin
        buff_C_we0_local = 1'b1;
    end else begin
        buff_C_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_10_ce0_local = 1'b1;
    end else begin
        buff_D_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        buff_D_out_10_we0_local = 1'b1;
    end else begin
        buff_D_out_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_11_ce0_local = 1'b1;
    end else begin
        buff_D_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        buff_D_out_11_we0_local = 1'b1;
    end else begin
        buff_D_out_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_12_ce0_local = 1'b1;
    end else begin
        buff_D_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        buff_D_out_12_we0_local = 1'b1;
    end else begin
        buff_D_out_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_13_ce0_local = 1'b1;
    end else begin
        buff_D_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        buff_D_out_13_we0_local = 1'b1;
    end else begin
        buff_D_out_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_14_ce0_local = 1'b1;
    end else begin
        buff_D_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        buff_D_out_14_we0_local = 1'b1;
    end else begin
        buff_D_out_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_15_ce0_local = 1'b1;
    end else begin
        buff_D_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        buff_D_out_15_we0_local = 1'b1;
    end else begin
        buff_D_out_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        buff_D_out_2_we0_local = 1'b1;
    end else begin
        buff_D_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        buff_D_out_3_we0_local = 1'b1;
    end else begin
        buff_D_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_4_ce0_local = 1'b1;
    end else begin
        buff_D_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        buff_D_out_4_we0_local = 1'b1;
    end else begin
        buff_D_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_5_ce0_local = 1'b1;
    end else begin
        buff_D_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        buff_D_out_5_we0_local = 1'b1;
    end else begin
        buff_D_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_6_ce0_local = 1'b1;
    end else begin
        buff_D_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        buff_D_out_6_we0_local = 1'b1;
    end else begin
        buff_D_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_7_ce0_local = 1'b1;
    end else begin
        buff_D_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        buff_D_out_7_we0_local = 1'b1;
    end else begin
        buff_D_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_8_ce0_local = 1'b1;
    end else begin
        buff_D_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        buff_D_out_8_we0_local = 1'b1;
    end else begin
        buff_D_out_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_9_ce0_local = 1'b1;
    end else begin
        buff_D_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        buff_D_out_9_we0_local = 1'b1;
    end else begin
        buff_D_out_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_10_ce0_local = 1'b1;
    end else begin
        tmp1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp1_10_we0_local = 1'b1;
    end else begin
        tmp1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_11_ce0_local = 1'b1;
    end else begin
        tmp1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp1_11_we0_local = 1'b1;
    end else begin
        tmp1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_12_ce0_local = 1'b1;
    end else begin
        tmp1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp1_12_we0_local = 1'b1;
    end else begin
        tmp1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_13_ce0_local = 1'b1;
    end else begin
        tmp1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp1_13_we0_local = 1'b1;
    end else begin
        tmp1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_14_ce0_local = 1'b1;
    end else begin
        tmp1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp1_14_we0_local = 1'b1;
    end else begin
        tmp1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_15_ce0_local = 1'b1;
    end else begin
        tmp1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp1_15_we0_local = 1'b1;
    end else begin
        tmp1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_8_ce0_local = 1'b1;
    end else begin
        tmp1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp1_8_we0_local = 1'b1;
    end else begin
        tmp1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_9_ce0_local = 1'b1;
    end else begin
        tmp1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp1_9_we0_local = 1'b1;
    end else begin
        tmp1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_10_ce0_local = 1'b1;
    end else begin
        tmp2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp2_10_we0_local = 1'b1;
    end else begin
        tmp2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_11_ce0_local = 1'b1;
    end else begin
        tmp2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp2_11_we0_local = 1'b1;
    end else begin
        tmp2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_12_ce0_local = 1'b1;
    end else begin
        tmp2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp2_12_we0_local = 1'b1;
    end else begin
        tmp2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_13_ce0_local = 1'b1;
    end else begin
        tmp2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp2_13_we0_local = 1'b1;
    end else begin
        tmp2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_14_ce0_local = 1'b1;
    end else begin
        tmp2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp2_14_we0_local = 1'b1;
    end else begin
        tmp2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_15_ce0_local = 1'b1;
    end else begin
        tmp2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp2_15_we0_local = 1'b1;
    end else begin
        tmp2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp2_2_we0_local = 1'b1;
    end else begin
        tmp2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp2_3_we0_local = 1'b1;
    end else begin
        tmp2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_4_ce0_local = 1'b1;
    end else begin
        tmp2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp2_4_we0_local = 1'b1;
    end else begin
        tmp2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_5_ce0_local = 1'b1;
    end else begin
        tmp2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp2_5_we0_local = 1'b1;
    end else begin
        tmp2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_6_ce0_local = 1'b1;
    end else begin
        tmp2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd2))) begin
        tmp2_6_we0_local = 1'b1;
    end else begin
        tmp2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_7_ce0_local = 1'b1;
    end else begin
        tmp2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd3))) begin
        tmp2_7_we0_local = 1'b1;
    end else begin
        tmp2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_8_ce0_local = 1'b1;
    end else begin
        tmp2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp2_8_we0_local = 1'b1;
    end else begin
        tmp2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_9_ce0_local = 1'b1;
    end else begin
        tmp2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd1))) begin
        tmp2_9_we0_local = 1'b1;
    end else begin
        tmp2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln14_1_reg_1739 == 2'd0))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
assign A_0_address0 = zext_ln16_fu_1559_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln16_fu_1559_p1;
assign A_1_ce0 = A_1_ce0_local;
assign A_2_address0 = zext_ln16_fu_1559_p1;
assign A_2_ce0 = A_2_ce0_local;
assign A_3_address0 = zext_ln16_fu_1559_p1;
assign A_3_ce0 = A_3_ce0_local;
assign B_0_address0 = zext_ln16_fu_1559_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln16_fu_1559_p1;
assign B_1_ce0 = B_1_ce0_local;
assign B_2_address0 = zext_ln16_fu_1559_p1;
assign B_2_ce0 = B_2_ce0_local;
assign B_3_address0 = zext_ln16_fu_1559_p1;
assign B_3_ce0 = B_3_ce0_local;
assign C_0_address0 = zext_ln16_fu_1559_p1;
assign C_0_ce0 = C_0_ce0_local;
assign C_1_address0 = zext_ln16_fu_1559_p1;
assign C_1_ce0 = C_1_ce0_local;
assign C_2_address0 = zext_ln16_fu_1559_p1;
assign C_2_ce0 = C_2_ce0_local;
assign C_3_address0 = zext_ln16_fu_1559_p1;
assign C_3_ce0 = C_3_ce0_local;
assign add_ln14_1_fu_1462_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln14_fu_1474_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln15_fu_1532_p2 = (select_ln5_fu_1488_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_1_fu_1652_p1 = A_1_q0;
assign bitcast_ln16_2_fu_1671_p1 = A_2_q0;
assign bitcast_ln16_3_fu_1690_p1 = A_3_q0;
assign bitcast_ln16_fu_1633_p1 = A_0_q0;
assign bitcast_ln18_1_fu_1658_p1 = B_1_q0;
assign bitcast_ln18_2_fu_1677_p1 = B_2_q0;
assign bitcast_ln18_3_fu_1696_p1 = B_3_q0;
assign bitcast_ln18_fu_1639_p1 = B_0_q0;
assign bitcast_ln20_1_fu_1663_p1 = C_1_q0;
assign bitcast_ln20_2_fu_1682_p1 = C_2_q0;
assign bitcast_ln20_3_fu_1701_p1 = C_3_q0;
assign bitcast_ln20_fu_1644_p1 = C_0_q0;
assign buff_A0_1_address0 = zext_ln16_reg_1754;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_d0 = bitcast_ln16_1_fu_1652_p1;
assign buff_A0_1_we0 = buff_A0_1_we0_local;
assign buff_A0_2_address0 = zext_ln16_reg_1754;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_2_d0 = bitcast_ln16_2_fu_1671_p1;
assign buff_A0_2_we0 = buff_A0_2_we0_local;
assign buff_A0_3_address0 = zext_ln16_reg_1754;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_3_d0 = bitcast_ln16_3_fu_1690_p1;
assign buff_A0_3_we0 = buff_A0_3_we0_local;
assign buff_A0_address0 = zext_ln16_reg_1754;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_d0 = bitcast_ln16_fu_1633_p1;
assign buff_A0_we0 = buff_A0_we0_local;
assign buff_A1_1_address0 = zext_ln16_reg_1754;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_1_d0 = bitcast_ln16_1_fu_1652_p1;
assign buff_A1_1_we0 = buff_A1_1_we0_local;
assign buff_A1_2_address0 = zext_ln16_reg_1754;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_2_d0 = bitcast_ln16_2_fu_1671_p1;
assign buff_A1_2_we0 = buff_A1_2_we0_local;
assign buff_A1_3_address0 = zext_ln16_reg_1754;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_3_d0 = bitcast_ln16_3_fu_1690_p1;
assign buff_A1_3_we0 = buff_A1_3_we0_local;
assign buff_A1_address0 = zext_ln16_reg_1754;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_d0 = bitcast_ln16_fu_1633_p1;
assign buff_A1_we0 = buff_A1_we0_local;
assign buff_B0_1_address0 = zext_ln16_reg_1754;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_1_d0 = bitcast_ln18_1_fu_1658_p1;
assign buff_B0_1_we0 = buff_B0_1_we0_local;
assign buff_B0_2_address0 = zext_ln16_reg_1754;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_2_d0 = bitcast_ln18_2_fu_1677_p1;
assign buff_B0_2_we0 = buff_B0_2_we0_local;
assign buff_B0_3_address0 = zext_ln16_reg_1754;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_3_d0 = bitcast_ln18_3_fu_1696_p1;
assign buff_B0_3_we0 = buff_B0_3_we0_local;
assign buff_B0_address0 = zext_ln16_reg_1754;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign buff_B0_d0 = bitcast_ln18_fu_1639_p1;
assign buff_B0_we0 = buff_B0_we0_local;
assign buff_C_10_address0 = zext_ln20_reg_1830;
assign buff_C_10_ce0 = buff_C_10_ce0_local;
assign buff_C_10_d0 = bitcast_ln20_2_fu_1682_p1;
assign buff_C_10_we0 = buff_C_10_we0_local;
assign buff_C_11_address0 = zext_ln20_reg_1830;
assign buff_C_11_ce0 = buff_C_11_ce0_local;
assign buff_C_11_d0 = bitcast_ln20_2_fu_1682_p1;
assign buff_C_11_we0 = buff_C_11_we0_local;
assign buff_C_12_address0 = zext_ln20_reg_1830;
assign buff_C_12_ce0 = buff_C_12_ce0_local;
assign buff_C_12_d0 = bitcast_ln20_3_fu_1701_p1;
assign buff_C_12_we0 = buff_C_12_we0_local;
assign buff_C_13_address0 = zext_ln20_reg_1830;
assign buff_C_13_ce0 = buff_C_13_ce0_local;
assign buff_C_13_d0 = bitcast_ln20_3_fu_1701_p1;
assign buff_C_13_we0 = buff_C_13_we0_local;
assign buff_C_14_address0 = zext_ln20_reg_1830;
assign buff_C_14_ce0 = buff_C_14_ce0_local;
assign buff_C_14_d0 = bitcast_ln20_3_fu_1701_p1;
assign buff_C_14_we0 = buff_C_14_we0_local;
assign buff_C_15_address0 = zext_ln20_reg_1830;
assign buff_C_15_ce0 = buff_C_15_ce0_local;
assign buff_C_15_d0 = bitcast_ln20_3_fu_1701_p1;
assign buff_C_15_we0 = buff_C_15_we0_local;
assign buff_C_1_address0 = zext_ln20_reg_1830;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_1_d0 = bitcast_ln20_fu_1644_p1;
assign buff_C_1_we0 = buff_C_1_we0_local;
assign buff_C_2_address0 = zext_ln20_reg_1830;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_2_d0 = bitcast_ln20_fu_1644_p1;
assign buff_C_2_we0 = buff_C_2_we0_local;
assign buff_C_3_address0 = zext_ln20_reg_1830;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_3_d0 = bitcast_ln20_fu_1644_p1;
assign buff_C_3_we0 = buff_C_3_we0_local;
assign buff_C_4_address0 = zext_ln20_reg_1830;
assign buff_C_4_ce0 = buff_C_4_ce0_local;
assign buff_C_4_d0 = bitcast_ln20_1_fu_1663_p1;
assign buff_C_4_we0 = buff_C_4_we0_local;
assign buff_C_5_address0 = zext_ln20_reg_1830;
assign buff_C_5_ce0 = buff_C_5_ce0_local;
assign buff_C_5_d0 = bitcast_ln20_1_fu_1663_p1;
assign buff_C_5_we0 = buff_C_5_we0_local;
assign buff_C_6_address0 = zext_ln20_reg_1830;
assign buff_C_6_ce0 = buff_C_6_ce0_local;
assign buff_C_6_d0 = bitcast_ln20_1_fu_1663_p1;
assign buff_C_6_we0 = buff_C_6_we0_local;
assign buff_C_7_address0 = zext_ln20_reg_1830;
assign buff_C_7_ce0 = buff_C_7_ce0_local;
assign buff_C_7_d0 = bitcast_ln20_1_fu_1663_p1;
assign buff_C_7_we0 = buff_C_7_we0_local;
assign buff_C_8_address0 = zext_ln20_reg_1830;
assign buff_C_8_ce0 = buff_C_8_ce0_local;
assign buff_C_8_d0 = bitcast_ln20_2_fu_1682_p1;
assign buff_C_8_we0 = buff_C_8_we0_local;
assign buff_C_9_address0 = zext_ln20_reg_1830;
assign buff_C_9_ce0 = buff_C_9_ce0_local;
assign buff_C_9_d0 = bitcast_ln20_2_fu_1682_p1;
assign buff_C_9_we0 = buff_C_9_we0_local;
assign buff_C_address0 = zext_ln20_reg_1830;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_d0 = bitcast_ln20_fu_1644_p1;
assign buff_C_we0 = buff_C_we0_local;
assign buff_D_out_10_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_10_ce0 = buff_D_out_10_ce0_local;
assign buff_D_out_10_d0 = 32'd0;
assign buff_D_out_10_we0 = buff_D_out_10_we0_local;
assign buff_D_out_11_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_11_ce0 = buff_D_out_11_ce0_local;
assign buff_D_out_11_d0 = 32'd0;
assign buff_D_out_11_we0 = buff_D_out_11_we0_local;
assign buff_D_out_12_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_12_ce0 = buff_D_out_12_ce0_local;
assign buff_D_out_12_d0 = 32'd0;
assign buff_D_out_12_we0 = buff_D_out_12_we0_local;
assign buff_D_out_13_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_13_ce0 = buff_D_out_13_ce0_local;
assign buff_D_out_13_d0 = 32'd0;
assign buff_D_out_13_we0 = buff_D_out_13_we0_local;
assign buff_D_out_14_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_14_ce0 = buff_D_out_14_ce0_local;
assign buff_D_out_14_d0 = 32'd0;
assign buff_D_out_14_we0 = buff_D_out_14_we0_local;
assign buff_D_out_15_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_15_ce0 = buff_D_out_15_ce0_local;
assign buff_D_out_15_d0 = 32'd0;
assign buff_D_out_15_we0 = buff_D_out_15_we0_local;
assign buff_D_out_1_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_d0 = 32'd0;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_2_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_d0 = 32'd0;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_3_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_d0 = 32'd0;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_4_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_4_ce0 = buff_D_out_4_ce0_local;
assign buff_D_out_4_d0 = 32'd0;
assign buff_D_out_4_we0 = buff_D_out_4_we0_local;
assign buff_D_out_5_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_5_ce0 = buff_D_out_5_ce0_local;
assign buff_D_out_5_d0 = 32'd0;
assign buff_D_out_5_we0 = buff_D_out_5_we0_local;
assign buff_D_out_6_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_6_ce0 = buff_D_out_6_ce0_local;
assign buff_D_out_6_d0 = 32'd0;
assign buff_D_out_6_we0 = buff_D_out_6_we0_local;
assign buff_D_out_7_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_7_ce0 = buff_D_out_7_ce0_local;
assign buff_D_out_7_d0 = 32'd0;
assign buff_D_out_7_we0 = buff_D_out_7_we0_local;
assign buff_D_out_8_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_8_ce0 = buff_D_out_8_ce0_local;
assign buff_D_out_8_d0 = 32'd0;
assign buff_D_out_8_we0 = buff_D_out_8_we0_local;
assign buff_D_out_9_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_9_ce0 = buff_D_out_9_ce0_local;
assign buff_D_out_9_d0 = 32'd0;
assign buff_D_out_9_we0 = buff_D_out_9_we0_local;
assign buff_D_out_address0 = zext_ln20_fu_1581_p1;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_d0 = 32'd0;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign icmp_ln14_fu_1456_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign select_ln14_fu_1496_p3 = ((tmp_fu_1480_p3[0:0] == 1'b1) ? add_ln14_fu_1474_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_1488_p3 = ((tmp_fu_1480_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp1_10_address0 = zext_ln20_fu_1581_p1;
assign tmp1_10_ce0 = tmp1_10_ce0_local;
assign tmp1_10_d0 = 32'd0;
assign tmp1_10_we0 = tmp1_10_we0_local;
assign tmp1_11_address0 = zext_ln20_fu_1581_p1;
assign tmp1_11_ce0 = tmp1_11_ce0_local;
assign tmp1_11_d0 = 32'd0;
assign tmp1_11_we0 = tmp1_11_we0_local;
assign tmp1_12_address0 = zext_ln20_fu_1581_p1;
assign tmp1_12_ce0 = tmp1_12_ce0_local;
assign tmp1_12_d0 = 32'd0;
assign tmp1_12_we0 = tmp1_12_we0_local;
assign tmp1_13_address0 = zext_ln20_fu_1581_p1;
assign tmp1_13_ce0 = tmp1_13_ce0_local;
assign tmp1_13_d0 = 32'd0;
assign tmp1_13_we0 = tmp1_13_we0_local;
assign tmp1_14_address0 = zext_ln20_fu_1581_p1;
assign tmp1_14_ce0 = tmp1_14_ce0_local;
assign tmp1_14_d0 = 32'd0;
assign tmp1_14_we0 = tmp1_14_we0_local;
assign tmp1_15_address0 = zext_ln20_fu_1581_p1;
assign tmp1_15_ce0 = tmp1_15_ce0_local;
assign tmp1_15_d0 = 32'd0;
assign tmp1_15_we0 = tmp1_15_we0_local;
assign tmp1_1_address0 = zext_ln20_fu_1581_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = 32'd0;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = zext_ln20_fu_1581_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = 32'd0;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = zext_ln20_fu_1581_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = 32'd0;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = zext_ln20_fu_1581_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = 32'd0;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = zext_ln20_fu_1581_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = 32'd0;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = zext_ln20_fu_1581_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = 32'd0;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = zext_ln20_fu_1581_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = 32'd0;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_8_address0 = zext_ln20_fu_1581_p1;
assign tmp1_8_ce0 = tmp1_8_ce0_local;
assign tmp1_8_d0 = 32'd0;
assign tmp1_8_we0 = tmp1_8_we0_local;
assign tmp1_9_address0 = zext_ln20_fu_1581_p1;
assign tmp1_9_ce0 = tmp1_9_ce0_local;
assign tmp1_9_d0 = 32'd0;
assign tmp1_9_we0 = tmp1_9_we0_local;
assign tmp1_address0 = zext_ln20_fu_1581_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = 32'd0;
assign tmp1_we0 = tmp1_we0_local;
assign tmp2_10_address0 = zext_ln20_fu_1581_p1;
assign tmp2_10_ce0 = tmp2_10_ce0_local;
assign tmp2_10_d0 = 32'd0;
assign tmp2_10_we0 = tmp2_10_we0_local;
assign tmp2_11_address0 = zext_ln20_fu_1581_p1;
assign tmp2_11_ce0 = tmp2_11_ce0_local;
assign tmp2_11_d0 = 32'd0;
assign tmp2_11_we0 = tmp2_11_we0_local;
assign tmp2_12_address0 = zext_ln20_fu_1581_p1;
assign tmp2_12_ce0 = tmp2_12_ce0_local;
assign tmp2_12_d0 = 32'd0;
assign tmp2_12_we0 = tmp2_12_we0_local;
assign tmp2_13_address0 = zext_ln20_fu_1581_p1;
assign tmp2_13_ce0 = tmp2_13_ce0_local;
assign tmp2_13_d0 = 32'd0;
assign tmp2_13_we0 = tmp2_13_we0_local;
assign tmp2_14_address0 = zext_ln20_fu_1581_p1;
assign tmp2_14_ce0 = tmp2_14_ce0_local;
assign tmp2_14_d0 = 32'd0;
assign tmp2_14_we0 = tmp2_14_we0_local;
assign tmp2_15_address0 = zext_ln20_fu_1581_p1;
assign tmp2_15_ce0 = tmp2_15_ce0_local;
assign tmp2_15_d0 = 32'd0;
assign tmp2_15_we0 = tmp2_15_we0_local;
assign tmp2_1_address0 = zext_ln20_fu_1581_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_d0 = 32'd0;
assign tmp2_1_we0 = tmp2_1_we0_local;
assign tmp2_2_address0 = zext_ln20_fu_1581_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_d0 = 32'd0;
assign tmp2_2_we0 = tmp2_2_we0_local;
assign tmp2_3_address0 = zext_ln20_fu_1581_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_d0 = 32'd0;
assign tmp2_3_we0 = tmp2_3_we0_local;
assign tmp2_4_address0 = zext_ln20_fu_1581_p1;
assign tmp2_4_ce0 = tmp2_4_ce0_local;
assign tmp2_4_d0 = 32'd0;
assign tmp2_4_we0 = tmp2_4_we0_local;
assign tmp2_5_address0 = zext_ln20_fu_1581_p1;
assign tmp2_5_ce0 = tmp2_5_ce0_local;
assign tmp2_5_d0 = 32'd0;
assign tmp2_5_we0 = tmp2_5_we0_local;
assign tmp2_6_address0 = zext_ln20_fu_1581_p1;
assign tmp2_6_ce0 = tmp2_6_ce0_local;
assign tmp2_6_d0 = 32'd0;
assign tmp2_6_we0 = tmp2_6_we0_local;
assign tmp2_7_address0 = zext_ln20_fu_1581_p1;
assign tmp2_7_ce0 = tmp2_7_ce0_local;
assign tmp2_7_d0 = 32'd0;
assign tmp2_7_we0 = tmp2_7_we0_local;
assign tmp2_8_address0 = zext_ln20_fu_1581_p1;
assign tmp2_8_ce0 = tmp2_8_ce0_local;
assign tmp2_8_d0 = 32'd0;
assign tmp2_8_we0 = tmp2_8_we0_local;
assign tmp2_9_address0 = zext_ln20_fu_1581_p1;
assign tmp2_9_ce0 = tmp2_9_ce0_local;
assign tmp2_9_d0 = 32'd0;
assign tmp2_9_we0 = tmp2_9_we0_local;
assign tmp2_address0 = zext_ln20_fu_1581_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = 32'd0;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_8_fu_1575_p3 = {{tmp_7_reg_1749}, {lshr_ln5_2_reg_1743}};
assign tmp_fu_1480_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_1553_p3 = {{trunc_ln14_reg_1734}, {lshr_ln5_2_reg_1743}};
assign trunc_ln14_1_fu_1508_p1 = select_ln14_fu_1496_p3[1:0];
assign trunc_ln14_fu_1504_p1 = select_ln14_fu_1496_p3[5:0];
assign zext_ln16_fu_1559_p1 = tmp_s_fu_1553_p3;
assign zext_ln20_fu_1581_p1 = tmp_8_fu_1575_p3;
always @ (posedge ap_clk) begin
    zext_ln16_reg_1754[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln20_reg_1830[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 