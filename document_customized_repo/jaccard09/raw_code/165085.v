module forward_dataflow_in_loop_VITIS_LOOP_7283_1_Loop_VITIS_LOOP_6618_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i359_i,tmp,v4881_7_address0,v4881_7_ce0,v4881_7_q0,v4881_5_address0,v4881_5_ce0,v4881_5_q0,v4881_3_address0,v4881_3_ce0,v4881_3_q0,v4881_1_address0,v4881_1_ce0,v4881_1_q0,v4881_6_address0,v4881_6_ce0,v4881_6_q0,v4881_4_address0,v4881_4_ce0,v4881_4_q0,v4881_2_address0,v4881_2_ce0,v4881_2_q0,v4881_address0,v4881_ce0,v4881_q0,v4878_address0,v4878_ce0,v4878_we0,v4878_d0,v4878_1_address0,v4878_1_ce0,v4878_1_we0,v4878_1_d0,v4878_2_address0,v4878_2_ce0,v4878_2_we0,v4878_2_d0,v4878_3_address0,v4878_3_ce0,v4878_3_we0,v4878_3_d0,v4878_4_address0,v4878_4_ce0,v4878_4_we0,v4878_4_d0,v4878_5_address0,v4878_5_ce0,v4878_5_we0,v4878_5_d0,v4878_6_address0,v4878_6_ce0,v4878_6_we0,v4878_6_d0,v4878_7_address0,v4878_7_ce0,v4878_7_we0,v4878_7_d0,v4878_8_address0,v4878_8_ce0,v4878_8_we0,v4878_8_d0,v4878_9_address0,v4878_9_ce0,v4878_9_we0,v4878_9_d0,v4878_10_address0,v4878_10_ce0,v4878_10_we0,v4878_10_d0,v4878_11_address0,v4878_11_ce0,v4878_11_we0,v4878_11_d0,v4878_12_address0,v4878_12_ce0,v4878_12_we0,v4878_12_d0,v4878_13_address0,v4878_13_ce0,v4878_13_we0,v4878_13_d0,v4878_14_address0,v4878_14_ce0,v4878_14_we0,v4878_14_d0,v4878_15_address0,v4878_15_ce0,v4878_15_we0,v4878_15_d0,v4883_address0,v4883_ce0,v4883_we0,v4883_d0,v4883_address1,v4883_ce1,v4883_q1,v4883_1_address0,v4883_1_ce0,v4883_1_we0,v4883_1_d0,v4883_1_address1,v4883_1_ce1,v4883_1_q1,v4883_2_address0,v4883_2_ce0,v4883_2_we0,v4883_2_d0,v4883_2_address1,v4883_2_ce1,v4883_2_q1,v4883_3_address0,v4883_3_ce0,v4883_3_we0,v4883_3_d0,v4883_3_address1,v4883_3_ce1,v4883_3_q1,v4883_4_address0,v4883_4_ce0,v4883_4_we0,v4883_4_d0,v4883_4_address1,v4883_4_ce1,v4883_4_q1,v4883_5_address0,v4883_5_ce0,v4883_5_we0,v4883_5_d0,v4883_5_address1,v4883_5_ce1,v4883_5_q1,v4883_6_address0,v4883_6_ce0,v4883_6_we0,v4883_6_d0,v4883_6_address1,v4883_6_ce1,v4883_6_q1,v4883_7_address0,v4883_7_ce0,v4883_7_we0,v4883_7_d0,v4883_7_address1,v4883_7_ce1,v4883_7_q1,v4883_8_address0,v4883_8_ce0,v4883_8_we0,v4883_8_d0,v4883_8_address1,v4883_8_ce1,v4883_8_q1,v4883_9_address0,v4883_9_ce0,v4883_9_we0,v4883_9_d0,v4883_9_address1,v4883_9_ce1,v4883_9_q1,v4883_10_address0,v4883_10_ce0,v4883_10_we0,v4883_10_d0,v4883_10_address1,v4883_10_ce1,v4883_10_q1,v4883_11_address0,v4883_11_ce0,v4883_11_we0,v4883_11_d0,v4883_11_address1,v4883_11_ce1,v4883_11_q1,v4883_12_address0,v4883_12_ce0,v4883_12_we0,v4883_12_d0,v4883_12_address1,v4883_12_ce1,v4883_12_q1,v4883_13_address0,v4883_13_ce0,v4883_13_we0,v4883_13_d0,v4883_13_address1,v4883_13_ce1,v4883_13_q1,v4883_14_address0,v4883_14_ce0,v4883_14_we0,v4883_14_d0,v4883_14_address1,v4883_14_ce1,v4883_14_q1,v4883_15_address0,v4883_15_ce0,v4883_15_we0,v4883_15_d0,v4883_15_address1,v4883_15_ce1,v4883_15_q1,v4882_7_address0,v4882_7_ce0,v4882_7_q0,v4880_15_address0,v4880_15_ce0,v4880_15_q0,v4882_6_address0,v4882_6_ce0,v4882_6_q0,v4880_14_address0,v4880_14_ce0,v4880_14_q0,v4882_5_address0,v4882_5_ce0,v4882_5_q0,v4880_13_address0,v4880_13_ce0,v4880_13_q0,v4882_4_address0,v4882_4_ce0,v4882_4_q0,v4880_12_address0,v4880_12_ce0,v4880_12_q0,v4880_11_address0,v4880_11_ce0,v4880_11_q0,v4880_10_address0,v4880_10_ce0,v4880_10_q0,v4880_9_address0,v4880_9_ce0,v4880_9_q0,v4880_8_address0,v4880_8_ce0,v4880_8_q0,v4880_7_address0,v4880_7_ce0,v4880_7_q0,v4880_6_address0,v4880_6_ce0,v4880_6_q0,v4880_5_address0,v4880_5_ce0,v4880_5_q0,v4880_4_address0,v4880_4_ce0,v4880_4_q0,v4880_3_address0,v4880_3_ce0,v4880_3_q0,v4880_2_address0,v4880_2_ce0,v4880_2_q0,v4880_1_address0,v4880_1_ce0,v4880_1_q0,v4880_address0,v4880_ce0,v4880_q0,v4882_3_address0,v4882_3_ce0,v4882_3_q0,v4882_2_address0,v4882_2_ce0,v4882_2_q0,v4882_1_address0,v4882_1_ce0,v4882_1_q0,v4882_address0,v4882_ce0,v4882_q0,v4879_15_address0,v4879_15_ce0,v4879_15_q0,v4879_14_address0,v4879_14_ce0,v4879_14_q0,v4879_13_address0,v4879_13_ce0,v4879_13_q0,v4879_12_address0,v4879_12_ce0,v4879_12_q0,v4879_11_address0,v4879_11_ce0,v4879_11_q0,v4879_10_address0,v4879_10_ce0,v4879_10_q0,v4879_9_address0,v4879_9_ce0,v4879_9_q0,v4879_8_address0,v4879_8_ce0,v4879_8_q0,v4879_7_address0,v4879_7_ce0,v4879_7_q0,v4879_6_address0,v4879_6_ce0,v4879_6_q0,v4879_5_address0,v4879_5_ce0,v4879_5_q0,v4879_4_address0,v4879_4_ce0,v4879_4_q0,v4879_3_address0,v4879_3_ce0,v4879_3_q0,v4879_2_address0,v4879_2_ce0,v4879_2_q0,v4879_1_address0,v4879_1_ce0,v4879_1_q0,v4879_address0,v4879_ce0,v4879_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i359_i;
input  [0:0] tmp;
output  [6:0] v4881_7_address0;
output   v4881_7_ce0;
input  [7:0] v4881_7_q0;
output  [6:0] v4881_5_address0;
output   v4881_5_ce0;
input  [7:0] v4881_5_q0;
output  [6:0] v4881_3_address0;
output   v4881_3_ce0;
input  [7:0] v4881_3_q0;
output  [6:0] v4881_1_address0;
output   v4881_1_ce0;
input  [7:0] v4881_1_q0;
output  [6:0] v4881_6_address0;
output   v4881_6_ce0;
input  [7:0] v4881_6_q0;
output  [6:0] v4881_4_address0;
output   v4881_4_ce0;
input  [7:0] v4881_4_q0;
output  [6:0] v4881_2_address0;
output   v4881_2_ce0;
input  [7:0] v4881_2_q0;
output  [6:0] v4881_address0;
output   v4881_ce0;
input  [7:0] v4881_q0;
output  [8:0] v4878_address0;
output   v4878_ce0;
output   v4878_we0;
output  [7:0] v4878_d0;
output  [8:0] v4878_1_address0;
output   v4878_1_ce0;
output   v4878_1_we0;
output  [7:0] v4878_1_d0;
output  [8:0] v4878_2_address0;
output   v4878_2_ce0;
output   v4878_2_we0;
output  [7:0] v4878_2_d0;
output  [8:0] v4878_3_address0;
output   v4878_3_ce0;
output   v4878_3_we0;
output  [7:0] v4878_3_d0;
output  [8:0] v4878_4_address0;
output   v4878_4_ce0;
output   v4878_4_we0;
output  [7:0] v4878_4_d0;
output  [8:0] v4878_5_address0;
output   v4878_5_ce0;
output   v4878_5_we0;
output  [7:0] v4878_5_d0;
output  [8:0] v4878_6_address0;
output   v4878_6_ce0;
output   v4878_6_we0;
output  [7:0] v4878_6_d0;
output  [8:0] v4878_7_address0;
output   v4878_7_ce0;
output   v4878_7_we0;
output  [7:0] v4878_7_d0;
output  [8:0] v4878_8_address0;
output   v4878_8_ce0;
output   v4878_8_we0;
output  [7:0] v4878_8_d0;
output  [8:0] v4878_9_address0;
output   v4878_9_ce0;
output   v4878_9_we0;
output  [7:0] v4878_9_d0;
output  [8:0] v4878_10_address0;
output   v4878_10_ce0;
output   v4878_10_we0;
output  [7:0] v4878_10_d0;
output  [8:0] v4878_11_address0;
output   v4878_11_ce0;
output   v4878_11_we0;
output  [7:0] v4878_11_d0;
output  [8:0] v4878_12_address0;
output   v4878_12_ce0;
output   v4878_12_we0;
output  [7:0] v4878_12_d0;
output  [8:0] v4878_13_address0;
output   v4878_13_ce0;
output   v4878_13_we0;
output  [7:0] v4878_13_d0;
output  [8:0] v4878_14_address0;
output   v4878_14_ce0;
output   v4878_14_we0;
output  [7:0] v4878_14_d0;
output  [8:0] v4878_15_address0;
output   v4878_15_ce0;
output   v4878_15_we0;
output  [7:0] v4878_15_d0;
output  [8:0] v4883_address0;
output   v4883_ce0;
output   v4883_we0;
output  [7:0] v4883_d0;
output  [8:0] v4883_address1;
output   v4883_ce1;
input  [7:0] v4883_q1;
output  [8:0] v4883_1_address0;
output   v4883_1_ce0;
output   v4883_1_we0;
output  [7:0] v4883_1_d0;
output  [8:0] v4883_1_address1;
output   v4883_1_ce1;
input  [7:0] v4883_1_q1;
output  [8:0] v4883_2_address0;
output   v4883_2_ce0;
output   v4883_2_we0;
output  [7:0] v4883_2_d0;
output  [8:0] v4883_2_address1;
output   v4883_2_ce1;
input  [7:0] v4883_2_q1;
output  [8:0] v4883_3_address0;
output   v4883_3_ce0;
output   v4883_3_we0;
output  [7:0] v4883_3_d0;
output  [8:0] v4883_3_address1;
output   v4883_3_ce1;
input  [7:0] v4883_3_q1;
output  [8:0] v4883_4_address0;
output   v4883_4_ce0;
output   v4883_4_we0;
output  [7:0] v4883_4_d0;
output  [8:0] v4883_4_address1;
output   v4883_4_ce1;
input  [7:0] v4883_4_q1;
output  [8:0] v4883_5_address0;
output   v4883_5_ce0;
output   v4883_5_we0;
output  [7:0] v4883_5_d0;
output  [8:0] v4883_5_address1;
output   v4883_5_ce1;
input  [7:0] v4883_5_q1;
output  [8:0] v4883_6_address0;
output   v4883_6_ce0;
output   v4883_6_we0;
output  [7:0] v4883_6_d0;
output  [8:0] v4883_6_address1;
output   v4883_6_ce1;
input  [7:0] v4883_6_q1;
output  [8:0] v4883_7_address0;
output   v4883_7_ce0;
output   v4883_7_we0;
output  [7:0] v4883_7_d0;
output  [8:0] v4883_7_address1;
output   v4883_7_ce1;
input  [7:0] v4883_7_q1;
output  [8:0] v4883_8_address0;
output   v4883_8_ce0;
output   v4883_8_we0;
output  [7:0] v4883_8_d0;
output  [8:0] v4883_8_address1;
output   v4883_8_ce1;
input  [7:0] v4883_8_q1;
output  [8:0] v4883_9_address0;
output   v4883_9_ce0;
output   v4883_9_we0;
output  [7:0] v4883_9_d0;
output  [8:0] v4883_9_address1;
output   v4883_9_ce1;
input  [7:0] v4883_9_q1;
output  [8:0] v4883_10_address0;
output   v4883_10_ce0;
output   v4883_10_we0;
output  [7:0] v4883_10_d0;
output  [8:0] v4883_10_address1;
output   v4883_10_ce1;
input  [7:0] v4883_10_q1;
output  [8:0] v4883_11_address0;
output   v4883_11_ce0;
output   v4883_11_we0;
output  [7:0] v4883_11_d0;
output  [8:0] v4883_11_address1;
output   v4883_11_ce1;
input  [7:0] v4883_11_q1;
output  [8:0] v4883_12_address0;
output   v4883_12_ce0;
output   v4883_12_we0;
output  [7:0] v4883_12_d0;
output  [8:0] v4883_12_address1;
output   v4883_12_ce1;
input  [7:0] v4883_12_q1;
output  [8:0] v4883_13_address0;
output   v4883_13_ce0;
output   v4883_13_we0;
output  [7:0] v4883_13_d0;
output  [8:0] v4883_13_address1;
output   v4883_13_ce1;
input  [7:0] v4883_13_q1;
output  [8:0] v4883_14_address0;
output   v4883_14_ce0;
output   v4883_14_we0;
output  [7:0] v4883_14_d0;
output  [8:0] v4883_14_address1;
output   v4883_14_ce1;
input  [7:0] v4883_14_q1;
output  [8:0] v4883_15_address0;
output   v4883_15_ce0;
output   v4883_15_we0;
output  [7:0] v4883_15_d0;
output  [8:0] v4883_15_address1;
output   v4883_15_ce1;
input  [7:0] v4883_15_q1;
output  [9:0] v4882_7_address0;
output   v4882_7_ce0;
input  [7:0] v4882_7_q0;
output  [8:0] v4880_15_address0;
output   v4880_15_ce0;
input  [7:0] v4880_15_q0;
output  [9:0] v4882_6_address0;
output   v4882_6_ce0;
input  [7:0] v4882_6_q0;
output  [8:0] v4880_14_address0;
output   v4880_14_ce0;
input  [7:0] v4880_14_q0;
output  [9:0] v4882_5_address0;
output   v4882_5_ce0;
input  [7:0] v4882_5_q0;
output  [8:0] v4880_13_address0;
output   v4880_13_ce0;
input  [7:0] v4880_13_q0;
output  [9:0] v4882_4_address0;
output   v4882_4_ce0;
input  [7:0] v4882_4_q0;
output  [8:0] v4880_12_address0;
output   v4880_12_ce0;
input  [7:0] v4880_12_q0;
output  [8:0] v4880_11_address0;
output   v4880_11_ce0;
input  [7:0] v4880_11_q0;
output  [8:0] v4880_10_address0;
output   v4880_10_ce0;
input  [7:0] v4880_10_q0;
output  [8:0] v4880_9_address0;
output   v4880_9_ce0;
input  [7:0] v4880_9_q0;
output  [8:0] v4880_8_address0;
output   v4880_8_ce0;
input  [7:0] v4880_8_q0;
output  [8:0] v4880_7_address0;
output   v4880_7_ce0;
input  [7:0] v4880_7_q0;
output  [8:0] v4880_6_address0;
output   v4880_6_ce0;
input  [7:0] v4880_6_q0;
output  [8:0] v4880_5_address0;
output   v4880_5_ce0;
input  [7:0] v4880_5_q0;
output  [8:0] v4880_4_address0;
output   v4880_4_ce0;
input  [7:0] v4880_4_q0;
output  [8:0] v4880_3_address0;
output   v4880_3_ce0;
input  [7:0] v4880_3_q0;
output  [8:0] v4880_2_address0;
output   v4880_2_ce0;
input  [7:0] v4880_2_q0;
output  [8:0] v4880_1_address0;
output   v4880_1_ce0;
input  [7:0] v4880_1_q0;
output  [8:0] v4880_address0;
output   v4880_ce0;
input  [7:0] v4880_q0;
output  [9:0] v4882_3_address0;
output   v4882_3_ce0;
input  [7:0] v4882_3_q0;
output  [9:0] v4882_2_address0;
output   v4882_2_ce0;
input  [7:0] v4882_2_q0;
output  [9:0] v4882_1_address0;
output   v4882_1_ce0;
input  [7:0] v4882_1_q0;
output  [9:0] v4882_address0;
output   v4882_ce0;
input  [7:0] v4882_q0;
output  [8:0] v4879_15_address0;
output   v4879_15_ce0;
input  [7:0] v4879_15_q0;
output  [8:0] v4879_14_address0;
output   v4879_14_ce0;
input  [7:0] v4879_14_q0;
output  [8:0] v4879_13_address0;
output   v4879_13_ce0;
input  [7:0] v4879_13_q0;
output  [8:0] v4879_12_address0;
output   v4879_12_ce0;
input  [7:0] v4879_12_q0;
output  [8:0] v4879_11_address0;
output   v4879_11_ce0;
input  [7:0] v4879_11_q0;
output  [8:0] v4879_10_address0;
output   v4879_10_ce0;
input  [7:0] v4879_10_q0;
output  [8:0] v4879_9_address0;
output   v4879_9_ce0;
input  [7:0] v4879_9_q0;
output  [8:0] v4879_8_address0;
output   v4879_8_ce0;
input  [7:0] v4879_8_q0;
output  [8:0] v4879_7_address0;
output   v4879_7_ce0;
input  [7:0] v4879_7_q0;
output  [8:0] v4879_6_address0;
output   v4879_6_ce0;
input  [7:0] v4879_6_q0;
output  [8:0] v4879_5_address0;
output   v4879_5_ce0;
input  [7:0] v4879_5_q0;
output  [8:0] v4879_4_address0;
output   v4879_4_ce0;
input  [7:0] v4879_4_q0;
output  [8:0] v4879_3_address0;
output   v4879_3_ce0;
input  [7:0] v4879_3_q0;
output  [8:0] v4879_2_address0;
output   v4879_2_ce0;
input  [7:0] v4879_2_q0;
output  [8:0] v4879_1_address0;
output   v4879_1_ce0;
input  [7:0] v4879_1_q0;
output  [8:0] v4879_address0;
output   v4879_ce0;
input  [7:0] v4879_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6618_fu_1506_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln6620486_reg_1400;
reg   [0:0] icmp_ln6621485_reg_1411;
reg   [0:0] icmp_ln6622484_reg_1422;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] xor_ln6618_fu_1474_p2;
reg   [0:0] xor_ln6618_reg_2746;
wire   [0:0] icmp_ln6620_fu_1500_p2;
reg   [0:0] icmp_ln6620_reg_2752;
reg   [0:0] icmp_ln6618_reg_2757;
reg   [0:0] icmp_ln6618_reg_2757_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_1646_p4;
reg   [4:0] lshr_ln_reg_2761;
wire   [0:0] cmp33_i_i_fu_1674_p2;
reg   [0:0] cmp33_i_i_reg_2766;
reg   [0:0] cmp33_i_i_reg_2766_pp0_iter2_reg;
reg   [0:0] cmp33_i_i_reg_2766_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_reg_2766_pp0_iter4_reg;
reg   [0:0] cmp33_i_i_reg_2766_pp0_iter5_reg;
wire   [0:0] brmerge239_i_fu_1699_p2;
reg   [0:0] brmerge239_i_reg_2786;
reg   [0:0] brmerge239_i_reg_2786_pp0_iter2_reg;
reg   [0:0] brmerge239_i_reg_2786_pp0_iter3_reg;
reg   [0:0] brmerge239_i_reg_2786_pp0_iter4_reg;
reg   [0:0] brmerge239_i_reg_2786_pp0_iter5_reg;
reg   [0:0] brmerge239_i_reg_2786_pp0_iter6_reg;
reg   [2:0] lshr_ln46_reg_2790;
reg   [2:0] lshr_ln46_reg_2790_pp0_iter2_reg;
reg   [2:0] lshr_ln46_reg_2790_pp0_iter3_reg;
wire   [2:0] lshr_ln47_fu_1714_p4;
reg   [2:0] lshr_ln47_reg_2797;
reg   [2:0] lshr_ln47_reg_2797_pp0_iter2_reg;
reg   [2:0] lshr_ln47_reg_2797_pp0_iter3_reg;
wire   [7:0] add_ln6624_fu_1728_p2;
reg   [7:0] add_ln6624_reg_2802;
wire   [6:0] trunc_ln6624_fu_1734_p1;
reg   [6:0] trunc_ln6624_reg_2807;
reg   [2:0] lshr_ln48_reg_2812;
reg   [2:0] lshr_ln48_reg_2812_pp0_iter2_reg;
reg   [2:0] lshr_ln48_reg_2812_pp0_iter3_reg;
reg   [2:0] lshr_ln48_reg_2812_pp0_iter4_reg;
wire   [0:0] icmp_ln6622_fu_1771_p2;
reg   [0:0] icmp_ln6622_reg_2818;
wire   [0:0] icmp_ln6621_fu_1777_p2;
reg   [0:0] icmp_ln6621_reg_2823;
wire   [63:0] p_cast_fu_1824_p1;
reg   [63:0] p_cast_reg_2828;
wire   [63:0] zext_ln6624_3_fu_1857_p1;
reg   [63:0] zext_ln6624_3_reg_2856;
reg  signed [7:0] v4427_reg_2988;
reg  signed [7:0] v4463_reg_2996;
reg  signed [7:0] v4496_reg_3004;
reg  signed [7:0] v4529_reg_3012;
wire   [5:0] add_ln7039_fu_1884_p2;
reg   [5:0] add_ln7039_reg_3020;
reg  signed [7:0] v4426_reg_3026;
reg  signed [7:0] v4436_reg_3034;
reg  signed [7:0] v4445_reg_3042;
reg  signed [7:0] v4454_reg_3050;
wire   [63:0] zext_ln7039_6_fu_1915_p1;
reg   [63:0] zext_ln7039_6_reg_3058;
reg   [63:0] zext_ln7039_6_reg_3058_pp0_iter6_reg;
reg   [8:0] v4883_addr_reg_3078;
reg   [8:0] v4883_1_addr_reg_3084;
reg   [8:0] v4883_2_addr_reg_3090;
reg   [8:0] v4883_3_addr_reg_3096;
reg   [8:0] v4883_4_addr_reg_3102;
reg   [8:0] v4883_5_addr_reg_3108;
reg   [8:0] v4883_6_addr_reg_3114;
reg   [8:0] v4883_7_addr_reg_3120;
reg   [8:0] v4883_8_addr_reg_3126;
reg   [8:0] v4883_9_addr_reg_3132;
reg   [8:0] v4883_10_addr_reg_3138;
reg   [8:0] v4883_11_addr_reg_3144;
reg   [8:0] v4883_12_addr_reg_3150;
reg   [8:0] v4883_13_addr_reg_3156;
reg   [8:0] v4883_14_addr_reg_3162;
reg   [8:0] v4883_15_addr_reg_3168;
wire   [7:0] mul_ln6768_fu_1967_p2;
wire   [7:0] mul_ln6786_fu_1971_p2;
wire   [7:0] mul_ln6804_fu_1975_p2;
wire   [7:0] mul_ln6822_fu_1979_p2;
wire   [7:0] mul_ln6840_fu_1983_p2;
wire   [7:0] mul_ln6857_fu_1987_p2;
wire   [7:0] mul_ln6874_fu_1991_p2;
wire   [7:0] mul_ln6891_fu_1995_p2;
wire   [7:0] mul_ln6909_fu_1999_p2;
wire   [7:0] mul_ln6926_fu_2003_p2;
wire   [7:0] mul_ln6943_fu_2007_p2;
wire   [7:0] mul_ln6960_fu_2011_p2;
wire   [7:0] mul_ln6978_fu_2015_p2;
wire   [7:0] mul_ln6995_fu_2019_p2;
wire   [7:0] mul_ln7012_fu_2023_p2;
wire   [7:0] mul_ln7029_fu_2027_p2;
wire   [7:0] add_ln6773_fu_2239_p2;
reg   [7:0] add_ln6773_reg_3414;
wire   [7:0] v4589_fu_2245_p2;
reg   [7:0] v4589_reg_3420;
wire   [7:0] v4603_fu_2251_p2;
reg   [7:0] v4603_reg_3426;
wire   [7:0] v4617_fu_2257_p2;
reg   [7:0] v4617_reg_3432;
wire   [7:0] v4631_fu_2263_p2;
reg   [7:0] v4631_reg_3438;
wire   [7:0] v4644_fu_2269_p2;
reg   [7:0] v4644_reg_3444;
wire   [7:0] v4657_fu_2275_p2;
reg   [7:0] v4657_reg_3450;
wire   [7:0] v4670_fu_2281_p2;
reg   [7:0] v4670_reg_3456;
wire   [7:0] v4684_fu_2287_p2;
reg   [7:0] v4684_reg_3462;
wire   [7:0] v4697_fu_2293_p2;
reg   [7:0] v4697_reg_3468;
wire   [7:0] v4710_fu_2299_p2;
reg   [7:0] v4710_reg_3474;
wire   [7:0] v4723_fu_2305_p2;
reg   [7:0] v4723_reg_3480;
wire   [7:0] v4737_fu_2311_p2;
reg   [7:0] v4737_reg_3486;
wire   [7:0] v4750_fu_2317_p2;
reg   [7:0] v4750_reg_3492;
wire   [7:0] v4763_fu_2323_p2;
reg   [7:0] v4763_reg_3498;
wire   [7:0] v4776_fu_2329_p2;
reg   [7:0] v4776_reg_3504;
reg   [0:0] ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6621485_phi_fu_1415_p4;
reg   [0:0] ap_phi_mux_icmp_ln6622484_phi_fu_1426_p4;
reg   [12:0] indvar_flatten35477_fu_256;
wire   [12:0] add_ln6618_1_fu_1480_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten35477_load;
reg   [5:0] v4422478_fu_260;
wire   [5:0] v4422_fu_1558_p3;
reg   [9:0] indvar_flatten12479_fu_264;
wire   [9:0] select_ln6620_1_fu_1492_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12479_load;
reg   [5:0] v4423480_fu_268;
wire   [5:0] v4423_fu_1604_p3;
reg   [5:0] indvar_flatten481_fu_272;
wire   [5:0] select_ln6621_1_fu_1763_p3;
reg   [3:0] v4424482_fu_276;
wire   [3:0] v4424_fu_1638_p3;
reg   [3:0] v4425483_fu_280;
wire   [3:0] v4425_fu_1751_p2;
reg    v4881_6_ce0_local;
reg    v4881_4_ce0_local;
reg    v4881_2_ce0_local;
reg    v4881_ce0_local;
reg    v4882_3_ce0_local;
reg    v4882_2_ce0_local;
reg    v4882_1_ce0_local;
reg    v4882_ce0_local;
reg    v4881_7_ce0_local;
reg    v4881_5_ce0_local;
reg    v4881_3_ce0_local;
reg    v4881_1_ce0_local;
reg    v4882_7_ce0_local;
reg    v4882_6_ce0_local;
reg    v4882_5_ce0_local;
reg    v4882_4_ce0_local;
reg    v4880_15_ce0_local;
reg    v4883_15_ce1_local;
reg    v4883_15_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4570_fu_2143_p2;
reg    v4883_15_ce0_local;
reg    v4880_14_ce0_local;
reg    v4883_14_ce1_local;
reg    v4883_14_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4584_fu_2149_p2;
reg    v4883_14_ce0_local;
reg    v4880_13_ce0_local;
reg    v4883_13_ce1_local;
reg    v4883_13_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4598_fu_2155_p2;
reg    v4883_13_ce0_local;
reg    v4880_12_ce0_local;
reg    v4883_12_ce1_local;
reg    v4883_12_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4612_fu_2161_p2;
reg    v4883_12_ce0_local;
reg    v4880_11_ce0_local;
reg    v4883_11_ce1_local;
reg    v4883_11_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4626_fu_2167_p2;
reg    v4883_11_ce0_local;
reg    v4880_10_ce0_local;
reg    v4883_10_ce1_local;
reg    v4883_10_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4639_fu_2173_p2;
reg    v4883_10_ce0_local;
reg    v4880_9_ce0_local;
reg    v4883_9_ce1_local;
reg    v4883_9_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4652_fu_2179_p2;
reg    v4883_9_ce0_local;
reg    v4880_8_ce0_local;
reg    v4883_8_ce1_local;
reg    v4883_8_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4665_fu_2185_p2;
reg    v4883_8_ce0_local;
reg    v4880_7_ce0_local;
reg    v4883_7_ce1_local;
reg    v4883_7_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4679_fu_2191_p2;
reg    v4883_7_ce0_local;
reg    v4880_6_ce0_local;
reg    v4883_6_ce1_local;
reg    v4883_6_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4692_fu_2197_p2;
reg    v4883_6_ce0_local;
reg    v4880_5_ce0_local;
reg    v4883_5_ce1_local;
reg    v4883_5_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4705_fu_2203_p2;
reg    v4883_5_ce0_local;
reg    v4880_4_ce0_local;
reg    v4883_4_ce1_local;
reg    v4883_4_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4718_fu_2209_p2;
reg    v4883_4_ce0_local;
reg    v4880_3_ce0_local;
reg    v4883_3_ce1_local;
reg    v4883_3_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4732_fu_2215_p2;
reg    v4883_3_ce0_local;
reg    v4880_2_ce0_local;
reg    v4883_2_ce1_local;
reg    v4883_2_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4745_fu_2221_p2;
reg    v4883_2_ce0_local;
reg    v4880_1_ce0_local;
reg    v4883_1_ce1_local;
reg    v4883_1_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4758_fu_2227_p2;
reg    v4883_1_ce0_local;
reg    v4880_ce0_local;
reg    v4883_ce1_local;
reg    v4883_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4771_fu_2233_p2;
reg    v4883_ce0_local;
reg    v4879_15_ce0_local;
reg    v4879_14_ce0_local;
reg    v4879_13_ce0_local;
reg    v4879_12_ce0_local;
reg    v4879_11_ce0_local;
reg    v4879_10_ce0_local;
reg    v4879_9_ce0_local;
reg    v4879_8_ce0_local;
reg    v4879_7_ce0_local;
reg    v4879_6_ce0_local;
reg    v4879_5_ce0_local;
reg    v4879_4_ce0_local;
reg    v4879_3_ce0_local;
reg    v4879_2_ce0_local;
reg    v4879_1_ce0_local;
reg    v4879_ce0_local;
reg    v4878_15_we0_local;
wire   [7:0] select_ln6776_fu_2340_p3;
reg    v4878_15_ce0_local;
reg    v4878_14_we0_local;
wire   [7:0] v4591_1_fu_2353_p3;
reg    v4878_14_ce0_local;
reg    v4878_13_we0_local;
wire   [7:0] v4605_1_fu_2366_p3;
reg    v4878_13_ce0_local;
reg    v4878_12_we0_local;
wire   [7:0] v4619_1_fu_2379_p3;
reg    v4878_12_ce0_local;
reg    v4878_11_we0_local;
wire   [7:0] v4633_1_fu_2392_p3;
reg    v4878_11_ce0_local;
reg    v4878_10_we0_local;
wire   [7:0] v4646_1_fu_2405_p3;
reg    v4878_10_ce0_local;
reg    v4878_9_we0_local;
wire   [7:0] v4659_1_fu_2418_p3;
reg    v4878_9_ce0_local;
reg    v4878_8_we0_local;
wire   [7:0] v4672_1_fu_2431_p3;
reg    v4878_8_ce0_local;
reg    v4878_7_we0_local;
wire   [7:0] v4686_1_fu_2444_p3;
reg    v4878_7_ce0_local;
reg    v4878_6_we0_local;
wire   [7:0] v4699_1_fu_2457_p3;
reg    v4878_6_ce0_local;
reg    v4878_5_we0_local;
wire   [7:0] v4712_1_fu_2470_p3;
reg    v4878_5_ce0_local;
reg    v4878_4_we0_local;
wire   [7:0] v4725_1_fu_2483_p3;
reg    v4878_4_ce0_local;
reg    v4878_3_we0_local;
wire   [7:0] v4739_1_fu_2496_p3;
reg    v4878_3_ce0_local;
reg    v4878_2_we0_local;
wire   [7:0] v4752_1_fu_2509_p3;
reg    v4878_2_ce0_local;
reg    v4878_1_we0_local;
wire   [7:0] v4765_1_fu_2522_p3;
reg    v4878_1_ce0_local;
reg    v4878_we0_local;
wire   [7:0] v4778_1_fu_2535_p3;
reg    v4878_ce0_local;
wire   [9:0] add_ln6620_1_fu_1486_p2;
wire   [5:0] add_ln6618_fu_1534_p2;
wire   [5:0] select_ln6618_fu_1540_p3;
wire   [0:0] and_ln6618_1_fu_1553_p2;
wire   [0:0] empty_fu_1572_p2;
wire   [0:0] exitcond_flatten_not_fu_1586_p2;
wire   [0:0] and_ln6618_fu_1548_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_1592_p2;
wire   [5:0] add_ln6620_fu_1566_p2;
wire   [3:0] v4424_mid26_fu_1578_p3;
wire   [0:0] icmp_ln6622_mid211_fu_1598_p2;
wire   [0:0] empty_240_fu_1618_p2;
wire   [0:0] empty_241_fu_1624_p2;
wire   [3:0] add_ln6621_fu_1612_p2;
wire   [7:0] p_shl22_fu_1660_p3;
wire   [7:0] zext_ln6624_1_fu_1656_p1;
wire   [4:0] empty_242_fu_1680_p1;
wire   [7:0] v4422_cast12_cast_i_fu_1684_p1;
wire   [7:0] empty_243_fu_1688_p2;
wire   [0:0] cmp485_i_not_i_fu_1693_p2;
wire   [7:0] sub_ln6624_fu_1668_p2;
wire   [7:0] zext_ln7039_1_fu_1724_p1;
wire   [3:0] v4425_mid2_fu_1630_p3;
wire   [5:0] add_ln6621_1_fu_1757_p2;
wire   [6:0] tmp_s_fu_1811_p3;
wire   [6:0] zext_ln6624_fu_1808_p1;
wire   [6:0] empty_244_fu_1818_p2;
wire   [9:0] tmp_156_fu_1832_p3;
wire   [9:0] zext_ln6624_2_fu_1839_p1;
wire   [9:0] sub_ln6623_fu_1842_p2;
wire   [9:0] zext_ln7039_4_fu_1848_p1;
wire   [9:0] add_ln6624_1_fu_1851_p2;
wire   [5:0] p_shl21_fu_1868_p3;
wire   [5:0] zext_ln7039_fu_1865_p1;
wire   [5:0] sub_ln7039_fu_1875_p2;
wire   [5:0] zext_ln7039_2_fu_1881_p1;
wire   [8:0] p_shl20_fu_1893_p3;
wire   [8:0] zext_ln7039_3_fu_1890_p1;
wire   [8:0] sub_ln7039_1_fu_1900_p2;
wire   [8:0] zext_ln7039_5_fu_1906_p1;
wire   [8:0] add_ln7039_1_fu_1909_p2;
wire  signed [7:0] v4570_fu_2143_p0;
wire   [7:0] grp_fu_2543_p3;
wire   [7:0] v4430_fu_2031_p3;
wire  signed [7:0] v4584_fu_2149_p0;
wire   [7:0] grp_fu_2552_p3;
wire   [7:0] v4439_fu_2038_p3;
wire  signed [7:0] v4598_fu_2155_p0;
wire   [7:0] grp_fu_2561_p3;
wire   [7:0] v4448_fu_2045_p3;
wire  signed [7:0] v4612_fu_2161_p0;
wire   [7:0] grp_fu_2570_p3;
wire   [7:0] v4457_fu_2052_p3;
wire  signed [7:0] v4626_fu_2167_p0;
wire   [7:0] grp_fu_2579_p3;
wire   [7:0] v4466_fu_2059_p3;
wire  signed [7:0] v4639_fu_2173_p0;
wire   [7:0] grp_fu_2588_p3;
wire   [7:0] v4474_fu_2066_p3;
wire  signed [7:0] v4652_fu_2179_p0;
wire   [7:0] grp_fu_2597_p3;
wire   [7:0] v4482_fu_2073_p3;
wire  signed [7:0] v4665_fu_2185_p0;
wire   [7:0] grp_fu_2606_p3;
wire   [7:0] v4490_fu_2080_p3;
wire  signed [7:0] v4679_fu_2191_p0;
wire   [7:0] grp_fu_2615_p3;
wire   [7:0] v4499_fu_2087_p3;
wire  signed [7:0] v4692_fu_2197_p0;
wire   [7:0] grp_fu_2624_p3;
wire   [7:0] v4507_fu_2094_p3;
wire  signed [7:0] v4705_fu_2203_p0;
wire   [7:0] grp_fu_2633_p3;
wire   [7:0] v4515_fu_2101_p3;
wire  signed [7:0] v4718_fu_2209_p0;
wire   [7:0] grp_fu_2642_p3;
wire   [7:0] v4523_fu_2108_p3;
wire  signed [7:0] v4732_fu_2215_p0;
wire   [7:0] grp_fu_2651_p3;
wire   [7:0] v4532_fu_2115_p3;
wire  signed [7:0] v4745_fu_2221_p0;
wire   [7:0] grp_fu_2660_p3;
wire   [7:0] v4540_fu_2122_p3;
wire  signed [7:0] v4758_fu_2227_p0;
wire   [7:0] grp_fu_2669_p3;
wire   [7:0] v4548_fu_2129_p3;
wire  signed [7:0] v4771_fu_2233_p0;
wire   [7:0] grp_fu_2678_p3;
wire   [7:0] v4556_fu_2136_p3;
wire   [0:0] icmp_ln6775_fu_2335_p2;
wire   [0:0] v4590_fu_2348_p2;
wire   [0:0] v4604_fu_2361_p2;
wire   [0:0] v4618_fu_2374_p2;
wire   [0:0] v4632_fu_2387_p2;
wire   [0:0] v4645_fu_2400_p2;
wire   [0:0] v4658_fu_2413_p2;
wire   [0:0] v4671_fu_2426_p2;
wire   [0:0] v4685_fu_2439_p2;
wire   [0:0] v4698_fu_2452_p2;
wire   [0:0] v4711_fu_2465_p2;
wire   [0:0] v4724_fu_2478_p2;
wire   [0:0] v4738_fu_2491_p2;
wire   [0:0] v4751_fu_2504_p2;
wire   [0:0] v4764_fu_2517_p2;
wire   [0:0] v4777_fu_2530_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2111;
reg    ap_condition_2116;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 indvar_flatten35477_fu_256 = 13'd0;
#0 v4422478_fu_260 = 6'd0;
#0 indvar_flatten12479_fu_264 = 10'd0;
#0 v4423480_fu_268 = 6'd0;
#0 indvar_flatten481_fu_272 = 6'd0;
#0 v4424482_fu_276 = 4'd0;
#0 v4425483_fu_280 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6846(.din0(v4426_reg_3026),.din1(v4427_reg_2988),.dout(mul_ln6768_fu_1967_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6847(.din0(v4436_reg_3034),.din1(v4427_reg_2988),.dout(mul_ln6786_fu_1971_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6848(.din0(v4445_reg_3042),.din1(v4427_reg_2988),.dout(mul_ln6804_fu_1975_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6849(.din0(v4454_reg_3050),.din1(v4427_reg_2988),.dout(mul_ln6822_fu_1979_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6850(.din0(v4426_reg_3026),.din1(v4463_reg_2996),.dout(mul_ln6840_fu_1983_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6851(.din0(v4436_reg_3034),.din1(v4463_reg_2996),.dout(mul_ln6857_fu_1987_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6852(.din0(v4445_reg_3042),.din1(v4463_reg_2996),.dout(mul_ln6874_fu_1991_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6853(.din0(v4454_reg_3050),.din1(v4463_reg_2996),.dout(mul_ln6891_fu_1995_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6854(.din0(v4426_reg_3026),.din1(v4496_reg_3004),.dout(mul_ln6909_fu_1999_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6855(.din0(v4436_reg_3034),.din1(v4496_reg_3004),.dout(mul_ln6926_fu_2003_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6856(.din0(v4445_reg_3042),.din1(v4496_reg_3004),.dout(mul_ln6943_fu_2007_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6857(.din0(v4454_reg_3050),.din1(v4496_reg_3004),.dout(mul_ln6960_fu_2011_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6858(.din0(v4426_reg_3026),.din1(v4529_reg_3012),.dout(mul_ln6978_fu_2015_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6859(.din0(v4436_reg_3034),.din1(v4529_reg_3012),.dout(mul_ln6995_fu_2019_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6860(.din0(v4445_reg_3042),.din1(v4529_reg_3012),.dout(mul_ln7012_fu_2023_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6861(.din0(v4454_reg_3050),.din1(v4529_reg_3012),.dout(mul_ln7029_fu_2027_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6862(.clk(ap_clk),.reset(ap_rst),.din0(v4882_3_q0),.din1(v4881_6_q0),.din2(mul_ln6768_fu_1967_p2),.ce(1'b1),.dout(grp_fu_2543_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6863(.clk(ap_clk),.reset(ap_rst),.din0(v4882_2_q0),.din1(v4881_6_q0),.din2(mul_ln6786_fu_1971_p2),.ce(1'b1),.dout(grp_fu_2552_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6864(.clk(ap_clk),.reset(ap_rst),.din0(v4882_1_q0),.din1(v4881_6_q0),.din2(mul_ln6804_fu_1975_p2),.ce(1'b1),.dout(grp_fu_2561_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6865(.clk(ap_clk),.reset(ap_rst),.din0(v4882_q0),.din1(v4881_6_q0),.din2(mul_ln6822_fu_1979_p2),.ce(1'b1),.dout(grp_fu_2570_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6866(.clk(ap_clk),.reset(ap_rst),.din0(v4882_3_q0),.din1(v4881_4_q0),.din2(mul_ln6840_fu_1983_p2),.ce(1'b1),.dout(grp_fu_2579_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6867(.clk(ap_clk),.reset(ap_rst),.din0(v4882_2_q0),.din1(v4881_4_q0),.din2(mul_ln6857_fu_1987_p2),.ce(1'b1),.dout(grp_fu_2588_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6868(.clk(ap_clk),.reset(ap_rst),.din0(v4882_1_q0),.din1(v4881_4_q0),.din2(mul_ln6874_fu_1991_p2),.ce(1'b1),.dout(grp_fu_2597_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6869(.clk(ap_clk),.reset(ap_rst),.din0(v4882_q0),.din1(v4881_4_q0),.din2(mul_ln6891_fu_1995_p2),.ce(1'b1),.dout(grp_fu_2606_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6870(.clk(ap_clk),.reset(ap_rst),.din0(v4882_3_q0),.din1(v4881_2_q0),.din2(mul_ln6909_fu_1999_p2),.ce(1'b1),.dout(grp_fu_2615_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6871(.clk(ap_clk),.reset(ap_rst),.din0(v4882_2_q0),.din1(v4881_2_q0),.din2(mul_ln6926_fu_2003_p2),.ce(1'b1),.dout(grp_fu_2624_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6872(.clk(ap_clk),.reset(ap_rst),.din0(v4882_1_q0),.din1(v4881_2_q0),.din2(mul_ln6943_fu_2007_p2),.ce(1'b1),.dout(grp_fu_2633_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6873(.clk(ap_clk),.reset(ap_rst),.din0(v4882_q0),.din1(v4881_2_q0),.din2(mul_ln6960_fu_2011_p2),.ce(1'b1),.dout(grp_fu_2642_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6874(.clk(ap_clk),.reset(ap_rst),.din0(v4882_3_q0),.din1(v4881_q0),.din2(mul_ln6978_fu_2015_p2),.ce(1'b1),.dout(grp_fu_2651_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6875(.clk(ap_clk),.reset(ap_rst),.din0(v4882_2_q0),.din1(v4881_q0),.din2(mul_ln6995_fu_2019_p2),.ce(1'b1),.dout(grp_fu_2660_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6876(.clk(ap_clk),.reset(ap_rst),.din0(v4882_1_q0),.din1(v4881_q0),.din2(mul_ln7012_fu_2023_p2),.ce(1'b1),.dout(grp_fu_2669_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6877(.clk(ap_clk),.reset(ap_rst),.din0(v4882_q0),.din1(v4881_q0),.din2(mul_ln7029_fu_2027_p2),.ce(1'b1),.dout(grp_fu_2678_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_2116)) begin
            icmp_ln6620486_reg_1400 <= icmp_ln6620_reg_2752;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln6620486_reg_1400 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln6618_reg_2757_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln6621485_reg_1411 <= icmp_ln6621_reg_2823;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6621485_reg_1411 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln6618_reg_2757_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln6622484_reg_1422 <= icmp_ln6622_reg_2818;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6622484_reg_1422 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12479_fu_264 <= select_ln6620_1_fu_1492_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12479_fu_264 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten35477_fu_256 <= add_ln6618_1_fu_1480_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35477_fu_256 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten481_fu_272 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten481_fu_272 <= select_ln6621_1_fu_1763_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4422478_fu_260 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4422478_fu_260 <= v4422_fu_1558_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4423480_fu_268 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4423480_fu_268 <= v4423_fu_1604_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4424482_fu_276 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4424482_fu_276 <= v4424_fu_1638_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4425483_fu_280 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4425483_fu_280 <= v4425_fu_1751_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6624_reg_2802 <= add_ln6624_fu_1728_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge239_i_reg_2786 <= brmerge239_i_fu_1699_p2;
        cmp33_i_i_reg_2766 <= cmp33_i_i_fu_1674_p2;
        icmp_ln6618_reg_2757 <= icmp_ln6618_fu_1506_p2;
        icmp_ln6618_reg_2757_pp0_iter1_reg <= icmp_ln6618_reg_2757;
        lshr_ln46_reg_2790 <= {{v4423_fu_1604_p3[4:2]}};
        lshr_ln47_reg_2797 <= {{v4424_fu_1638_p3[3:1]}};
        lshr_ln48_reg_2812 <= {{v4425_mid2_fu_1630_p3[3:1]}};
        lshr_ln_reg_2761 <= {{v4422_fu_1558_p3[5:1]}};
        trunc_ln6624_reg_2807 <= trunc_ln6624_fu_1734_p1;
        xor_ln6618_reg_2746 <= xor_ln6618_fu_1474_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6773_reg_3414 <= add_ln6773_fu_2239_p2;
        add_ln7039_reg_3020 <= add_ln7039_fu_1884_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        brmerge239_i_reg_2786_pp0_iter2_reg <= brmerge239_i_reg_2786;
        brmerge239_i_reg_2786_pp0_iter3_reg <= brmerge239_i_reg_2786_pp0_iter2_reg;
        brmerge239_i_reg_2786_pp0_iter4_reg <= brmerge239_i_reg_2786_pp0_iter3_reg;
        brmerge239_i_reg_2786_pp0_iter5_reg <= brmerge239_i_reg_2786_pp0_iter4_reg;
        brmerge239_i_reg_2786_pp0_iter6_reg <= brmerge239_i_reg_2786_pp0_iter5_reg;
        cmp33_i_i_reg_2766_pp0_iter2_reg <= cmp33_i_i_reg_2766;
        cmp33_i_i_reg_2766_pp0_iter3_reg <= cmp33_i_i_reg_2766_pp0_iter2_reg;
        cmp33_i_i_reg_2766_pp0_iter4_reg <= cmp33_i_i_reg_2766_pp0_iter3_reg;
        cmp33_i_i_reg_2766_pp0_iter5_reg <= cmp33_i_i_reg_2766_pp0_iter4_reg;
        lshr_ln46_reg_2790_pp0_iter2_reg <= lshr_ln46_reg_2790;
        lshr_ln46_reg_2790_pp0_iter3_reg <= lshr_ln46_reg_2790_pp0_iter2_reg;
        lshr_ln47_reg_2797_pp0_iter2_reg <= lshr_ln47_reg_2797;
        lshr_ln47_reg_2797_pp0_iter3_reg <= lshr_ln47_reg_2797_pp0_iter2_reg;
        lshr_ln48_reg_2812_pp0_iter2_reg <= lshr_ln48_reg_2812;
        lshr_ln48_reg_2812_pp0_iter3_reg <= lshr_ln48_reg_2812_pp0_iter2_reg;
        lshr_ln48_reg_2812_pp0_iter4_reg <= lshr_ln48_reg_2812_pp0_iter3_reg;
        p_cast_reg_2828[6 : 0] <= p_cast_fu_1824_p1[6 : 0];
        v4426_reg_3026 <= v4882_7_q0;
        v4427_reg_2988 <= v4881_7_q0;
        v4436_reg_3034 <= v4882_6_q0;
        v4445_reg_3042 <= v4882_5_q0;
        v4454_reg_3050 <= v4882_4_q0;
        v4463_reg_2996 <= v4881_5_q0;
        v4496_reg_3004 <= v4881_3_q0;
        v4529_reg_3012 <= v4881_1_q0;
        v4589_reg_3420 <= v4589_fu_2245_p2;
        v4603_reg_3426 <= v4603_fu_2251_p2;
        v4617_reg_3432 <= v4617_fu_2257_p2;
        v4631_reg_3438 <= v4631_fu_2263_p2;
        v4644_reg_3444 <= v4644_fu_2269_p2;
        v4657_reg_3450 <= v4657_fu_2275_p2;
        v4670_reg_3456 <= v4670_fu_2281_p2;
        v4684_reg_3462 <= v4684_fu_2287_p2;
        v4697_reg_3468 <= v4697_fu_2293_p2;
        v4710_reg_3474 <= v4710_fu_2299_p2;
        v4723_reg_3480 <= v4723_fu_2305_p2;
        v4737_reg_3486 <= v4737_fu_2311_p2;
        v4750_reg_3492 <= v4750_fu_2317_p2;
        v4763_reg_3498 <= v4763_fu_2323_p2;
        v4776_reg_3504 <= v4776_fu_2329_p2;
        v4883_10_addr_reg_3138 <= zext_ln7039_6_fu_1915_p1;
        v4883_11_addr_reg_3144 <= zext_ln7039_6_fu_1915_p1;
        v4883_12_addr_reg_3150 <= zext_ln7039_6_fu_1915_p1;
        v4883_13_addr_reg_3156 <= zext_ln7039_6_fu_1915_p1;
        v4883_14_addr_reg_3162 <= zext_ln7039_6_fu_1915_p1;
        v4883_15_addr_reg_3168 <= zext_ln7039_6_fu_1915_p1;
        v4883_1_addr_reg_3084 <= zext_ln7039_6_fu_1915_p1;
        v4883_2_addr_reg_3090 <= zext_ln7039_6_fu_1915_p1;
        v4883_3_addr_reg_3096 <= zext_ln7039_6_fu_1915_p1;
        v4883_4_addr_reg_3102 <= zext_ln7039_6_fu_1915_p1;
        v4883_5_addr_reg_3108 <= zext_ln7039_6_fu_1915_p1;
        v4883_6_addr_reg_3114 <= zext_ln7039_6_fu_1915_p1;
        v4883_7_addr_reg_3120 <= zext_ln7039_6_fu_1915_p1;
        v4883_8_addr_reg_3126 <= zext_ln7039_6_fu_1915_p1;
        v4883_9_addr_reg_3132 <= zext_ln7039_6_fu_1915_p1;
        v4883_addr_reg_3078 <= zext_ln7039_6_fu_1915_p1;
        zext_ln6624_3_reg_2856[9 : 0] <= zext_ln6624_3_fu_1857_p1[9 : 0];
        zext_ln7039_6_reg_3058[8 : 0] <= zext_ln7039_6_fu_1915_p1[8 : 0];
        zext_ln7039_6_reg_3058_pp0_iter6_reg[8 : 0] <= zext_ln7039_6_reg_3058[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6620_reg_2752 <= icmp_ln6620_fu_1500_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6621_reg_2823 <= icmp_ln6621_fu_1777_p2;
        icmp_ln6622_reg_2818 <= icmp_ln6622_fu_1771_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6618_fu_1506_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_2111)) begin
            ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4 = icmp_ln6620_reg_2752;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4 = icmp_ln6620_reg_2752;
        end
    end else begin
        ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4 = icmp_ln6620_reg_2752;
    end
