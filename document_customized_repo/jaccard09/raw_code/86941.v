module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1,smem_13_address0,smem_13_ce0,smem_13_q0,smem_13_address1,smem_13_ce1,smem_13_q1,smem_14_address0,smem_14_ce0,smem_14_q0,smem_14_address1,smem_14_ce1,smem_14_q1,smem_15_address0,smem_15_ce0,smem_15_q0,smem_15_address1,smem_15_ce1,smem_15_q1,smem_16_address0,smem_16_ce0,smem_16_q0,smem_16_address1,smem_16_ce1,smem_16_q1,smem_17_address0,smem_17_ce0,smem_17_q0,smem_17_address1,smem_17_ce1,smem_17_q1,smem_18_address0,smem_18_ce0,smem_18_q0,smem_18_address1,smem_18_ce1,smem_18_q1,smem_19_address0,smem_19_ce0,smem_19_q0,smem_19_address1,smem_19_ce1,smem_19_q1,smem_20_address0,smem_20_ce0,smem_20_q0,smem_20_address1,smem_20_ce1,smem_20_q1,smem_21_address0,smem_21_ce0,smem_21_q0,smem_21_address1,smem_21_ce1,smem_21_q1,smem_22_address0,smem_22_ce0,smem_22_q0,smem_22_address1,smem_22_ce1,smem_22_q1,smem_23_address0,smem_23_ce0,smem_23_q0,smem_23_address1,smem_23_ce1,smem_23_q1,smem_24_address0,smem_24_ce0,smem_24_q0,smem_24_address1,smem_24_ce1,smem_24_q1,smem_25_address0,smem_25_ce0,smem_25_q0,smem_25_address1,smem_25_ce1,smem_25_q1,smem_26_address0,smem_26_ce0,smem_26_q0,smem_26_address1,smem_26_ce1,smem_26_q1,smem_27_address0,smem_27_ce0,smem_27_q0,smem_27_address1,smem_27_ce1,smem_27_q1,smem_28_address0,smem_28_ce0,smem_28_q0,smem_28_address1,smem_28_ce1,smem_28_q1,smem_29_address0,smem_29_ce0,smem_29_q0,smem_29_address1,smem_29_ce1,smem_29_q1,smem_30_address0,smem_30_ce0,smem_30_q0,smem_30_address1,smem_30_ce1,smem_30_q1,smem_31_address0,smem_31_ce0,smem_31_q0,smem_31_address1,smem_31_ce1,smem_31_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [4:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [4:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [4:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [4:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [4:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [4:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [4:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [4:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [4:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [4:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [4:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [4:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [4:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [4:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [4:0] smem_13_address1;
output   smem_13_ce1;
input  [63:0] smem_13_q1;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [4:0] smem_14_address1;
output   smem_14_ce1;
input  [63:0] smem_14_q1;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [4:0] smem_15_address1;
output   smem_15_ce1;
input  [63:0] smem_15_q1;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [4:0] smem_16_address1;
output   smem_16_ce1;
input  [63:0] smem_16_q1;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [4:0] smem_17_address1;
output   smem_17_ce1;
input  [63:0] smem_17_q1;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [4:0] smem_18_address1;
output   smem_18_ce1;
input  [63:0] smem_18_q1;
output  [4:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [4:0] smem_19_address1;
output   smem_19_ce1;
input  [63:0] smem_19_q1;
output  [4:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [4:0] smem_20_address1;
output   smem_20_ce1;
input  [63:0] smem_20_q1;
output  [4:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [4:0] smem_21_address1;
output   smem_21_ce1;
input  [63:0] smem_21_q1;
output  [4:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [4:0] smem_22_address1;
output   smem_22_ce1;
input  [63:0] smem_22_q1;
output  [4:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [4:0] smem_23_address1;
output   smem_23_ce1;
input  [63:0] smem_23_q1;
output  [4:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
output  [4:0] smem_24_address1;
output   smem_24_ce1;
input  [63:0] smem_24_q1;
output  [4:0] smem_25_address0;
output   smem_25_ce0;
input  [63:0] smem_25_q0;
output  [4:0] smem_25_address1;
output   smem_25_ce1;
input  [63:0] smem_25_q1;
output  [4:0] smem_26_address0;
output   smem_26_ce0;
input  [63:0] smem_26_q0;
output  [4:0] smem_26_address1;
output   smem_26_ce1;
input  [63:0] smem_26_q1;
output  [4:0] smem_27_address0;
output   smem_27_ce0;
input  [63:0] smem_27_q0;
output  [4:0] smem_27_address1;
output   smem_27_ce1;
input  [63:0] smem_27_q1;
output  [4:0] smem_28_address0;
output   smem_28_ce0;
input  [63:0] smem_28_q0;
output  [4:0] smem_28_address1;
output   smem_28_ce1;
input  [63:0] smem_28_q1;
output  [4:0] smem_29_address0;
output   smem_29_ce0;
input  [63:0] smem_29_q0;
output  [4:0] smem_29_address1;
output   smem_29_ce1;
input  [63:0] smem_29_q1;
output  [4:0] smem_30_address0;
output   smem_30_ce0;
input  [63:0] smem_30_q0;
output  [4:0] smem_30_address1;
output   smem_30_ce1;
input  [63:0] smem_30_q1;
output  [4:0] smem_31_address0;
output   smem_31_ce0;
input  [63:0] smem_31_q0;
output  [4:0] smem_31_address1;
output   smem_31_ce1;
input  [63:0] smem_31_q1;
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
reg smem_3_ce0;
reg smem_3_ce1;
reg smem_4_ce0;
reg smem_4_ce1;
reg smem_5_ce0;
reg smem_5_ce1;
reg smem_6_ce0;
reg smem_6_ce1;
reg smem_7_ce0;
reg smem_7_ce1;
reg smem_8_ce0;
reg smem_8_ce1;
reg smem_9_ce0;
reg smem_9_ce1;
reg smem_10_ce0;
reg smem_10_ce1;
reg smem_11_ce0;
reg smem_11_ce1;
reg smem_12_ce0;
reg smem_12_ce1;
reg smem_13_ce0;
reg smem_13_ce1;
reg smem_14_ce0;
reg smem_14_ce1;
reg smem_15_ce0;
reg smem_15_ce1;
reg smem_16_ce0;
reg smem_16_ce1;
reg smem_17_ce0;
reg smem_17_ce1;
reg smem_18_ce0;
reg smem_18_ce1;
reg smem_19_ce0;
reg smem_19_ce1;
reg smem_20_ce0;
reg smem_20_ce1;
reg smem_21_ce0;
reg smem_21_ce1;
reg smem_22_ce0;
reg smem_22_ce1;
reg smem_23_ce0;
reg smem_23_ce1;
reg smem_24_ce0;
reg smem_24_ce1;
reg smem_25_ce0;
reg smem_25_ce1;
reg smem_26_ce0;
reg smem_26_ce1;
reg smem_27_ce0;
reg smem_27_ce1;
reg smem_28_ce0;
reg smem_28_ce1;
reg smem_29_ce0;
reg smem_29_ce1;
reg smem_30_ce0;
reg smem_30_ce1;
reg smem_31_ce0;
reg smem_31_ce1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_604;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] reg_453;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_459;
reg   [63:0] reg_465;
reg   [63:0] reg_471;
reg   [63:0] reg_477;
reg   [63:0] reg_483;
reg   [63:0] reg_489;
reg   [63:0] reg_495;
reg   [6:0] tid_6_reg_595;
wire   [0:0] tmp_fu_509_p3;
wire   [2:0] tmp_58_fu_517_p4;
reg   [2:0] tmp_58_reg_608;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln341_fu_557_p1;
reg   [63:0] zext_ln341_reg_613;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_352_ap_start;
wire    grp_loady8_fu_352_ap_done;
wire    grp_loady8_fu_352_ap_idle;
wire    grp_loady8_fu_352_ap_ready;
wire   [4:0] grp_loady8_fu_352_x_0_address0;
wire    grp_loady8_fu_352_x_0_ce0;
wire   [4:0] grp_loady8_fu_352_x_0_address1;
wire    grp_loady8_fu_352_x_0_ce1;
wire   [4:0] grp_loady8_fu_352_x_1_address0;
wire    grp_loady8_fu_352_x_1_ce0;
wire   [4:0] grp_loady8_fu_352_x_1_address1;
wire    grp_loady8_fu_352_x_1_ce1;
wire   [4:0] grp_loady8_fu_352_x_2_address0;
wire    grp_loady8_fu_352_x_2_ce0;
wire   [4:0] grp_loady8_fu_352_x_2_address1;
wire    grp_loady8_fu_352_x_2_ce1;
wire   [4:0] grp_loady8_fu_352_x_3_address0;
wire    grp_loady8_fu_352_x_3_ce0;
wire   [4:0] grp_loady8_fu_352_x_3_address1;
wire    grp_loady8_fu_352_x_3_ce1;
wire   [4:0] grp_loady8_fu_352_x_4_address0;
wire    grp_loady8_fu_352_x_4_ce0;
wire   [4:0] grp_loady8_fu_352_x_4_address1;
wire    grp_loady8_fu_352_x_4_ce1;
wire   [4:0] grp_loady8_fu_352_x_5_address0;
wire    grp_loady8_fu_352_x_5_ce0;
wire   [4:0] grp_loady8_fu_352_x_5_address1;
wire    grp_loady8_fu_352_x_5_ce1;
wire   [4:0] grp_loady8_fu_352_x_6_address0;
wire    grp_loady8_fu_352_x_6_ce0;
wire   [4:0] grp_loady8_fu_352_x_6_address1;
wire    grp_loady8_fu_352_x_6_ce1;
wire   [4:0] grp_loady8_fu_352_x_7_address0;
wire    grp_loady8_fu_352_x_7_ce0;
wire   [4:0] grp_loady8_fu_352_x_7_address1;
wire    grp_loady8_fu_352_x_7_ce1;
wire   [4:0] grp_loady8_fu_352_x_8_address0;
wire    grp_loady8_fu_352_x_8_ce0;
wire   [4:0] grp_loady8_fu_352_x_8_address1;
wire    grp_loady8_fu_352_x_8_ce1;
wire   [4:0] grp_loady8_fu_352_x_9_address0;
wire    grp_loady8_fu_352_x_9_ce0;
wire   [4:0] grp_loady8_fu_352_x_9_address1;
wire    grp_loady8_fu_352_x_9_ce1;
wire   [4:0] grp_loady8_fu_352_x_10_address0;
wire    grp_loady8_fu_352_x_10_ce0;
wire   [4:0] grp_loady8_fu_352_x_10_address1;
wire    grp_loady8_fu_352_x_10_ce1;
wire   [4:0] grp_loady8_fu_352_x_11_address0;
wire    grp_loady8_fu_352_x_11_ce0;
wire   [4:0] grp_loady8_fu_352_x_11_address1;
wire    grp_loady8_fu_352_x_11_ce1;
wire   [4:0] grp_loady8_fu_352_x_12_address0;
wire    grp_loady8_fu_352_x_12_ce0;
wire   [4:0] grp_loady8_fu_352_x_12_address1;
wire    grp_loady8_fu_352_x_12_ce1;
wire   [4:0] grp_loady8_fu_352_x_13_address0;
wire    grp_loady8_fu_352_x_13_ce0;
wire   [4:0] grp_loady8_fu_352_x_13_address1;
wire    grp_loady8_fu_352_x_13_ce1;
wire   [4:0] grp_loady8_fu_352_x_14_address0;
wire    grp_loady8_fu_352_x_14_ce0;
wire   [4:0] grp_loady8_fu_352_x_14_address1;
wire    grp_loady8_fu_352_x_14_ce1;
wire   [4:0] grp_loady8_fu_352_x_15_address0;
wire    grp_loady8_fu_352_x_15_ce0;
wire   [4:0] grp_loady8_fu_352_x_15_address1;
wire    grp_loady8_fu_352_x_15_ce1;
wire   [4:0] grp_loady8_fu_352_x_16_address0;
wire    grp_loady8_fu_352_x_16_ce0;
wire   [4:0] grp_loady8_fu_352_x_16_address1;
wire    grp_loady8_fu_352_x_16_ce1;
wire   [4:0] grp_loady8_fu_352_x_17_address0;
wire    grp_loady8_fu_352_x_17_ce0;
wire   [4:0] grp_loady8_fu_352_x_17_address1;
wire    grp_loady8_fu_352_x_17_ce1;
wire   [4:0] grp_loady8_fu_352_x_18_address0;
wire    grp_loady8_fu_352_x_18_ce0;
wire   [4:0] grp_loady8_fu_352_x_18_address1;
wire    grp_loady8_fu_352_x_18_ce1;
wire   [4:0] grp_loady8_fu_352_x_19_address0;
wire    grp_loady8_fu_352_x_19_ce0;
wire   [4:0] grp_loady8_fu_352_x_19_address1;
wire    grp_loady8_fu_352_x_19_ce1;
wire   [4:0] grp_loady8_fu_352_x_20_address0;
wire    grp_loady8_fu_352_x_20_ce0;
wire   [4:0] grp_loady8_fu_352_x_20_address1;
wire    grp_loady8_fu_352_x_20_ce1;
wire   [4:0] grp_loady8_fu_352_x_21_address0;
wire    grp_loady8_fu_352_x_21_ce0;
wire   [4:0] grp_loady8_fu_352_x_21_address1;
wire    grp_loady8_fu_352_x_21_ce1;
wire   [4:0] grp_loady8_fu_352_x_22_address0;
wire    grp_loady8_fu_352_x_22_ce0;
wire   [4:0] grp_loady8_fu_352_x_22_address1;
wire    grp_loady8_fu_352_x_22_ce1;
wire   [4:0] grp_loady8_fu_352_x_23_address0;
wire    grp_loady8_fu_352_x_23_ce0;
wire   [4:0] grp_loady8_fu_352_x_23_address1;
wire    grp_loady8_fu_352_x_23_ce1;
wire   [4:0] grp_loady8_fu_352_x_24_address0;
wire    grp_loady8_fu_352_x_24_ce0;
wire   [4:0] grp_loady8_fu_352_x_24_address1;
wire    grp_loady8_fu_352_x_24_ce1;
wire   [4:0] grp_loady8_fu_352_x_25_address0;
wire    grp_loady8_fu_352_x_25_ce0;
wire   [4:0] grp_loady8_fu_352_x_25_address1;
wire    grp_loady8_fu_352_x_25_ce1;
wire   [4:0] grp_loady8_fu_352_x_26_address0;
wire    grp_loady8_fu_352_x_26_ce0;
wire   [4:0] grp_loady8_fu_352_x_26_address1;
wire    grp_loady8_fu_352_x_26_ce1;
wire   [4:0] grp_loady8_fu_352_x_27_address0;
wire    grp_loady8_fu_352_x_27_ce0;
wire   [4:0] grp_loady8_fu_352_x_27_address1;
wire    grp_loady8_fu_352_x_27_ce1;
wire   [4:0] grp_loady8_fu_352_x_28_address0;
wire    grp_loady8_fu_352_x_28_ce0;
wire   [4:0] grp_loady8_fu_352_x_28_address1;
wire    grp_loady8_fu_352_x_28_ce1;
wire   [4:0] grp_loady8_fu_352_x_29_address0;
wire    grp_loady8_fu_352_x_29_ce0;
wire   [4:0] grp_loady8_fu_352_x_29_address1;
wire    grp_loady8_fu_352_x_29_ce1;
wire   [4:0] grp_loady8_fu_352_x_30_address0;
wire    grp_loady8_fu_352_x_30_ce0;
wire   [4:0] grp_loady8_fu_352_x_30_address1;
wire    grp_loady8_fu_352_x_30_ce1;
wire   [4:0] grp_loady8_fu_352_x_31_address0;
wire    grp_loady8_fu_352_x_31_ce0;
wire   [4:0] grp_loady8_fu_352_x_31_address1;
wire    grp_loady8_fu_352_x_31_ce1;
reg   [8:0] grp_loady8_fu_352_offset;
wire   [63:0] grp_loady8_fu_352_ap_return_0;
wire   [63:0] grp_loady8_fu_352_ap_return_1;
wire   [63:0] grp_loady8_fu_352_ap_return_2;
wire   [63:0] grp_loady8_fu_352_ap_return_3;
wire   [63:0] grp_loady8_fu_352_ap_return_4;
wire   [63:0] grp_loady8_fu_352_ap_return_5;
wire   [63:0] grp_loady8_fu_352_ap_return_6;
wire   [63:0] grp_loady8_fu_352_ap_return_7;
reg    grp_loady8_fu_352_ap_start_reg;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_ignoreCallOp23;
wire    ap_block_pp0_stage3_ignoreCallOp24;
wire    ap_block_pp0_stage5_ignoreCallOp54;
wire    ap_block_pp0_stage0_ignoreCallOp55;
wire   [8:0] or_ln_fu_529_p3;
wire    ap_block_pp0_stage1_ignoreCallOp20;
wire   [8:0] or_ln1_fu_578_p4;
wire    ap_block_pp0_stage4_ignoreCallOp45;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_fu_140;
wire   [6:0] add_ln340_fu_538_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
wire    ap_block_pp0_stage3;
wire   [5:0] trunc_ln353_fu_526_p1;
wire   [4:0] lshr_ln_fu_548_p4;
wire   [4:0] tmp_59_fu_569_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_352_ap_start_reg = 1'b0;
#0 tid_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_352(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_352_ap_start),.ap_done(grp_loady8_fu_352_ap_done),.ap_idle(grp_loady8_fu_352_ap_idle),.ap_ready(grp_loady8_fu_352_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_352_x_0_address0),.x_0_ce0(grp_loady8_fu_352_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_352_x_0_address1),.x_0_ce1(grp_loady8_fu_352_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_352_x_1_address0),.x_1_ce0(grp_loady8_fu_352_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_352_x_1_address1),.x_1_ce1(grp_loady8_fu_352_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_352_x_2_address0),.x_2_ce0(grp_loady8_fu_352_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_352_x_2_address1),.x_2_ce1(grp_loady8_fu_352_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_352_x_3_address0),.x_3_ce0(grp_loady8_fu_352_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_352_x_3_address1),.x_3_ce1(grp_loady8_fu_352_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_352_x_4_address0),.x_4_ce0(grp_loady8_fu_352_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_352_x_4_address1),.x_4_ce1(grp_loady8_fu_352_x_4_ce1),.x_4_q1(smem_4_q1),.x_5_address0(grp_loady8_fu_352_x_5_address0),.x_5_ce0(grp_loady8_fu_352_x_5_ce0),.x_5_q0(smem_5_q0),.x_5_address1(grp_loady8_fu_352_x_5_address1),.x_5_ce1(grp_loady8_fu_352_x_5_ce1),.x_5_q1(smem_5_q1),.x_6_address0(grp_loady8_fu_352_x_6_address0),.x_6_ce0(grp_loady8_fu_352_x_6_ce0),.x_6_q0(smem_6_q0),.x_6_address1(grp_loady8_fu_352_x_6_address1),.x_6_ce1(grp_loady8_fu_352_x_6_ce1),.x_6_q1(smem_6_q1),.x_7_address0(grp_loady8_fu_352_x_7_address0),.x_7_ce0(grp_loady8_fu_352_x_7_ce0),.x_7_q0(smem_7_q0),.x_7_address1(grp_loady8_fu_352_x_7_address1),.x_7_ce1(grp_loady8_fu_352_x_7_ce1),.x_7_q1(smem_7_q1),.x_8_address0(grp_loady8_fu_352_x_8_address0),.x_8_ce0(grp_loady8_fu_352_x_8_ce0),.x_8_q0(smem_8_q0),.x_8_address1(grp_loady8_fu_352_x_8_address1),.x_8_ce1(grp_loady8_fu_352_x_8_ce1),.x_8_q1(smem_8_q1),.x_9_address0(grp_loady8_fu_352_x_9_address0),.x_9_ce0(grp_loady8_fu_352_x_9_ce0),.x_9_q0(smem_9_q0),.x_9_address1(grp_loady8_fu_352_x_9_address1),.x_9_ce1(grp_loady8_fu_352_x_9_ce1),.x_9_q1(smem_9_q1),.x_10_address0(grp_loady8_fu_352_x_10_address0),.x_10_ce0(grp_loady8_fu_352_x_10_ce0),.x_10_q0(smem_10_q0),.x_10_address1(grp_loady8_fu_352_x_10_address1),.x_10_ce1(grp_loady8_fu_352_x_10_ce1),.x_10_q1(smem_10_q1),.x_11_address0(grp_loady8_fu_352_x_11_address0),.x_11_ce0(grp_loady8_fu_352_x_11_ce0),.x_11_q0(smem_11_q0),.x_11_address1(grp_loady8_fu_352_x_11_address1),.x_11_ce1(grp_loady8_fu_352_x_11_ce1),.x_11_q1(smem_11_q1),.x_12_address0(grp_loady8_fu_352_x_12_address0),.x_12_ce0(grp_loady8_fu_352_x_12_ce0),.x_12_q0(smem_12_q0),.x_12_address1(grp_loady8_fu_352_x_12_address1),.x_12_ce1(grp_loady8_fu_352_x_12_ce1),.x_12_q1(smem_12_q1),.x_13_address0(grp_loady8_fu_352_x_13_address0),.x_13_ce0(grp_loady8_fu_352_x_13_ce0),.x_13_q0(smem_13_q0),.x_13_address1(grp_loady8_fu_352_x_13_address1),.x_13_ce1(grp_loady8_fu_352_x_13_ce1),.x_13_q1(smem_13_q1),.x_14_address0(grp_loady8_fu_352_x_14_address0),.x_14_ce0(grp_loady8_fu_352_x_14_ce0),.x_14_q0(smem_14_q0),.x_14_address1(grp_loady8_fu_352_x_14_address1),.x_14_ce1(grp_loady8_fu_352_x_14_ce1),.x_14_q1(smem_14_q1),.x_15_address0(grp_loady8_fu_352_x_15_address0),.x_15_ce0(grp_loady8_fu_352_x_15_ce0),.x_15_q0(smem_15_q0),.x_15_address1(grp_loady8_fu_352_x_15_address1),.x_15_ce1(grp_loady8_fu_352_x_15_ce1),.x_15_q1(smem_15_q1),.x_16_address0(grp_loady8_fu_352_x_16_address0),.x_16_ce0(grp_loady8_fu_352_x_16_ce0),.x_16_q0(smem_16_q0),.x_16_address1(grp_loady8_fu_352_x_16_address1),.x_16_ce1(grp_loady8_fu_352_x_16_ce1),.x_16_q1(smem_16_q1),.x_17_address0(grp_loady8_fu_352_x_17_address0),.x_17_ce0(grp_loady8_fu_352_x_17_ce0),.x_17_q0(smem_17_q0),.x_17_address1(grp_loady8_fu_352_x_17_address1),.x_17_ce1(grp_loady8_fu_352_x_17_ce1),.x_17_q1(smem_17_q1),.x_18_address0(grp_loady8_fu_352_x_18_address0),.x_18_ce0(grp_loady8_fu_352_x_18_ce0),.x_18_q0(smem_18_q0),.x_18_address1(grp_loady8_fu_352_x_18_address1),.x_18_ce1(grp_loady8_fu_352_x_18_ce1),.x_18_q1(smem_18_q1),.x_19_address0(grp_loady8_fu_352_x_19_address0),.x_19_ce0(grp_loady8_fu_352_x_19_ce0),.x_19_q0(smem_19_q0),.x_19_address1(grp_loady8_fu_352_x_19_address1),.x_19_ce1(grp_loady8_fu_352_x_19_ce1),.x_19_q1(smem_19_q1),.x_20_address0(grp_loady8_fu_352_x_20_address0),.x_20_ce0(grp_loady8_fu_352_x_20_ce0),.x_20_q0(smem_20_q0),.x_20_address1(grp_loady8_fu_352_x_20_address1),.x_20_ce1(grp_loady8_fu_352_x_20_ce1),.x_20_q1(smem_20_q1),.x_21_address0(grp_loady8_fu_352_x_21_address0),.x_21_ce0(grp_loady8_fu_352_x_21_ce0),.x_21_q0(smem_21_q0),.x_21_address1(grp_loady8_fu_352_x_21_address1),.x_21_ce1(grp_loady8_fu_352_x_21_ce1),.x_21_q1(smem_21_q1),.x_22_address0(grp_loady8_fu_352_x_22_address0),.x_22_ce0(grp_loady8_fu_352_x_22_ce0),.x_22_q0(smem_22_q0),.x_22_address1(grp_loady8_fu_352_x_22_address1),.x_22_ce1(grp_loady8_fu_352_x_22_ce1),.x_22_q1(smem_22_q1),.x_23_address0(grp_loady8_fu_352_x_23_address0),.x_23_ce0(grp_loady8_fu_352_x_23_ce0),.x_23_q0(smem_23_q0),.x_23_address1(grp_loady8_fu_352_x_23_address1),.x_23_ce1(grp_loady8_fu_352_x_23_ce1),.x_23_q1(smem_23_q1),.x_24_address0(grp_loady8_fu_352_x_24_address0),.x_24_ce0(grp_loady8_fu_352_x_24_ce0),.x_24_q0(smem_24_q0),.x_24_address1(grp_loady8_fu_352_x_24_address1),.x_24_ce1(grp_loady8_fu_352_x_24_ce1),.x_24_q1(smem_24_q1),.x_25_address0(grp_loady8_fu_352_x_25_address0),.x_25_ce0(grp_loady8_fu_352_x_25_ce0),.x_25_q0(smem_25_q0),.x_25_address1(grp_loady8_fu_352_x_25_address1),.x_25_ce1(grp_loady8_fu_352_x_25_ce1),.x_25_q1(smem_25_q1),.x_26_address0(grp_loady8_fu_352_x_26_address0),.x_26_ce0(grp_loady8_fu_352_x_26_ce0),.x_26_q0(smem_26_q0),.x_26_address1(grp_loady8_fu_352_x_26_address1),.x_26_ce1(grp_loady8_fu_352_x_26_ce1),.x_26_q1(smem_26_q1),.x_27_address0(grp_loady8_fu_352_x_27_address0),.x_27_ce0(grp_loady8_fu_352_x_27_ce0),.x_27_q0(smem_27_q0),.x_27_address1(grp_loady8_fu_352_x_27_address1),.x_27_ce1(grp_loady8_fu_352_x_27_ce1),.x_27_q1(smem_27_q1),.x_28_address0(grp_loady8_fu_352_x_28_address0),.x_28_ce0(grp_loady8_fu_352_x_28_ce0),.x_28_q0(smem_28_q0),.x_28_address1(grp_loady8_fu_352_x_28_address1),.x_28_ce1(grp_loady8_fu_352_x_28_ce1),.x_28_q1(smem_28_q1),.x_29_address0(grp_loady8_fu_352_x_29_address0),.x_29_ce0(grp_loady8_fu_352_x_29_ce0),.x_29_q0(smem_29_q0),.x_29_address1(grp_loady8_fu_352_x_29_address1),.x_29_ce1(grp_loady8_fu_352_x_29_ce1),.x_29_q1(smem_29_q1),.x_30_address0(grp_loady8_fu_352_x_30_address0),.x_30_ce0(grp_loady8_fu_352_x_30_ce0),.x_30_q0(smem_30_q0),.x_30_address1(grp_loady8_fu_352_x_30_address1),.x_30_ce1(grp_loady8_fu_352_x_30_ce1),.x_30_q1(smem_30_q1),.x_31_address0(grp_loady8_fu_352_x_31_address0),.x_31_ce0(grp_loady8_fu_352_x_31_ce0),.x_31_q0(smem_31_q0),.x_31_address1(grp_loady8_fu_352_x_31_address1),.x_31_ce1(grp_loady8_fu_352_x_31_ce1),.x_31_q1(smem_31_q1),.offset(grp_loady8_fu_352_offset),.ap_return_0(grp_loady8_fu_352_ap_return_0),.ap_return_1(grp_loady8_fu_352_ap_return_1),.ap_return_2(grp_loady8_fu_352_ap_return_2),.ap_return_3(grp_loady8_fu_352_ap_return_3),.ap_return_4(grp_loady8_fu_352_ap_return_4),.ap_return_5(grp_loady8_fu_352_ap_return_5),.ap_return_6(grp_loady8_fu_352_ap_return_6),.ap_return_7(grp_loady8_fu_352_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_352_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_fu_509_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            grp_loady8_fu_352_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_352_ap_ready == 1'b1)) begin
            grp_loady8_fu_352_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_140 <= 7'd0;
    end else if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_140 <= add_ln340_fu_538_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_453 <= grp_loady8_fu_352_ap_return_0;
        reg_459 <= grp_loady8_fu_352_ap_return_1;
        reg_465 <= grp_loady8_fu_352_ap_return_2;
        reg_471 <= grp_loady8_fu_352_ap_return_3;
        reg_477 <= grp_loady8_fu_352_ap_return_4;
        reg_483 <= grp_loady8_fu_352_ap_return_5;
        reg_489 <= grp_loady8_fu_352_ap_return_6;
        reg_495 <= grp_loady8_fu_352_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_6_reg_595 <= ap_sig_allocacmp_tid_6;
        tmp_reg_604 <= ap_sig_allocacmp_tid_6[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_58_reg_608 <= {{tid_6_reg_595[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln341_reg_613[4 : 0] <= zext_ln341_fu_557_p1[4 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_140;
    end
end
always @ (*) begin
    if (((tmp_reg_604 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage4_ignoreCallOp45) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_loady8_fu_352_offset = or_ln1_fu_578_p4;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp20) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_352_offset = or_ln_fu_529_p3;
        end else begin
            grp_loady8_fu_352_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_352_offset = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce0 = grp_loady8_fu_352_x_10_ce0;
    end else begin
        smem_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce1 = grp_loady8_fu_352_x_10_ce1;
    end else begin
        smem_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_ce0 = grp_loady8_fu_352_x_11_ce0;
    end else begin
        smem_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_11_ce1 = grp_loady8_fu_352_x_11_ce1;
    end else begin
        smem_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_ce0 = grp_loady8_fu_352_x_12_ce0;
    end else begin
        smem_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_12_ce1 = grp_loady8_fu_352_x_12_ce1;
    end else begin
        smem_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_13_ce0 = grp_loady8_fu_352_x_13_ce0;
    end else begin
        smem_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_13_ce1 = grp_loady8_fu_352_x_13_ce1;
    end else begin
        smem_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_14_ce0 = grp_loady8_fu_352_x_14_ce0;
    end else begin
        smem_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_14_ce1 = grp_loady8_fu_352_x_14_ce1;
    end else begin
        smem_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_15_ce0 = grp_loady8_fu_352_x_15_ce0;
    end else begin
        smem_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_15_ce1 = grp_loady8_fu_352_x_15_ce1;
    end else begin
        smem_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_16_ce0 = grp_loady8_fu_352_x_16_ce0;
    end else begin
        smem_16_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_16_ce1 = grp_loady8_fu_352_x_16_ce1;
    end else begin
        smem_16_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_17_ce0 = grp_loady8_fu_352_x_17_ce0;
    end else begin
        smem_17_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_17_ce1 = grp_loady8_fu_352_x_17_ce1;
    end else begin
        smem_17_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_18_ce0 = grp_loady8_fu_352_x_18_ce0;
    end else begin
        smem_18_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_18_ce1 = grp_loady8_fu_352_x_18_ce1;
    end else begin
        smem_18_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_19_ce0 = grp_loady8_fu_352_x_19_ce0;
    end else begin
        smem_19_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_19_ce1 = grp_loady8_fu_352_x_19_ce1;
    end else begin
        smem_19_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0 = grp_loady8_fu_352_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce1 = grp_loady8_fu_352_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_20_ce0 = grp_loady8_fu_352_x_20_ce0;
    end else begin
        smem_20_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_20_ce1 = grp_loady8_fu_352_x_20_ce1;
    end else begin
        smem_20_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_21_ce0 = grp_loady8_fu_352_x_21_ce0;
    end else begin
        smem_21_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_21_ce1 = grp_loady8_fu_352_x_21_ce1;
    end else begin
        smem_21_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_22_ce0 = grp_loady8_fu_352_x_22_ce0;
    end else begin
        smem_22_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_22_ce1 = grp_loady8_fu_352_x_22_ce1;
    end else begin
        smem_22_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_23_ce0 = grp_loady8_fu_352_x_23_ce0;
    end else begin
        smem_23_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_23_ce1 = grp_loady8_fu_352_x_23_ce1;
    end else begin
        smem_23_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_24_ce0 = grp_loady8_fu_352_x_24_ce0;
    end else begin
        smem_24_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_24_ce1 = grp_loady8_fu_352_x_24_ce1;
    end else begin
        smem_24_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_25_ce0 = grp_loady8_fu_352_x_25_ce0;
    end else begin
        smem_25_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_25_ce1 = grp_loady8_fu_352_x_25_ce1;
    end else begin
        smem_25_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_26_ce0 = grp_loady8_fu_352_x_26_ce0;
    end else begin
        smem_26_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_26_ce1 = grp_loady8_fu_352_x_26_ce1;
    end else begin
        smem_26_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_27_ce0 = grp_loady8_fu_352_x_27_ce0;
    end else begin
        smem_27_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_27_ce1 = grp_loady8_fu_352_x_27_ce1;
    end else begin
        smem_27_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_28_ce0 = grp_loady8_fu_352_x_28_ce0;
    end else begin
        smem_28_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_28_ce1 = grp_loady8_fu_352_x_28_ce1;
    end else begin
        smem_28_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_29_ce0 = grp_loady8_fu_352_x_29_ce0;
    end else begin
        smem_29_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_29_ce1 = grp_loady8_fu_352_x_29_ce1;
    end else begin
        smem_29_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0 = grp_loady8_fu_352_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce1 = grp_loady8_fu_352_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_30_ce0 = grp_loady8_fu_352_x_30_ce0;
    end else begin
        smem_30_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_30_ce1 = grp_loady8_fu_352_x_30_ce1;
    end else begin
        smem_30_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_31_ce0 = grp_loady8_fu_352_x_31_ce0;
    end else begin
        smem_31_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_31_ce1 = grp_loady8_fu_352_x_31_ce1;
    end else begin
        smem_31_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0 = grp_loady8_fu_352_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce1 = grp_loady8_fu_352_x_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0 = grp_loady8_fu_352_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce1 = grp_loady8_fu_352_x_4_ce1;
    end else begin
        smem_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0 = grp_loady8_fu_352_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce1 = grp_loady8_fu_352_x_5_ce1;
    end else begin
        smem_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0 = grp_loady8_fu_352_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce1 = grp_loady8_fu_352_x_6_ce1;
    end else begin
        smem_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce0 = grp_loady8_fu_352_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce1 = grp_loady8_fu_352_x_7_ce1;
    end else begin
        smem_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_ce0 = grp_loady8_fu_352_x_8_ce0;
    end else begin
        smem_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_ce1 = grp_loady8_fu_352_x_8_ce1;
    end else begin
        smem_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_ce0 = grp_loady8_fu_352_x_9_ce0;
    end else begin
        smem_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_ce1 = grp_loady8_fu_352_x_9_ce1;
    end else begin
        smem_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0 = grp_loady8_fu_352_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp55) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce1 = grp_loady8_fu_352_x_0_ce1;
    end else begin
        smem_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_10_address0 = zext_ln341_reg_613;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_465;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln341_reg_613;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_471;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln341_reg_613;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_477;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln341_reg_613;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_483;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln341_reg_613;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_489;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln341_reg_613;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_495;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_1_address0 = zext_ln341_fu_557_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_459;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = zext_ln341_fu_557_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_465;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = zext_ln341_fu_557_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_471;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln341_fu_557_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_477;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln341_fu_557_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_483;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln341_fu_557_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_489;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln341_fu_557_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_495;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln341_reg_613;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = reg_453;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln341_reg_613;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_459;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln341_fu_557_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_453;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln340_fu_538_p2 = (tid_6_reg_595 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp55 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp54 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_352_ap_start = grp_loady8_fu_352_ap_start_reg;
assign lshr_ln_fu_548_p4 = {{tid_6_reg_595[5:1]}};
assign or_ln1_fu_578_p4 = {{{tmp_58_reg_608}, {tmp_59_fu_569_p4}}, {1'd1}};
assign or_ln_fu_529_p3 = {{tmp_58_fu_517_p4}, {trunc_ln353_fu_526_p1}};
assign smem_10_address0 = grp_loady8_fu_352_x_10_address0;
assign smem_10_address1 = grp_loady8_fu_352_x_10_address1;
assign smem_11_address0 = grp_loady8_fu_352_x_11_address0;
assign smem_11_address1 = grp_loady8_fu_352_x_11_address1;
assign smem_12_address0 = grp_loady8_fu_352_x_12_address0;
assign smem_12_address1 = grp_loady8_fu_352_x_12_address1;
assign smem_13_address0 = grp_loady8_fu_352_x_13_address0;
assign smem_13_address1 = grp_loady8_fu_352_x_13_address1;
assign smem_14_address0 = grp_loady8_fu_352_x_14_address0;
assign smem_14_address1 = grp_loady8_fu_352_x_14_address1;
assign smem_15_address0 = grp_loady8_fu_352_x_15_address0;
assign smem_15_address1 = grp_loady8_fu_352_x_15_address1;
assign smem_16_address0 = grp_loady8_fu_352_x_16_address0;
assign smem_16_address1 = grp_loady8_fu_352_x_16_address1;
assign smem_17_address0 = grp_loady8_fu_352_x_17_address0;
assign smem_17_address1 = grp_loady8_fu_352_x_17_address1;
assign smem_18_address0 = grp_loady8_fu_352_x_18_address0;
assign smem_18_address1 = grp_loady8_fu_352_x_18_address1;
assign smem_19_address0 = grp_loady8_fu_352_x_19_address0;
assign smem_19_address1 = grp_loady8_fu_352_x_19_address1;
assign smem_1_address0 = grp_loady8_fu_352_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_352_x_1_address1;
assign smem_20_address0 = grp_loady8_fu_352_x_20_address0;
assign smem_20_address1 = grp_loady8_fu_352_x_20_address1;
assign smem_21_address0 = grp_loady8_fu_352_x_21_address0;
assign smem_21_address1 = grp_loady8_fu_352_x_21_address1;
assign smem_22_address0 = grp_loady8_fu_352_x_22_address0;
assign smem_22_address1 = grp_loady8_fu_352_x_22_address1;
assign smem_23_address0 = grp_loady8_fu_352_x_23_address0;
assign smem_23_address1 = grp_loady8_fu_352_x_23_address1;
assign smem_24_address0 = grp_loady8_fu_352_x_24_address0;
assign smem_24_address1 = grp_loady8_fu_352_x_24_address1;
assign smem_25_address0 = grp_loady8_fu_352_x_25_address0;
assign smem_25_address1 = grp_loady8_fu_352_x_25_address1;
assign smem_26_address0 = grp_loady8_fu_352_x_26_address0;
assign smem_26_address1 = grp_loady8_fu_352_x_26_address1;
assign smem_27_address0 = grp_loady8_fu_352_x_27_address0;
assign smem_27_address1 = grp_loady8_fu_352_x_27_address1;
assign smem_28_address0 = grp_loady8_fu_352_x_28_address0;
assign smem_28_address1 = grp_loady8_fu_352_x_28_address1;
assign smem_29_address0 = grp_loady8_fu_352_x_29_address0;
assign smem_29_address1 = grp_loady8_fu_352_x_29_address1;
assign smem_2_address0 = grp_loady8_fu_352_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_352_x_2_address1;
assign smem_30_address0 = grp_loady8_fu_352_x_30_address0;
assign smem_30_address1 = grp_loady8_fu_352_x_30_address1;
assign smem_31_address0 = grp_loady8_fu_352_x_31_address0;
assign smem_31_address1 = grp_loady8_fu_352_x_31_address1;
assign smem_3_address0 = grp_loady8_fu_352_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_352_x_3_address1;
assign smem_4_address0 = grp_loady8_fu_352_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_352_x_4_address1;
assign smem_5_address0 = grp_loady8_fu_352_x_5_address0;
assign smem_5_address1 = grp_loady8_fu_352_x_5_address1;
assign smem_6_address0 = grp_loady8_fu_352_x_6_address0;
assign smem_6_address1 = grp_loady8_fu_352_x_6_address1;
assign smem_7_address0 = grp_loady8_fu_352_x_7_address0;
assign smem_7_address1 = grp_loady8_fu_352_x_7_address1;
assign smem_8_address0 = grp_loady8_fu_352_x_8_address0;
assign smem_8_address1 = grp_loady8_fu_352_x_8_address1;
assign smem_9_address0 = grp_loady8_fu_352_x_9_address0;
assign smem_9_address1 = grp_loady8_fu_352_x_9_address1;
assign smem_address0 = grp_loady8_fu_352_x_0_address0;
assign smem_address1 = grp_loady8_fu_352_x_0_address1;
assign tmp_58_fu_517_p4 = {{tid_6_reg_595[5:3]}};
assign tmp_59_fu_569_p4 = {{tid_6_reg_595[5:1]}};
assign tmp_fu_509_p3 = ap_sig_allocacmp_tid_6[32'd6];
assign trunc_ln353_fu_526_p1 = tid_6_reg_595[5:0];
assign zext_ln341_fu_557_p1 = lshr_ln_fu_548_p4;
always @ (posedge ap_clk) begin
    zext_ln341_reg_613[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 