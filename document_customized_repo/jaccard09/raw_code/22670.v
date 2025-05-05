module stencil3d (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_address0,C_ce0,C_q0,C_address1,C_ce1,C_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_3_address1,sol_3_ce1,sol_3_we1,sol_3_d1,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_4_address1,sol_4_ce1,sol_4_we1,sol_4_d1,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_5_address1,sol_5_ce1,sol_5_we1,sol_5_d1,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_6_address1,sol_6_ce1,sol_6_we1,sol_6_d1,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_7_address1,sol_7_ce1,sol_7_we1,sol_7_d1,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_8_address1,sol_8_ce1,sol_8_we1,sol_8_d1,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_9_address1,sol_9_ce1,sol_9_we1,sol_9_d1,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_10_address1,sol_10_ce1,sol_10_we1,sol_10_d1,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_11_address1,sol_11_ce1,sol_11_we1,sol_11_d1,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_12_address1,sol_12_ce1,sol_12_we1,sol_12_d1,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_13_address1,sol_13_ce1,sol_13_we1,sol_13_d1,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_14_address1,sol_14_ce1,sol_14_we1,sol_14_d1,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_15_address1,sol_15_ce1,sol_15_we1,sol_15_d1); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [0:0] C_address1;
output   C_ce1;
input  [31:0] C_q1;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [9:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [9:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [9:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [9:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [9:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [9:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [9:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [9:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [9:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [9:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [9:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [9:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [9:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [9:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [9:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_3_address1;
output   sol_3_ce1;
output   sol_3_we1;
output  [31:0] sol_3_d1;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_4_address1;
output   sol_4_ce1;
output   sol_4_we1;
output  [31:0] sol_4_d1;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_5_address1;
output   sol_5_ce1;
output   sol_5_we1;
output  [31:0] sol_5_d1;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_6_address1;
output   sol_6_ce1;
output   sol_6_we1;
output  [31:0] sol_6_d1;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_7_address1;
output   sol_7_ce1;
output   sol_7_we1;
output  [31:0] sol_7_d1;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_8_address1;
output   sol_8_ce1;
output   sol_8_we1;
output  [31:0] sol_8_d1;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_9_address1;
output   sol_9_ce1;
output   sol_9_we1;
output  [31:0] sol_9_d1;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_10_address1;
output   sol_10_ce1;
output   sol_10_we1;
output  [31:0] sol_10_d1;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_11_address1;
output   sol_11_ce1;
output   sol_11_we1;
output  [31:0] sol_11_d1;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_12_address1;
output   sol_12_ce1;
output   sol_12_we1;
output  [31:0] sol_12_d1;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_13_address1;
output   sol_13_ce1;
output   sol_13_we1;
output  [31:0] sol_13_d1;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [9:0] sol_14_address1;
output   sol_14_ce1;
output   sol_14_we1;
output  [31:0] sol_14_d1;
output  [9:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [9:0] sol_15_address1;
output   sol_15_ce1;
output   sol_15_we1;
output  [31:0] sol_15_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] orig_0_address0;
reg orig_0_ce0;
reg[9:0] orig_0_address1;
reg orig_0_ce1;
reg[9:0] orig_1_address0;
reg orig_1_ce0;
reg[9:0] orig_1_address1;
reg orig_1_ce1;
reg[9:0] orig_2_address0;
reg orig_2_ce0;
reg[9:0] orig_2_address1;
reg orig_2_ce1;
reg[9:0] orig_3_address0;
reg orig_3_ce0;
reg[9:0] orig_3_address1;
reg orig_3_ce1;
reg[9:0] orig_4_address0;
reg orig_4_ce0;
reg[9:0] orig_4_address1;
reg orig_4_ce1;
reg[9:0] orig_5_address0;
reg orig_5_ce0;
reg[9:0] orig_5_address1;
reg orig_5_ce1;
reg[9:0] orig_6_address0;
reg orig_6_ce0;
reg[9:0] orig_6_address1;
reg orig_6_ce1;
reg[9:0] orig_7_address0;
reg orig_7_ce0;
reg[9:0] orig_7_address1;
reg orig_7_ce1;
reg[9:0] orig_8_address0;
reg orig_8_ce0;
reg[9:0] orig_8_address1;
reg orig_8_ce1;
reg[9:0] orig_9_address0;
reg orig_9_ce0;
reg[9:0] orig_9_address1;
reg orig_9_ce1;
reg[9:0] orig_10_address0;
reg orig_10_ce0;
reg[9:0] orig_10_address1;
reg orig_10_ce1;
reg[9:0] orig_11_address0;
reg orig_11_ce0;
reg[9:0] orig_11_address1;
reg orig_11_ce1;
reg[9:0] orig_12_address0;
reg orig_12_ce0;
reg[9:0] orig_12_address1;
reg orig_12_ce1;
reg[9:0] orig_13_address0;
reg orig_13_ce0;
reg[9:0] orig_13_address1;
reg orig_13_ce1;
reg[9:0] orig_14_address0;
reg orig_14_ce0;
reg[9:0] orig_14_address1;
reg orig_14_ce1;
reg[9:0] orig_15_address0;
reg orig_15_ce0;
reg[9:0] orig_15_address1;
reg orig_15_ce1;
reg[9:0] sol_0_address0;
reg sol_0_ce0;
reg sol_0_we0;
reg[31:0] sol_0_d0;
reg[9:0] sol_0_address1;
reg sol_0_ce1;
reg sol_0_we1;
reg[31:0] sol_0_d1;
reg[9:0] sol_1_address0;
reg sol_1_ce0;
reg sol_1_we0;
reg[31:0] sol_1_d0;
reg[9:0] sol_1_address1;
reg sol_1_ce1;
reg sol_1_we1;
reg[31:0] sol_1_d1;
reg[9:0] sol_2_address0;
reg sol_2_ce0;
reg sol_2_we0;
reg[31:0] sol_2_d0;
reg[9:0] sol_2_address1;
reg sol_2_ce1;
reg sol_2_we1;
reg[31:0] sol_2_d1;
reg[9:0] sol_3_address0;
reg sol_3_ce0;
reg sol_3_we0;
reg[31:0] sol_3_d0;
reg[9:0] sol_3_address1;
reg sol_3_ce1;
reg sol_3_we1;
reg[31:0] sol_3_d1;
reg[9:0] sol_4_address0;
reg sol_4_ce0;
reg sol_4_we0;
reg[31:0] sol_4_d0;
reg[9:0] sol_4_address1;
reg sol_4_ce1;
reg sol_4_we1;
reg[31:0] sol_4_d1;
reg[9:0] sol_5_address0;
reg sol_5_ce0;
reg sol_5_we0;
reg[31:0] sol_5_d0;
reg[9:0] sol_5_address1;
reg sol_5_ce1;
reg sol_5_we1;
reg[31:0] sol_5_d1;
reg[9:0] sol_6_address0;
reg sol_6_ce0;
reg sol_6_we0;
reg[31:0] sol_6_d0;
reg[9:0] sol_6_address1;
reg sol_6_ce1;
reg sol_6_we1;
reg[31:0] sol_6_d1;
reg[9:0] sol_7_address0;
reg sol_7_ce0;
reg sol_7_we0;
reg[31:0] sol_7_d0;
reg[9:0] sol_7_address1;
reg sol_7_ce1;
reg sol_7_we1;
reg[31:0] sol_7_d1;
reg[9:0] sol_8_address0;
reg sol_8_ce0;
reg sol_8_we0;
reg[31:0] sol_8_d0;
reg[9:0] sol_8_address1;
reg sol_8_ce1;
reg sol_8_we1;
reg[31:0] sol_8_d1;
reg[9:0] sol_9_address0;
reg sol_9_ce0;
reg sol_9_we0;
reg[31:0] sol_9_d0;
reg[9:0] sol_9_address1;
reg sol_9_ce1;
reg sol_9_we1;
reg[31:0] sol_9_d1;
reg[9:0] sol_10_address0;
reg sol_10_ce0;
reg sol_10_we0;
reg[31:0] sol_10_d0;
reg[9:0] sol_10_address1;
reg sol_10_ce1;
reg sol_10_we1;
reg[31:0] sol_10_d1;
reg[9:0] sol_11_address0;
reg sol_11_ce0;
reg sol_11_we0;
reg[31:0] sol_11_d0;
reg[9:0] sol_11_address1;
reg sol_11_ce1;
reg sol_11_we1;
reg[31:0] sol_11_d1;
reg[9:0] sol_12_address0;
reg sol_12_ce0;
reg sol_12_we0;
reg[31:0] sol_12_d0;
reg[9:0] sol_12_address1;
reg sol_12_ce1;
reg sol_12_we1;
reg[31:0] sol_12_d1;
reg[9:0] sol_13_address0;
reg sol_13_ce0;
reg sol_13_we0;
reg[31:0] sol_13_d0;
reg[9:0] sol_13_address1;
reg sol_13_ce1;
reg sol_13_we1;
reg[31:0] sol_13_d1;
reg[9:0] sol_14_address0;
reg sol_14_ce0;
reg sol_14_we0;
reg[31:0] sol_14_d0;
reg[9:0] sol_14_address1;
reg sol_14_ce1;
reg sol_14_we1;
reg[31:0] sol_14_d1;
reg[9:0] sol_15_address0;
reg sol_15_ce0;
reg sol_15_we0;
reg[31:0] sol_15_d0;
reg[9:0] sol_15_address1;
reg sol_15_ce1;
reg sol_15_we1;
reg[31:0] sol_15_d1;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
reg   [31:0] C_load_reg_503;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_1_reg_508;
reg   [4:0] i_2_reg_513;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_2_reg_521;
reg   [4:0] tmp_4_reg_526;
wire   [5:0] tmp_20_fu_472_p3;
reg   [5:0] tmp_20_reg_531;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_done;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_idle;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_done;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_idle;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_done;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_idle;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_d0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_ap_start;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_ap_done;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_ap_idle;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_ap_ready;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce1;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce0;
wire   [9:0] grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce1;
reg    grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg;
reg    grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg;
wire   [0:0] icmp_ln36_fu_414_p2;
wire    ap_CS_fsm_state8;
reg   [4:0] i_fu_124;
wire   [4:0] indvars_iv_next843_fu_428_p2;
reg    C_ce1_local;
reg    C_ce0_local;
wire   [9:0] tmp_15_fu_420_p3;
wire   [9:0] empty_fu_434_p2;
wire   [9:0] empty_29_fu_440_p2;
wire   [0:0] empty_30_fu_468_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg = 1'b0;
#0 i_fu_124 = 5'd0;
end
stencil3d_stencil3d_Pipeline_height_bound_col grp_stencil3d_Pipeline_height_bound_col_fu_155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start),.ap_done(grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_done),.ap_idle(grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_idle),.ap_ready(grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_col_bound_height grp_stencil3d_Pipeline_col_bound_height_fu_223(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start),.ap_done(grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_done),.ap_idle(grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_idle),.ap_ready(grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d0),.sol_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address1),.sol_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce1),.sol_15_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we1),.sol_15_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d1),.sol_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d0),.sol_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address1),.sol_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce1),.sol_9_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we1),.sol_9_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d1),.sol_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d0),.sol_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address1),.sol_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce1),.sol_8_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we1),.sol_8_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d1),.sol_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d0),.sol_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address1),.sol_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce1),.sol_5_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we1),.sol_5_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d1),.sol_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d0),.sol_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address1),.sol_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce1),.sol_4_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we1),.sol_4_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d1),.sol_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d0),.sol_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address1),.sol_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce1),.sol_3_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we1),.sol_3_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d1),.sol_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce1),.orig_15_q1(orig_15_q1));
stencil3d_stencil3d_Pipeline_row_bound_height_row_bound_col grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start),.ap_done(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_done),.ap_idle(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_idle),.ap_ready(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_ready),.sol_15_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_address0),.sol_15_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_ce0),.sol_15_we0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_we0),.sol_15_d0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_d0),.sol_0_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_d0),.orig_0_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_15_address0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_ce0),.orig_15_q0(orig_15_q0));
stencil3d_stencil3d_Pipeline_loop_col grp_stencil3d_Pipeline_loop_col_fu_331(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_loop_col_fu_331_ap_start),.ap_done(grp_stencil3d_Pipeline_loop_col_fu_331_ap_done),.ap_idle(grp_stencil3d_Pipeline_loop_col_fu_331_ap_idle),.ap_ready(grp_stencil3d_Pipeline_loop_col_fu_331_ap_ready),.sol_14_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address0),.sol_14_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce0),.sol_14_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we0),.sol_14_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d0),.sol_14_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address1),.sol_14_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce1),.sol_14_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we1),.sol_14_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d1),.sol_13_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address0),.sol_13_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce0),.sol_13_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we0),.sol_13_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d0),.sol_13_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address1),.sol_13_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce1),.sol_13_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we1),.sol_13_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d1),.sol_12_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address0),.sol_12_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce0),.sol_12_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we0),.sol_12_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d0),.sol_12_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address1),.sol_12_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce1),.sol_12_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we1),.sol_12_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d1),.sol_11_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address0),.sol_11_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce0),.sol_11_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we0),.sol_11_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d0),.sol_11_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address1),.sol_11_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce1),.sol_11_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we1),.sol_11_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d1),.sol_10_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address0),.sol_10_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce0),.sol_10_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we0),.sol_10_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d0),.sol_10_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address1),.sol_10_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce1),.sol_10_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we1),.sol_10_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d1),.sol_9_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_address0),.sol_9_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_ce0),.sol_9_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_we0),.sol_9_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_d0),.sol_8_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_address0),.sol_8_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_ce0),.sol_8_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_we0),.sol_8_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_d0),.sol_7_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address0),.sol_7_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce0),.sol_7_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we0),.sol_7_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d0),.sol_7_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address1),.sol_7_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce1),.sol_7_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we1),.sol_7_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d1),.sol_6_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address0),.sol_6_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce0),.sol_6_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we0),.sol_6_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d0),.sol_6_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address1),.sol_6_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce1),.sol_6_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we1),.sol_6_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d1),.sol_5_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_address0),.sol_5_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_ce0),.sol_5_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_we0),.sol_5_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_d0),.sol_4_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_address0),.sol_4_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_ce0),.sol_4_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_we0),.sol_4_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_d0),.sol_3_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_address0),.sol_3_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_ce0),.sol_3_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_we0),.sol_3_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_d0),.sol_2_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address0),.sol_2_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce0),.sol_2_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we0),.sol_2_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d0),.sol_2_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address1),.sol_2_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce1),.sol_2_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we1),.sol_2_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d1),.sol_1_address0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d1),.i_2(i_2_reg_513),.tmp_2(tmp_2_reg_521),.tmp_4(tmp_4_reg_526),.orig_1_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address0),.orig_2_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address1),.orig_2_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_0_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce1),.orig_0_q1(orig_0_q1),.C_load(C_load_reg_503),.C_load_1(C_load_1_reg_508),.orig_3_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address0),.orig_3_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address1),.orig_3_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address0),.orig_4_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address1),.orig_4_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address0),.orig_5_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address1),.orig_5_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address0),.orig_6_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address1),.orig_6_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address0),.orig_7_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address1),.orig_7_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce1),.orig_7_q1(orig_7_q1),.orig_8_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address0),.orig_8_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce0),.orig_8_q0(orig_8_q0),.orig_8_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address1),.orig_8_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce1),.orig_8_q1(orig_8_q1),.orig_9_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address0),.orig_9_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce0),.orig_9_q0(orig_9_q0),.orig_9_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address1),.orig_9_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce1),.orig_9_q1(orig_9_q1),.orig_10_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address0),.orig_10_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce0),.orig_10_q0(orig_10_q0),.orig_10_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address1),.orig_10_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce1),.orig_10_q1(orig_10_q1),.orig_11_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address0),.orig_11_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce0),.orig_11_q0(orig_11_q0),.orig_11_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address1),.orig_11_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce1),.orig_11_q1(orig_11_q1),.orig_12_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address0),.orig_12_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce0),.orig_12_q0(orig_12_q0),.orig_12_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address1),.orig_12_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce1),.orig_12_q1(orig_12_q1),.orig_13_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address0),.orig_13_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce0),.orig_13_q0(orig_13_q0),.orig_13_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address1),.orig_13_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce1),.orig_13_q1(orig_13_q1),.orig_14_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address0),.orig_14_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce0),.orig_14_q0(orig_14_q0),.orig_14_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address1),.orig_14_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce1),.orig_14_q1(orig_14_q1),.orig_15_address0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address0),.orig_15_ce0(grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce0),.orig_15_q0(orig_15_q0),.orig_15_address1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address1),.orig_15_ce1(grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce1),.orig_15_q1(orig_15_q1),.tmp_20(tmp_20_reg_531));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_414_p2 == 1'd0))) begin
            grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_loop_col_fu_331_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_124 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_414_p2 == 1'd0))) begin
        i_fu_124 <= indvars_iv_next843_fu_428_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_1_reg_508 <= C_q0;
        C_load_reg_503 <= C_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_2_reg_513 <= i_fu_124;
        tmp_20_reg_531[5] <= tmp_20_fu_472_p3[5];
        tmp_2_reg_521 <= {{empty_fu_434_p2[9:5]}};
        tmp_4_reg_526 <= {{empty_29_fu_440_p2[9:5]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce0_local = 1'b1;
    end else begin
        C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce1_local = 1'b1;
    end else begin
        C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_loop_col_fu_331_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_414_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_414_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address0;
    end else begin
        orig_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_address1;
    end else begin
        orig_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce0;
    end else begin
        orig_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_0_ce1;
    end else begin
        orig_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address0;
    end else begin
        orig_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_address1;
    end else begin
        orig_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce0;
    end else begin
        orig_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_10_ce1;
    end else begin
        orig_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address0;
    end else begin
        orig_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_address1;
    end else begin
        orig_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce0;
    end else begin
        orig_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_11_ce1;
    end else begin
        orig_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address0;
    end else begin
        orig_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_address1;
    end else begin
        orig_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce0;
    end else begin
        orig_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_12_ce1;
    end else begin
        orig_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address0;
    end else begin
        orig_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_address1;
    end else begin
        orig_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce0;
    end else begin
        orig_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_13_ce1;
    end else begin
        orig_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address0;
    end else begin
        orig_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_address1;
    end else begin
        orig_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce0;
    end else begin
        orig_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_14_ce1;
    end else begin
        orig_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address0;
    end else begin
        orig_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_address1;
    end else begin
        orig_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce0;
    end else begin
        orig_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_15_ce1;
    end else begin
        orig_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address0;
    end else begin
        orig_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_address1;
    end else begin
        orig_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce0;
    end else begin
        orig_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_1_ce1;
    end else begin
        orig_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address0;
    end else begin
        orig_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_address1;
    end else begin
        orig_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce0;
    end else begin
        orig_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_2_ce1;
    end else begin
        orig_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address0;
    end else begin
        orig_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_address1;
    end else begin
        orig_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce0;
    end else begin
        orig_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_3_ce1;
    end else begin
        orig_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address0;
    end else begin
        orig_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_address1;
    end else begin
        orig_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce0;
    end else begin
        orig_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_4_ce1;
    end else begin
        orig_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address0;
    end else begin
        orig_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_address1;
    end else begin
        orig_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce0;
    end else begin
        orig_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_5_ce1;
    end else begin
        orig_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address0;
    end else begin
        orig_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_address1;
    end else begin
        orig_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce0;
    end else begin
        orig_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_6_ce1;
    end else begin
        orig_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address0;
    end else begin
        orig_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_address1;
    end else begin
        orig_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce0;
    end else begin
        orig_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_7_ce1;
    end else begin
        orig_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address0;
    end else begin
        orig_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_address1;
    end else begin
        orig_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce0;
    end else begin
        orig_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_8_ce1;
    end else begin
        orig_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address0;
    end else begin
        orig_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_address1;
    end else begin
        orig_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce0;
    end else begin
        orig_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_orig_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_orig_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_orig_9_ce1;
    end else begin
        orig_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address0;
    end else begin
        sol_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_address1;
    end else begin
        sol_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce0;
    end else begin
        sol_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_ce1;
    end else begin
        sol_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d0;
    end else begin
        sol_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_d1;
    end else begin
        sol_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we0;
    end else begin
        sol_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_0_we1;
    end else begin
        sol_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address0;
    end else begin
        sol_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_address1;
    end else begin
        sol_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce0;
    end else begin
        sol_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_ce1;
    end else begin
        sol_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d0;
    end else begin
        sol_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_d1;
    end else begin
        sol_10_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we0;
    end else begin
        sol_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_10_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_10_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_10_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_10_we1;
    end else begin
        sol_10_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address0;
    end else begin
        sol_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_address1;
    end else begin
        sol_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce0;
    end else begin
        sol_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_ce1;
    end else begin
        sol_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d0;
    end else begin
        sol_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_d1;
    end else begin
        sol_11_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we0;
    end else begin
        sol_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_11_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_11_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_11_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_11_we1;
    end else begin
        sol_11_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address0;
    end else begin
        sol_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_address1;
    end else begin
        sol_12_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce0;
    end else begin
        sol_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_ce1;
    end else begin
        sol_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d0;
    end else begin
        sol_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_d1;
    end else begin
        sol_12_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we0;
    end else begin
        sol_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_12_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_12_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_12_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_12_we1;
    end else begin
        sol_12_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address0;
    end else begin
        sol_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_address1;
    end else begin
        sol_13_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce0;
    end else begin
        sol_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_ce1;
    end else begin
        sol_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d0;
    end else begin
        sol_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_d1;
    end else begin
        sol_13_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we0;
    end else begin
        sol_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_13_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_13_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_13_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_13_we1;
    end else begin
        sol_13_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address0;
    end else begin
        sol_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_address1;
    end else begin
        sol_14_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce0;
    end else begin
        sol_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_ce1;
    end else begin
        sol_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d0;
    end else begin
        sol_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_d1;
    end else begin
        sol_14_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we0;
    end else begin
        sol_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_14_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_14_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_14_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_14_we1;
    end else begin
        sol_14_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address0;
    end else begin
        sol_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_address1;
    end else begin
        sol_15_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce0;
    end else begin
        sol_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_ce1;
    end else begin
        sol_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d0;
    end else begin
        sol_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_d1;
    end else begin
        sol_15_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we0;
    end else begin
        sol_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_15_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_15_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_15_we1;
    end else begin
        sol_15_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address0;
    end else begin
        sol_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_address1;
    end else begin
        sol_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce0;
    end else begin
        sol_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_ce1;
    end else begin
        sol_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d0;
    end else begin
        sol_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_d1;
    end else begin
        sol_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we0;
    end else begin
        sol_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_1_we1;
    end else begin
        sol_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address0;
    end else begin
        sol_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_address1;
    end else begin
        sol_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce0;
    end else begin
        sol_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_ce1;
    end else begin
        sol_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d0;
    end else begin
        sol_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_d1;
    end else begin
        sol_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we0;
    end else begin
        sol_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_2_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_2_we1;
    end else begin
        sol_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address0;
    end else begin
        sol_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_address1;
    end else begin
        sol_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce0;
    end else begin
        sol_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_ce1;
    end else begin
        sol_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d0;
    end else begin
        sol_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_d1;
    end else begin
        sol_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we0;
    end else begin
        sol_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_3_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_3_we1;
    end else begin
        sol_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address0;
    end else begin
        sol_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_address1;
    end else begin
        sol_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce0;
    end else begin
        sol_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_ce1;
    end else begin
        sol_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d0;
    end else begin
        sol_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_d1;
    end else begin
        sol_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we0;
    end else begin
        sol_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_4_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_4_we1;
    end else begin
        sol_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address0;
    end else begin
        sol_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_address1;
    end else begin
        sol_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce0;
    end else begin
        sol_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_ce1;
    end else begin
        sol_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d0;
    end else begin
        sol_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_d1;
    end else begin
        sol_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we0;
    end else begin
        sol_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_5_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_5_we1;
    end else begin
        sol_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address0;
    end else begin
        sol_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_address1;
    end else begin
        sol_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce0;
    end else begin
        sol_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_ce1;
    end else begin
        sol_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d0;
    end else begin
        sol_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_d1;
    end else begin
        sol_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we0;
    end else begin
        sol_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_6_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_6_we1;
    end else begin
        sol_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address0;
    end else begin
        sol_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_address1;
    end else begin
        sol_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce0;
    end else begin
        sol_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_ce1;
    end else begin
        sol_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d0;
    end else begin
        sol_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_d1;
    end else begin
        sol_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we0;
    end else begin
        sol_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_7_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_7_we1;
    end else begin
        sol_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address0;
    end else begin
        sol_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_address1;
    end else begin
        sol_8_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce0;
    end else begin
        sol_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_ce1;
    end else begin
        sol_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d0;
    end else begin
        sol_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_d1;
    end else begin
        sol_8_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we0;
    end else begin
        sol_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_8_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_8_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_8_we1;
    end else begin
        sol_8_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address0;
    end else begin
        sol_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_address1;
    end else begin
        sol_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce0;
    end else begin
        sol_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_ce1;
    end else begin
        sol_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d0;
    end else begin
        sol_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_d1;
    end else begin
        sol_9_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_loop_col_fu_331_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we0;
    end else begin
        sol_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_223_sol_9_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_9_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_155_sol_9_we1;
    end else begin
        sol_9_we1 = 1'b0;
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
            if (((grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln36_fu_414_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((grp_stencil3d_Pipeline_loop_col_fu_331_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_address0 = 64'd1;
assign C_address1 = 64'd0;
assign C_ce0 = C_ce0_local;
assign C_ce1 = C_ce1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign empty_29_fu_440_p2 = ($signed(tmp_15_fu_420_p3) + $signed(10'd992));
assign empty_30_fu_468_p1 = i_fu_124[0:0];
assign empty_fu_434_p2 = (tmp_15_fu_420_p3 + 10'd32);
assign grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start = grp_stencil3d_Pipeline_col_bound_height_fu_223_ap_start_reg;
assign grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start = grp_stencil3d_Pipeline_height_bound_col_fu_155_ap_start_reg;
assign grp_stencil3d_Pipeline_loop_col_fu_331_ap_start = grp_stencil3d_Pipeline_loop_col_fu_331_ap_start_reg;
assign grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start = grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_291_ap_start_reg;
assign icmp_ln36_fu_414_p2 = ((i_fu_124 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next843_fu_428_p2 = (i_fu_124 + 5'd1);
assign tmp_15_fu_420_p3 = {{i_fu_124}, {5'd0}};
assign tmp_20_fu_472_p3 = {{empty_30_fu_468_p1}, {5'd0}};
always @ (posedge ap_clk) begin
    tmp_20_reg_531[4:0] <= 5'b00000;
end
endmodule 