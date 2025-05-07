module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,val_2_address0,val_2_ce0,val_2_q0,val_2_address1,val_2_ce1,val_2_q1,val_3_address0,val_3_ce0,val_3_q0,val_3_address1,val_3_ce1,val_3_q1,val_4_address0,val_4_ce0,val_4_q0,val_4_address1,val_4_ce1,val_4_q1,val_5_address0,val_5_ce0,val_5_q0,val_5_address1,val_5_ce1,val_5_q1,val_6_address0,val_6_ce0,val_6_q0,val_6_address1,val_6_ce1,val_6_q1,val_7_address0,val_7_ce0,val_7_q0,val_7_address1,val_7_ce1,val_7_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_2_address1,rowDelimiters_2_ce1,rowDelimiters_2_q1,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_3_address1,rowDelimiters_3_ce1,rowDelimiters_3_q1,rowDelimiters_4_address0,rowDelimiters_4_ce0,rowDelimiters_4_q0,rowDelimiters_4_address1,rowDelimiters_4_ce1,rowDelimiters_4_q1,rowDelimiters_5_address0,rowDelimiters_5_ce0,rowDelimiters_5_q0,rowDelimiters_5_address1,rowDelimiters_5_ce1,rowDelimiters_5_q1,rowDelimiters_6_address0,rowDelimiters_6_ce0,rowDelimiters_6_q0,rowDelimiters_6_address1,rowDelimiters_6_ce1,rowDelimiters_6_q1,rowDelimiters_7_address0,rowDelimiters_7_ce0,rowDelimiters_7_q0,rowDelimiters_7_address1,rowDelimiters_7_ce1,rowDelimiters_7_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,vec_4_address0,vec_4_ce0,vec_4_q0,vec_4_address1,vec_4_ce1,vec_4_q1,vec_5_address0,vec_5_ce0,vec_5_q0,vec_5_address1,vec_5_ce1,vec_5_q1,vec_6_address0,vec_6_ce0,vec_6_q0,vec_6_address1,vec_6_ce1,vec_6_q1,vec_7_address0,vec_7_ce0,vec_7_q0,vec_7_address1,vec_7_ce1,vec_7_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0,out_4_address0,out_4_ce0,out_4_we0,out_4_d0,out_5_address0,out_5_ce0,out_5_we0,out_5_d0,out_6_address0,out_6_ce0,out_6_we0,out_6_d0,out_7_address0,out_7_ce0,out_7_we0,out_7_d0); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [7:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [7:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [7:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [7:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [7:0] val_2_address1;
output   val_2_ce1;
input  [63:0] val_2_q1;
output  [7:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [7:0] val_3_address1;
output   val_3_ce1;
input  [63:0] val_3_q1;
output  [7:0] val_4_address0;
output   val_4_ce0;
input  [63:0] val_4_q0;
output  [7:0] val_4_address1;
output   val_4_ce1;
input  [63:0] val_4_q1;
output  [7:0] val_5_address0;
output   val_5_ce0;
input  [63:0] val_5_q0;
output  [7:0] val_5_address1;
output   val_5_ce1;
input  [63:0] val_5_q1;
output  [7:0] val_6_address0;
output   val_6_ce0;
input  [63:0] val_6_q0;
output  [7:0] val_6_address1;
output   val_6_ce1;
input  [63:0] val_6_q1;
output  [7:0] val_7_address0;
output   val_7_ce0;
input  [63:0] val_7_q0;
output  [7:0] val_7_address1;
output   val_7_ce1;
input  [63:0] val_7_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [5:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [5:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [5:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [5:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [5:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [5:0] rowDelimiters_2_address1;
output   rowDelimiters_2_ce1;
input  [31:0] rowDelimiters_2_q1;
output  [5:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [5:0] rowDelimiters_3_address1;
output   rowDelimiters_3_ce1;
input  [31:0] rowDelimiters_3_q1;
output  [5:0] rowDelimiters_4_address0;
output   rowDelimiters_4_ce0;
input  [31:0] rowDelimiters_4_q0;
output  [5:0] rowDelimiters_4_address1;
output   rowDelimiters_4_ce1;
input  [31:0] rowDelimiters_4_q1;
output  [5:0] rowDelimiters_5_address0;
output   rowDelimiters_5_ce0;
input  [31:0] rowDelimiters_5_q0;
output  [5:0] rowDelimiters_5_address1;
output   rowDelimiters_5_ce1;
input  [31:0] rowDelimiters_5_q1;
output  [5:0] rowDelimiters_6_address0;
output   rowDelimiters_6_ce0;
input  [31:0] rowDelimiters_6_q0;
output  [5:0] rowDelimiters_6_address1;
output   rowDelimiters_6_ce1;
input  [31:0] rowDelimiters_6_q1;
output  [5:0] rowDelimiters_7_address0;
output   rowDelimiters_7_ce0;
input  [31:0] rowDelimiters_7_q0;
output  [5:0] rowDelimiters_7_address1;
output   rowDelimiters_7_ce1;
input  [31:0] rowDelimiters_7_q1;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_4_address1;
output   vec_4_ce1;
input  [63:0] vec_4_q1;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_5_address1;
output   vec_5_ce1;
input  [63:0] vec_5_q1;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_6_address1;
output   vec_6_ce1;
input  [63:0] vec_6_q1;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] vec_7_address1;
output   vec_7_ce1;
input  [63:0] vec_7_q1;
output  [5:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [5:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [5:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [5:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
output  [5:0] out_4_address0;
output   out_4_ce0;
output   out_4_we0;
output  [63:0] out_4_d0;
output  [5:0] out_5_address0;
output   out_5_ce0;
output   out_5_we0;
output  [63:0] out_5_d0;
output  [5:0] out_6_address0;
output   out_6_ce0;
output   out_6_we0;
output  [63:0] out_6_d0;
output  [5:0] out_7_address0;
output   out_7_ce0;
output   out_7_we0;
output  [63:0] out_7_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_603_p2;
reg   [8:0] add_ln15_reg_1101;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln12_fu_609_p1;
reg   [2:0] trunc_ln12_reg_1106;
wire   [63:0] zext_ln9_fu_623_p1;
reg   [63:0] zext_ln9_reg_1112;
wire   [31:0] tmp_begin_fu_657_p19;
reg   [31:0] tmp_begin_reg_1204;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_697_p19;
reg   [31:0] tmp_end_reg_1209;
wire   [3:0] grp_spmv_Pipeline_spmv_2_fu_532_ap_return;
reg   [3:0] targetBlock_reg_1215;
wire    ap_CS_fsm_state4;
wire   [0:0] empty_fu_738_p2;
reg   [0:0] empty_reg_1230;
wire   [0:0] empty_14_fu_744_p2;
reg   [0:0] empty_14_reg_1235;
wire   [0:0] empty_16_fu_750_p2;
reg   [0:0] empty_16_reg_1240;
wire   [0:0] empty_18_fu_756_p2;
reg   [0:0] empty_18_reg_1245;
wire   [63:0] empty_39_fu_957_p3;
reg   [63:0] empty_39_reg_1250;
wire    ap_CS_fsm_state5;
wire   [0:0] empty_40_fu_965_p2;
reg   [0:0] empty_40_reg_1255;
wire    grp_spmv_Pipeline_spmv_2_fu_532_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_532_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_532_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_532_ap_ready;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_2_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_3_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_4_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_4_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_5_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_5_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_6_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_6_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_7_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_532_val_7_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce1;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_532_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_cols_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_532_cols_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_cols_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce1;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce1;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg;
reg   [63:0] sum_loc_fu_224;
reg   [63:0] sum_15_loc_fu_220;
reg   [63:0] sum_14_loc_fu_216;
reg   [63:0] sum_13_loc_fu_212;
reg   [63:0] sum_12_loc_fu_208;
reg   [63:0] sum_11_loc_fu_204;
reg   [63:0] sum_10_loc_fu_200;
reg   [63:0] sum_9_loc_fu_196;
reg   [63:0] sum_8_loc_fu_192;
reg   [63:0] sum_7_loc_fu_188;
reg   [63:0] sum_6_loc_fu_184;
reg   [63:0] sum_5_loc_fu_180;
reg   [63:0] sum_4_loc_fu_176;
reg   [63:0] sum_3_loc_fu_172;
reg   [63:0] sum_2_loc_fu_168;
reg   [63:0] sum_1_loc_fu_164;
wire   [0:0] icmp_ln12_fu_597_p2;
wire   [63:0] zext_ln15_fu_645_p1;
wire    ap_CS_fsm_state6;
reg   [8:0] i_fu_160;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_2_ce1_local;
reg    rowDelimiters_2_ce0_local;
reg    rowDelimiters_3_ce1_local;
reg    rowDelimiters_3_ce0_local;
reg    rowDelimiters_4_ce1_local;
reg    rowDelimiters_4_ce0_local;
reg    rowDelimiters_5_ce1_local;
reg    rowDelimiters_5_ce0_local;
reg    rowDelimiters_6_ce1_local;
reg    rowDelimiters_6_ce0_local;
reg    rowDelimiters_7_ce1_local;
reg    rowDelimiters_7_ce0_local;
reg    out_6_we0_local;
wire   [63:0] bitcast_ln20_fu_979_p1;
reg    out_6_ce0_local;
reg    out_5_we0_local;
reg    out_5_ce0_local;
reg    out_4_we0_local;
reg    out_4_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
reg    out_2_we0_local;
reg    out_2_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_7_we0_local;
reg    out_7_ce0_local;
wire   [5:0] lshr_ln9_fu_613_p4;
wire   [5:0] lshr_ln_fu_635_p4;
wire   [31:0] tmp_begin_fu_657_p17;
wire   [31:0] tmp_end_fu_697_p17;
wire   [63:0] empty_13_fu_807_p3;
wire   [63:0] empty_15_fu_814_p3;
wire   [63:0] empty_17_fu_821_p3;
wire   [0:0] empty_20_fu_835_p2;
wire   [63:0] empty_19_fu_828_p3;
wire   [0:0] empty_22_fu_848_p2;
wire   [63:0] empty_21_fu_840_p3;
wire   [0:0] empty_24_fu_861_p2;
wire   [63:0] empty_23_fu_853_p3;
wire   [0:0] empty_26_fu_874_p2;
wire   [63:0] empty_25_fu_866_p3;
wire   [0:0] empty_28_fu_887_p2;
wire   [63:0] empty_27_fu_879_p3;
wire   [0:0] empty_30_fu_900_p2;
wire   [63:0] empty_29_fu_892_p3;
wire   [0:0] empty_32_fu_913_p2;
wire   [63:0] empty_31_fu_905_p3;
wire   [0:0] empty_34_fu_926_p2;
wire   [63:0] empty_33_fu_918_p3;
wire   [0:0] empty_36_fu_939_p2;
wire   [63:0] empty_35_fu_931_p3;
wire   [0:0] empty_38_fu_952_p2;
wire   [63:0] empty_37_fu_944_p3;
wire   [63:0] sum_0_lcssa_ph_fu_973_p3;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire   [2:0] tmp_begin_fu_657_p1;
wire   [2:0] tmp_begin_fu_657_p3;
wire   [2:0] tmp_begin_fu_657_p5;
wire   [2:0] tmp_begin_fu_657_p7;
wire  signed [2:0] tmp_begin_fu_657_p9;
wire  signed [2:0] tmp_begin_fu_657_p11;
wire  signed [2:0] tmp_begin_fu_657_p13;
wire  signed [2:0] tmp_begin_fu_657_p15;
wire  signed [2:0] tmp_end_fu_697_p1;
wire   [2:0] tmp_end_fu_697_p3;
wire   [2:0] tmp_end_fu_697_p5;
wire   [2:0] tmp_end_fu_697_p7;
wire   [2:0] tmp_end_fu_697_p9;
wire  signed [2:0] tmp_end_fu_697_p11;
wire  signed [2:0] tmp_end_fu_697_p13;
wire  signed [2:0] tmp_end_fu_697_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg = 1'b0;
#0 i_fu_160 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_532(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_532_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_532_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_532_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_532_ap_ready),.sext_ln16(tmp_begin_reg_1204),.sext_ln16_1(tmp_end_reg_1209),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce0),.val_0_q0(val_0_q0),.val_0_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_0_address1),.val_0_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce1),.val_0_q1(val_0_q1),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce0),.val_1_q0(val_1_q0),.val_1_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_1_address1),.val_1_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce1),.val_1_q1(val_1_q1),.val_2_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_2_address0),.val_2_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce0),.val_2_q0(val_2_q0),.val_2_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_2_address1),.val_2_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce1),.val_2_q1(val_2_q1),.val_3_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_3_address0),.val_3_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce0),.val_3_q0(val_3_q0),.val_3_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_3_address1),.val_3_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce1),.val_3_q1(val_3_q1),.val_4_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_4_address0),.val_4_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce0),.val_4_q0(val_4_q0),.val_4_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_4_address1),.val_4_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce1),.val_4_q1(val_4_q1),.val_5_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_5_address0),.val_5_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce0),.val_5_q0(val_5_q0),.val_5_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_5_address1),.val_5_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce1),.val_5_q1(val_5_q1),.val_6_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_6_address0),.val_6_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce0),.val_6_q0(val_6_q0),.val_6_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_6_address1),.val_6_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce1),.val_6_q1(val_6_q1),.val_7_address0(grp_spmv_Pipeline_spmv_2_fu_532_val_7_address0),.val_7_ce0(grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce0),.val_7_q0(val_7_q0),.val_7_address1(grp_spmv_Pipeline_spmv_2_fu_532_val_7_address1),.val_7_ce1(grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce1),.val_7_q1(val_7_q1),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_532_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_532_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_spmv_Pipeline_spmv_2_fu_532_cols_address1),.cols_ce1(grp_spmv_Pipeline_spmv_2_fu_532_cols_ce1),.cols_q1(cols_q1),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address1),.vec_0_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address1),.vec_1_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce1),.vec_1_q1(vec_1_q1),.vec_2_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address0),.vec_2_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_2_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address1),.vec_2_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce1),.vec_2_q1(vec_2_q1),.vec_3_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address0),.vec_3_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce0),.vec_3_q0(vec_3_q0),.vec_3_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address1),.vec_3_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce1),.vec_3_q1(vec_3_q1),.vec_4_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address0),.vec_4_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce0),.vec_4_q0(vec_4_q0),.vec_4_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address1),.vec_4_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce1),.vec_4_q1(vec_4_q1),.vec_5_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address0),.vec_5_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce0),.vec_5_q0(vec_5_q0),.vec_5_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address1),.vec_5_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce1),.vec_5_q1(vec_5_q1),.vec_6_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address0),.vec_6_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce0),.vec_6_q0(vec_6_q0),.vec_6_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address1),.vec_6_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce1),.vec_6_q1(vec_6_q1),.vec_7_address0(grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address0),.vec_7_ce0(grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce0),.vec_7_q0(vec_7_q0),.vec_7_address1(grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address1),.vec_7_ce1(grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce1),.vec_7_q1(vec_7_q1),.tmp_end(tmp_end_reg_1209),.sum_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_out_ap_vld),.sum_15_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out),.sum_15_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out_ap_vld),.sum_14_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out),.sum_14_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out_ap_vld),.sum_13_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out),.sum_13_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out_ap_vld),.sum_12_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out),.sum_12_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out_ap_vld),.sum_11_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out),.sum_11_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out_ap_vld),.sum_10_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out),.sum_10_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out_ap_vld),.sum_9_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out),.sum_9_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out_ap_vld),.sum_8_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out),.sum_8_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out_ap_vld),.sum_7_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out),.sum_7_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out_ap_vld),.sum_6_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out),.sum_6_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out_ap_vld),.sum_5_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out),.sum_5_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out_ap_vld),.sum_4_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out),.sum_4_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_532_ap_return));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U81(.din0(rowDelimiters_0_q1),.din1(rowDelimiters_1_q1),.din2(rowDelimiters_2_q1),.din3(rowDelimiters_3_q1),.din4(rowDelimiters_4_q1),.din5(rowDelimiters_5_q1),.din6(rowDelimiters_6_q1),.din7(rowDelimiters_7_q1),.def(tmp_begin_fu_657_p17),.sel(trunc_ln12_reg_1106),.dout(tmp_begin_fu_657_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U82(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_1_q0),.din2(rowDelimiters_2_q0),.din3(rowDelimiters_3_q0),.din4(rowDelimiters_4_q0),.din5(rowDelimiters_5_q0),.din6(rowDelimiters_6_q0),.din7(rowDelimiters_7_q0),.def(tmp_end_fu_697_p17),.sel(trunc_ln12_reg_1106),.dout(tmp_end_fu_697_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_532_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_160 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_160 <= add_ln15_reg_1101;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_1101 <= add_ln15_fu_603_p2;
        trunc_ln12_reg_1106 <= trunc_ln12_fu_609_p1;
        zext_ln9_reg_1112[5 : 0] <= zext_ln9_fu_623_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_14_reg_1235 <= empty_14_fu_744_p2;
        empty_16_reg_1240 <= empty_16_fu_750_p2;
        empty_18_reg_1245 <= empty_18_fu_756_p2;
        empty_reg_1230 <= empty_fu_738_p2;
        targetBlock_reg_1215 <= grp_spmv_Pipeline_spmv_2_fu_532_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_39_reg_1250 <= empty_39_fu_957_p3;
        empty_40_reg_1255 <= empty_40_fu_965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_10_loc_fu_200 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_11_loc_fu_204 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_12_loc_fu_208 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_12_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_13_loc_fu_212 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_14_loc_fu_216 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_14_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_15_loc_fu_220 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_164 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_2_loc_fu_168 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_loc_fu_172 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_loc_fu_176 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_5_loc_fu_180 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_6_loc_fu_184 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_7_loc_fu_188 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_8_loc_fu_192 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_9_loc_fu_196 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_532_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_224 <= grp_spmv_Pipeline_spmv_2_fu_532_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_1204 <= tmp_begin_fu_657_p19;
        tmp_end_reg_1209 <= tmp_end_fu_697_p19;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_spmv_Pipeline_spmv_2_fu_532_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln12_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_4_ce0_local = 1'b1;
    end else begin
        out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd4) & (1'b1 == ap_CS_fsm_state6))) begin
        out_4_we0_local = 1'b1;
    end else begin
        out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_5_ce0_local = 1'b1;
    end else begin
        out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd5) & (1'b1 == ap_CS_fsm_state6))) begin
        out_5_we0_local = 1'b1;
    end else begin
        out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_6_ce0_local = 1'b1;
    end else begin
        out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd6) & (1'b1 == ap_CS_fsm_state6))) begin
        out_6_we0_local = 1'b1;
    end else begin
        out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_7_ce0_local = 1'b1;
    end else begin
        out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_1106 == 3'd7) & (1'b1 == ap_CS_fsm_state6))) begin
        out_7_we0_local = 1'b1;
    end else begin
        out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce1_local = 1'b1;
    end else begin
        rowDelimiters_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce1_local = 1'b1;
    end else begin
        rowDelimiters_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce0_local = 1'b1;
    end else begin
        rowDelimiters_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce1_local = 1'b1;
    end else begin
        rowDelimiters_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce0_local = 1'b1;
    end else begin
        rowDelimiters_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce1_local = 1'b1;
    end else begin
        rowDelimiters_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_4_ce0_local = 1'b1;
    end else begin
        rowDelimiters_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_4_ce1_local = 1'b1;
    end else begin
        rowDelimiters_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_5_ce0_local = 1'b1;
    end else begin
        rowDelimiters_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_5_ce1_local = 1'b1;
    end else begin
        rowDelimiters_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_6_ce0_local = 1'b1;
    end else begin
        rowDelimiters_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_6_ce1_local = 1'b1;
    end else begin
        rowDelimiters_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_7_ce0_local = 1'b1;
    end else begin
        rowDelimiters_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_7_ce1_local = 1'b1;
    end else begin
        rowDelimiters_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_spmv_Pipeline_spmv_2_fu_532_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_603_p2 = (i_fu_160 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln20_fu_979_p1 = sum_0_lcssa_ph_fu_973_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_532_cols_address0;
assign cols_address1 = grp_spmv_Pipeline_spmv_2_fu_532_cols_address1;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_cols_ce0;
assign cols_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_cols_ce1;
assign empty_13_fu_807_p3 = ((empty_reg_1230[0:0] == 1'b1) ? sum_loc_fu_224 : sum_1_loc_fu_164);
assign empty_14_fu_744_p2 = ((grp_spmv_Pipeline_spmv_2_fu_532_ap_return == 4'd1) ? 1'b1 : 1'b0);
assign empty_15_fu_814_p3 = ((empty_14_reg_1235[0:0] == 1'b1) ? sum_15_loc_fu_220 : empty_13_fu_807_p3);
assign empty_16_fu_750_p2 = ((grp_spmv_Pipeline_spmv_2_fu_532_ap_return == 4'd2) ? 1'b1 : 1'b0);
assign empty_17_fu_821_p3 = ((empty_16_reg_1240[0:0] == 1'b1) ? sum_14_loc_fu_216 : empty_15_fu_814_p3);
assign empty_18_fu_756_p2 = ((grp_spmv_Pipeline_spmv_2_fu_532_ap_return == 4'd3) ? 1'b1 : 1'b0);
assign empty_19_fu_828_p3 = ((empty_18_reg_1245[0:0] == 1'b1) ? sum_13_loc_fu_212 : empty_17_fu_821_p3);
assign empty_20_fu_835_p2 = ((targetBlock_reg_1215 == 4'd4) ? 1'b1 : 1'b0);
assign empty_21_fu_840_p3 = ((empty_20_fu_835_p2[0:0] == 1'b1) ? sum_12_loc_fu_208 : empty_19_fu_828_p3);
assign empty_22_fu_848_p2 = ((targetBlock_reg_1215 == 4'd5) ? 1'b1 : 1'b0);
assign empty_23_fu_853_p3 = ((empty_22_fu_848_p2[0:0] == 1'b1) ? sum_11_loc_fu_204 : empty_21_fu_840_p3);
assign empty_24_fu_861_p2 = ((targetBlock_reg_1215 == 4'd6) ? 1'b1 : 1'b0);
assign empty_25_fu_866_p3 = ((empty_24_fu_861_p2[0:0] == 1'b1) ? sum_10_loc_fu_200 : empty_23_fu_853_p3);
assign empty_26_fu_874_p2 = ((targetBlock_reg_1215 == 4'd7) ? 1'b1 : 1'b0);
assign empty_27_fu_879_p3 = ((empty_26_fu_874_p2[0:0] == 1'b1) ? sum_9_loc_fu_196 : empty_25_fu_866_p3);
assign empty_28_fu_887_p2 = ((targetBlock_reg_1215 == 4'd8) ? 1'b1 : 1'b0);
assign empty_29_fu_892_p3 = ((empty_28_fu_887_p2[0:0] == 1'b1) ? sum_8_loc_fu_192 : empty_27_fu_879_p3);
assign empty_30_fu_900_p2 = ((targetBlock_reg_1215 == 4'd9) ? 1'b1 : 1'b0);
assign empty_31_fu_905_p3 = ((empty_30_fu_900_p2[0:0] == 1'b1) ? sum_7_loc_fu_188 : empty_29_fu_892_p3);
assign empty_32_fu_913_p2 = ((targetBlock_reg_1215 == 4'd10) ? 1'b1 : 1'b0);
assign empty_33_fu_918_p3 = ((empty_32_fu_913_p2[0:0] == 1'b1) ? sum_6_loc_fu_184 : empty_31_fu_905_p3);
assign empty_34_fu_926_p2 = ((targetBlock_reg_1215 == 4'd11) ? 1'b1 : 1'b0);
assign empty_35_fu_931_p3 = ((empty_34_fu_926_p2[0:0] == 1'b1) ? sum_5_loc_fu_180 : empty_33_fu_918_p3);
assign empty_36_fu_939_p2 = ((targetBlock_reg_1215 == 4'd12) ? 1'b1 : 1'b0);
assign empty_37_fu_944_p3 = ((empty_36_fu_939_p2[0:0] == 1'b1) ? sum_4_loc_fu_176 : empty_35_fu_931_p3);
assign empty_38_fu_952_p2 = ((targetBlock_reg_1215 == 4'd13) ? 1'b1 : 1'b0);
assign empty_39_fu_957_p3 = ((empty_38_fu_952_p2[0:0] == 1'b1) ? sum_3_loc_fu_172 : empty_37_fu_944_p3);
assign empty_40_fu_965_p2 = ((targetBlock_reg_1215 == 4'd14) ? 1'b1 : 1'b0);
assign empty_fu_738_p2 = ((grp_spmv_Pipeline_spmv_2_fu_532_ap_return == 4'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_532_ap_start = grp_spmv_Pipeline_spmv_2_fu_532_ap_start_reg;
assign icmp_ln12_fu_597_p2 = ((i_fu_160 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_613_p4 = {{i_fu_160[8:3]}};
assign lshr_ln_fu_635_p4 = {{add_ln15_fu_603_p2[8:3]}};
assign out_0_address0 = zext_ln9_reg_1112;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_979_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_1112;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_979_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_1112;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_979_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_1112;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_fu_979_p1;
assign out_3_we0 = out_3_we0_local;
assign out_4_address0 = zext_ln9_reg_1112;
assign out_4_ce0 = out_4_ce0_local;
assign out_4_d0 = bitcast_ln20_fu_979_p1;
assign out_4_we0 = out_4_we0_local;
assign out_5_address0 = zext_ln9_reg_1112;
assign out_5_ce0 = out_5_ce0_local;
assign out_5_d0 = bitcast_ln20_fu_979_p1;
assign out_5_we0 = out_5_we0_local;
assign out_6_address0 = zext_ln9_reg_1112;
assign out_6_ce0 = out_6_ce0_local;
assign out_6_d0 = bitcast_ln20_fu_979_p1;
assign out_6_we0 = out_6_we0_local;
assign out_7_address0 = zext_ln9_reg_1112;
assign out_7_ce0 = out_7_ce0_local;
assign out_7_d0 = bitcast_ln20_fu_979_p1;
assign out_7_we0 = out_7_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign rowDelimiters_2_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_2_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_2_ce1 = rowDelimiters_2_ce1_local;
assign rowDelimiters_3_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_3_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_3_ce1 = rowDelimiters_3_ce1_local;
assign rowDelimiters_4_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_4_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_4_ce0 = rowDelimiters_4_ce0_local;
assign rowDelimiters_4_ce1 = rowDelimiters_4_ce1_local;
assign rowDelimiters_5_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_5_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_5_ce0 = rowDelimiters_5_ce0_local;
assign rowDelimiters_5_ce1 = rowDelimiters_5_ce1_local;
assign rowDelimiters_6_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_6_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_6_ce0 = rowDelimiters_6_ce0_local;
assign rowDelimiters_6_ce1 = rowDelimiters_6_ce1_local;
assign rowDelimiters_7_address0 = zext_ln15_fu_645_p1;
assign rowDelimiters_7_address1 = zext_ln9_fu_623_p1;
assign rowDelimiters_7_ce0 = rowDelimiters_7_ce0_local;
assign rowDelimiters_7_ce1 = rowDelimiters_7_ce1_local;
assign sum_0_lcssa_ph_fu_973_p3 = ((empty_40_reg_1255[0:0] == 1'b1) ? sum_2_loc_fu_168 : empty_39_reg_1250);
assign tmp_begin_fu_657_p17 = 'bx;
assign tmp_end_fu_697_p17 = 'bx;
assign trunc_ln12_fu_609_p1 = i_fu_160[2:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_0_address0;
assign val_0_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_0_address1;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce0;
assign val_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_0_ce1;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_1_address0;
assign val_1_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_1_address1;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce0;
assign val_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_1_ce1;
assign val_2_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_2_address0;
assign val_2_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_2_address1;
assign val_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce0;
assign val_2_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_2_ce1;
assign val_3_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_3_address0;
assign val_3_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_3_address1;
assign val_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce0;
assign val_3_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_3_ce1;
assign val_4_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_4_address0;
assign val_4_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_4_address1;
assign val_4_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce0;
assign val_4_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_4_ce1;
assign val_5_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_5_address0;
assign val_5_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_5_address1;
assign val_5_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce0;
assign val_5_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_5_ce1;
assign val_6_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_6_address0;
assign val_6_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_6_address1;
assign val_6_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce0;
assign val_6_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_6_ce1;
assign val_7_address0 = grp_spmv_Pipeline_spmv_2_fu_532_val_7_address0;
assign val_7_address1 = grp_spmv_Pipeline_spmv_2_fu_532_val_7_address1;
assign val_7_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce0;
assign val_7_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_val_7_ce1;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address0;
assign vec_0_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_0_address1;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce0;
assign vec_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_0_ce1;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address0;
assign vec_1_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_1_address1;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce0;
assign vec_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_1_ce1;
assign vec_2_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address0;
assign vec_2_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_2_address1;
assign vec_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce0;
assign vec_2_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_2_ce1;
assign vec_3_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address0;
assign vec_3_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_3_address1;
assign vec_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce0;
assign vec_3_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_3_ce1;
assign vec_4_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address0;
assign vec_4_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_4_address1;
assign vec_4_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce0;
assign vec_4_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_4_ce1;
assign vec_5_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address0;
assign vec_5_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_5_address1;
assign vec_5_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce0;
assign vec_5_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_5_ce1;
assign vec_6_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address0;
assign vec_6_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_6_address1;
assign vec_6_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce0;
assign vec_6_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_6_ce1;
assign vec_7_address0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address0;
assign vec_7_address1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_7_address1;
assign vec_7_ce0 = grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce0;
assign vec_7_ce1 = grp_spmv_Pipeline_spmv_2_fu_532_vec_7_ce1;
assign zext_ln15_fu_645_p1 = lshr_ln_fu_635_p4;
assign zext_ln9_fu_623_p1 = lshr_ln9_fu_613_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_1112[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 