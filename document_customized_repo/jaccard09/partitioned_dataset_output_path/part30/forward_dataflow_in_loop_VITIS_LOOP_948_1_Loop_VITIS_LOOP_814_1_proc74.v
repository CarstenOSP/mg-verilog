
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v508_address0,v508_ce0,v508_we0,v508_d0,v508_1_address0,v508_1_ce0,v508_1_we0,v508_1_d0,v508_2_address0,v508_2_ce0,v508_2_we0,v508_2_d0,v508_3_address0,v508_3_ce0,v508_3_we0,v508_3_d0,v508_4_address0,v508_4_ce0,v508_4_we0,v508_4_d0,v508_5_address0,v508_5_ce0,v508_5_we0,v508_5_d0,v508_6_address0,v508_6_ce0,v508_6_we0,v508_6_d0,v508_7_address0,v508_7_ce0,v508_7_we0,v508_7_d0,v508_8_address0,v508_8_ce0,v508_8_we0,v508_8_d0,v508_9_address0,v508_9_ce0,v508_9_we0,v508_9_d0,v508_10_address0,v508_10_ce0,v508_10_we0,v508_10_d0,v508_11_address0,v508_11_ce0,v508_11_we0,v508_11_d0,v508_12_address0,v508_12_ce0,v508_12_we0,v508_12_d0,v508_13_address0,v508_13_ce0,v508_13_we0,v508_13_d0,v508_14_address0,v508_14_ce0,v508_14_we0,v508_14_d0,v508_15_address0,v508_15_ce0,v508_15_we0,v508_15_d0,v503_0,v9007_0_0_address0,v9007_0_0_ce0,v9007_0_0_q0,v9007_0_1_address0,v9007_0_1_ce0,v9007_0_1_q0,v9007_0_2_address0,v9007_0_2_ce0,v9007_0_2_q0,v9007_0_3_address0,v9007_0_3_ce0,v9007_0_3_q0,v9007_1_0_address0,v9007_1_0_ce0,v9007_1_0_q0,v9007_1_1_address0,v9007_1_1_ce0,v9007_1_1_q0,v9007_1_2_address0,v9007_1_2_ce0,v9007_1_2_q0,v9007_1_3_address0,v9007_1_3_ce0,v9007_1_3_q0,v9007_2_0_address0,v9007_2_0_ce0,v9007_2_0_q0,v9007_2_1_address0,v9007_2_1_ce0,v9007_2_1_q0,v9007_2_2_address0,v9007_2_2_ce0,v9007_2_2_q0,v9007_2_3_address0,v9007_2_3_ce0,v9007_2_3_q0,v9007_3_0_address0,v9007_3_0_ce0,v9007_3_0_q0,v9007_3_1_address0,v9007_3_1_ce0,v9007_3_1_q0,v9007_3_2_address0,v9007_3_2_ce0,v9007_3_2_q0,v9007_3_3_address0,v9007_3_3_ce0,v9007_3_3_q0);  
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v508_address0;
output   v508_ce0;
output   v508_we0;
output  [7:0] v508_d0;
output  [5:0] v508_1_address0;
output   v508_1_ce0;
output   v508_1_we0;
output  [7:0] v508_1_d0;
output  [5:0] v508_2_address0;
output   v508_2_ce0;
output   v508_2_we0;
output  [7:0] v508_2_d0;
output  [5:0] v508_3_address0;
output   v508_3_ce0;
output   v508_3_we0;
output  [7:0] v508_3_d0;
output  [5:0] v508_4_address0;
output   v508_4_ce0;
output   v508_4_we0;
output  [7:0] v508_4_d0;
output  [5:0] v508_5_address0;
output   v508_5_ce0;
output   v508_5_we0;
output  [7:0] v508_5_d0;
output  [5:0] v508_6_address0;
output   v508_6_ce0;
output   v508_6_we0;
output  [7:0] v508_6_d0;
output  [5:0] v508_7_address0;
output   v508_7_ce0;
output   v508_7_we0;
output  [7:0] v508_7_d0;
output  [5:0] v508_8_address0;
output   v508_8_ce0;
output   v508_8_we0;
output  [7:0] v508_8_d0;
output  [5:0] v508_9_address0;
output   v508_9_ce0;
output   v508_9_we0;
output  [7:0] v508_9_d0;
output  [5:0] v508_10_address0;
output   v508_10_ce0;
output   v508_10_we0;
output  [7:0] v508_10_d0;
output  [5:0] v508_11_address0;
output   v508_11_ce0;
output   v508_11_we0;
output  [7:0] v508_11_d0;
output  [5:0] v508_12_address0;
output   v508_12_ce0;
output   v508_12_we0;
output  [7:0] v508_12_d0;
output  [5:0] v508_13_address0;
output   v508_13_ce0;
output   v508_13_we0;
output  [7:0] v508_13_d0;
output  [5:0] v508_14_address0;
output   v508_14_ce0;
output   v508_14_we0;
output  [7:0] v508_14_d0;
output  [5:0] v508_15_address0;
output   v508_15_ce0;
output   v508_15_we0;
output  [7:0] v508_15_d0;
input  [14:0] v503_0;
output  [20:0] v9007_0_0_address0;
output   v9007_0_0_ce0;
input  [7:0] v9007_0_0_q0;
output  [20:0] v9007_0_1_address0;
output   v9007_0_1_ce0;
input  [7:0] v9007_0_1_q0;
output  [20:0] v9007_0_2_address0;
output   v9007_0_2_ce0;
input  [7:0] v9007_0_2_q0;
output  [20:0] v9007_0_3_address0;
output   v9007_0_3_ce0;
input  [7:0] v9007_0_3_q0;
output  [20:0] v9007_1_0_address0;
output   v9007_1_0_ce0;
input  [7:0] v9007_1_0_q0;
output  [20:0] v9007_1_1_address0;
output   v9007_1_1_ce0;
input  [7:0] v9007_1_1_q0;
output  [20:0] v9007_1_2_address0;
output   v9007_1_2_ce0;
input  [7:0] v9007_1_2_q0;
output  [20:0] v9007_1_3_address0;
output   v9007_1_3_ce0;
input  [7:0] v9007_1_3_q0;
output  [20:0] v9007_2_0_address0;
output   v9007_2_0_ce0;
input  [7:0] v9007_2_0_q0;
output  [20:0] v9007_2_1_address0;
output   v9007_2_1_ce0;
input  [7:0] v9007_2_1_q0;
output  [20:0] v9007_2_2_address0;
output   v9007_2_2_ce0;
input  [7:0] v9007_2_2_q0;
output  [20:0] v9007_2_3_address0;
output   v9007_2_3_ce0;
input  [7:0] v9007_2_3_q0;
output  [20:0] v9007_3_0_address0;
output   v9007_3_0_ce0;
input  [7:0] v9007_3_0_q0;
output  [20:0] v9007_3_1_address0;
output   v9007_3_1_ce0;
input  [7:0] v9007_3_1_q0;
output  [20:0] v9007_3_2_address0;
output   v9007_3_2_ce0;
input  [7:0] v9007_3_2_q0;
output  [20:0] v9007_3_3_address0;
output   v9007_3_3_ce0;
input  [7:0] v9007_3_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] empty_fu_210_p1;
reg   [6:0] empty_reg_313;
reg    ap_block_state1;
wire   [7:0] trunc_ln_fu_214_p4;
reg   [2:0] tmp_29_reg_324;
wire   [2:0] grp_fu_260_p2;
reg   [2:0] urem_ln952_reg_335;
wire    ap_CS_fsm_state10;
wire   [11:0] rem_fu_272_p3;
reg   [11:0] rem_reg_340;
wire    ap_CS_fsm_state12;
wire   [9:0] shl_ln_fu_280_p3;
reg   [9:0] shl_ln_reg_345;
wire   [7:0] mul_i_fu_288_p3;
reg   [7:0] mul_i_reg_350;
wire   [5:0] shl_ln1_fu_296_p3;
reg   [5:0] shl_ln1_reg_355;
wire   [2:0] trunc_ln951_fu_304_p1;
reg   [2:0] trunc_ln951_reg_360;
wire   [2:0] empty_91_fu_308_p1;
reg   [2:0] empty_91_reg_365;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_d0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_d0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [7:0] mul_ln953_fu_228_p0;
wire   [16:0] zext_ln953_fu_224_p1;
wire   [9:0] mul_ln953_fu_228_p1;
wire   [16:0] mul_ln953_fu_228_p2;
wire   [7:0] mul_ln952_fu_244_p0;
wire   [9:0] mul_ln952_fu_244_p1;
wire   [16:0] mul_ln952_fu_244_p2;
wire   [5:0] grp_fu_260_p0;
wire   [3:0] grp_fu_260_p1;
wire   [7:0] grp_fu_266_p0;
wire   [3:0] grp_fu_266_p1;
wire   [2:0] grp_fu_266_p2;
reg    grp_fu_260_ap_start;
wire    grp_fu_260_ap_done;
reg    grp_fu_260_ce;
wire    ap_CS_fsm_state11;
reg    grp_fu_266_ap_start;
wire    grp_fu_266_ap_done;
reg    grp_fu_266_ce;
reg   [12:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_ready),.rem_r(rem_reg_340),.shl_ln(shl_ln_reg_345),.v508_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_address0),.v508_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_ce0),.v508_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_we0),.v508_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_d0),.v508_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_address0),.v508_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_ce0),.v508_1_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_we0),.v508_1_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_d0),.v508_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_address0),.v508_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_ce0),.v508_2_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_we0),.v508_2_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_d0),.v508_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_address0),.v508_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_ce0),.v508_3_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_we0),.v508_3_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_d0),.v508_4_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_address0),.v508_4_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_ce0),.v508_4_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_we0),.v508_4_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_d0),.v508_5_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_address0),.v508_5_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_ce0),.v508_5_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_we0),.v508_5_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_d0),.v508_6_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_address0),.v508_6_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_ce0),.v508_6_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_we0),.v508_6_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_d0),.v508_7_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_address0),.v508_7_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_ce0),.v508_7_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_we0),.v508_7_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_d0),.v508_8_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_address0),.v508_8_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_ce0),.v508_8_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_we0),.v508_8_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_d0),.v508_9_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_address0),.v508_9_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_ce0),.v508_9_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_we0),.v508_9_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_d0),.v508_10_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_address0),.v508_10_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_ce0),.v508_10_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_we0),.v508_10_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_d0),.v508_11_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_address0),.v508_11_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_ce0),.v508_11_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_we0),.v508_11_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_d0),.v508_12_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_address0),.v508_12_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_ce0),.v508_12_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_we0),.v508_12_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_d0),.v508_13_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_address0),.v508_13_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_ce0),.v508_13_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_we0),.v508_13_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_d0),.v508_14_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_address0),.v508_14_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_ce0),.v508_14_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_we0),.v508_14_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_d0),.v508_15_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_address0),.v508_15_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_ce0),.v508_15_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_we0),.v508_15_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_d0),.mul_i(mul_i_reg_350),.shl_ln1(shl_ln1_reg_355),.idxprom1_i491(trunc_ln951_reg_360),.idxprom3_i2(empty_91_reg_365),.v9007_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_address0),.v9007_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_ce0),.v9007_0_0_q0(v9007_0_0_q0),.v9007_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_address0),.v9007_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_ce0),.v9007_1_0_q0(v9007_1_0_q0),.v9007_2_0_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_address0),.v9007_2_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_ce0),.v9007_2_0_q0(v9007_2_0_q0),.v9007_3_0_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_address0),.v9007_3_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_ce0),.v9007_3_0_q0(v9007_3_0_q0),.v9007_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_address0),.v9007_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_ce0),.v9007_0_1_q0(v9007_0_1_q0),.v9007_0_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_address0),.v9007_0_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_ce0),.v9007_0_2_q0(v9007_0_2_q0),.v9007_0_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_address0),.v9007_0_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_ce0),.v9007_0_3_q0(v9007_0_3_q0),.v9007_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_address0),.v9007_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_ce0),.v9007_1_1_q0(v9007_1_1_q0),.v9007_1_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_address0),.v9007_1_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_ce0),.v9007_1_2_q0(v9007_1_2_q0),.v9007_1_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_address0),.v9007_1_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_ce0),.v9007_1_3_q0(v9007_1_3_q0),.v9007_2_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_address0),.v9007_2_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_ce0),.v9007_2_1_q0(v9007_2_1_q0),.v9007_2_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_address0),.v9007_2_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_ce0),.v9007_2_2_q0(v9007_2_2_q0),.v9007_2_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_address0),.v9007_2_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_ce0),.v9007_2_3_q0(v9007_2_3_q0),.v9007_3_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_address0),.v9007_3_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_ce0),.v9007_3_1_q0(v9007_3_1_q0),.v9007_3_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_address0),.v9007_3_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_ce0),.v9007_3_2_q0(v9007_3_2_q0),.v9007_3_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_address0),.v9007_3_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_ce0),.v9007_3_3_q0(v9007_3_3_q0));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9685(.din0(mul_ln953_fu_228_p0),.din1(mul_ln953_fu_228_p1),.dout(mul_ln953_fu_228_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9686(.din0(mul_ln952_fu_244_p0),.din1(mul_ln952_fu_244_p1),.dout(mul_ln952_fu_244_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U9687(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_260_ap_start),.done(grp_fu_260_ap_done),.din0(grp_fu_260_p0),.din1(grp_fu_260_p1),.ce(grp_fu_260_ce),.dout(grp_fu_260_p2));
forward_urem_8ns_4ns_3_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_8ns_4ns_3_12_seq_1_U9688(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_266_ap_start),.done(grp_fu_266_ap_done),.din0(grp_fu_266_p0),.din1(grp_fu_266_p1),.ce(grp_fu_266_ce),.dout(grp_fu_266_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_91_reg_365 <= empty_91_fu_308_p1;
        mul_i_reg_350[7 : 5] <= mul_i_fu_288_p3[7 : 5];
        rem_reg_340[11 : 5] <= rem_fu_272_p3[11 : 5];
        shl_ln1_reg_355[5 : 3] <= shl_ln1_fu_296_p3[5 : 3];
        shl_ln_reg_345[9 : 3] <= shl_ln_fu_280_p3[9 : 3];
        trunc_ln951_reg_360 <= trunc_ln951_fu_304_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_313 <= empty_fu_210_p1;
        tmp_29_reg_324 <= {{mul_ln953_fu_228_p2[15:13]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln952_reg_335 <= grp_fu_260_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_260_ap_start = 1'b1;
    end else begin
        grp_fu_260_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_260_ce = 1'b0;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_266_ap_start = 1'b1;
    end else begin
        grp_fu_266_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_266_ce = 1'b0;
    end else begin
        grp_fu_266_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
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
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_91_fu_308_p1 = grp_fu_266_p2[2:0];
assign empty_fu_210_p1 = v503_0[6:0];
assign grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_ap_start_reg;
assign grp_fu_260_p0 = {{mul_ln952_fu_244_p2[16:11]}};
assign grp_fu_260_p1 = 6'd5;
assign grp_fu_266_p0 = {{v503_0[14:7]}};
assign grp_fu_266_p1 = 8'd5;
assign mul_i_fu_288_p3 = {{tmp_29_reg_324}, {5'd0}};
assign mul_ln952_fu_244_p0 = zext_ln953_fu_224_p1;
assign mul_ln952_fu_244_p1 = 17'd410;
assign mul_ln953_fu_228_p0 = zext_ln953_fu_224_p1;
assign mul_ln953_fu_228_p1 = 17'd328;
assign rem_fu_272_p3 = {{empty_reg_313}, {5'd0}};
assign shl_ln1_fu_296_p3 = {{tmp_29_reg_324}, {3'd0}};
assign shl_ln_fu_280_p3 = {{empty_reg_313}, {3'd0}};
assign trunc_ln951_fu_304_p1 = urem_ln952_reg_335[2:0];
assign trunc_ln_fu_214_p4 = {{v503_0[14:7]}};
assign v508_10_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_address0;
assign v508_10_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_ce0;
assign v508_10_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_d0;
assign v508_10_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_10_we0;
assign v508_11_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_address0;
assign v508_11_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_ce0;
assign v508_11_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_d0;
assign v508_11_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_11_we0;
assign v508_12_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_address0;
assign v508_12_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_ce0;
assign v508_12_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_d0;
assign v508_12_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_12_we0;
assign v508_13_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_address0;
assign v508_13_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_ce0;
assign v508_13_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_d0;
assign v508_13_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_13_we0;
assign v508_14_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_address0;
assign v508_14_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_ce0;
assign v508_14_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_d0;
assign v508_14_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_14_we0;
assign v508_15_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_address0;
assign v508_15_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_ce0;
assign v508_15_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_d0;
assign v508_15_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_15_we0;
assign v508_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_address0;
assign v508_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_ce0;
assign v508_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_d0;
assign v508_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_1_we0;
assign v508_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_address0;
assign v508_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_ce0;
assign v508_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_d0;
assign v508_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_2_we0;
assign v508_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_address0;
assign v508_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_ce0;
assign v508_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_d0;
assign v508_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_3_we0;
assign v508_4_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_address0;
assign v508_4_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_ce0;
assign v508_4_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_d0;
assign v508_4_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_4_we0;
assign v508_5_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_address0;
assign v508_5_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_ce0;
assign v508_5_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_d0;
assign v508_5_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_5_we0;
assign v508_6_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_address0;
assign v508_6_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_ce0;
assign v508_6_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_d0;
assign v508_6_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_6_we0;
assign v508_7_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_address0;
assign v508_7_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_ce0;
assign v508_7_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_d0;
assign v508_7_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_7_we0;
assign v508_8_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_address0;
assign v508_8_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_ce0;
assign v508_8_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_d0;
assign v508_8_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_8_we0;
assign v508_9_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_address0;
assign v508_9_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_ce0;
assign v508_9_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_d0;
assign v508_9_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_9_we0;
assign v508_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_address0;
assign v508_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_ce0;
assign v508_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_d0;
assign v508_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v508_we0;
assign v9007_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_address0;
assign v9007_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_0_ce0;
assign v9007_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_address0;
assign v9007_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_1_ce0;
assign v9007_0_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_address0;
assign v9007_0_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_2_ce0;
assign v9007_0_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_address0;
assign v9007_0_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_0_3_ce0;
assign v9007_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_address0;
assign v9007_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_0_ce0;
assign v9007_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_address0;
assign v9007_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_1_ce0;
assign v9007_1_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_address0;
assign v9007_1_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_2_ce0;
assign v9007_1_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_address0;
assign v9007_1_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_1_3_ce0;
assign v9007_2_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_address0;
assign v9007_2_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_0_ce0;
assign v9007_2_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_address0;
assign v9007_2_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_1_ce0;
assign v9007_2_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_address0;
assign v9007_2_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_2_ce0;
assign v9007_2_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_address0;
assign v9007_2_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_2_3_ce0;
assign v9007_3_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_address0;
assign v9007_3_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_0_ce0;
assign v9007_3_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_address0;
assign v9007_3_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_1_ce0;
assign v9007_3_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_address0;
assign v9007_3_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_2_ce0;
assign v9007_3_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_address0;
assign v9007_3_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_814_1_proc74_Pipeline_VITIS_LO_fu_136_v9007_3_3_ce0;
assign zext_ln953_fu_224_p1 = trunc_ln_fu_214_p4;
always @ (posedge ap_clk) begin
    rem_reg_340[4:0] <= 5'b00000;
    shl_ln_reg_345[2:0] <= 3'b000;
    mul_i_reg_350[4:0] <= 5'b00000;
    shl_ln1_reg_355[2:0] <= 3'b000;
end
endmodule 
