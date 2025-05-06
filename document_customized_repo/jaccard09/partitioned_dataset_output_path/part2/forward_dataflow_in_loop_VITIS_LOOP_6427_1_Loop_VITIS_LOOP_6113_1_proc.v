
module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v4364_address0,v4364_ce0,v4364_we0,v4364_d0,v4364_address1,v4364_ce1,v4364_q1,v4364_1_address0,v4364_1_ce0,v4364_1_we0,v4364_1_d0,v4364_1_address1,v4364_1_ce1,v4364_1_q1,v4364_2_address0,v4364_2_ce0,v4364_2_we0,v4364_2_d0,v4364_2_address1,v4364_2_ce1,v4364_2_q1,v4364_3_address0,v4364_3_ce0,v4364_3_we0,v4364_3_d0,v4364_3_address1,v4364_3_ce1,v4364_3_q1,v4362_15_address0,v4362_15_ce0,v4362_15_q0,v4362_11_address0,v4362_11_ce0,v4362_11_q0,v4362_7_address0,v4362_7_ce0,v4362_7_q0,v4362_3_address0,v4362_3_ce0,v4362_3_q0,v4362_14_address0,v4362_14_ce0,v4362_14_q0,v4362_10_address0,v4362_10_ce0,v4362_10_q0,v4362_6_address0,v4362_6_ce0,v4362_6_q0,v4362_2_address0,v4362_2_ce0,v4362_2_q0,v4362_13_address0,v4362_13_ce0,v4362_13_q0,v4362_9_address0,v4362_9_ce0,v4362_9_q0,v4362_5_address0,v4362_5_ce0,v4362_5_q0,v4362_1_address0,v4362_1_ce0,v4362_1_q0,v4362_12_address0,v4362_12_ce0,v4362_12_q0,v4362_8_address0,v4362_8_ce0,v4362_8_q0,v4362_4_address0,v4362_4_ce0,v4362_4_q0,v4362_address0,v4362_ce0,v4362_q0,v4363_3_address0,v4363_3_ce0,v4363_3_q0,v4361_3_address0,v4361_3_ce0,v4361_3_q0,v4361_2_address0,v4361_2_ce0,v4361_2_q0,v4361_1_address0,v4361_1_ce0,v4361_1_q0,v4361_address0,v4361_ce0,v4361_q0,v4363_2_address0,v4363_2_ce0,v4363_2_q0,v4363_1_address0,v4363_1_ce0,v4363_1_q0,v4363_address0,v4363_ce0,v4363_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [10:0] p_read;
output  [8:0] v4364_address0;
output   v4364_ce0;
output   v4364_we0;
output  [7:0] v4364_d0;
output  [8:0] v4364_address1;
output   v4364_ce1;
input  [7:0] v4364_q1;
output  [8:0] v4364_1_address0;
output   v4364_1_ce0;
output   v4364_1_we0;
output  [7:0] v4364_1_d0;
output  [8:0] v4364_1_address1;
output   v4364_1_ce1;
input  [7:0] v4364_1_q1;
output  [8:0] v4364_2_address0;
output   v4364_2_ce0;
output   v4364_2_we0;
output  [7:0] v4364_2_d0;
output  [8:0] v4364_2_address1;
output   v4364_2_ce1;
input  [7:0] v4364_2_q1;
output  [8:0] v4364_3_address0;
output   v4364_3_ce0;
output   v4364_3_we0;
output  [7:0] v4364_3_d0;
output  [8:0] v4364_3_address1;
output   v4364_3_ce1;
input  [7:0] v4364_3_q1;
output  [5:0] v4362_15_address0;
output   v4362_15_ce0;
input  [7:0] v4362_15_q0;
output  [5:0] v4362_11_address0;
output   v4362_11_ce0;
input  [7:0] v4362_11_q0;
output  [5:0] v4362_7_address0;
output   v4362_7_ce0;
input  [7:0] v4362_7_q0;
output  [5:0] v4362_3_address0;
output   v4362_3_ce0;
input  [7:0] v4362_3_q0;
output  [5:0] v4362_14_address0;
output   v4362_14_ce0;
input  [7:0] v4362_14_q0;
output  [5:0] v4362_10_address0;
output   v4362_10_ce0;
input  [7:0] v4362_10_q0;
output  [5:0] v4362_6_address0;
output   v4362_6_ce0;
input  [7:0] v4362_6_q0;
output  [5:0] v4362_2_address0;
output   v4362_2_ce0;
input  [7:0] v4362_2_q0;
output  [5:0] v4362_13_address0;
output   v4362_13_ce0;
input  [7:0] v4362_13_q0;
output  [5:0] v4362_9_address0;
output   v4362_9_ce0;
input  [7:0] v4362_9_q0;
output  [5:0] v4362_5_address0;
output   v4362_5_ce0;
input  [7:0] v4362_5_q0;
output  [5:0] v4362_1_address0;
output   v4362_1_ce0;
input  [7:0] v4362_1_q0;
output  [5:0] v4362_12_address0;
output   v4362_12_ce0;
input  [7:0] v4362_12_q0;
output  [5:0] v4362_8_address0;
output   v4362_8_ce0;
input  [7:0] v4362_8_q0;
output  [5:0] v4362_4_address0;
output   v4362_4_ce0;
input  [7:0] v4362_4_q0;
output  [5:0] v4362_address0;
output   v4362_ce0;
input  [7:0] v4362_q0;
output  [8:0] v4363_3_address0;
output   v4363_3_ce0;
input  [7:0] v4363_3_q0;
output  [8:0] v4361_3_address0;
output   v4361_3_ce0;
input  [7:0] v4361_3_q0;
output  [8:0] v4361_2_address0;
output   v4361_2_ce0;
input  [7:0] v4361_2_q0;
output  [8:0] v4361_1_address0;
output   v4361_1_ce0;
input  [7:0] v4361_1_q0;
output  [8:0] v4361_address0;
output   v4361_ce0;
input  [7:0] v4361_q0;
output  [8:0] v4363_2_address0;
output   v4363_2_ce0;
input  [7:0] v4363_2_q0;
output  [8:0] v4363_1_address0;
output   v4363_1_ce0;
input  [7:0] v4363_1_q0;
output  [8:0] v4363_address0;
output   v4363_ce0;
input  [7:0] v4363_q0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_170_p1;
reg   [4:0] empty_reg_271;
reg    ap_block_state1;
reg   [5:0] trunc_ln_reg_275;
wire    ap_CS_fsm_state2;
reg   [2:0] tmp_188_reg_286;
wire   [0:0] cmp461_i_not_i_fu_235_p2;
reg   [0:0] cmp461_i_not_i_reg_291;
wire    ap_CS_fsm_state9;
wire   [7:0] empty_268_fu_258_p2;
reg   [7:0] empty_268_reg_296;
wire    ap_CS_fsm_state10;
wire   [0:0] tmp_fu_265_p2;
reg   [0:0] tmp_reg_301;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce1;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce1;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce1;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce1;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] grp_fu_184_p0;
wire   [2:0] grp_fu_184_p1;
wire   [5:0] mul_ln6434_fu_193_p0;
wire   [12:0] zext_ln6434_fu_190_p1;
wire   [7:0] mul_ln6434_fu_193_p1;
wire   [5:0] mul_ln6433_fu_199_p0;
wire   [7:0] mul_ln6433_fu_199_p1;
wire   [12:0] mul_ln6433_fu_199_p2;
wire   [3:0] grp_fu_215_p0;
wire   [2:0] grp_fu_215_p1;
wire   [12:0] mul_ln6434_fu_193_p2;
wire   [1:0] grp_fu_215_p2;
wire   [1:0] trunc_ln6433_fu_231_p1;
wire   [1:0] grp_fu_184_p2;
wire   [1:0] trunc_ln6432_fu_241_p1;
wire   [7:0] p_shl_fu_245_p3;
wire   [0:0] cmp465_i_not_i_fu_252_p2;
reg    grp_fu_184_ap_start;
wire    grp_fu_184_ap_done;
reg    grp_fu_184_ce;
reg    grp_fu_215_ap_start;
wire    grp_fu_215_ap_done;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready),.sext_ln6113(empty_268_reg_296),.tmp(tmp_reg_301),.v4362_15_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_address0),.v4362_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_ce0),.v4362_15_q0(v4362_15_q0),.v4362_11_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_address0),.v4362_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_ce0),.v4362_11_q0(v4362_11_q0),.v4362_7_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_address0),.v4362_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_ce0),.v4362_7_q0(v4362_7_q0),.v4362_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_address0),.v4362_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_ce0),.v4362_3_q0(v4362_3_q0),.v4362_14_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_address0),.v4362_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_ce0),.v4362_14_q0(v4362_14_q0),.v4362_10_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_address0),.v4362_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_ce0),.v4362_10_q0(v4362_10_q0),.v4362_6_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_address0),.v4362_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_ce0),.v4362_6_q0(v4362_6_q0),.v4362_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_address0),.v4362_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_ce0),.v4362_2_q0(v4362_2_q0),.v4362_13_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_address0),.v4362_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_ce0),.v4362_13_q0(v4362_13_q0),.v4362_9_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_address0),.v4362_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_ce0),.v4362_9_q0(v4362_9_q0),.v4362_5_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_address0),.v4362_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_ce0),.v4362_5_q0(v4362_5_q0),.v4362_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_address0),.v4362_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_ce0),.v4362_1_q0(v4362_1_q0),.v4362_12_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_address0),.v4362_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_ce0),.v4362_12_q0(v4362_12_q0),.v4362_8_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_address0),.v4362_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_ce0),.v4362_8_q0(v4362_8_q0),.v4362_4_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_address0),.v4362_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_ce0),.v4362_4_q0(v4362_4_q0),.v4362_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_address0),.v4362_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_ce0),.v4362_q0(v4362_q0),.v4364_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address0),.v4364_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce0),.v4364_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_we0),.v4364_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_d0),.v4364_address1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address1),.v4364_ce1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce1),.v4364_q1(v4364_q1),.v4364_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address0),.v4364_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce0),.v4364_1_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_we0),.v4364_1_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_d0),.v4364_1_address1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address1),.v4364_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce1),.v4364_1_q1(v4364_1_q1),.v4364_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address0),.v4364_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce0),.v4364_2_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_we0),.v4364_2_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_d0),.v4364_2_address1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address1),.v4364_2_ce1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce1),.v4364_2_q1(v4364_2_q1),.v4364_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address0),.v4364_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce0),.v4364_3_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_we0),.v4364_3_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_d0),.v4364_3_address1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address1),.v4364_3_ce1(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce1),.v4364_3_q1(v4364_3_q1),.v4363_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_address0),.v4363_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_ce0),.v4363_3_q0(v4363_3_q0),.v4361_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_address0),.v4361_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_ce0),.v4361_3_q0(v4361_3_q0),.v4361_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_address0),.v4361_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_ce0),.v4361_2_q0(v4361_2_q0),.v4361_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_address0),.v4361_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_ce0),.v4361_1_q0(v4361_1_q0),.v4361_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_address0),.v4361_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_ce0),.v4361_q0(v4361_q0),.v4363_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_address0),.v4363_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_ce0),.v4363_2_q0(v4363_2_q0),.v4363_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_address0),.v4363_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_ce0),.v4363_1_q0(v4363_1_q0),.v4363_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_address0),.v4363_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_ce0),.v4363_q0(v4363_q0));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U7516(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_184_ap_start),.done(grp_fu_184_ap_done),.din0(grp_fu_184_p0),.din1(grp_fu_184_p1),.ce(grp_fu_184_ce),.dout(grp_fu_184_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U7517(.din0(mul_ln6434_fu_193_p0),.din1(mul_ln6434_fu_193_p1),.dout(mul_ln6434_fu_193_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U7518(.din0(mul_ln6433_fu_199_p0),.din1(mul_ln6433_fu_199_p1),.dout(mul_ln6433_fu_199_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U7519(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_215_ap_start),.done(grp_fu_215_ap_done),.din0(grp_fu_215_p0),.din1(grp_fu_215_p1),.ce(1'b1),.dout(grp_fu_215_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        cmp461_i_not_i_reg_291 <= cmp461_i_not_i_fu_235_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_268_reg_296[7 : 5] <= empty_268_fu_258_p2[7 : 5];
        tmp_reg_301 <= tmp_fu_265_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_271 <= empty_fu_170_p1;
        trunc_ln_reg_275 <= {{p_read[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_188_reg_286 <= {{mul_ln6434_fu_193_p2[12:10]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_184_ap_start = 1'b1;
    end else begin
        grp_fu_184_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_184_ce = 1'b0;
    end else begin
        grp_fu_184_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_215_ap_start = 1'b1;
    end else begin
        grp_fu_215_ap_start = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign ap_return = empty_reg_271;
assign cmp461_i_not_i_fu_235_p2 = ((trunc_ln6433_fu_231_p1 != 2'd2) ? 1'b1 : 1'b0);
assign cmp465_i_not_i_fu_252_p2 = ((trunc_ln6432_fu_241_p1 != 2'd2) ? 1'b1 : 1'b0);
assign empty_268_fu_258_p2 = ($signed(8'd253) - $signed(p_shl_fu_245_p3));
assign empty_fu_170_p1 = p_read[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg;
assign grp_fu_184_p0 = {{p_read[10:5]}};
assign grp_fu_184_p1 = 6'd3;
assign grp_fu_215_p0 = {{mul_ln6433_fu_199_p2[11:8]}};
assign grp_fu_215_p1 = 4'd3;
assign mul_ln6433_fu_199_p0 = zext_ln6434_fu_190_p1;
assign mul_ln6433_fu_199_p1 = 13'd86;
assign mul_ln6434_fu_193_p0 = zext_ln6434_fu_190_p1;
assign mul_ln6434_fu_193_p1 = 13'd114;
assign p_shl_fu_245_p3 = {{tmp_188_reg_286}, {5'd0}};
assign tmp_fu_265_p2 = (cmp465_i_not_i_fu_252_p2 | cmp461_i_not_i_reg_291);
assign trunc_ln6432_fu_241_p1 = grp_fu_184_p2[1:0];
assign trunc_ln6433_fu_231_p1 = grp_fu_215_p2[1:0];
assign v4361_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_address0;
assign v4361_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_1_ce0;
assign v4361_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_address0;
assign v4361_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_2_ce0;
assign v4361_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_address0;
assign v4361_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_3_ce0;
assign v4361_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_address0;
assign v4361_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4361_ce0;
assign v4362_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_address0;
assign v4362_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_10_ce0;
assign v4362_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_address0;
assign v4362_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_11_ce0;
assign v4362_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_address0;
assign v4362_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_12_ce0;
assign v4362_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_address0;
assign v4362_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_13_ce0;
assign v4362_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_address0;
assign v4362_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_14_ce0;
assign v4362_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_address0;
assign v4362_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_15_ce0;
assign v4362_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_address0;
assign v4362_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_1_ce0;
assign v4362_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_address0;
assign v4362_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_2_ce0;
assign v4362_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_address0;
assign v4362_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_3_ce0;
assign v4362_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_address0;
assign v4362_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_4_ce0;
assign v4362_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_address0;
assign v4362_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_5_ce0;
assign v4362_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_address0;
assign v4362_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_6_ce0;
assign v4362_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_address0;
assign v4362_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_7_ce0;
assign v4362_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_address0;
assign v4362_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_8_ce0;
assign v4362_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_address0;
assign v4362_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_9_ce0;
assign v4362_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_address0;
assign v4362_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4362_ce0;
assign v4363_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_address0;
assign v4363_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_1_ce0;
assign v4363_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_address0;
assign v4363_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_2_ce0;
assign v4363_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_address0;
assign v4363_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_3_ce0;
assign v4363_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_address0;
assign v4363_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4363_ce0;
assign v4364_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address0;
assign v4364_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_address1;
assign v4364_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce0;
assign v4364_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_ce1;
assign v4364_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_d0;
assign v4364_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_1_we0;
assign v4364_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address0;
assign v4364_2_address1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_address1;
assign v4364_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce0;
assign v4364_2_ce1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_ce1;
assign v4364_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_d0;
assign v4364_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_2_we0;
assign v4364_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address0;
assign v4364_3_address1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_address1;
assign v4364_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce0;
assign v4364_3_ce1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_ce1;
assign v4364_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_d0;
assign v4364_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_3_we0;
assign v4364_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address0;
assign v4364_address1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_address1;
assign v4364_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce0;
assign v4364_ce1 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_ce1;
assign v4364_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_d0;
assign v4364_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO_fu_108_v4364_we0;
assign zext_ln6434_fu_190_p1 = trunc_ln_reg_275;
always @ (posedge ap_clk) begin
    empty_268_reg_296[4:0] <= 5'b11101;
end
endmodule 
