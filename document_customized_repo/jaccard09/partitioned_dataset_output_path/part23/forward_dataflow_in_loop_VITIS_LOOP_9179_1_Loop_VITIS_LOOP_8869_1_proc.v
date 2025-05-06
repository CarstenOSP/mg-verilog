
module forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v5991_address0,v5991_ce0,v5991_we0,v5991_d0,v5991_address1,v5991_ce1,v5991_q1,v5991_1_address0,v5991_1_ce0,v5991_1_we0,v5991_1_d0,v5991_1_address1,v5991_1_ce1,v5991_1_q1,v5991_2_address0,v5991_2_ce0,v5991_2_we0,v5991_2_d0,v5991_2_address1,v5991_2_ce1,v5991_2_q1,v5991_3_address0,v5991_3_ce0,v5991_3_we0,v5991_3_d0,v5991_3_address1,v5991_3_ce1,v5991_3_q1,v5991_4_address0,v5991_4_ce0,v5991_4_we0,v5991_4_d0,v5991_4_address1,v5991_4_ce1,v5991_4_q1,v5991_5_address0,v5991_5_ce0,v5991_5_we0,v5991_5_d0,v5991_5_address1,v5991_5_ce1,v5991_5_q1,v5991_6_address0,v5991_6_ce0,v5991_6_we0,v5991_6_d0,v5991_6_address1,v5991_6_ce1,v5991_6_q1,v5991_7_address0,v5991_7_ce0,v5991_7_we0,v5991_7_d0,v5991_7_address1,v5991_7_ce1,v5991_7_q1,v5989_3_address0,v5989_3_ce0,v5989_3_q0,v5989_1_address0,v5989_1_ce0,v5989_1_q0,v5989_2_address0,v5989_2_ce0,v5989_2_q0,v5989_address0,v5989_ce0,v5989_q0,v5990_7_address0,v5990_7_ce0,v5990_7_q0,v5988_7_address0,v5988_7_ce0,v5988_7_q0,v5990_6_address0,v5990_6_ce0,v5990_6_q0,v5988_6_address0,v5988_6_ce0,v5988_6_q0,v5990_5_address0,v5990_5_ce0,v5990_5_q0,v5988_5_address0,v5988_5_ce0,v5988_5_q0,v5990_4_address0,v5990_4_ce0,v5990_4_q0,v5988_4_address0,v5988_4_ce0,v5988_4_q0,v5988_3_address0,v5988_3_ce0,v5988_3_q0,v5988_2_address0,v5988_2_ce0,v5988_2_q0,v5988_1_address0,v5988_1_ce0,v5988_1_q0,v5988_address0,v5988_ce0,v5988_q0,v5990_3_address0,v5990_3_ce0,v5990_3_q0,v5990_2_address0,v5990_2_ce0,v5990_2_q0,v5990_1_address0,v5990_1_ce0,v5990_1_q0,v5990_address0,v5990_ce0,v5990_q0,ap_return);  
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
input  [8:0] p_read;
output  [9:0] v5991_address0;
output   v5991_ce0;
output   v5991_we0;
output  [7:0] v5991_d0;
output  [9:0] v5991_address1;
output   v5991_ce1;
input  [7:0] v5991_q1;
output  [9:0] v5991_1_address0;
output   v5991_1_ce0;
output   v5991_1_we0;
output  [7:0] v5991_1_d0;
output  [9:0] v5991_1_address1;
output   v5991_1_ce1;
input  [7:0] v5991_1_q1;
output  [9:0] v5991_2_address0;
output   v5991_2_ce0;
output   v5991_2_we0;
output  [7:0] v5991_2_d0;
output  [9:0] v5991_2_address1;
output   v5991_2_ce1;
input  [7:0] v5991_2_q1;
output  [9:0] v5991_3_address0;
output   v5991_3_ce0;
output   v5991_3_we0;
output  [7:0] v5991_3_d0;
output  [9:0] v5991_3_address1;
output   v5991_3_ce1;
input  [7:0] v5991_3_q1;
output  [9:0] v5991_4_address0;
output   v5991_4_ce0;
output   v5991_4_we0;
output  [7:0] v5991_4_d0;
output  [9:0] v5991_4_address1;
output   v5991_4_ce1;
input  [7:0] v5991_4_q1;
output  [9:0] v5991_5_address0;
output   v5991_5_ce0;
output   v5991_5_we0;
output  [7:0] v5991_5_d0;
output  [9:0] v5991_5_address1;
output   v5991_5_ce1;
input  [7:0] v5991_5_q1;
output  [9:0] v5991_6_address0;
output   v5991_6_ce0;
output   v5991_6_we0;
output  [7:0] v5991_6_d0;
output  [9:0] v5991_6_address1;
output   v5991_6_ce1;
input  [7:0] v5991_6_q1;
output  [9:0] v5991_7_address0;
output   v5991_7_ce0;
output   v5991_7_we0;
output  [7:0] v5991_7_d0;
output  [9:0] v5991_7_address1;
output   v5991_7_ce1;
input  [7:0] v5991_7_q1;
output  [7:0] v5989_3_address0;
output   v5989_3_ce0;
input  [7:0] v5989_3_q0;
output  [7:0] v5989_1_address0;
output   v5989_1_ce0;
input  [7:0] v5989_1_q0;
output  [7:0] v5989_2_address0;
output   v5989_2_ce0;
input  [7:0] v5989_2_q0;
output  [7:0] v5989_address0;
output   v5989_ce0;
input  [7:0] v5989_q0;
output  [9:0] v5990_7_address0;
output   v5990_7_ce0;
input  [7:0] v5990_7_q0;
output  [9:0] v5988_7_address0;
output   v5988_7_ce0;
input  [7:0] v5988_7_q0;
output  [9:0] v5990_6_address0;
output   v5990_6_ce0;
input  [7:0] v5990_6_q0;
output  [9:0] v5988_6_address0;
output   v5988_6_ce0;
input  [7:0] v5988_6_q0;
output  [9:0] v5990_5_address0;
output   v5990_5_ce0;
input  [7:0] v5990_5_q0;
output  [9:0] v5988_5_address0;
output   v5988_5_ce0;
input  [7:0] v5988_5_q0;
output  [9:0] v5990_4_address0;
output   v5990_4_ce0;
input  [7:0] v5990_4_q0;
output  [9:0] v5988_4_address0;
output   v5988_4_ce0;
input  [7:0] v5988_4_q0;
output  [9:0] v5988_3_address0;
output   v5988_3_ce0;
input  [7:0] v5988_3_q0;
output  [9:0] v5988_2_address0;
output   v5988_2_ce0;
input  [7:0] v5988_2_q0;
output  [9:0] v5988_1_address0;
output   v5988_1_ce0;
input  [7:0] v5988_1_q0;
output  [9:0] v5988_address0;
output   v5988_ce0;
input  [7:0] v5988_q0;
output  [9:0] v5990_3_address0;
output   v5990_3_ce0;
input  [7:0] v5990_3_q0;
output  [9:0] v5990_2_address0;
output   v5990_2_ce0;
input  [7:0] v5990_2_q0;
output  [9:0] v5990_1_address0;
output   v5990_1_ce0;
input  [7:0] v5990_1_q0;
output  [9:0] v5990_address0;
output   v5990_ce0;
input  [7:0] v5990_q0;
output  [3:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] empty_fu_170_p1;
reg   [3:0] empty_reg_271;
reg    ap_block_state1;
reg   [4:0] trunc_ln_reg_275;
wire    ap_CS_fsm_state2;
reg   [1:0] tmp_30_reg_286;
wire   [0:0] cmp265_i_not_i_fu_235_p2;
reg   [0:0] cmp265_i_not_i_reg_291;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i38_i_fu_252_p2;
reg   [6:0] mul_i38_i_reg_296;
wire    ap_CS_fsm_state9;
wire   [0:0] tmp_fu_265_p2;
reg   [0:0] tmp_reg_301;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] grp_fu_184_p0;
wire   [2:0] grp_fu_184_p1;
wire   [4:0] mul_ln9186_fu_193_p0;
wire   [10:0] zext_ln9186_fu_190_p1;
wire   [6:0] mul_ln9186_fu_193_p1;
wire   [4:0] mul_ln9185_fu_199_p0;
wire   [6:0] mul_ln9185_fu_199_p1;
wire   [10:0] mul_ln9185_fu_199_p2;
wire   [2:0] grp_fu_215_p0;
wire   [10:0] mul_ln9186_fu_193_p2;
wire   [1:0] grp_fu_215_p2;
wire   [1:0] trunc_ln9185_fu_231_p1;
wire   [1:0] grp_fu_184_p2;
wire   [6:0] p_shl_fu_245_p3;
wire   [1:0] trunc_ln9184_fu_241_p1;
wire   [0:0] cmp269_i_not_i_fu_259_p2;
reg    grp_fu_184_ap_start;
wire    grp_fu_184_ap_done;
reg    grp_fu_184_ce;
reg    grp_fu_215_ap_start;
wire    grp_fu_215_ap_done;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready),.mul_i38_cast_i(mul_i38_i_reg_296),.tmp(tmp_reg_301),.v5989_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_address0),.v5989_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_ce0),.v5989_3_q0(v5989_3_q0),.v5989_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_address0),.v5989_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_ce0),.v5989_1_q0(v5989_1_q0),.v5989_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_address0),.v5989_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_ce0),.v5989_2_q0(v5989_2_q0),.v5989_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_address0),.v5989_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_ce0),.v5989_q0(v5989_q0),.v5991_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address0),.v5991_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce0),.v5991_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_we0),.v5991_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_d0),.v5991_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address1),.v5991_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce1),.v5991_q1(v5991_q1),.v5991_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address0),.v5991_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce0),.v5991_1_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_we0),.v5991_1_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_d0),.v5991_1_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address1),.v5991_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce1),.v5991_1_q1(v5991_1_q1),.v5991_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address0),.v5991_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce0),.v5991_2_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_we0),.v5991_2_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_d0),.v5991_2_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address1),.v5991_2_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce1),.v5991_2_q1(v5991_2_q1),.v5991_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address0),.v5991_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce0),.v5991_3_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_we0),.v5991_3_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_d0),.v5991_3_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address1),.v5991_3_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce1),.v5991_3_q1(v5991_3_q1),.v5991_4_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address0),.v5991_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce0),.v5991_4_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_we0),.v5991_4_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_d0),.v5991_4_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address1),.v5991_4_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce1),.v5991_4_q1(v5991_4_q1),.v5991_5_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address0),.v5991_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce0),.v5991_5_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_we0),.v5991_5_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_d0),.v5991_5_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address1),.v5991_5_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce1),.v5991_5_q1(v5991_5_q1),.v5991_6_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address0),.v5991_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce0),.v5991_6_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_we0),.v5991_6_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_d0),.v5991_6_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address1),.v5991_6_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce1),.v5991_6_q1(v5991_6_q1),.v5991_7_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address0),.v5991_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce0),.v5991_7_we0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_we0),.v5991_7_d0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_d0),.v5991_7_address1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address1),.v5991_7_ce1(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce1),.v5991_7_q1(v5991_7_q1),.v5990_7_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_address0),.v5990_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_ce0),.v5990_7_q0(v5990_7_q0),.v5988_7_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_address0),.v5988_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_ce0),.v5988_7_q0(v5988_7_q0),.v5990_6_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_address0),.v5990_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_ce0),.v5990_6_q0(v5990_6_q0),.v5988_6_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_address0),.v5988_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_ce0),.v5988_6_q0(v5988_6_q0),.v5990_5_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_address0),.v5990_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_ce0),.v5990_5_q0(v5990_5_q0),.v5988_5_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_address0),.v5988_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_ce0),.v5988_5_q0(v5988_5_q0),.v5990_4_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_address0),.v5990_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_ce0),.v5990_4_q0(v5990_4_q0),.v5988_4_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_address0),.v5988_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_ce0),.v5988_4_q0(v5988_4_q0),.v5988_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_address0),.v5988_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_ce0),.v5988_3_q0(v5988_3_q0),.v5988_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_address0),.v5988_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_ce0),.v5988_2_q0(v5988_2_q0),.v5988_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_address0),.v5988_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_ce0),.v5988_1_q0(v5988_1_q0),.v5988_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_address0),.v5988_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_ce0),.v5988_q0(v5988_q0),.v5990_3_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_address0),.v5990_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_ce0),.v5990_3_q0(v5990_3_q0),.v5990_2_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_address0),.v5990_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_ce0),.v5990_2_q0(v5990_2_q0),.v5990_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_address0),.v5990_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_ce0),.v5990_1_q0(v5990_1_q0),.v5990_address0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_address0),.v5990_ce0(grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_ce0),.v5990_q0(v5990_q0));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U5575(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_184_ap_start),.done(grp_fu_184_ap_done),.din0(grp_fu_184_p0),.din1(grp_fu_184_p1),.ce(grp_fu_184_ce),.dout(grp_fu_184_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U5576(.din0(mul_ln9186_fu_193_p0),.din1(mul_ln9186_fu_193_p1),.dout(mul_ln9186_fu_193_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U5577(.din0(mul_ln9185_fu_199_p0),.din1(mul_ln9185_fu_199_p1),.dout(mul_ln9185_fu_199_p2));
forward_urem_3ns_3ns_2_7_seq_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 3 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_3ns_3ns_2_7_seq_1_U5578(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_215_ap_start),.done(grp_fu_215_ap_done),.din0(grp_fu_215_p0),.din1(3'd3),.ce(1'b1),.dout(grp_fu_215_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cmp265_i_not_i_reg_291 <= cmp265_i_not_i_fu_235_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_271 <= empty_fu_170_p1;
        trunc_ln_reg_275 <= {{p_read[8:4]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_i38_i_reg_296[6 : 5] <= mul_i38_i_fu_252_p2[6 : 5];
        tmp_reg_301 <= tmp_fu_265_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_30_reg_286 <= {{mul_ln9186_fu_193_p2[10:9]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign ap_return = empty_reg_271;
assign cmp265_i_not_i_fu_235_p2 = ((trunc_ln9185_fu_231_p1 != 2'd2) ? 1'b1 : 1'b0);
assign cmp269_i_not_i_fu_259_p2 = ((trunc_ln9184_fu_241_p1 != 2'd2) ? 1'b1 : 1'b0);
assign empty_fu_170_p1 = p_read[3:0];
assign grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_ap_start_reg;
assign grp_fu_184_p0 = {{p_read[8:4]}};
assign grp_fu_184_p1 = 5'd3;
assign grp_fu_215_p0 = {{mul_ln9185_fu_199_p2[9:7]}};
assign mul_i38_i_fu_252_p2 = (7'd0 - p_shl_fu_245_p3);
assign mul_ln9185_fu_199_p0 = zext_ln9186_fu_190_p1;
assign mul_ln9185_fu_199_p1 = 11'd43;
assign mul_ln9186_fu_193_p0 = zext_ln9186_fu_190_p1;
assign mul_ln9186_fu_193_p1 = 11'd57;
assign p_shl_fu_245_p3 = {{tmp_30_reg_286}, {5'd0}};
assign tmp_fu_265_p2 = (cmp269_i_not_i_fu_259_p2 | cmp265_i_not_i_reg_291);
assign trunc_ln9184_fu_241_p1 = grp_fu_184_p2[1:0];
assign trunc_ln9185_fu_231_p1 = grp_fu_215_p2[1:0];
assign v5988_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_address0;
assign v5988_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_1_ce0;
assign v5988_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_address0;
assign v5988_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_2_ce0;
assign v5988_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_address0;
assign v5988_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_3_ce0;
assign v5988_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_address0;
assign v5988_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_4_ce0;
assign v5988_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_address0;
assign v5988_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_5_ce0;
assign v5988_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_address0;
assign v5988_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_6_ce0;
assign v5988_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_address0;
assign v5988_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_7_ce0;
assign v5988_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_address0;
assign v5988_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5988_ce0;
assign v5989_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_address0;
assign v5989_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_1_ce0;
assign v5989_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_address0;
assign v5989_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_2_ce0;
assign v5989_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_address0;
assign v5989_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_3_ce0;
assign v5989_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_address0;
assign v5989_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5989_ce0;
assign v5990_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_address0;
assign v5990_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_1_ce0;
assign v5990_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_address0;
assign v5990_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_2_ce0;
assign v5990_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_address0;
assign v5990_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_3_ce0;
assign v5990_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_address0;
assign v5990_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_4_ce0;
assign v5990_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_address0;
assign v5990_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_5_ce0;
assign v5990_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_address0;
assign v5990_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_6_ce0;
assign v5990_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_address0;
assign v5990_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_7_ce0;
assign v5990_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_address0;
assign v5990_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5990_ce0;
assign v5991_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address0;
assign v5991_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_address1;
assign v5991_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce0;
assign v5991_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_ce1;
assign v5991_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_d0;
assign v5991_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_1_we0;
assign v5991_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address0;
assign v5991_2_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_address1;
assign v5991_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce0;
assign v5991_2_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_ce1;
assign v5991_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_d0;
assign v5991_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_2_we0;
assign v5991_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address0;
assign v5991_3_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_address1;
assign v5991_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce0;
assign v5991_3_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_ce1;
assign v5991_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_d0;
assign v5991_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_3_we0;
assign v5991_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address0;
assign v5991_4_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_address1;
assign v5991_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce0;
assign v5991_4_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_ce1;
assign v5991_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_d0;
assign v5991_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_4_we0;
assign v5991_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address0;
assign v5991_5_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_address1;
assign v5991_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce0;
assign v5991_5_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_ce1;
assign v5991_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_d0;
assign v5991_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_5_we0;
assign v5991_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address0;
assign v5991_6_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_address1;
assign v5991_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce0;
assign v5991_6_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_ce1;
assign v5991_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_d0;
assign v5991_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_6_we0;
assign v5991_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address0;
assign v5991_7_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_address1;
assign v5991_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce0;
assign v5991_7_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_ce1;
assign v5991_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_d0;
assign v5991_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_7_we0;
assign v5991_address0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address0;
assign v5991_address1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_address1;
assign v5991_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce0;
assign v5991_ce1 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_ce1;
assign v5991_d0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_d0;
assign v5991_we0 = grp_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO_fu_108_v5991_we0;
assign zext_ln9186_fu_190_p1 = trunc_ln_reg_275;
always @ (posedge ap_clk) begin
    mul_i38_i_reg_296[4:0] <= 5'b00000;
end
endmodule 
