
module forward_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3089_address0,v3089_ce0,v3089_we0,v3089_d0,v3089_1_address0,v3089_1_ce0,v3089_1_we0,v3089_1_d0,v3089_2_address0,v3089_2_ce0,v3089_2_we0,v3089_2_d0,v3089_3_address0,v3089_3_ce0,v3089_3_we0,v3089_3_d0,v3089_4_address0,v3089_4_ce0,v3089_4_we0,v3089_4_d0,v3089_5_address0,v3089_5_ce0,v3089_5_we0,v3089_5_d0,v3089_6_address0,v3089_6_ce0,v3089_6_we0,v3089_6_d0,v3089_7_address0,v3089_7_ce0,v3089_7_we0,v3089_7_d0,v3089_8_address0,v3089_8_ce0,v3089_8_we0,v3089_8_d0,v3089_9_address0,v3089_9_ce0,v3089_9_we0,v3089_9_d0,v3089_10_address0,v3089_10_ce0,v3089_10_we0,v3089_10_d0,v3089_11_address0,v3089_11_ce0,v3089_11_we0,v3089_11_d0,v3089_12_address0,v3089_12_ce0,v3089_12_we0,v3089_12_d0,v3089_13_address0,v3089_13_ce0,v3089_13_we0,v3089_13_d0,v3089_14_address0,v3089_14_ce0,v3089_14_we0,v3089_14_d0,v3089_15_address0,v3089_15_ce0,v3089_15_we0,v3089_15_d0,v3082_0,v9005_0_0_address0,v9005_0_0_ce0,v9005_0_0_q0,v9005_0_1_address0,v9005_0_1_ce0,v9005_0_1_q0,v9005_0_2_address0,v9005_0_2_ce0,v9005_0_2_q0,v9005_0_3_address0,v9005_0_3_ce0,v9005_0_3_q0,v9005_1_0_address0,v9005_1_0_ce0,v9005_1_0_q0,v9005_1_1_address0,v9005_1_1_ce0,v9005_1_1_q0,v9005_1_2_address0,v9005_1_2_ce0,v9005_1_2_q0,v9005_1_3_address0,v9005_1_3_ce0,v9005_1_3_q0,v9005_2_0_address0,v9005_2_0_ce0,v9005_2_0_q0,v9005_2_1_address0,v9005_2_1_ce0,v9005_2_1_q0,v9005_2_2_address0,v9005_2_2_ce0,v9005_2_2_q0,v9005_2_3_address0,v9005_2_3_ce0,v9005_2_3_q0,v9005_3_0_address0,v9005_3_0_ce0,v9005_3_0_q0,v9005_3_1_address0,v9005_3_1_ce0,v9005_3_1_q0,v9005_3_2_address0,v9005_3_2_ce0,v9005_3_2_q0,v9005_3_3_address0,v9005_3_3_ce0,v9005_3_3_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v3089_address0;
output   v3089_ce0;
output   v3089_we0;
output  [7:0] v3089_d0;
output  [5:0] v3089_1_address0;
output   v3089_1_ce0;
output   v3089_1_we0;
output  [7:0] v3089_1_d0;
output  [5:0] v3089_2_address0;
output   v3089_2_ce0;
output   v3089_2_we0;
output  [7:0] v3089_2_d0;
output  [5:0] v3089_3_address0;
output   v3089_3_ce0;
output   v3089_3_we0;
output  [7:0] v3089_3_d0;
output  [5:0] v3089_4_address0;
output   v3089_4_ce0;
output   v3089_4_we0;
output  [7:0] v3089_4_d0;
output  [5:0] v3089_5_address0;
output   v3089_5_ce0;
output   v3089_5_we0;
output  [7:0] v3089_5_d0;
output  [5:0] v3089_6_address0;
output   v3089_6_ce0;
output   v3089_6_we0;
output  [7:0] v3089_6_d0;
output  [5:0] v3089_7_address0;
output   v3089_7_ce0;
output   v3089_7_we0;
output  [7:0] v3089_7_d0;
output  [5:0] v3089_8_address0;
output   v3089_8_ce0;
output   v3089_8_we0;
output  [7:0] v3089_8_d0;
output  [5:0] v3089_9_address0;
output   v3089_9_ce0;
output   v3089_9_we0;
output  [7:0] v3089_9_d0;
output  [5:0] v3089_10_address0;
output   v3089_10_ce0;
output   v3089_10_we0;
output  [7:0] v3089_10_d0;
output  [5:0] v3089_11_address0;
output   v3089_11_ce0;
output   v3089_11_we0;
output  [7:0] v3089_11_d0;
output  [5:0] v3089_12_address0;
output   v3089_12_ce0;
output   v3089_12_we0;
output  [7:0] v3089_12_d0;
output  [5:0] v3089_13_address0;
output   v3089_13_ce0;
output   v3089_13_we0;
output  [7:0] v3089_13_d0;
output  [5:0] v3089_14_address0;
output   v3089_14_ce0;
output   v3089_14_we0;
output  [7:0] v3089_14_d0;
output  [5:0] v3089_15_address0;
output   v3089_15_ce0;
output   v3089_15_we0;
output  [7:0] v3089_15_d0;
input  [12:0] v3082_0;
output  [16:0] v9005_0_0_address0;
output   v9005_0_0_ce0;
input  [7:0] v9005_0_0_q0;
output  [16:0] v9005_0_1_address0;
output   v9005_0_1_ce0;
input  [7:0] v9005_0_1_q0;
output  [16:0] v9005_0_2_address0;
output   v9005_0_2_ce0;
input  [7:0] v9005_0_2_q0;
output  [16:0] v9005_0_3_address0;
output   v9005_0_3_ce0;
input  [7:0] v9005_0_3_q0;
output  [16:0] v9005_1_0_address0;
output   v9005_1_0_ce0;
input  [7:0] v9005_1_0_q0;
output  [16:0] v9005_1_1_address0;
output   v9005_1_1_ce0;
input  [7:0] v9005_1_1_q0;
output  [16:0] v9005_1_2_address0;
output   v9005_1_2_ce0;
input  [7:0] v9005_1_2_q0;
output  [16:0] v9005_1_3_address0;
output   v9005_1_3_ce0;
input  [7:0] v9005_1_3_q0;
output  [16:0] v9005_2_0_address0;
output   v9005_2_0_ce0;
input  [7:0] v9005_2_0_q0;
output  [16:0] v9005_2_1_address0;
output   v9005_2_1_ce0;
input  [7:0] v9005_2_1_q0;
output  [16:0] v9005_2_2_address0;
output   v9005_2_2_ce0;
input  [7:0] v9005_2_2_q0;
output  [16:0] v9005_2_3_address0;
output   v9005_2_3_ce0;
input  [7:0] v9005_2_3_q0;
output  [16:0] v9005_3_0_address0;
output   v9005_3_0_ce0;
input  [7:0] v9005_3_0_q0;
output  [16:0] v9005_3_1_address0;
output   v9005_3_1_ce0;
input  [7:0] v9005_3_1_q0;
output  [16:0] v9005_3_2_address0;
output   v9005_3_2_ce0;
input  [7:0] v9005_3_2_q0;
output  [16:0] v9005_3_3_address0;
output   v9005_3_3_ce0;
input  [7:0] v9005_3_3_q0;
output  [12:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [10:0] trunc_ln_fu_209_p4;
reg   [3:0] tmp_s_reg_326;
reg   [6:0] trunc_ln11_reg_337;
wire   [1:0] grp_fu_261_p2;
reg   [1:0] urem_ln4216_reg_342;
wire    ap_CS_fsm_state10;
wire   [1:0] grp_fu_283_p2;
reg   [1:0] urem_ln4215_reg_347;
wire    ap_CS_fsm_state12;
wire   [8:0] mul_i_fu_292_p3;
reg   [8:0] mul_i_reg_352;
wire    ap_CS_fsm_state15;
wire   [8:0] mul_i5_fu_301_p3;
reg   [8:0] mul_i5_reg_357;
wire   [1:0] trunc_ln4215_fu_309_p1;
reg   [1:0] trunc_ln4215_reg_362;
wire   [1:0] empty_181_fu_313_p1;
reg   [1:0] empty_181_reg_367;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [10:0] grp_fu_219_p0;
wire   [4:0] grp_fu_219_p1;
wire   [10:0] mul_ln4217_fu_229_p0;
wire   [22:0] zext_ln4217_fu_225_p1;
wire   [12:0] mul_ln4217_fu_229_p1;
wire   [22:0] mul_ln4217_fu_229_p2;
wire   [10:0] mul_ln4216_fu_245_p0;
wire   [12:0] mul_ln4216_fu_245_p1;
wire   [22:0] mul_ln4216_fu_245_p2;
wire   [5:0] grp_fu_261_p0;
wire   [2:0] grp_fu_261_p1;
wire   [10:0] mul_ln4215_fu_267_p0;
wire   [12:0] mul_ln4215_fu_267_p1;
wire   [22:0] mul_ln4215_fu_267_p2;
wire   [2:0] grp_fu_283_p1;
wire    ap_CS_fsm_state2;
wire   [3:0] grp_fu_219_p2;
wire   [3:0] empty_fu_288_p1;
reg    grp_fu_219_ap_start;
wire    grp_fu_219_ap_done;
reg    grp_fu_219_ce;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg    grp_fu_261_ap_start;
wire    grp_fu_261_ap_done;
reg    grp_fu_261_ce;
reg    grp_fu_283_ap_start;
wire    grp_fu_283_ap_done;
reg   [12:0] ap_return_preg;
reg   [15:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 16'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg = 1'b0;
#0 ap_return_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_ready),.mul_i(mul_i_reg_352),.v3089_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_address0),.v3089_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_ce0),.v3089_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_we0),.v3089_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_d0),.v3089_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_address0),.v3089_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_ce0),.v3089_1_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_we0),.v3089_1_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_d0),.v3089_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_address0),.v3089_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_ce0),.v3089_2_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_we0),.v3089_2_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_d0),.v3089_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_address0),.v3089_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_ce0),.v3089_3_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_we0),.v3089_3_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_d0),.v3089_4_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_address0),.v3089_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_ce0),.v3089_4_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_we0),.v3089_4_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_d0),.v3089_5_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_address0),.v3089_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_ce0),.v3089_5_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_we0),.v3089_5_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_d0),.v3089_6_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_address0),.v3089_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_ce0),.v3089_6_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_we0),.v3089_6_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_d0),.v3089_7_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_address0),.v3089_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_ce0),.v3089_7_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_we0),.v3089_7_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_d0),.v3089_8_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_address0),.v3089_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_ce0),.v3089_8_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_we0),.v3089_8_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_d0),.v3089_9_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_address0),.v3089_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_ce0),.v3089_9_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_we0),.v3089_9_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_d0),.v3089_10_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_address0),.v3089_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_ce0),.v3089_10_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_we0),.v3089_10_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_d0),.v3089_11_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_address0),.v3089_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_ce0),.v3089_11_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_we0),.v3089_11_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_d0),.v3089_12_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_address0),.v3089_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_ce0),.v3089_12_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_we0),.v3089_12_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_d0),.v3089_13_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_address0),.v3089_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_ce0),.v3089_13_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_we0),.v3089_13_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_d0),.v3089_14_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_address0),.v3089_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_ce0),.v3089_14_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_we0),.v3089_14_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_d0),.v3089_15_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_address0),.v3089_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_ce0),.v3089_15_we0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_we0),.v3089_15_d0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_d0),.mul_i5(mul_i5_reg_357),.tmp_207(tmp_s_reg_326),.zext_ln4003_1(trunc_ln4215_reg_362),.zext_ln4003(empty_181_reg_367),.v9005_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_address0),.v9005_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_ce0),.v9005_0_0_q0(v9005_0_0_q0),.v9005_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_address0),.v9005_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_ce0),.v9005_1_0_q0(v9005_1_0_q0),.v9005_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_address0),.v9005_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_ce0),.v9005_2_0_q0(v9005_2_0_q0),.v9005_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_address0),.v9005_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_ce0),.v9005_3_0_q0(v9005_3_0_q0),.v9005_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_address0),.v9005_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_ce0),.v9005_0_1_q0(v9005_0_1_q0),.v9005_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_address0),.v9005_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_ce0),.v9005_0_2_q0(v9005_0_2_q0),.v9005_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_address0),.v9005_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_ce0),.v9005_0_3_q0(v9005_0_3_q0),.v9005_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_address0),.v9005_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_ce0),.v9005_1_1_q0(v9005_1_1_q0),.v9005_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_address0),.v9005_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_ce0),.v9005_1_2_q0(v9005_1_2_q0),.v9005_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_address0),.v9005_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_ce0),.v9005_1_3_q0(v9005_1_3_q0),.v9005_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_address0),.v9005_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_ce0),.v9005_2_1_q0(v9005_2_1_q0),.v9005_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_address0),.v9005_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_ce0),.v9005_2_2_q0(v9005_2_2_q0),.v9005_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_address0),.v9005_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_ce0),.v9005_2_3_q0(v9005_2_3_q0),.v9005_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_address0),.v9005_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_ce0),.v9005_3_1_q0(v9005_3_1_q0),.v9005_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_address0),.v9005_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_ce0),.v9005_3_2_q0(v9005_3_2_q0),.v9005_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_address0),.v9005_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_ce0),.v9005_3_3_q0(v9005_3_3_q0));
forward_urem_11ns_5ns_4_15_seq_1 #(.ID( 1 ),.NUM_STAGE( 15 ),.din0_WIDTH( 11 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_11ns_5ns_4_15_seq_1_U7624(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_219_ap_start),.done(grp_fu_219_ap_done),.din0(grp_fu_219_p0),.din1(grp_fu_219_p1),.ce(grp_fu_219_ce),.dout(grp_fu_219_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U7625(.din0(mul_ln4217_fu_229_p0),.din1(mul_ln4217_fu_229_p1),.dout(mul_ln4217_fu_229_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U7626(.din0(mul_ln4216_fu_245_p0),.din1(mul_ln4216_fu_245_p1),.dout(mul_ln4216_fu_245_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U7627(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_261_ap_start),.done(grp_fu_261_ap_done),.din0(grp_fu_261_p0),.din1(grp_fu_261_p1),.ce(grp_fu_261_ce),.dout(grp_fu_261_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U7628(.din0(mul_ln4215_fu_267_p0),.din1(mul_ln4215_fu_267_p1),.dout(mul_ln4215_fu_267_p2));
forward_urem_7ns_3ns_2_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_7ns_3ns_2_11_seq_1_U7629(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_283_ap_start),.done(grp_fu_283_ap_done),.din0(trunc_ln11_reg_337),.din1(grp_fu_283_p1),.ce(1'b1),.dout(grp_fu_283_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 13'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
            ap_return_preg <= v3082_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        empty_181_reg_367 <= empty_181_fu_313_p1;
        mul_i5_reg_357[8 : 5] <= mul_i5_fu_301_p3[8 : 5];
        mul_i_reg_352[8 : 5] <= mul_i_fu_292_p3[8 : 5];
        trunc_ln4215_reg_362 <= trunc_ln4215_fu_309_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_s_reg_326 <= {{mul_ln4217_fu_229_p2[21:18]}};
        trunc_ln11_reg_337 <= {{mul_ln4215_fu_267_p2[21:15]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        urem_ln4215_reg_347 <= grp_fu_283_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln4216_reg_342 <= grp_fu_261_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_return = v3082_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_219_ap_start = 1'b1;
    end else begin
        grp_fu_219_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_219_ce = 1'b0;
    end else begin
        grp_fu_219_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_261_ap_start = 1'b1;
    end else begin
        grp_fu_261_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_261_ce = 1'b0;
    end else begin
        grp_fu_261_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_283_ap_start = 1'b1;
    end else begin
        grp_fu_283_ap_start = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
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
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_181_fu_313_p1 = urem_ln4215_reg_347[1:0];
assign empty_fu_288_p1 = grp_fu_219_p2[3:0];
assign grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_ap_start_reg;
assign grp_fu_219_p0 = {{v3082_0[12:2]}};
assign grp_fu_219_p1 = 11'd12;
assign grp_fu_261_p0 = {{mul_ln4216_fu_245_p2[22:17]}};
assign grp_fu_261_p1 = 6'd3;
assign grp_fu_283_p1 = 7'd3;
assign mul_i5_fu_301_p3 = {{tmp_s_reg_326}, {5'd0}};
assign mul_i_fu_292_p3 = {{empty_fu_288_p1}, {5'd0}};
assign mul_ln4215_fu_267_p0 = zext_ln4217_fu_225_p1;
assign mul_ln4215_fu_267_p1 = 23'd2731;
assign mul_ln4216_fu_245_p0 = zext_ln4217_fu_225_p1;
assign mul_ln4216_fu_245_p1 = 23'd3641;
assign mul_ln4217_fu_229_p0 = zext_ln4217_fu_225_p1;
assign mul_ln4217_fu_229_p1 = 23'd2428;
assign trunc_ln4215_fu_309_p1 = urem_ln4216_reg_342[1:0];
assign trunc_ln_fu_209_p4 = {{v3082_0[12:2]}};
assign v3089_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_address0;
assign v3089_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_ce0;
assign v3089_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_d0;
assign v3089_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_10_we0;
assign v3089_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_address0;
assign v3089_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_ce0;
assign v3089_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_d0;
assign v3089_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_11_we0;
assign v3089_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_address0;
assign v3089_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_ce0;
assign v3089_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_d0;
assign v3089_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_12_we0;
assign v3089_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_address0;
assign v3089_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_ce0;
assign v3089_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_d0;
assign v3089_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_13_we0;
assign v3089_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_address0;
assign v3089_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_ce0;
assign v3089_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_d0;
assign v3089_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_14_we0;
assign v3089_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_address0;
assign v3089_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_ce0;
assign v3089_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_d0;
assign v3089_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_15_we0;
assign v3089_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_address0;
assign v3089_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_ce0;
assign v3089_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_d0;
assign v3089_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_1_we0;
assign v3089_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_address0;
assign v3089_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_ce0;
assign v3089_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_d0;
assign v3089_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_2_we0;
assign v3089_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_address0;
assign v3089_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_ce0;
assign v3089_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_d0;
assign v3089_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_3_we0;
assign v3089_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_address0;
assign v3089_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_ce0;
assign v3089_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_d0;
assign v3089_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_4_we0;
assign v3089_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_address0;
assign v3089_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_ce0;
assign v3089_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_d0;
assign v3089_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_5_we0;
assign v3089_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_address0;
assign v3089_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_ce0;
assign v3089_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_d0;
assign v3089_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_6_we0;
assign v3089_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_address0;
assign v3089_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_ce0;
assign v3089_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_d0;
assign v3089_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_7_we0;
assign v3089_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_address0;
assign v3089_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_ce0;
assign v3089_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_d0;
assign v3089_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_8_we0;
assign v3089_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_address0;
assign v3089_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_ce0;
assign v3089_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_d0;
assign v3089_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_9_we0;
assign v3089_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_address0;
assign v3089_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_ce0;
assign v3089_d0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_d0;
assign v3089_we0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v3089_we0;
assign v9005_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_address0;
assign v9005_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_0_ce0;
assign v9005_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_address0;
assign v9005_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_1_ce0;
assign v9005_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_address0;
assign v9005_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_2_ce0;
assign v9005_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_address0;
assign v9005_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_0_3_ce0;
assign v9005_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_address0;
assign v9005_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_0_ce0;
assign v9005_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_address0;
assign v9005_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_1_ce0;
assign v9005_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_address0;
assign v9005_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_2_ce0;
assign v9005_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_address0;
assign v9005_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_1_3_ce0;
assign v9005_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_address0;
assign v9005_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_0_ce0;
assign v9005_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_address0;
assign v9005_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_1_ce0;
assign v9005_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_address0;
assign v9005_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_2_ce0;
assign v9005_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_address0;
assign v9005_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_2_3_ce0;
assign v9005_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_address0;
assign v9005_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_0_ce0;
assign v9005_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_address0;
assign v9005_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_1_ce0;
assign v9005_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_address0;
assign v9005_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_2_ce0;
assign v9005_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_address0;
assign v9005_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s_fu_136_v9005_3_3_ce0;
assign zext_ln4217_fu_225_p1 = trunc_ln_fu_209_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_352[4:0] <= 5'b00000;
    mul_i5_reg_357[4:0] <= 5'b00000;
end
endmodule 
