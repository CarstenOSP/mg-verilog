module forward_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3353_address0,v3353_ce0,v3353_we0,v3353_d0,v3353_1_address0,v3353_1_ce0,v3353_1_we0,v3353_1_d0,v3353_2_address0,v3353_2_ce0,v3353_2_we0,v3353_2_d0,v3353_3_address0,v3353_3_ce0,v3353_3_we0,v3353_3_d0,v3353_4_address0,v3353_4_ce0,v3353_4_we0,v3353_4_d0,v3353_5_address0,v3353_5_ce0,v3353_5_we0,v3353_5_d0,v3353_6_address0,v3353_6_ce0,v3353_6_we0,v3353_6_d0,v3353_7_address0,v3353_7_ce0,v3353_7_we0,v3353_7_d0,v3353_8_address0,v3353_8_ce0,v3353_8_we0,v3353_8_d0,v3353_9_address0,v3353_9_ce0,v3353_9_we0,v3353_9_d0,v3353_10_address0,v3353_10_ce0,v3353_10_we0,v3353_10_d0,v3353_11_address0,v3353_11_ce0,v3353_11_we0,v3353_11_d0,v3353_12_address0,v3353_12_ce0,v3353_12_we0,v3353_12_d0,v3353_13_address0,v3353_13_ce0,v3353_13_we0,v3353_13_d0,v3353_14_address0,v3353_14_ce0,v3353_14_we0,v3353_14_d0,v3353_15_address0,v3353_15_ce0,v3353_15_we0,v3353_15_d0,v3345_0,v13738_0_0_address0,v13738_0_0_ce0,v13738_0_0_q0,v13738_0_1_address0,v13738_0_1_ce0,v13738_0_1_q0,v13738_1_0_address0,v13738_1_0_ce0,v13738_1_0_q0,v13738_1_1_address0,v13738_1_1_ce0,v13738_1_1_q0,v13738_2_0_address0,v13738_2_0_ce0,v13738_2_0_q0,v13738_2_1_address0,v13738_2_1_ce0,v13738_2_1_q0,v13738_3_0_address0,v13738_3_0_ce0,v13738_3_0_q0,v13738_3_1_address0,v13738_3_1_ce0,v13738_3_1_q0,v13738_4_0_address0,v13738_4_0_ce0,v13738_4_0_q0,v13738_4_1_address0,v13738_4_1_ce0,v13738_4_1_q0,v13738_5_0_address0,v13738_5_0_ce0,v13738_5_0_q0,v13738_5_1_address0,v13738_5_1_ce0,v13738_5_1_q0,v13738_6_0_address0,v13738_6_0_ce0,v13738_6_0_q0,v13738_6_1_address0,v13738_6_1_ce0,v13738_6_1_q0,v13738_7_0_address0,v13738_7_0_ce0,v13738_7_0_q0,v13738_7_1_address0,v13738_7_1_ce0,v13738_7_1_q0); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v3353_address0;
output   v3353_ce0;
output   v3353_we0;
output  [7:0] v3353_d0;
output  [5:0] v3353_1_address0;
output   v3353_1_ce0;
output   v3353_1_we0;
output  [7:0] v3353_1_d0;
output  [5:0] v3353_2_address0;
output   v3353_2_ce0;
output   v3353_2_we0;
output  [7:0] v3353_2_d0;
output  [5:0] v3353_3_address0;
output   v3353_3_ce0;
output   v3353_3_we0;
output  [7:0] v3353_3_d0;
output  [5:0] v3353_4_address0;
output   v3353_4_ce0;
output   v3353_4_we0;
output  [7:0] v3353_4_d0;
output  [5:0] v3353_5_address0;
output   v3353_5_ce0;
output   v3353_5_we0;
output  [7:0] v3353_5_d0;
output  [5:0] v3353_6_address0;
output   v3353_6_ce0;
output   v3353_6_we0;
output  [7:0] v3353_6_d0;
output  [5:0] v3353_7_address0;
output   v3353_7_ce0;
output   v3353_7_we0;
output  [7:0] v3353_7_d0;
output  [5:0] v3353_8_address0;
output   v3353_8_ce0;
output   v3353_8_we0;
output  [7:0] v3353_8_d0;
output  [5:0] v3353_9_address0;
output   v3353_9_ce0;
output   v3353_9_we0;
output  [7:0] v3353_9_d0;
output  [5:0] v3353_10_address0;
output   v3353_10_ce0;
output   v3353_10_we0;
output  [7:0] v3353_10_d0;
output  [5:0] v3353_11_address0;
output   v3353_11_ce0;
output   v3353_11_we0;
output  [7:0] v3353_11_d0;
output  [5:0] v3353_12_address0;
output   v3353_12_ce0;
output   v3353_12_we0;
output  [7:0] v3353_12_d0;
output  [5:0] v3353_13_address0;
output   v3353_13_ce0;
output   v3353_13_we0;
output  [7:0] v3353_13_d0;
output  [5:0] v3353_14_address0;
output   v3353_14_ce0;
output   v3353_14_we0;
output  [7:0] v3353_14_d0;
output  [5:0] v3353_15_address0;
output   v3353_15_ce0;
output   v3353_15_we0;
output  [7:0] v3353_15_d0;
input  [15:0] v3345_0;
output  [12:0] v13738_0_0_address0;
output   v13738_0_0_ce0;
input  [7:0] v13738_0_0_q0;
output  [12:0] v13738_0_1_address0;
output   v13738_0_1_ce0;
input  [7:0] v13738_0_1_q0;
output  [12:0] v13738_1_0_address0;
output   v13738_1_0_ce0;
input  [7:0] v13738_1_0_q0;
output  [12:0] v13738_1_1_address0;
output   v13738_1_1_ce0;
input  [7:0] v13738_1_1_q0;
output  [12:0] v13738_2_0_address0;
output   v13738_2_0_ce0;
input  [7:0] v13738_2_0_q0;
output  [12:0] v13738_2_1_address0;
output   v13738_2_1_ce0;
input  [7:0] v13738_2_1_q0;
output  [12:0] v13738_3_0_address0;
output   v13738_3_0_ce0;
input  [7:0] v13738_3_0_q0;
output  [12:0] v13738_3_1_address0;
output   v13738_3_1_ce0;
input  [7:0] v13738_3_1_q0;
output  [12:0] v13738_4_0_address0;
output   v13738_4_0_ce0;
input  [7:0] v13738_4_0_q0;
output  [12:0] v13738_4_1_address0;
output   v13738_4_1_ce0;
input  [7:0] v13738_4_1_q0;
output  [12:0] v13738_5_0_address0;
output   v13738_5_0_ce0;
input  [7:0] v13738_5_0_q0;
output  [12:0] v13738_5_1_address0;
output   v13738_5_1_ce0;
input  [7:0] v13738_5_1_q0;
output  [12:0] v13738_6_0_address0;
output   v13738_6_0_ce0;
input  [7:0] v13738_6_0_q0;
output  [12:0] v13738_6_1_address0;
output   v13738_6_1_ce0;
input  [7:0] v13738_6_1_q0;
output  [12:0] v13738_7_0_address0;
output   v13738_7_0_ce0;
input  [7:0] v13738_7_0_q0;
output  [12:0] v13738_7_1_address0;
output   v13738_7_1_ce0;
input  [7:0] v13738_7_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] trunc_ln_fu_212_p4;
reg    ap_block_state1;
reg   [4:0] tmp_s_reg_319;
reg   [6:0] trunc_ln6_reg_325;
reg   [0:0] tmp_reg_330;
wire   [0:0] empty_fu_266_p1;
reg   [0:0] empty_reg_335;
wire   [1:0] grp_fu_276_p2;
reg   [1:0] urem_ln4171_reg_340;
wire    ap_CS_fsm_state12;
wire   [9:0] mul_i_fu_281_p3;
reg   [9:0] mul_i_reg_345;
wire    ap_CS_fsm_state13;
wire   [6:0] p_udiv62_cast_fu_289_p3;
reg   [6:0] p_udiv62_cast_reg_350;
wire   [1:0] trunc_ln4168_fu_297_p1;
reg   [1:0] trunc_ln4168_reg_355;
wire   [3:0] mul9_i_cast_cast_fu_301_p3;
reg   [3:0] mul9_i_cast_cast_reg_360;
wire   [1:0] empty_301_fu_309_p1;
reg   [1:0] empty_301_reg_365;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg;
wire    ap_CS_fsm_state14;
wire   [8:0] mul_ln4172_fu_226_p0;
wire   [18:0] zext_ln4172_fu_222_p1;
wire   [10:0] mul_ln4172_fu_226_p1;
wire   [18:0] mul_ln4172_fu_226_p2;
wire   [8:0] mul_ln4171_fu_242_p0;
wire   [10:0] mul_ln4171_fu_242_p1;
wire   [18:0] mul_ln4171_fu_242_p2;
wire   [8:0] grp_fu_270_p0;
wire   [2:0] grp_fu_270_p1;
wire   [2:0] grp_fu_276_p1;
wire    ap_CS_fsm_state2;
wire   [1:0] grp_fu_270_p2;
reg    grp_fu_270_ap_start;
wire    grp_fu_270_ap_done;
reg    grp_fu_270_ce;
reg    grp_fu_276_ap_start;
wire    grp_fu_276_ap_done;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 14'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_ready),.mul_i(mul_i_reg_345),.p_udiv62_cast(p_udiv62_cast_reg_350),.mul9_i_cast_cast(mul9_i_cast_cast_reg_360),.empty_94(trunc_ln4168_reg_355),.v3353_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_address0),.v3353_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_ce0),.v3353_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_we0),.v3353_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_d0),.v3353_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_address0),.v3353_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_ce0),.v3353_1_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_we0),.v3353_1_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_d0),.v3353_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_address0),.v3353_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_ce0),.v3353_2_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_we0),.v3353_2_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_d0),.v3353_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_address0),.v3353_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_ce0),.v3353_3_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_we0),.v3353_3_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_d0),.v3353_4_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_address0),.v3353_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_ce0),.v3353_4_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_we0),.v3353_4_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_d0),.v3353_5_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_address0),.v3353_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_ce0),.v3353_5_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_we0),.v3353_5_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_d0),.v3353_6_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_address0),.v3353_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_ce0),.v3353_6_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_we0),.v3353_6_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_d0),.v3353_7_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_address0),.v3353_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_ce0),.v3353_7_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_we0),.v3353_7_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_d0),.v3353_8_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_address0),.v3353_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_ce0),.v3353_8_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_we0),.v3353_8_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_d0),.v3353_9_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_address0),.v3353_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_ce0),.v3353_9_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_we0),.v3353_9_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_d0),.v3353_10_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_address0),.v3353_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_ce0),.v3353_10_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_we0),.v3353_10_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_d0),.v3353_11_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_address0),.v3353_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_ce0),.v3353_11_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_we0),.v3353_11_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_d0),.v3353_12_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_address0),.v3353_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_ce0),.v3353_12_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_we0),.v3353_12_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_d0),.v3353_13_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_address0),.v3353_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_ce0),.v3353_13_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_we0),.v3353_13_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_d0),.v3353_14_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_address0),.v3353_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_ce0),.v3353_14_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_we0),.v3353_14_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_d0),.v3353_15_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_address0),.v3353_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_ce0),.v3353_15_we0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_we0),.v3353_15_d0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_d0),.empty_95(empty_reg_335),.empty(empty_301_reg_365),.v13738_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_address0),.v13738_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_ce0),.v13738_0_0_q0(v13738_0_0_q0),.v13738_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_address0),.v13738_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_ce0),.v13738_0_1_q0(v13738_0_1_q0),.v13738_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_address0),.v13738_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_ce0),.v13738_1_0_q0(v13738_1_0_q0),.v13738_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_address0),.v13738_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_ce0),.v13738_1_1_q0(v13738_1_1_q0),.v13738_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_address0),.v13738_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_ce0),.v13738_2_0_q0(v13738_2_0_q0),.v13738_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_address0),.v13738_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_ce0),.v13738_2_1_q0(v13738_2_1_q0),.v13738_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_address0),.v13738_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_ce0),.v13738_3_0_q0(v13738_3_0_q0),.v13738_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_address0),.v13738_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_ce0),.v13738_3_1_q0(v13738_3_1_q0),.v13738_4_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_address0),.v13738_4_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_ce0),.v13738_4_0_q0(v13738_4_0_q0),.v13738_4_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_address0),.v13738_4_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_ce0),.v13738_4_1_q0(v13738_4_1_q0),.v13738_5_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_address0),.v13738_5_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_ce0),.v13738_5_0_q0(v13738_5_0_q0),.v13738_5_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_address0),.v13738_5_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_ce0),.v13738_5_1_q0(v13738_5_1_q0),.v13738_6_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_address0),.v13738_6_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_ce0),.v13738_6_0_q0(v13738_6_0_q0),.v13738_6_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_address0),.v13738_6_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_ce0),.v13738_6_1_q0(v13738_6_1_q0),.v13738_7_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_address0),.v13738_7_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_ce0),.v13738_7_0_q0(v13738_7_0_q0),.v13738_7_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_address0),.v13738_7_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_ce0),.v13738_7_1_q0(v13738_7_1_q0));
forward_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U12186(.din0(mul_ln4172_fu_226_p0),.din1(mul_ln4172_fu_226_p1),.dout(mul_ln4172_fu_226_p2));
forward_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U12187(.din0(mul_ln4171_fu_242_p0),.din1(mul_ln4171_fu_242_p1),.dout(mul_ln4171_fu_242_p2));
forward_urem_9ns_3ns_2_13_seq_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_seq_1_U12188(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_270_ap_start),.done(grp_fu_270_ap_done),.din0(grp_fu_270_p0),.din1(grp_fu_270_p1),.ce(grp_fu_270_ce),.dout(grp_fu_270_p2));
forward_urem_7ns_3ns_2_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_7ns_3ns_2_11_seq_1_U12189(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_276_ap_start),.done(grp_fu_276_ap_done),.din0(trunc_ln6_reg_325),.din1(grp_fu_276_p1),.ce(1'b1),.dout(grp_fu_276_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_301_reg_365 <= empty_301_fu_309_p1;
        mul9_i_cast_cast_reg_360[1] <= mul9_i_cast_cast_fu_301_p3[1];
mul9_i_cast_cast_reg_360[3] <= mul9_i_cast_cast_fu_301_p3[3];
        mul_i_reg_345[9 : 5] <= mul_i_fu_281_p3[9 : 5];
        p_udiv62_cast_reg_350[6 : 2] <= p_udiv62_cast_fu_289_p3[6 : 2];
        trunc_ln4168_reg_355 <= trunc_ln4168_fu_297_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_335 <= empty_fu_266_p1;
        tmp_reg_330 <= v3345_0[32'd1];
        tmp_s_reg_319 <= {{mul_ln4172_fu_226_p2[17:13]}};
        trunc_ln6_reg_325 <= {{mul_ln4171_fu_242_p2[17:11]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        urem_ln4171_reg_340 <= grp_fu_276_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_270_ap_start = 1'b1;
    end else begin
        grp_fu_270_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_270_ce = 1'b0;
    end else begin
        grp_fu_270_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_ap_start = 1'b1;
    end else begin
        grp_fu_276_ap_start = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_301_fu_309_p1 = grp_fu_270_p2[1:0];
assign empty_fu_266_p1 = v3345_0[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_ap_start_reg;
assign grp_fu_270_p0 = {{v3345_0[15:7]}};
assign grp_fu_270_p1 = 9'd3;
assign grp_fu_276_p1 = 7'd3;
assign mul9_i_cast_cast_fu_301_p3 = ((tmp_reg_330[0:0] == 1'b1) ? 4'd10 : 4'd0);
assign mul_i_fu_281_p3 = {{tmp_s_reg_319}, {5'd0}};
assign mul_ln4171_fu_242_p0 = zext_ln4172_fu_222_p1;
assign mul_ln4171_fu_242_p1 = 19'd683;
assign mul_ln4172_fu_226_p0 = zext_ln4172_fu_222_p1;
assign mul_ln4172_fu_226_p1 = 19'd911;
assign p_udiv62_cast_fu_289_p3 = {{tmp_s_reg_319}, {2'd0}};
assign trunc_ln4168_fu_297_p1 = urem_ln4171_reg_340[1:0];
assign trunc_ln_fu_212_p4 = {{v3345_0[15:7]}};
assign v13738_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_address0;
assign v13738_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_0_ce0;
assign v13738_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_address0;
assign v13738_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_0_1_ce0;
assign v13738_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_address0;
assign v13738_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_0_ce0;
assign v13738_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_address0;
assign v13738_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_1_1_ce0;
assign v13738_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_address0;
assign v13738_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_0_ce0;
assign v13738_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_address0;
assign v13738_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_2_1_ce0;
assign v13738_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_address0;
assign v13738_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_0_ce0;
assign v13738_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_address0;
assign v13738_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_3_1_ce0;
assign v13738_4_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_address0;
assign v13738_4_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_0_ce0;
assign v13738_4_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_address0;
assign v13738_4_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_4_1_ce0;
assign v13738_5_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_address0;
assign v13738_5_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_0_ce0;
assign v13738_5_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_address0;
assign v13738_5_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_5_1_ce0;
assign v13738_6_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_address0;
assign v13738_6_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_0_ce0;
assign v13738_6_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_address0;
assign v13738_6_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_6_1_ce0;
assign v13738_7_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_address0;
assign v13738_7_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_0_ce0;
assign v13738_7_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_address0;
assign v13738_7_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v13738_7_1_ce0;
assign v3353_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_address0;
assign v3353_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_ce0;
assign v3353_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_d0;
assign v3353_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_10_we0;
assign v3353_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_address0;
assign v3353_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_ce0;
assign v3353_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_d0;
assign v3353_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_11_we0;
assign v3353_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_address0;
assign v3353_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_ce0;
assign v3353_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_d0;
assign v3353_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_12_we0;
assign v3353_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_address0;
assign v3353_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_ce0;
assign v3353_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_d0;
assign v3353_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_13_we0;
assign v3353_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_address0;
assign v3353_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_ce0;
assign v3353_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_d0;
assign v3353_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_14_we0;
assign v3353_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_address0;
assign v3353_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_ce0;
assign v3353_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_d0;
assign v3353_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_15_we0;
assign v3353_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_address0;
assign v3353_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_ce0;
assign v3353_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_d0;
assign v3353_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_1_we0;
assign v3353_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_address0;
assign v3353_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_ce0;
assign v3353_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_d0;
assign v3353_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_2_we0;
assign v3353_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_address0;
assign v3353_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_ce0;
assign v3353_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_d0;
assign v3353_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_3_we0;
assign v3353_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_address0;
assign v3353_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_ce0;
assign v3353_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_d0;
assign v3353_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_4_we0;
assign v3353_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_address0;
assign v3353_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_ce0;
assign v3353_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_d0;
assign v3353_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_5_we0;
assign v3353_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_address0;
assign v3353_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_ce0;
assign v3353_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_d0;
assign v3353_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_6_we0;
assign v3353_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_address0;
assign v3353_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_ce0;
assign v3353_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_d0;
assign v3353_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_7_we0;
assign v3353_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_address0;
assign v3353_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_ce0;
assign v3353_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_d0;
assign v3353_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_8_we0;
assign v3353_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_address0;
assign v3353_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_ce0;
assign v3353_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_d0;
assign v3353_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_9_we0;
assign v3353_address0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_address0;
assign v3353_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_ce0;
assign v3353_d0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_d0;
assign v3353_we0 = grp_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_3964_1_proc121_Pipeline_VITIS_fu_138_v3353_we0;
assign zext_ln4172_fu_222_p1 = trunc_ln_fu_212_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_345[4:0] <= 5'b00000;
    p_udiv62_cast_reg_350[1:0] <= 2'b00;
    mul9_i_cast_cast_reg_360[0] <= 1'b0;
    mul9_i_cast_cast_reg_360[2] <= 1'b0;
end
endmodule 