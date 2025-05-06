
module forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5990_address0,v5990_ce0,v5990_we0,v5990_d0,v5990_1_address0,v5990_1_ce0,v5990_1_we0,v5990_1_d0,v5990_2_address0,v5990_2_ce0,v5990_2_we0,v5990_2_d0,v5990_3_address0,v5990_3_ce0,v5990_3_we0,v5990_3_d0,v5990_4_address0,v5990_4_ce0,v5990_4_we0,v5990_4_d0,v5990_5_address0,v5990_5_ce0,v5990_5_we0,v5990_5_d0,v5990_6_address0,v5990_6_ce0,v5990_6_we0,v5990_6_d0,v5990_7_address0,v5990_7_ce0,v5990_7_we0,v5990_7_d0,v5981_0,v9218_0_0_0_address0,v9218_0_0_0_ce0,v9218_0_0_0_q0,v9218_0_0_1_address0,v9218_0_0_1_ce0,v9218_0_0_1_q0,v9218_0_0_2_address0,v9218_0_0_2_ce0,v9218_0_0_2_q0,v9218_0_0_3_address0,v9218_0_0_3_ce0,v9218_0_0_3_q0,v9218_0_1_0_address0,v9218_0_1_0_ce0,v9218_0_1_0_q0,v9218_0_1_1_address0,v9218_0_1_1_ce0,v9218_0_1_1_q0,v9218_0_1_2_address0,v9218_0_1_2_ce0,v9218_0_1_2_q0,v9218_0_1_3_address0,v9218_0_1_3_ce0,v9218_0_1_3_q0,v9218_0_2_0_address0,v9218_0_2_0_ce0,v9218_0_2_0_q0,v9218_0_2_1_address0,v9218_0_2_1_ce0,v9218_0_2_1_q0,v9218_0_2_2_address0,v9218_0_2_2_ce0,v9218_0_2_2_q0,v9218_0_2_3_address0,v9218_0_2_3_ce0,v9218_0_2_3_q0,v9218_0_3_0_address0,v9218_0_3_0_ce0,v9218_0_3_0_q0,v9218_0_3_1_address0,v9218_0_3_1_ce0,v9218_0_3_1_q0,v9218_0_3_2_address0,v9218_0_3_2_ce0,v9218_0_3_2_q0,v9218_0_3_3_address0,v9218_0_3_3_ce0,v9218_0_3_3_q0,v9218_1_0_0_address0,v9218_1_0_0_ce0,v9218_1_0_0_q0,v9218_1_0_1_address0,v9218_1_0_1_ce0,v9218_1_0_1_q0,v9218_1_0_2_address0,v9218_1_0_2_ce0,v9218_1_0_2_q0,v9218_1_0_3_address0,v9218_1_0_3_ce0,v9218_1_0_3_q0,v9218_1_1_0_address0,v9218_1_1_0_ce0,v9218_1_1_0_q0,v9218_1_1_1_address0,v9218_1_1_1_ce0,v9218_1_1_1_q0,v9218_1_1_2_address0,v9218_1_1_2_ce0,v9218_1_1_2_q0,v9218_1_1_3_address0,v9218_1_1_3_ce0,v9218_1_1_3_q0,v9218_1_2_0_address0,v9218_1_2_0_ce0,v9218_1_2_0_q0,v9218_1_2_1_address0,v9218_1_2_1_ce0,v9218_1_2_1_q0,v9218_1_2_2_address0,v9218_1_2_2_ce0,v9218_1_2_2_q0,v9218_1_2_3_address0,v9218_1_2_3_ce0,v9218_1_2_3_q0,v9218_1_3_0_address0,v9218_1_3_0_ce0,v9218_1_3_0_q0,v9218_1_3_1_address0,v9218_1_3_1_ce0,v9218_1_3_1_q0,v9218_1_3_2_address0,v9218_1_3_2_ce0,v9218_1_3_2_q0,v9218_1_3_3_address0,v9218_1_3_3_ce0,v9218_1_3_3_q0);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v5990_address0;
output   v5990_ce0;
output   v5990_we0;
output  [7:0] v5990_d0;
output  [9:0] v5990_1_address0;
output   v5990_1_ce0;
output   v5990_1_we0;
output  [7:0] v5990_1_d0;
output  [9:0] v5990_2_address0;
output   v5990_2_ce0;
output   v5990_2_we0;
output  [7:0] v5990_2_d0;
output  [9:0] v5990_3_address0;
output   v5990_3_ce0;
output   v5990_3_we0;
output  [7:0] v5990_3_d0;
output  [9:0] v5990_4_address0;
output   v5990_4_ce0;
output   v5990_4_we0;
output  [7:0] v5990_4_d0;
output  [9:0] v5990_5_address0;
output   v5990_5_ce0;
output   v5990_5_we0;
output  [7:0] v5990_5_d0;
output  [9:0] v5990_6_address0;
output   v5990_6_ce0;
output   v5990_6_we0;
output  [7:0] v5990_6_d0;
output  [9:0] v5990_7_address0;
output   v5990_7_ce0;
output   v5990_7_we0;
output  [7:0] v5990_7_d0;
input  [8:0] v5981_0;
output  [12:0] v9218_0_0_0_address0;
output   v9218_0_0_0_ce0;
input  [7:0] v9218_0_0_0_q0;
output  [12:0] v9218_0_0_1_address0;
output   v9218_0_0_1_ce0;
input  [7:0] v9218_0_0_1_q0;
output  [12:0] v9218_0_0_2_address0;
output   v9218_0_0_2_ce0;
input  [7:0] v9218_0_0_2_q0;
output  [12:0] v9218_0_0_3_address0;
output   v9218_0_0_3_ce0;
input  [7:0] v9218_0_0_3_q0;
output  [12:0] v9218_0_1_0_address0;
output   v9218_0_1_0_ce0;
input  [7:0] v9218_0_1_0_q0;
output  [12:0] v9218_0_1_1_address0;
output   v9218_0_1_1_ce0;
input  [7:0] v9218_0_1_1_q0;
output  [12:0] v9218_0_1_2_address0;
output   v9218_0_1_2_ce0;
input  [7:0] v9218_0_1_2_q0;
output  [12:0] v9218_0_1_3_address0;
output   v9218_0_1_3_ce0;
input  [7:0] v9218_0_1_3_q0;
output  [12:0] v9218_0_2_0_address0;
output   v9218_0_2_0_ce0;
input  [7:0] v9218_0_2_0_q0;
output  [12:0] v9218_0_2_1_address0;
output   v9218_0_2_1_ce0;
input  [7:0] v9218_0_2_1_q0;
output  [12:0] v9218_0_2_2_address0;
output   v9218_0_2_2_ce0;
input  [7:0] v9218_0_2_2_q0;
output  [12:0] v9218_0_2_3_address0;
output   v9218_0_2_3_ce0;
input  [7:0] v9218_0_2_3_q0;
output  [12:0] v9218_0_3_0_address0;
output   v9218_0_3_0_ce0;
input  [7:0] v9218_0_3_0_q0;
output  [12:0] v9218_0_3_1_address0;
output   v9218_0_3_1_ce0;
input  [7:0] v9218_0_3_1_q0;
output  [12:0] v9218_0_3_2_address0;
output   v9218_0_3_2_ce0;
input  [7:0] v9218_0_3_2_q0;
output  [12:0] v9218_0_3_3_address0;
output   v9218_0_3_3_ce0;
input  [7:0] v9218_0_3_3_q0;
output  [12:0] v9218_1_0_0_address0;
output   v9218_1_0_0_ce0;
input  [7:0] v9218_1_0_0_q0;
output  [12:0] v9218_1_0_1_address0;
output   v9218_1_0_1_ce0;
input  [7:0] v9218_1_0_1_q0;
output  [12:0] v9218_1_0_2_address0;
output   v9218_1_0_2_ce0;
input  [7:0] v9218_1_0_2_q0;
output  [12:0] v9218_1_0_3_address0;
output   v9218_1_0_3_ce0;
input  [7:0] v9218_1_0_3_q0;
output  [12:0] v9218_1_1_0_address0;
output   v9218_1_1_0_ce0;
input  [7:0] v9218_1_1_0_q0;
output  [12:0] v9218_1_1_1_address0;
output   v9218_1_1_1_ce0;
input  [7:0] v9218_1_1_1_q0;
output  [12:0] v9218_1_1_2_address0;
output   v9218_1_1_2_ce0;
input  [7:0] v9218_1_1_2_q0;
output  [12:0] v9218_1_1_3_address0;
output   v9218_1_1_3_ce0;
input  [7:0] v9218_1_1_3_q0;
output  [12:0] v9218_1_2_0_address0;
output   v9218_1_2_0_ce0;
input  [7:0] v9218_1_2_0_q0;
output  [12:0] v9218_1_2_1_address0;
output   v9218_1_2_1_ce0;
input  [7:0] v9218_1_2_1_q0;
output  [12:0] v9218_1_2_2_address0;
output   v9218_1_2_2_ce0;
input  [7:0] v9218_1_2_2_q0;
output  [12:0] v9218_1_2_3_address0;
output   v9218_1_2_3_ce0;
input  [7:0] v9218_1_2_3_q0;
output  [12:0] v9218_1_3_0_address0;
output   v9218_1_3_0_ce0;
input  [7:0] v9218_1_3_0_q0;
output  [12:0] v9218_1_3_1_address0;
output   v9218_1_3_1_ce0;
input  [7:0] v9218_1_3_1_q0;
output  [12:0] v9218_1_3_2_address0;
output   v9218_1_3_2_ce0;
input  [7:0] v9218_1_3_2_q0;
output  [12:0] v9218_1_3_3_address0;
output   v9218_1_3_3_ce0;
input  [7:0] v9218_1_3_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [4:0] trunc_ln_fu_241_p4;
reg   [0:0] tmp_reg_379;
reg   [2:0] trunc_ln1_reg_385;
reg   [0:0] tmp_16_reg_392;
wire   [5:0] mul_i_fu_303_p3;
reg   [5:0] mul_i_reg_397;
wire    ap_CS_fsm_state9;
wire   [2:0] select_ln9185_fu_321_p3;
reg   [2:0] select_ln9185_reg_402;
wire   [2:0] select_ln9184_fu_329_p3;
reg   [2:0] select_ln9184_reg_407;
wire   [2:0] thr_add2_fu_352_p2;
reg   [2:0] thr_add2_reg_412;
wire   [1:0] trunc_ln9184_1_fu_359_p1;
reg   [1:0] trunc_ln9184_1_reg_417;
wire   [1:0] trunc_ln9185_fu_364_p1;
reg   [1:0] trunc_ln9185_reg_422;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] mul_ln9186_fu_255_p0;
wire   [10:0] zext_ln9186_fu_251_p1;
wire   [6:0] mul_ln9186_fu_255_p1;
wire   [10:0] mul_ln9186_fu_255_p2;
wire   [14:0] mul_ln9186_cast_fu_261_p1;
wire   [4:0] mul_ln9185_fu_273_p0;
wire   [6:0] mul_ln9185_fu_273_p1;
wire   [10:0] mul_ln9185_fu_273_p2;
wire   [4:0] grp_fu_297_p0;
wire   [2:0] grp_fu_297_p1;
wire   [0:0] icmp_ln9185_fu_311_p2;
wire   [2:0] add_ln9185_fu_316_p2;
wire   [2:0] grp_fu_297_p2;
wire   [0:0] empty_fu_341_p1;
wire   [2:0] trunc_ln9184_fu_337_p1;
wire   [2:0] mul17_i152_fu_344_p3;
reg    grp_fu_297_ap_start;
wire    grp_fu_297_ap_done;
reg    grp_fu_297_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_ready),.mul_i(mul_i_reg_397),.empty_95(tmp_reg_379),.select_ln9185(select_ln9185_reg_402),.select_ln9184(select_ln9184_reg_407),.v5990_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_address0),.v5990_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_ce0),.v5990_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_we0),.v5990_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_d0),.v5990_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_address0),.v5990_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_ce0),.v5990_1_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_we0),.v5990_1_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_d0),.v5990_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_address0),.v5990_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_ce0),.v5990_2_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_we0),.v5990_2_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_d0),.v5990_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_address0),.v5990_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_ce0),.v5990_3_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_we0),.v5990_3_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_d0),.v5990_4_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_address0),.v5990_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_ce0),.v5990_4_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_we0),.v5990_4_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_d0),.v5990_5_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_address0),.v5990_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_ce0),.v5990_5_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_we0),.v5990_5_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_d0),.v5990_6_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_address0),.v5990_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_ce0),.v5990_6_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_we0),.v5990_6_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_d0),.v5990_7_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_address0),.v5990_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_ce0),.v5990_7_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_we0),.v5990_7_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_d0),.zext_ln9130(thr_add2_reg_412),.v9218_0_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_address0),.v9218_0_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_ce0),.v9218_0_0_0_q0(v9218_0_0_0_q0),.v9218_0_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_address0),.v9218_0_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_ce0),.v9218_0_0_1_q0(v9218_0_0_1_q0),.v9218_0_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_address0),.v9218_0_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_ce0),.v9218_0_0_2_q0(v9218_0_0_2_q0),.v9218_0_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_address0),.v9218_0_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_ce0),.v9218_0_0_3_q0(v9218_0_0_3_q0),.v9218_0_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_address0),.v9218_0_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_ce0),.v9218_0_1_0_q0(v9218_0_1_0_q0),.v9218_0_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_address0),.v9218_0_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_ce0),.v9218_0_1_1_q0(v9218_0_1_1_q0),.v9218_0_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_address0),.v9218_0_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_ce0),.v9218_0_1_2_q0(v9218_0_1_2_q0),.v9218_0_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_address0),.v9218_0_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_ce0),.v9218_0_1_3_q0(v9218_0_1_3_q0),.v9218_0_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_address0),.v9218_0_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_ce0),.v9218_0_2_0_q0(v9218_0_2_0_q0),.v9218_0_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_address0),.v9218_0_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_ce0),.v9218_0_2_1_q0(v9218_0_2_1_q0),.v9218_0_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_address0),.v9218_0_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_ce0),.v9218_0_2_2_q0(v9218_0_2_2_q0),.v9218_0_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_address0),.v9218_0_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_ce0),.v9218_0_2_3_q0(v9218_0_2_3_q0),.v9218_0_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_address0),.v9218_0_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_ce0),.v9218_0_3_0_q0(v9218_0_3_0_q0),.v9218_0_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_address0),.v9218_0_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_ce0),.v9218_0_3_1_q0(v9218_0_3_1_q0),.v9218_0_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_address0),.v9218_0_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_ce0),.v9218_0_3_2_q0(v9218_0_3_2_q0),.v9218_0_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_address0),.v9218_0_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_ce0),.v9218_0_3_3_q0(v9218_0_3_3_q0),.v9218_1_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_address0),.v9218_1_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_ce0),.v9218_1_0_0_q0(v9218_1_0_0_q0),.v9218_1_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_address0),.v9218_1_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_ce0),.v9218_1_0_1_q0(v9218_1_0_1_q0),.v9218_1_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_address0),.v9218_1_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_ce0),.v9218_1_0_2_q0(v9218_1_0_2_q0),.v9218_1_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_address0),.v9218_1_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_ce0),.v9218_1_0_3_q0(v9218_1_0_3_q0),.v9218_1_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_address0),.v9218_1_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_ce0),.v9218_1_1_0_q0(v9218_1_1_0_q0),.v9218_1_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_address0),.v9218_1_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_ce0),.v9218_1_1_1_q0(v9218_1_1_1_q0),.v9218_1_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_address0),.v9218_1_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_ce0),.v9218_1_1_2_q0(v9218_1_1_2_q0),.v9218_1_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_address0),.v9218_1_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_ce0),.v9218_1_1_3_q0(v9218_1_1_3_q0),.v9218_1_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_address0),.v9218_1_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_ce0),.v9218_1_2_0_q0(v9218_1_2_0_q0),.v9218_1_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_address0),.v9218_1_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_ce0),.v9218_1_2_1_q0(v9218_1_2_1_q0),.v9218_1_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_address0),.v9218_1_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_ce0),.v9218_1_2_2_q0(v9218_1_2_2_q0),.v9218_1_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_address0),.v9218_1_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_ce0),.v9218_1_2_3_q0(v9218_1_2_3_q0),.v9218_1_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_address0),.v9218_1_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_ce0),.v9218_1_3_0_q0(v9218_1_3_0_q0),.v9218_1_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_address0),.v9218_1_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_ce0),.v9218_1_3_1_q0(v9218_1_3_1_q0),.v9218_1_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_address0),.v9218_1_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_ce0),.v9218_1_3_2_q0(v9218_1_3_2_q0),.v9218_1_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_address0),.v9218_1_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_ce0),.v9218_1_3_3_q0(v9218_1_3_3_q0),.empty_96(trunc_ln9184_1_reg_417),.empty(trunc_ln9185_reg_422));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U5441(.din0(mul_ln9186_fu_255_p0),.din1(mul_ln9186_fu_255_p1),.dout(mul_ln9186_fu_255_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U5442(.din0(mul_ln9185_fu_273_p0),.din1(mul_ln9185_fu_273_p1),.dout(mul_ln9185_fu_273_p2));
forward_urem_5ns_3ns_3_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 3 ))
urem_5ns_3ns_3_9_seq_1_U5443(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_297_ap_start),.done(grp_fu_297_ap_done),.din0(grp_fu_297_p0),.din1(grp_fu_297_p1),.ce(grp_fu_297_ce),.dout(grp_fu_297_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_i_reg_397[5] <= mul_i_fu_303_p3[5];
        select_ln9184_reg_407[2] <= select_ln9184_fu_329_p3[2];
        select_ln9185_reg_402 <= select_ln9185_fu_321_p3;
        thr_add2_reg_412 <= thr_add2_fu_352_p2;
        trunc_ln9184_1_reg_417 <= trunc_ln9184_1_fu_359_p1;
        trunc_ln9185_reg_422 <= trunc_ln9185_fu_364_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_16_reg_392 <= v5981_0[32'd1];
        tmp_reg_379 <= mul_ln9186_cast_fu_261_p1[32'd9];
        trunc_ln1_reg_385 <= {{mul_ln9185_fu_273_p2[9:7]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_297_ap_start = 1'b1;
    end else begin
        grp_fu_297_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_297_ce = 1'b0;
    end else begin
        grp_fu_297_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln9185_fu_316_p2 = ($signed(trunc_ln1_reg_385) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_341_p1 = v5981_0[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_ap_start_reg;
assign grp_fu_297_p0 = {{v5981_0[8:4]}};
assign grp_fu_297_p1 = 5'd3;
assign icmp_ln9185_fu_311_p2 = ((trunc_ln1_reg_385 < 3'd3) ? 1'b1 : 1'b0);
assign mul17_i152_fu_344_p3 = ((empty_fu_341_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign mul_i_fu_303_p3 = {{tmp_reg_379}, {5'd0}};
assign mul_ln9185_fu_273_p0 = zext_ln9186_fu_251_p1;
assign mul_ln9185_fu_273_p1 = 11'd43;
assign mul_ln9186_cast_fu_261_p1 = mul_ln9186_fu_255_p2;
assign mul_ln9186_fu_255_p0 = zext_ln9186_fu_251_p1;
assign mul_ln9186_fu_255_p1 = 11'd57;
assign select_ln9184_fu_329_p3 = ((tmp_16_reg_392[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign select_ln9185_fu_321_p3 = ((icmp_ln9185_fu_311_p2[0:0] == 1'b1) ? trunc_ln1_reg_385 : add_ln9185_fu_316_p2);
assign thr_add2_fu_352_p2 = (trunc_ln9184_fu_337_p1 | mul17_i152_fu_344_p3);
assign trunc_ln9184_1_fu_359_p1 = grp_fu_297_p2[1:0];
assign trunc_ln9184_fu_337_p1 = grp_fu_297_p2[2:0];
assign trunc_ln9185_fu_364_p1 = select_ln9185_fu_321_p3[1:0];
assign trunc_ln_fu_241_p4 = {{v5981_0[8:4]}};
assign v5990_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_address0;
assign v5990_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_ce0;
assign v5990_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_d0;
assign v5990_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_1_we0;
assign v5990_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_address0;
assign v5990_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_ce0;
assign v5990_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_d0;
assign v5990_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_2_we0;
assign v5990_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_address0;
assign v5990_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_ce0;
assign v5990_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_d0;
assign v5990_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_3_we0;
assign v5990_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_address0;
assign v5990_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_ce0;
assign v5990_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_d0;
assign v5990_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_4_we0;
assign v5990_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_address0;
assign v5990_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_ce0;
assign v5990_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_d0;
assign v5990_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_5_we0;
assign v5990_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_address0;
assign v5990_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_ce0;
assign v5990_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_d0;
assign v5990_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_6_we0;
assign v5990_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_address0;
assign v5990_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_ce0;
assign v5990_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_d0;
assign v5990_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_7_we0;
assign v5990_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_address0;
assign v5990_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_ce0;
assign v5990_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_d0;
assign v5990_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v5990_we0;
assign v9218_0_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_address0;
assign v9218_0_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_0_ce0;
assign v9218_0_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_address0;
assign v9218_0_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_1_ce0;
assign v9218_0_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_address0;
assign v9218_0_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_2_ce0;
assign v9218_0_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_address0;
assign v9218_0_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_0_3_ce0;
assign v9218_0_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_address0;
assign v9218_0_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_0_ce0;
assign v9218_0_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_address0;
assign v9218_0_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_1_ce0;
assign v9218_0_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_address0;
assign v9218_0_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_2_ce0;
assign v9218_0_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_address0;
assign v9218_0_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_1_3_ce0;
assign v9218_0_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_address0;
assign v9218_0_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_0_ce0;
assign v9218_0_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_address0;
assign v9218_0_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_1_ce0;
assign v9218_0_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_address0;
assign v9218_0_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_2_ce0;
assign v9218_0_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_address0;
assign v9218_0_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_2_3_ce0;
assign v9218_0_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_address0;
assign v9218_0_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_0_ce0;
assign v9218_0_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_address0;
assign v9218_0_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_1_ce0;
assign v9218_0_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_address0;
assign v9218_0_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_2_ce0;
assign v9218_0_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_address0;
assign v9218_0_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_0_3_3_ce0;
assign v9218_1_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_address0;
assign v9218_1_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_0_ce0;
assign v9218_1_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_address0;
assign v9218_1_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_1_ce0;
assign v9218_1_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_address0;
assign v9218_1_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_2_ce0;
assign v9218_1_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_address0;
assign v9218_1_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_0_3_ce0;
assign v9218_1_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_address0;
assign v9218_1_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_0_ce0;
assign v9218_1_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_address0;
assign v9218_1_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_1_ce0;
assign v9218_1_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_address0;
assign v9218_1_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_2_ce0;
assign v9218_1_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_address0;
assign v9218_1_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_1_3_ce0;
assign v9218_1_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_address0;
assign v9218_1_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_0_ce0;
assign v9218_1_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_address0;
assign v9218_1_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_1_ce0;
assign v9218_1_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_address0;
assign v9218_1_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_2_ce0;
assign v9218_1_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_address0;
assign v9218_1_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_2_3_ce0;
assign v9218_1_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_address0;
assign v9218_1_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_0_ce0;
assign v9218_1_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_address0;
assign v9218_1_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_1_ce0;
assign v9218_1_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_address0;
assign v9218_1_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_2_ce0;
assign v9218_1_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_address0;
assign v9218_1_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9130_1_proc89_Pipeline_VITIS_s_fu_150_v9218_1_3_3_ce0;
assign zext_ln9186_fu_251_p1 = trunc_ln_fu_241_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_397[4:0] <= 5'b00000;
    select_ln9184_reg_407[1:0] <= 2'b00;
end
endmodule 