end
always @ (*) begin
    if (((icmp_ln6618_reg_2757_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln6621485_phi_fu_1415_p4 = icmp_ln6621_reg_2823;
    end else begin
        ap_phi_mux_icmp_ln6621485_phi_fu_1415_p4 = icmp_ln6621485_reg_1411;
    end
end
always @ (*) begin
    if (((icmp_ln6618_reg_2757_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln6622484_phi_fu_1426_p4 = icmp_ln6622_reg_2818;
    end else begin
        ap_phi_mux_icmp_ln6622484_phi_fu_1426_p4 = icmp_ln6622484_reg_1422;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12479_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12479_load = indvar_flatten12479_fu_264;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35477_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35477_load = indvar_flatten35477_fu_256;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_10_ce0_local = 1'b1;
    end else begin
        v4878_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_10_we0_local = 1'b1;
    end else begin
        v4878_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_11_ce0_local = 1'b1;
    end else begin
        v4878_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_11_we0_local = 1'b1;
    end else begin
        v4878_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_12_ce0_local = 1'b1;
    end else begin
        v4878_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_12_we0_local = 1'b1;
    end else begin
        v4878_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_13_ce0_local = 1'b1;
    end else begin
        v4878_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_13_we0_local = 1'b1;
    end else begin
        v4878_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_14_ce0_local = 1'b1;
    end else begin
        v4878_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_14_we0_local = 1'b1;
    end else begin
        v4878_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_15_ce0_local = 1'b1;
    end else begin
        v4878_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_15_we0_local = 1'b1;
    end else begin
        v4878_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_1_ce0_local = 1'b1;
    end else begin
        v4878_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_1_we0_local = 1'b1;
    end else begin
        v4878_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_2_ce0_local = 1'b1;
    end else begin
        v4878_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_2_we0_local = 1'b1;
    end else begin
        v4878_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_3_ce0_local = 1'b1;
    end else begin
        v4878_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_3_we0_local = 1'b1;
    end else begin
        v4878_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_4_ce0_local = 1'b1;
    end else begin
        v4878_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_4_we0_local = 1'b1;
    end else begin
        v4878_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_5_ce0_local = 1'b1;
    end else begin
        v4878_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_5_we0_local = 1'b1;
    end else begin
        v4878_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_6_ce0_local = 1'b1;
    end else begin
        v4878_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_6_we0_local = 1'b1;
    end else begin
        v4878_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_7_ce0_local = 1'b1;
    end else begin
        v4878_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_7_we0_local = 1'b1;
    end else begin
        v4878_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_8_ce0_local = 1'b1;
    end else begin
        v4878_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_8_we0_local = 1'b1;
    end else begin
        v4878_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_9_ce0_local = 1'b1;
    end else begin
        v4878_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_9_we0_local = 1'b1;
    end else begin
        v4878_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_ce0_local = 1'b1;
    end else begin
        v4878_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((brmerge239_i_reg_2786_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v4878_we0_local = 1'b1;
    end else begin
        v4878_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_10_ce0_local = 1'b1;
    end else begin
        v4879_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_11_ce0_local = 1'b1;
    end else begin
        v4879_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_12_ce0_local = 1'b1;
    end else begin
        v4879_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_13_ce0_local = 1'b1;
    end else begin
        v4879_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_14_ce0_local = 1'b1;
    end else begin
        v4879_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_15_ce0_local = 1'b1;
    end else begin
        v4879_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_1_ce0_local = 1'b1;
    end else begin
        v4879_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_2_ce0_local = 1'b1;
    end else begin
        v4879_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_3_ce0_local = 1'b1;
    end else begin
        v4879_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_4_ce0_local = 1'b1;
    end else begin
        v4879_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_5_ce0_local = 1'b1;
    end else begin
        v4879_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_6_ce0_local = 1'b1;
    end else begin
        v4879_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_7_ce0_local = 1'b1;
    end else begin
        v4879_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_8_ce0_local = 1'b1;
    end else begin
        v4879_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_9_ce0_local = 1'b1;
    end else begin
        v4879_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4879_ce0_local = 1'b1;
    end else begin
        v4879_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_10_ce0_local = 1'b1;
    end else begin
        v4880_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_11_ce0_local = 1'b1;
    end else begin
        v4880_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_12_ce0_local = 1'b1;
    end else begin
        v4880_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_13_ce0_local = 1'b1;
    end else begin
        v4880_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_14_ce0_local = 1'b1;
    end else begin
        v4880_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_15_ce0_local = 1'b1;
    end else begin
        v4880_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_1_ce0_local = 1'b1;
    end else begin
        v4880_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_2_ce0_local = 1'b1;
    end else begin
        v4880_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_3_ce0_local = 1'b1;
    end else begin
        v4880_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_4_ce0_local = 1'b1;
    end else begin
        v4880_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_5_ce0_local = 1'b1;
    end else begin
        v4880_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_6_ce0_local = 1'b1;
    end else begin
        v4880_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_7_ce0_local = 1'b1;
    end else begin
        v4880_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_8_ce0_local = 1'b1;
    end else begin
        v4880_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_9_ce0_local = 1'b1;
    end else begin
        v4880_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4880_ce0_local = 1'b1;
    end else begin
        v4880_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_1_ce0_local = 1'b1;
    end else begin
        v4881_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_2_ce0_local = 1'b1;
    end else begin
        v4881_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_3_ce0_local = 1'b1;
    end else begin
        v4881_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_4_ce0_local = 1'b1;
    end else begin
        v4881_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_5_ce0_local = 1'b1;
    end else begin
        v4881_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_6_ce0_local = 1'b1;
    end else begin
        v4881_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_7_ce0_local = 1'b1;
    end else begin
        v4881_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_ce0_local = 1'b1;
    end else begin
        v4881_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_1_ce0_local = 1'b1;
    end else begin
        v4882_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_2_ce0_local = 1'b1;
    end else begin
        v4882_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_3_ce0_local = 1'b1;
    end else begin
        v4882_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_4_ce0_local = 1'b1;
    end else begin
        v4882_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_5_ce0_local = 1'b1;
    end else begin
        v4882_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_6_ce0_local = 1'b1;
    end else begin
        v4882_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4882_7_ce0_local = 1'b1;
    end else begin
        v4882_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4882_ce0_local = 1'b1;
    end else begin
        v4882_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_10_ce0_local = 1'b1;
    end else begin
        v4883_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_10_ce1_local = 1'b1;
    end else begin
        v4883_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_10_we0_local = 1'b1;
    end else begin
        v4883_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_11_ce0_local = 1'b1;
    end else begin
        v4883_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_11_ce1_local = 1'b1;
    end else begin
        v4883_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_11_we0_local = 1'b1;
    end else begin
        v4883_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_12_ce0_local = 1'b1;
    end else begin
        v4883_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_12_ce1_local = 1'b1;
    end else begin
        v4883_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_12_we0_local = 1'b1;
    end else begin
        v4883_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_13_ce0_local = 1'b1;
    end else begin
        v4883_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_13_ce1_local = 1'b1;
    end else begin
        v4883_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_13_we0_local = 1'b1;
    end else begin
        v4883_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_14_ce0_local = 1'b1;
    end else begin
        v4883_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_14_ce1_local = 1'b1;
    end else begin
        v4883_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_14_we0_local = 1'b1;
    end else begin
        v4883_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_15_ce0_local = 1'b1;
    end else begin
        v4883_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_15_ce1_local = 1'b1;
    end else begin
        v4883_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_15_we0_local = 1'b1;
    end else begin
        v4883_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_1_ce0_local = 1'b1;
    end else begin
        v4883_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_1_ce1_local = 1'b1;
    end else begin
        v4883_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_1_we0_local = 1'b1;
    end else begin
        v4883_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_2_ce0_local = 1'b1;
    end else begin
        v4883_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_2_ce1_local = 1'b1;
    end else begin
        v4883_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_2_we0_local = 1'b1;
    end else begin
        v4883_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_3_ce0_local = 1'b1;
    end else begin
        v4883_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_3_ce1_local = 1'b1;
    end else begin
        v4883_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_3_we0_local = 1'b1;
    end else begin
        v4883_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_4_ce0_local = 1'b1;
    end else begin
        v4883_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_4_ce1_local = 1'b1;
    end else begin
        v4883_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_4_we0_local = 1'b1;
    end else begin
        v4883_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_5_ce0_local = 1'b1;
    end else begin
        v4883_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_5_ce1_local = 1'b1;
    end else begin
        v4883_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_5_we0_local = 1'b1;
    end else begin
        v4883_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_6_ce0_local = 1'b1;
    end else begin
        v4883_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_6_ce1_local = 1'b1;
    end else begin
        v4883_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_6_we0_local = 1'b1;
    end else begin
        v4883_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_7_ce0_local = 1'b1;
    end else begin
        v4883_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_7_ce1_local = 1'b1;
    end else begin
        v4883_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_7_we0_local = 1'b1;
    end else begin
        v4883_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_8_ce0_local = 1'b1;
    end else begin
        v4883_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_8_ce1_local = 1'b1;
    end else begin
        v4883_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_8_we0_local = 1'b1;
    end else begin
        v4883_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_9_ce0_local = 1'b1;
    end else begin
        v4883_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_9_ce1_local = 1'b1;
    end else begin
        v4883_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_9_we0_local = 1'b1;
    end else begin
        v4883_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_ce0_local = 1'b1;
    end else begin
        v4883_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v4883_ce1_local = 1'b1;
    end else begin
        v4883_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4883_we0_local = 1'b1;
    end else begin
        v4883_we0_local = 1'b0;
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
assign add_ln6618_1_fu_1480_p2 = (ap_sig_allocacmp_indvar_flatten35477_load + 13'd1);
assign add_ln6618_fu_1534_p2 = (v4422478_fu_260 + 6'd2);
assign add_ln6620_1_fu_1486_p2 = (ap_sig_allocacmp_indvar_flatten12479_load + 10'd1);
assign add_ln6620_fu_1566_p2 = (select_ln6618_fu_1540_p3 + 6'd4);
assign add_ln6621_1_fu_1757_p2 = (indvar_flatten481_fu_272 + 6'd1);
assign add_ln6621_fu_1612_p2 = (v4424_mid26_fu_1578_p3 + 4'd2);
assign add_ln6624_1_fu_1851_p2 = (sub_ln6623_fu_1842_p2 + zext_ln7039_4_fu_1848_p1);
assign add_ln6624_fu_1728_p2 = (sub_ln6624_fu_1668_p2 + zext_ln7039_1_fu_1724_p1);
assign add_ln6773_fu_2239_p2 = (v4879_15_q0 + v4570_fu_2143_p2);
assign add_ln7039_1_fu_1909_p2 = (sub_ln7039_1_fu_1900_p2 + zext_ln7039_5_fu_1906_p1);
assign add_ln7039_fu_1884_p2 = (sub_ln7039_fu_1875_p2 + zext_ln7039_2_fu_1881_p1);
assign and_ln6618_1_fu_1553_p2 = (xor_ln6618_reg_2746 & ap_phi_mux_icmp_ln6621485_phi_fu_1415_p4);
assign and_ln6618_fu_1548_p2 = (xor_ln6618_reg_2746 & ap_phi_mux_icmp_ln6622484_phi_fu_1426_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2111 = ((icmp_ln6618_reg_2757 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_2116 = ((icmp_ln6618_reg_2757 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge239_i_fu_1699_p2 = (tmp | cmp485_i_not_i_fu_1693_p2);
assign cmp33_i_i_fu_1674_p2 = ((v4422_fu_1558_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp485_i_not_i_fu_1693_p2 = ((empty_243_fu_1688_p2 != 8'd130) ? 1'b1 : 1'b0);
assign empty_240_fu_1618_p2 = (icmp_ln6622_mid211_fu_1598_p2 | and_ln6618_1_fu_1553_p2);
assign empty_241_fu_1624_p2 = (icmp_ln6620486_reg_1400 | empty_240_fu_1618_p2);
assign empty_242_fu_1680_p1 = v4422_fu_1558_p3[4:0];
assign empty_243_fu_1688_p2 = (mul_i359_i - v4422_cast12_cast_i_fu_1684_p1);
assign empty_244_fu_1818_p2 = (tmp_s_fu_1811_p3 + zext_ln6624_fu_1808_p1);
assign empty_fu_1572_p2 = (icmp_ln6620486_reg_1400 | and_ln6618_1_fu_1553_p2);
assign exitcond_flatten_not_fu_1586_p2 = (ap_phi_mux_icmp_ln6621485_phi_fu_1415_p4 ^ 1'd1);
assign icmp_ln6618_fu_1506_p2 = ((ap_sig_allocacmp_indvar_flatten35477_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln6620_fu_1500_p2 = ((select_ln6620_1_fu_1492_p3 == 10'd392) ? 1'b1 : 1'b0);
assign icmp_ln6621_fu_1777_p2 = ((select_ln6621_1_fu_1763_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6622_fu_1771_p2 = ((v4425_fu_1751_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln6622_mid211_fu_1598_p2 = (not_exitcond_flatten_mid234_fu_1592_p2 & and_ln6618_fu_1548_p2);
assign icmp_ln6775_fu_2335_p2 = (($signed(add_ln6773_reg_3414) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign lshr_ln47_fu_1714_p4 = {{v4424_fu_1638_p3[3:1]}};
assign lshr_ln_fu_1646_p4 = {{v4422_fu_1558_p3[5:1]}};
assign not_exitcond_flatten_mid234_fu_1592_p2 = (icmp_ln6620486_reg_1400 | exitcond_flatten_not_fu_1586_p2);
assign p_cast_fu_1824_p1 = empty_244_fu_1818_p2;
assign p_shl20_fu_1893_p3 = {{add_ln7039_reg_3020}, {3'd0}};
assign p_shl21_fu_1868_p3 = {{lshr_ln46_reg_2790_pp0_iter3_reg}, {3'd0}};
assign p_shl22_fu_1660_p3 = {{lshr_ln_fu_1646_p4}, {3'd0}};
assign select_ln6618_fu_1540_p3 = ((icmp_ln6620486_reg_1400[0:0] == 1'b1) ? 6'd0 : v4423480_fu_268);
assign select_ln6620_1_fu_1492_p3 = ((ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4[0:0] == 1'b1) ? 10'd1 : add_ln6620_1_fu_1486_p2);
assign select_ln6621_1_fu_1763_p3 = ((empty_fu_1572_p2[0:0] == 1'b1) ? 6'd1 : add_ln6621_1_fu_1757_p2);
assign select_ln6776_fu_2340_p3 = ((icmp_ln6775_fu_2335_p2[0:0] == 1'b1) ? add_ln6773_reg_3414 : 8'd229);
assign sub_ln6623_fu_1842_p2 = (tmp_156_fu_1832_p3 - zext_ln6624_2_fu_1839_p1);
assign sub_ln6624_fu_1668_p2 = (p_shl22_fu_1660_p3 - zext_ln6624_1_fu_1656_p1);
assign sub_ln7039_1_fu_1900_p2 = (p_shl20_fu_1893_p3 - zext_ln7039_3_fu_1890_p1);
assign sub_ln7039_fu_1875_p2 = (p_shl21_fu_1868_p3 - zext_ln7039_fu_1865_p1);
assign tmp_156_fu_1832_p3 = {{trunc_ln6624_reg_2807}, {3'd0}};
assign tmp_s_fu_1811_p3 = {{lshr_ln46_reg_2790}, {4'd0}};
assign trunc_ln6624_fu_1734_p1 = add_ln6624_fu_1728_p2[6:0];
assign v4422_cast12_cast_i_fu_1684_p1 = empty_242_fu_1680_p1;
assign v4422_fu_1558_p3 = ((icmp_ln6620486_reg_1400[0:0] == 1'b1) ? add_ln6618_fu_1534_p2 : v4422478_fu_260);
assign v4423_fu_1604_p3 = ((and_ln6618_1_fu_1553_p2[0:0] == 1'b1) ? add_ln6620_fu_1566_p2 : select_ln6618_fu_1540_p3);
assign v4424_fu_1638_p3 = ((icmp_ln6622_mid211_fu_1598_p2[0:0] == 1'b1) ? add_ln6621_fu_1612_p2 : v4424_mid26_fu_1578_p3);
assign v4424_mid26_fu_1578_p3 = ((empty_fu_1572_p2[0:0] == 1'b1) ? 4'd0 : v4424482_fu_276);
assign v4425_fu_1751_p2 = (v4425_mid2_fu_1630_p3 + 4'd2);
assign v4425_mid2_fu_1630_p3 = ((empty_241_fu_1624_p2[0:0] == 1'b1) ? 4'd0 : v4425483_fu_280);
assign v4430_fu_2031_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_15_q0 : v4883_15_q1);
assign v4439_fu_2038_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_14_q0 : v4883_14_q1);
assign v4448_fu_2045_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_13_q0 : v4883_13_q1);
assign v4457_fu_2052_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_12_q0 : v4883_12_q1);
assign v4466_fu_2059_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_11_q0 : v4883_11_q1);
assign v4474_fu_2066_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_10_q0 : v4883_10_q1);
assign v4482_fu_2073_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_9_q0 : v4883_9_q1);
assign v4490_fu_2080_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_8_q0 : v4883_8_q1);
assign v4499_fu_2087_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_7_q0 : v4883_7_q1);
assign v4507_fu_2094_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_6_q0 : v4883_6_q1);
assign v4515_fu_2101_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_5_q0 : v4883_5_q1);
assign v4523_fu_2108_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_4_q0 : v4883_4_q1);
assign v4532_fu_2115_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_3_q0 : v4883_3_q1);
assign v4540_fu_2122_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_2_q0 : v4883_2_q1);
assign v4548_fu_2129_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_1_q0 : v4883_1_q1);
assign v4556_fu_2136_p3 = ((cmp33_i_i_reg_2766_pp0_iter5_reg[0:0] == 1'b1) ? v4880_q0 : v4883_q1);
assign v4570_fu_2143_p0 = grp_fu_2543_p3;
assign v4570_fu_2143_p2 = ($signed(v4570_fu_2143_p0) + $signed(v4430_fu_2031_p3));
assign v4584_fu_2149_p0 = grp_fu_2552_p3;
assign v4584_fu_2149_p2 = ($signed(v4584_fu_2149_p0) + $signed(v4439_fu_2038_p3));
assign v4589_fu_2245_p2 = (v4879_14_q0 + v4584_fu_2149_p2);
assign v4590_fu_2348_p2 = (($signed(v4589_reg_3420) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4591_1_fu_2353_p3 = ((v4590_fu_2348_p2[0:0] == 1'b1) ? v4589_reg_3420 : 8'd229);
assign v4598_fu_2155_p0 = grp_fu_2561_p3;
assign v4598_fu_2155_p2 = ($signed(v4598_fu_2155_p0) + $signed(v4448_fu_2045_p3));
assign v4603_fu_2251_p2 = (v4879_13_q0 + v4598_fu_2155_p2);
assign v4604_fu_2361_p2 = (($signed(v4603_reg_3426) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4605_1_fu_2366_p3 = ((v4604_fu_2361_p2[0:0] == 1'b1) ? v4603_reg_3426 : 8'd229);
assign v4612_fu_2161_p0 = grp_fu_2570_p3;
assign v4612_fu_2161_p2 = ($signed(v4612_fu_2161_p0) + $signed(v4457_fu_2052_p3));
assign v4617_fu_2257_p2 = (v4879_12_q0 + v4612_fu_2161_p2);
assign v4618_fu_2374_p2 = (($signed(v4617_reg_3432) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4619_1_fu_2379_p3 = ((v4618_fu_2374_p2[0:0] == 1'b1) ? v4617_reg_3432 : 8'd229);
assign v4626_fu_2167_p0 = grp_fu_2579_p3;
assign v4626_fu_2167_p2 = ($signed(v4626_fu_2167_p0) + $signed(v4466_fu_2059_p3));
assign v4631_fu_2263_p2 = (v4879_11_q0 + v4626_fu_2167_p2);
assign v4632_fu_2387_p2 = (($signed(v4631_reg_3438) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4633_1_fu_2392_p3 = ((v4632_fu_2387_p2[0:0] == 1'b1) ? v4631_reg_3438 : 8'd229);
assign v4639_fu_2173_p0 = grp_fu_2588_p3;
assign v4639_fu_2173_p2 = ($signed(v4639_fu_2173_p0) + $signed(v4474_fu_2066_p3));
assign v4644_fu_2269_p2 = (v4879_10_q0 + v4639_fu_2173_p2);
assign v4645_fu_2400_p2 = (($signed(v4644_reg_3444) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4646_1_fu_2405_p3 = ((v4645_fu_2400_p2[0:0] == 1'b1) ? v4644_reg_3444 : 8'd229);
assign v4652_fu_2179_p0 = grp_fu_2597_p3;
assign v4652_fu_2179_p2 = ($signed(v4652_fu_2179_p0) + $signed(v4482_fu_2073_p3));
assign v4657_fu_2275_p2 = (v4879_9_q0 + v4652_fu_2179_p2);
assign v4658_fu_2413_p2 = (($signed(v4657_reg_3450) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4659_1_fu_2418_p3 = ((v4658_fu_2413_p2[0:0] == 1'b1) ? v4657_reg_3450 : 8'd229);
assign v4665_fu_2185_p0 = grp_fu_2606_p3;
assign v4665_fu_2185_p2 = ($signed(v4665_fu_2185_p0) + $signed(v4490_fu_2080_p3));
assign v4670_fu_2281_p2 = (v4879_8_q0 + v4665_fu_2185_p2);
assign v4671_fu_2426_p2 = (($signed(v4670_reg_3456) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4672_1_fu_2431_p3 = ((v4671_fu_2426_p2[0:0] == 1'b1) ? v4670_reg_3456 : 8'd229);
assign v4679_fu_2191_p0 = grp_fu_2615_p3;
assign v4679_fu_2191_p2 = ($signed(v4679_fu_2191_p0) + $signed(v4499_fu_2087_p3));
assign v4684_fu_2287_p2 = (v4879_7_q0 + v4679_fu_2191_p2);
assign v4685_fu_2439_p2 = (($signed(v4684_reg_3462) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4686_1_fu_2444_p3 = ((v4685_fu_2439_p2[0:0] == 1'b1) ? v4684_reg_3462 : 8'd229);
assign v4692_fu_2197_p0 = grp_fu_2624_p3;
assign v4692_fu_2197_p2 = ($signed(v4692_fu_2197_p0) + $signed(v4507_fu_2094_p3));
assign v4697_fu_2293_p2 = (v4879_6_q0 + v4692_fu_2197_p2);
assign v4698_fu_2452_p2 = (($signed(v4697_reg_3468) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4699_1_fu_2457_p3 = ((v4698_fu_2452_p2[0:0] == 1'b1) ? v4697_reg_3468 : 8'd229);
assign v4705_fu_2203_p0 = grp_fu_2633_p3;
assign v4705_fu_2203_p2 = ($signed(v4705_fu_2203_p0) + $signed(v4515_fu_2101_p3));
assign v4710_fu_2299_p2 = (v4879_5_q0 + v4705_fu_2203_p2);
assign v4711_fu_2465_p2 = (($signed(v4710_reg_3474) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4712_1_fu_2470_p3 = ((v4711_fu_2465_p2[0:0] == 1'b1) ? v4710_reg_3474 : 8'd229);
assign v4718_fu_2209_p0 = grp_fu_2642_p3;
assign v4718_fu_2209_p2 = ($signed(v4718_fu_2209_p0) + $signed(v4523_fu_2108_p3));
assign v4723_fu_2305_p2 = (v4879_4_q0 + v4718_fu_2209_p2);
assign v4724_fu_2478_p2 = (($signed(v4723_reg_3480) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4725_1_fu_2483_p3 = ((v4724_fu_2478_p2[0:0] == 1'b1) ? v4723_reg_3480 : 8'd229);
assign v4732_fu_2215_p0 = grp_fu_2651_p3;
assign v4732_fu_2215_p2 = ($signed(v4732_fu_2215_p0) + $signed(v4532_fu_2115_p3));
assign v4737_fu_2311_p2 = (v4879_3_q0 + v4732_fu_2215_p2);
assign v4738_fu_2491_p2 = (($signed(v4737_reg_3486) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4739_1_fu_2496_p3 = ((v4738_fu_2491_p2[0:0] == 1'b1) ? v4737_reg_3486 : 8'd229);
assign v4745_fu_2221_p0 = grp_fu_2660_p3;
assign v4745_fu_2221_p2 = ($signed(v4745_fu_2221_p0) + $signed(v4540_fu_2122_p3));
assign v4750_fu_2317_p2 = (v4879_2_q0 + v4745_fu_2221_p2);
assign v4751_fu_2504_p2 = (($signed(v4750_reg_3492) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4752_1_fu_2509_p3 = ((v4751_fu_2504_p2[0:0] == 1'b1) ? v4750_reg_3492 : 8'd229);
assign v4758_fu_2227_p0 = grp_fu_2669_p3;
assign v4758_fu_2227_p2 = ($signed(v4758_fu_2227_p0) + $signed(v4548_fu_2129_p3));
assign v4763_fu_2323_p2 = (v4879_1_q0 + v4758_fu_2227_p2);
assign v4764_fu_2517_p2 = (($signed(v4763_reg_3498) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4765_1_fu_2522_p3 = ((v4764_fu_2517_p2[0:0] == 1'b1) ? v4763_reg_3498 : 8'd229);
assign v4771_fu_2233_p0 = grp_fu_2678_p3;
assign v4771_fu_2233_p2 = ($signed(v4771_fu_2233_p0) + $signed(v4556_fu_2136_p3));
assign v4776_fu_2329_p2 = (v4879_q0 + v4771_fu_2233_p2);
assign v4777_fu_2530_p2 = (($signed(v4776_reg_3504) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4778_1_fu_2535_p3 = ((v4777_fu_2530_p2[0:0] == 1'b1) ? v4776_reg_3504 : 8'd229);
assign v4878_10_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_10_ce0 = v4878_10_ce0_local;
assign v4878_10_d0 = v4646_1_fu_2405_p3;
assign v4878_10_we0 = v4878_10_we0_local;
assign v4878_11_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_11_ce0 = v4878_11_ce0_local;
assign v4878_11_d0 = v4633_1_fu_2392_p3;
assign v4878_11_we0 = v4878_11_we0_local;
assign v4878_12_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_12_ce0 = v4878_12_ce0_local;
assign v4878_12_d0 = v4619_1_fu_2379_p3;
assign v4878_12_we0 = v4878_12_we0_local;
assign v4878_13_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_13_ce0 = v4878_13_ce0_local;
assign v4878_13_d0 = v4605_1_fu_2366_p3;
assign v4878_13_we0 = v4878_13_we0_local;
assign v4878_14_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_14_ce0 = v4878_14_ce0_local;
assign v4878_14_d0 = v4591_1_fu_2353_p3;
assign v4878_14_we0 = v4878_14_we0_local;
assign v4878_15_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_15_ce0 = v4878_15_ce0_local;
assign v4878_15_d0 = select_ln6776_fu_2340_p3;
assign v4878_15_we0 = v4878_15_we0_local;
assign v4878_1_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_1_ce0 = v4878_1_ce0_local;
assign v4878_1_d0 = v4765_1_fu_2522_p3;
assign v4878_1_we0 = v4878_1_we0_local;
assign v4878_2_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_2_ce0 = v4878_2_ce0_local;
assign v4878_2_d0 = v4752_1_fu_2509_p3;
assign v4878_2_we0 = v4878_2_we0_local;
assign v4878_3_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_3_ce0 = v4878_3_ce0_local;
assign v4878_3_d0 = v4739_1_fu_2496_p3;
assign v4878_3_we0 = v4878_3_we0_local;
assign v4878_4_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_4_ce0 = v4878_4_ce0_local;
assign v4878_4_d0 = v4725_1_fu_2483_p3;
assign v4878_4_we0 = v4878_4_we0_local;
assign v4878_5_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_5_ce0 = v4878_5_ce0_local;
assign v4878_5_d0 = v4712_1_fu_2470_p3;
assign v4878_5_we0 = v4878_5_we0_local;
assign v4878_6_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_6_ce0 = v4878_6_ce0_local;
assign v4878_6_d0 = v4699_1_fu_2457_p3;
assign v4878_6_we0 = v4878_6_we0_local;
assign v4878_7_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_7_ce0 = v4878_7_ce0_local;
assign v4878_7_d0 = v4686_1_fu_2444_p3;
assign v4878_7_we0 = v4878_7_we0_local;
assign v4878_8_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_8_ce0 = v4878_8_ce0_local;
assign v4878_8_d0 = v4672_1_fu_2431_p3;
assign v4878_8_we0 = v4878_8_we0_local;
assign v4878_9_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_9_ce0 = v4878_9_ce0_local;
assign v4878_9_d0 = v4659_1_fu_2418_p3;
assign v4878_9_we0 = v4878_9_we0_local;
assign v4878_address0 = zext_ln7039_6_reg_3058_pp0_iter6_reg;
assign v4878_ce0 = v4878_ce0_local;
assign v4878_d0 = v4778_1_fu_2535_p3;
assign v4878_we0 = v4878_we0_local;
assign v4879_10_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_10_ce0 = v4879_10_ce0_local;
assign v4879_11_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_11_ce0 = v4879_11_ce0_local;
assign v4879_12_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_12_ce0 = v4879_12_ce0_local;
assign v4879_13_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_13_ce0 = v4879_13_ce0_local;
assign v4879_14_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_14_ce0 = v4879_14_ce0_local;
assign v4879_15_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_15_ce0 = v4879_15_ce0_local;
assign v4879_1_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_1_ce0 = v4879_1_ce0_local;
assign v4879_2_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_2_ce0 = v4879_2_ce0_local;
assign v4879_3_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_3_ce0 = v4879_3_ce0_local;
assign v4879_4_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_4_ce0 = v4879_4_ce0_local;
assign v4879_5_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_5_ce0 = v4879_5_ce0_local;
assign v4879_6_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_6_ce0 = v4879_6_ce0_local;
assign v4879_7_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_7_ce0 = v4879_7_ce0_local;
assign v4879_8_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_8_ce0 = v4879_8_ce0_local;
assign v4879_9_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_9_ce0 = v4879_9_ce0_local;
assign v4879_address0 = zext_ln7039_6_fu_1915_p1;
assign v4879_ce0 = v4879_ce0_local;
assign v4880_10_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_10_ce0 = v4880_10_ce0_local;
assign v4880_11_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_11_ce0 = v4880_11_ce0_local;
assign v4880_12_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_12_ce0 = v4880_12_ce0_local;
assign v4880_13_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_13_ce0 = v4880_13_ce0_local;
assign v4880_14_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_14_ce0 = v4880_14_ce0_local;
assign v4880_15_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_15_ce0 = v4880_15_ce0_local;
assign v4880_1_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_1_ce0 = v4880_1_ce0_local;
assign v4880_2_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_2_ce0 = v4880_2_ce0_local;
assign v4880_3_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_3_ce0 = v4880_3_ce0_local;
assign v4880_4_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_4_ce0 = v4880_4_ce0_local;
assign v4880_5_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_5_ce0 = v4880_5_ce0_local;
assign v4880_6_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_6_ce0 = v4880_6_ce0_local;
assign v4880_7_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_7_ce0 = v4880_7_ce0_local;
assign v4880_8_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_8_ce0 = v4880_8_ce0_local;
assign v4880_9_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_9_ce0 = v4880_9_ce0_local;
assign v4880_address0 = zext_ln7039_6_fu_1915_p1;
assign v4880_ce0 = v4880_ce0_local;
assign v4881_1_address0 = p_cast_reg_2828;
assign v4881_1_ce0 = v4881_1_ce0_local;
assign v4881_2_address0 = p_cast_fu_1824_p1;
assign v4881_2_ce0 = v4881_2_ce0_local;
assign v4881_3_address0 = p_cast_reg_2828;
assign v4881_3_ce0 = v4881_3_ce0_local;
assign v4881_4_address0 = p_cast_fu_1824_p1;
assign v4881_4_ce0 = v4881_4_ce0_local;
assign v4881_5_address0 = p_cast_reg_2828;
assign v4881_5_ce0 = v4881_5_ce0_local;
assign v4881_6_address0 = p_cast_fu_1824_p1;
assign v4881_6_ce0 = v4881_6_ce0_local;
assign v4881_7_address0 = p_cast_reg_2828;
assign v4881_7_ce0 = v4881_7_ce0_local;
assign v4881_address0 = p_cast_fu_1824_p1;
assign v4881_ce0 = v4881_ce0_local;
assign v4882_1_address0 = zext_ln6624_3_fu_1857_p1;
assign v4882_1_ce0 = v4882_1_ce0_local;
assign v4882_2_address0 = zext_ln6624_3_fu_1857_p1;
assign v4882_2_ce0 = v4882_2_ce0_local;
assign v4882_3_address0 = zext_ln6624_3_fu_1857_p1;
assign v4882_3_ce0 = v4882_3_ce0_local;
assign v4882_4_address0 = zext_ln6624_3_reg_2856;
assign v4882_4_ce0 = v4882_4_ce0_local;
assign v4882_5_address0 = zext_ln6624_3_reg_2856;
assign v4882_5_ce0 = v4882_5_ce0_local;
assign v4882_6_address0 = zext_ln6624_3_reg_2856;
assign v4882_6_ce0 = v4882_6_ce0_local;
assign v4882_7_address0 = zext_ln6624_3_reg_2856;
assign v4882_7_ce0 = v4882_7_ce0_local;
assign v4882_address0 = zext_ln6624_3_fu_1857_p1;
assign v4882_ce0 = v4882_ce0_local;
assign v4883_10_address0 = v4883_10_addr_reg_3138;
assign v4883_10_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_10_ce0 = v4883_10_ce0_local;
assign v4883_10_ce1 = v4883_10_ce1_local;
assign v4883_10_d0 = v4639_fu_2173_p2;
assign v4883_10_we0 = v4883_10_we0_local;
assign v4883_11_address0 = v4883_11_addr_reg_3144;
assign v4883_11_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_11_ce0 = v4883_11_ce0_local;
assign v4883_11_ce1 = v4883_11_ce1_local;
assign v4883_11_d0 = v4626_fu_2167_p2;
assign v4883_11_we0 = v4883_11_we0_local;
assign v4883_12_address0 = v4883_12_addr_reg_3150;
assign v4883_12_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_12_ce0 = v4883_12_ce0_local;
assign v4883_12_ce1 = v4883_12_ce1_local;
assign v4883_12_d0 = v4612_fu_2161_p2;
assign v4883_12_we0 = v4883_12_we0_local;
assign v4883_13_address0 = v4883_13_addr_reg_3156;
assign v4883_13_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_13_ce0 = v4883_13_ce0_local;
assign v4883_13_ce1 = v4883_13_ce1_local;
assign v4883_13_d0 = v4598_fu_2155_p2;
assign v4883_13_we0 = v4883_13_we0_local;
assign v4883_14_address0 = v4883_14_addr_reg_3162;
assign v4883_14_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_14_ce0 = v4883_14_ce0_local;
assign v4883_14_ce1 = v4883_14_ce1_local;
assign v4883_14_d0 = v4584_fu_2149_p2;
assign v4883_14_we0 = v4883_14_we0_local;
assign v4883_15_address0 = v4883_15_addr_reg_3168;
assign v4883_15_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_15_ce0 = v4883_15_ce0_local;
assign v4883_15_ce1 = v4883_15_ce1_local;
assign v4883_15_d0 = v4570_fu_2143_p2;
assign v4883_15_we0 = v4883_15_we0_local;
assign v4883_1_address0 = v4883_1_addr_reg_3084;
assign v4883_1_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_1_ce0 = v4883_1_ce0_local;
assign v4883_1_ce1 = v4883_1_ce1_local;
assign v4883_1_d0 = v4758_fu_2227_p2;
assign v4883_1_we0 = v4883_1_we0_local;
assign v4883_2_address0 = v4883_2_addr_reg_3090;
assign v4883_2_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_2_ce0 = v4883_2_ce0_local;
assign v4883_2_ce1 = v4883_2_ce1_local;
assign v4883_2_d0 = v4745_fu_2221_p2;
assign v4883_2_we0 = v4883_2_we0_local;
assign v4883_3_address0 = v4883_3_addr_reg_3096;
assign v4883_3_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_3_ce0 = v4883_3_ce0_local;
assign v4883_3_ce1 = v4883_3_ce1_local;
assign v4883_3_d0 = v4732_fu_2215_p2;
assign v4883_3_we0 = v4883_3_we0_local;
assign v4883_4_address0 = v4883_4_addr_reg_3102;
assign v4883_4_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_4_ce0 = v4883_4_ce0_local;
assign v4883_4_ce1 = v4883_4_ce1_local;
assign v4883_4_d0 = v4718_fu_2209_p2;
assign v4883_4_we0 = v4883_4_we0_local;
assign v4883_5_address0 = v4883_5_addr_reg_3108;
assign v4883_5_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_5_ce0 = v4883_5_ce0_local;
assign v4883_5_ce1 = v4883_5_ce1_local;
assign v4883_5_d0 = v4705_fu_2203_p2;
assign v4883_5_we0 = v4883_5_we0_local;
assign v4883_6_address0 = v4883_6_addr_reg_3114;
assign v4883_6_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_6_ce0 = v4883_6_ce0_local;
assign v4883_6_ce1 = v4883_6_ce1_local;
assign v4883_6_d0 = v4692_fu_2197_p2;
assign v4883_6_we0 = v4883_6_we0_local;
assign v4883_7_address0 = v4883_7_addr_reg_3120;
assign v4883_7_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_7_ce0 = v4883_7_ce0_local;
assign v4883_7_ce1 = v4883_7_ce1_local;
assign v4883_7_d0 = v4679_fu_2191_p2;
assign v4883_7_we0 = v4883_7_we0_local;
assign v4883_8_address0 = v4883_8_addr_reg_3126;
assign v4883_8_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_8_ce0 = v4883_8_ce0_local;
assign v4883_8_ce1 = v4883_8_ce1_local;
assign v4883_8_d0 = v4665_fu_2185_p2;
assign v4883_8_we0 = v4883_8_we0_local;
assign v4883_9_address0 = v4883_9_addr_reg_3132;
assign v4883_9_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_9_ce0 = v4883_9_ce0_local;
assign v4883_9_ce1 = v4883_9_ce1_local;
assign v4883_9_d0 = v4652_fu_2179_p2;
assign v4883_9_we0 = v4883_9_we0_local;
assign v4883_address0 = v4883_addr_reg_3078;
assign v4883_address1 = zext_ln7039_6_fu_1915_p1;
assign v4883_ce0 = v4883_ce0_local;
assign v4883_ce1 = v4883_ce1_local;
assign v4883_d0 = v4771_fu_2233_p2;
assign v4883_we0 = v4883_we0_local;
assign xor_ln6618_fu_1474_p2 = (ap_phi_mux_icmp_ln6620486_phi_fu_1403_p4 ^ 1'd1);
assign zext_ln6624_1_fu_1656_p1 = lshr_ln_fu_1646_p4;
assign zext_ln6624_2_fu_1839_p1 = add_ln6624_reg_2802;
assign zext_ln6624_3_fu_1857_p1 = add_ln6624_1_fu_1851_p2;
assign zext_ln6624_fu_1808_p1 = lshr_ln_reg_2761;
assign zext_ln7039_1_fu_1724_p1 = lshr_ln47_fu_1714_p4;
assign zext_ln7039_2_fu_1881_p1 = lshr_ln47_reg_2797_pp0_iter3_reg;
assign zext_ln7039_3_fu_1890_p1 = add_ln7039_reg_3020;
assign zext_ln7039_4_fu_1848_p1 = lshr_ln48_reg_2812;
assign zext_ln7039_5_fu_1906_p1 = lshr_ln48_reg_2812_pp0_iter4_reg;
assign zext_ln7039_6_fu_1915_p1 = add_ln7039_1_fu_1909_p2;
assign zext_ln7039_fu_1865_p1 = lshr_ln46_reg_2790_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    p_cast_reg_2828[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln6624_3_reg_2856[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln7039_6_reg_3058[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln7039_6_reg_3058_pp0_iter6_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 