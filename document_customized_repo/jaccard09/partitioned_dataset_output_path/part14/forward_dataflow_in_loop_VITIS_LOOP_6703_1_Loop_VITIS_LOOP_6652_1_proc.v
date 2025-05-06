
module forward_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5852_address0,v5852_ce0,v5852_we0,v5852_d0,v5852_1_address0,v5852_1_ce0,v5852_1_we0,v5852_1_d0,v5852_2_address0,v5852_2_ce0,v5852_2_we0,v5852_2_d0,v5852_3_address0,v5852_3_ce0,v5852_3_we0,v5852_3_d0,v5852_4_address0,v5852_4_ce0,v5852_4_we0,v5852_4_d0,v5852_5_address0,v5852_5_ce0,v5852_5_we0,v5852_5_d0,v5852_6_address0,v5852_6_ce0,v5852_6_we0,v5852_6_d0,v5852_7_address0,v5852_7_ce0,v5852_7_we0,v5852_7_d0,v5852_8_address0,v5852_8_ce0,v5852_8_we0,v5852_8_d0,v5852_9_address0,v5852_9_ce0,v5852_9_we0,v5852_9_d0,v5852_10_address0,v5852_10_ce0,v5852_10_we0,v5852_10_d0,v5852_11_address0,v5852_11_ce0,v5852_11_we0,v5852_11_d0,v5852_12_address0,v5852_12_ce0,v5852_12_we0,v5852_12_d0,v5852_13_address0,v5852_13_ce0,v5852_13_we0,v5852_13_d0,v5852_14_address0,v5852_14_ce0,v5852_14_we0,v5852_14_d0,v5852_15_address0,v5852_15_ce0,v5852_15_we0,v5852_15_d0,v5845_0,v15505_0_address0,v15505_0_ce0,v15505_0_q0,v15505_1_address0,v15505_1_ce0,v15505_1_q0,v15505_2_address0,v15505_2_ce0,v15505_2_q0,v15505_3_address0,v15505_3_ce0,v15505_3_q0,v15505_4_address0,v15505_4_ce0,v15505_4_q0,v15505_5_address0,v15505_5_ce0,v15505_5_q0,v15505_6_address0,v15505_6_ce0,v15505_6_q0,v15505_7_address0,v15505_7_ce0,v15505_7_q0,v15505_8_address0,v15505_8_ce0,v15505_8_q0,v15505_9_address0,v15505_9_ce0,v15505_9_q0,v15505_10_address0,v15505_10_ce0,v15505_10_q0,v15505_11_address0,v15505_11_ce0,v15505_11_q0,v15505_12_address0,v15505_12_ce0,v15505_12_q0,v15505_13_address0,v15505_13_ce0,v15505_13_q0,v15505_14_address0,v15505_14_ce0,v15505_14_q0,v15505_15_address0,v15505_15_ce0,v15505_15_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [0:0] v5852_address0;
output   v5852_ce0;
output   v5852_we0;
output  [7:0] v5852_d0;
output  [0:0] v5852_1_address0;
output   v5852_1_ce0;
output   v5852_1_we0;
output  [7:0] v5852_1_d0;
output  [0:0] v5852_2_address0;
output   v5852_2_ce0;
output   v5852_2_we0;
output  [7:0] v5852_2_d0;
output  [0:0] v5852_3_address0;
output   v5852_3_ce0;
output   v5852_3_we0;
output  [7:0] v5852_3_d0;
output  [0:0] v5852_4_address0;
output   v5852_4_ce0;
output   v5852_4_we0;
output  [7:0] v5852_4_d0;
output  [0:0] v5852_5_address0;
output   v5852_5_ce0;
output   v5852_5_we0;
output  [7:0] v5852_5_d0;
output  [0:0] v5852_6_address0;
output   v5852_6_ce0;
output   v5852_6_we0;
output  [7:0] v5852_6_d0;
output  [0:0] v5852_7_address0;
output   v5852_7_ce0;
output   v5852_7_we0;
output  [7:0] v5852_7_d0;
output  [0:0] v5852_8_address0;
output   v5852_8_ce0;
output   v5852_8_we0;
output  [7:0] v5852_8_d0;
output  [0:0] v5852_9_address0;
output   v5852_9_ce0;
output   v5852_9_we0;
output  [7:0] v5852_9_d0;
output  [0:0] v5852_10_address0;
output   v5852_10_ce0;
output   v5852_10_we0;
output  [7:0] v5852_10_d0;
output  [0:0] v5852_11_address0;
output   v5852_11_ce0;
output   v5852_11_we0;
output  [7:0] v5852_11_d0;
output  [0:0] v5852_12_address0;
output   v5852_12_ce0;
output   v5852_12_we0;
output  [7:0] v5852_12_d0;
output  [0:0] v5852_13_address0;
output   v5852_13_ce0;
output   v5852_13_we0;
output  [7:0] v5852_13_d0;
output  [0:0] v5852_14_address0;
output   v5852_14_ce0;
output   v5852_14_we0;
output  [7:0] v5852_14_d0;
output  [0:0] v5852_15_address0;
output   v5852_15_ce0;
output   v5852_15_we0;
output  [7:0] v5852_15_d0;
input  [15:0] v5845_0;
output  [11:0] v15505_0_address0;
output   v15505_0_ce0;
input  [7:0] v15505_0_q0;
output  [11:0] v15505_1_address0;
output   v15505_1_ce0;
input  [7:0] v15505_1_q0;
output  [11:0] v15505_2_address0;
output   v15505_2_ce0;
input  [7:0] v15505_2_q0;
output  [11:0] v15505_3_address0;
output   v15505_3_ce0;
input  [7:0] v15505_3_q0;
output  [11:0] v15505_4_address0;
output   v15505_4_ce0;
input  [7:0] v15505_4_q0;
output  [11:0] v15505_5_address0;
output   v15505_5_ce0;
input  [7:0] v15505_5_q0;
output  [11:0] v15505_6_address0;
output   v15505_6_ce0;
input  [7:0] v15505_6_q0;
output  [11:0] v15505_7_address0;
output   v15505_7_ce0;
input  [7:0] v15505_7_q0;
output  [11:0] v15505_8_address0;
output   v15505_8_ce0;
input  [7:0] v15505_8_q0;
output  [11:0] v15505_9_address0;
output   v15505_9_ce0;
input  [7:0] v15505_9_q0;
output  [11:0] v15505_10_address0;
output   v15505_10_ce0;
input  [7:0] v15505_10_q0;
output  [11:0] v15505_11_address0;
output   v15505_11_ce0;
input  [7:0] v15505_11_q0;
output  [11:0] v15505_12_address0;
output   v15505_12_ce0;
input  [7:0] v15505_12_q0;
output  [11:0] v15505_13_address0;
output   v15505_13_ce0;
input  [7:0] v15505_13_q0;
output  [11:0] v15505_14_address0;
output   v15505_14_ce0;
input  [7:0] v15505_14_q0;
output  [11:0] v15505_15_address0;
output   v15505_15_ce0;
input  [7:0] v15505_15_q0;
output  [15:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [4:0] tmp_reg_272;
wire    ap_CS_fsm_state3;
reg   [12:0] trunc_ln_reg_278;
wire   [2:0] grp_fu_237_p2;
reg   [2:0] urem_ln6706_reg_283;
wire    ap_CS_fsm_state20;
wire   [2:0] grp_fu_196_p2;
reg   [2:0] urem_ln6705_reg_288;
wire   [9:0] mul_i_fu_242_p3;
reg   [9:0] mul_i_reg_293;
wire    ap_CS_fsm_state21;
wire   [5:0] shl_ln_fu_250_p3;
reg   [5:0] shl_ln_reg_298;
wire   [2:0] trunc_ln6705_fu_258_p1;
reg   [2:0] trunc_ln6705_reg_303;
wire   [2:0] trunc_ln6652_fu_262_p1;
reg   [2:0] trunc_ln6652_reg_308;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_ce0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_d0;
wire   [0:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg;
wire    ap_CS_fsm_state22;
wire   [3:0] grp_fu_196_p1;
wire   [15:0] mul_ln6708_fu_205_p0;
wire   [32:0] zext_ln6708_fu_202_p1;
wire   [17:0] mul_ln6708_fu_205_p1;
wire   [32:0] mul_ln6708_fu_205_p2;
wire   [15:0] mul_ln6706_fu_221_p0;
wire   [17:0] mul_ln6706_fu_221_p1;
wire   [32:0] mul_ln6706_fu_221_p2;
wire   [3:0] grp_fu_237_p1;
wire    ap_CS_fsm_state4;
reg    grp_fu_196_ap_start;
wire    grp_fu_196_ap_done;
reg    grp_fu_196_ce;
reg    grp_fu_237_ap_start;
wire    grp_fu_237_ap_done;
reg   [15:0] ap_return_preg;
reg   [21:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 22'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg = 1'b0;
#0 ap_return_preg = 16'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_ready),.mul_i(mul_i_reg_293),.shl_ln(shl_ln_reg_298),.idxprom1_i1(trunc_ln6705_reg_303),.idxprom3_i2(trunc_ln6652_reg_308),.v15505_0_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_address0),.v15505_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_ce0),.v15505_0_q0(v15505_0_q0),.v15505_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_address0),.v15505_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_ce0),.v15505_1_q0(v15505_1_q0),.v15505_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_address0),.v15505_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_ce0),.v15505_2_q0(v15505_2_q0),.v15505_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_address0),.v15505_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_ce0),.v15505_3_q0(v15505_3_q0),.v15505_4_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_address0),.v15505_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_ce0),.v15505_4_q0(v15505_4_q0),.v15505_5_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_address0),.v15505_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_ce0),.v15505_5_q0(v15505_5_q0),.v15505_6_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_address0),.v15505_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_ce0),.v15505_6_q0(v15505_6_q0),.v15505_7_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_address0),.v15505_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_ce0),.v15505_7_q0(v15505_7_q0),.v15505_8_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_address0),.v15505_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_ce0),.v15505_8_q0(v15505_8_q0),.v15505_9_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_address0),.v15505_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_ce0),.v15505_9_q0(v15505_9_q0),.v15505_10_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_address0),.v15505_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_ce0),.v15505_10_q0(v15505_10_q0),.v15505_11_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_address0),.v15505_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_ce0),.v15505_11_q0(v15505_11_q0),.v15505_12_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_address0),.v15505_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_ce0),.v15505_12_q0(v15505_12_q0),.v15505_13_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_address0),.v15505_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_ce0),.v15505_13_q0(v15505_13_q0),.v15505_14_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_address0),.v15505_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_ce0),.v15505_14_q0(v15505_14_q0),.v15505_15_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_address0),.v15505_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_ce0),.v15505_15_q0(v15505_15_q0),.v5852_15_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_address0),.v5852_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_ce0),.v5852_15_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_we0),.v5852_15_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_d0),.v5852_14_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_address0),.v5852_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_ce0),.v5852_14_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_we0),.v5852_14_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_d0),.v5852_13_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_address0),.v5852_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_ce0),.v5852_13_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_we0),.v5852_13_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_d0),.v5852_12_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_address0),.v5852_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_ce0),.v5852_12_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_we0),.v5852_12_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_d0),.v5852_11_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_address0),.v5852_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_ce0),.v5852_11_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_we0),.v5852_11_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_d0),.v5852_10_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_address0),.v5852_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_ce0),.v5852_10_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_we0),.v5852_10_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_d0),.v5852_9_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_address0),.v5852_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_ce0),.v5852_9_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_we0),.v5852_9_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_d0),.v5852_8_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_address0),.v5852_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_ce0),.v5852_8_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_we0),.v5852_8_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_d0),.v5852_7_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_address0),.v5852_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_ce0),.v5852_7_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_we0),.v5852_7_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_d0),.v5852_6_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_address0),.v5852_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_ce0),.v5852_6_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_we0),.v5852_6_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_d0),.v5852_5_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_address0),.v5852_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_ce0),.v5852_5_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_we0),.v5852_5_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_d0),.v5852_4_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_address0),.v5852_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_ce0),.v5852_4_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_we0),.v5852_4_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_d0),.v5852_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_address0),.v5852_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_ce0),.v5852_3_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_we0),.v5852_3_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_d0),.v5852_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_address0),.v5852_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_ce0),.v5852_2_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_we0),.v5852_2_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_d0),.v5852_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_address0),.v5852_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_ce0),.v5852_1_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_we0),.v5852_1_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_d0),.v5852_address0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_address0),.v5852_ce0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_ce0),.v5852_we0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_we0),.v5852_d0(grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_d0));
forward_urem_16ns_4ns_3_20_seq_1 #(.ID( 1 ),.NUM_STAGE( 20 ),.din0_WIDTH( 16 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_16ns_4ns_3_20_seq_1_U9491(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_196_ap_start),.done(grp_fu_196_ap_done),.din0(v5845_0),.din1(grp_fu_196_p1),.ce(grp_fu_196_ce),.dout(grp_fu_196_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9492(.din0(mul_ln6708_fu_205_p0),.din1(mul_ln6708_fu_205_p1),.dout(mul_ln6708_fu_205_p2));
forward_mul_16ns_18ns_33_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 18 ),.dout_WIDTH( 33 ))
mul_16ns_18ns_33_1_1_U9493(.din0(mul_ln6706_fu_221_p0),.din1(mul_ln6706_fu_221_p1),.dout(mul_ln6706_fu_221_p2));
forward_urem_13ns_4ns_3_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_13ns_4ns_3_17_seq_1_U9494(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_237_ap_start),.done(grp_fu_237_ap_done),.din0(trunc_ln_reg_278),.din1(grp_fu_237_p1),.ce(1'b1),.dout(grp_fu_237_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_return_preg <= v5845_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul_i_reg_293[9 : 5] <= mul_i_fu_242_p3[9 : 5];
        shl_ln_reg_298[5 : 1] <= shl_ln_fu_250_p3[5 : 1];
        trunc_ln6652_reg_308 <= trunc_ln6652_fu_262_p1;
        trunc_ln6705_reg_303 <= trunc_ln6705_fu_258_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_272 <= {{mul_ln6708_fu_205_p2[31:27]}};
        trunc_ln_reg_278 <= {{mul_ln6706_fu_221_p2[31:19]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        urem_ln6705_reg_288 <= grp_fu_196_p2;
        urem_ln6706_reg_283 <= grp_fu_237_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_return = v5845_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_196_ap_start = 1'b1;
    end else begin
        grp_fu_196_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        grp_fu_196_ce = 1'b0;
    end else begin
        grp_fu_196_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_237_ap_start = 1'b1;
    end else begin
        grp_fu_237_ap_start = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_ap_start_reg;
assign grp_fu_196_p1 = 16'd7;
assign grp_fu_237_p1 = 13'd7;
assign mul_i_fu_242_p3 = {{tmp_reg_272}, {5'd0}};
assign mul_ln6706_fu_221_p0 = zext_ln6708_fu_202_p1;
assign mul_ln6706_fu_221_p1 = 33'd74899;
assign mul_ln6708_fu_205_p0 = zext_ln6708_fu_202_p1;
assign mul_ln6708_fu_205_p1 = 33'd85599;
assign shl_ln_fu_250_p3 = {{tmp_reg_272}, {1'd0}};
assign trunc_ln6652_fu_262_p1 = urem_ln6705_reg_288[2:0];
assign trunc_ln6705_fu_258_p1 = urem_ln6706_reg_283[2:0];
assign v15505_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_address0;
assign v15505_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_0_ce0;
assign v15505_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_address0;
assign v15505_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_10_ce0;
assign v15505_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_address0;
assign v15505_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_11_ce0;
assign v15505_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_address0;
assign v15505_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_12_ce0;
assign v15505_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_address0;
assign v15505_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_13_ce0;
assign v15505_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_address0;
assign v15505_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_14_ce0;
assign v15505_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_address0;
assign v15505_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_15_ce0;
assign v15505_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_address0;
assign v15505_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_1_ce0;
assign v15505_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_address0;
assign v15505_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_2_ce0;
assign v15505_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_address0;
assign v15505_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_3_ce0;
assign v15505_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_address0;
assign v15505_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_4_ce0;
assign v15505_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_address0;
assign v15505_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_5_ce0;
assign v15505_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_address0;
assign v15505_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_6_ce0;
assign v15505_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_address0;
assign v15505_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_7_ce0;
assign v15505_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_address0;
assign v15505_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_8_ce0;
assign v15505_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_address0;
assign v15505_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v15505_9_ce0;
assign v5852_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_address0;
assign v5852_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_ce0;
assign v5852_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_d0;
assign v5852_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_10_we0;
assign v5852_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_address0;
assign v5852_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_ce0;
assign v5852_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_d0;
assign v5852_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_11_we0;
assign v5852_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_address0;
assign v5852_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_ce0;
assign v5852_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_d0;
assign v5852_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_12_we0;
assign v5852_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_address0;
assign v5852_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_ce0;
assign v5852_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_d0;
assign v5852_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_13_we0;
assign v5852_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_address0;
assign v5852_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_ce0;
assign v5852_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_d0;
assign v5852_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_14_we0;
assign v5852_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_address0;
assign v5852_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_ce0;
assign v5852_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_d0;
assign v5852_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_15_we0;
assign v5852_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_address0;
assign v5852_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_ce0;
assign v5852_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_d0;
assign v5852_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_1_we0;
assign v5852_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_address0;
assign v5852_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_ce0;
assign v5852_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_d0;
assign v5852_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_2_we0;
assign v5852_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_address0;
assign v5852_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_ce0;
assign v5852_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_d0;
assign v5852_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_3_we0;
assign v5852_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_address0;
assign v5852_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_ce0;
assign v5852_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_d0;
assign v5852_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_4_we0;
assign v5852_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_address0;
assign v5852_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_ce0;
assign v5852_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_d0;
assign v5852_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_5_we0;
assign v5852_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_address0;
assign v5852_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_ce0;
assign v5852_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_d0;
assign v5852_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_6_we0;
assign v5852_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_address0;
assign v5852_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_ce0;
assign v5852_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_d0;
assign v5852_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_7_we0;
assign v5852_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_address0;
assign v5852_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_ce0;
assign v5852_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_d0;
assign v5852_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_8_we0;
assign v5852_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_address0;
assign v5852_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_ce0;
assign v5852_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_d0;
assign v5852_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_9_we0;
assign v5852_address0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_address0;
assign v5852_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_ce0;
assign v5852_d0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_d0;
assign v5852_we0 = grp_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO_fu_124_v5852_we0;
assign zext_ln6708_fu_202_p1 = v5845_0;
always @ (posedge ap_clk) begin
    mul_i_reg_293[4:0] <= 5'b00000;
    shl_ln_reg_298[0] <= 1'b0;
end
endmodule 
