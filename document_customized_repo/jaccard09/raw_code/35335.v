module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_12_address1,smem_12_ce1,smem_12_we1,smem_12_d1,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [5:0] smem_12_address1;
output   smem_12_ce1;
output   smem_12_we1;
output  [63:0] smem_12_d1;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [5:0] smem_11_address1;
output   smem_11_ce1;
output   smem_11_we1;
output  [63:0] smem_11_d1;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
output   smem_10_we1;
output  [63:0] smem_10_d1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
output   smem_9_we1;
output  [63:0] smem_9_d1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
output   smem_8_we1;
output  [63:0] smem_8_d1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
output   smem_6_we1;
output  [63:0] smem_6_d1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
output   smem_4_we1;
output  [63:0] smem_4_d1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
output   smem_2_we1;
output  [63:0] smem_2_d1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] smem_address1;
output   smem_ce1;
output   smem_we1;
output  [63:0] smem_d1;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_3018;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_3012;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_3018_pp0_iter1_reg;
reg   [0:0] tmp_reg_3018_pp0_iter2_reg;
reg   [0:0] tmp_reg_3018_pp0_iter3_reg;
reg   [0:0] tmp_reg_3018_pp0_iter4_reg;
wire   [5:0] offset_fu_2303_p1;
reg   [5:0] offset_reg_3022;
reg   [5:0] offset_reg_3022_pp0_iter1_reg;
reg   [5:0] offset_reg_3022_pp0_iter2_reg;
reg   [5:0] offset_reg_3022_pp0_iter3_reg;
reg   [5:0] offset_reg_3022_pp0_iter4_reg;
wire   [4:0] lshr_ln6_fu_2313_p4;
reg   [4:0] lshr_ln6_reg_3031;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] lshr_ln6_reg_3031_pp0_iter1_reg;
reg   [4:0] lshr_ln6_reg_3031_pp0_iter2_reg;
reg   [4:0] lshr_ln6_reg_3031_pp0_iter3_reg;
reg   [4:0] lshr_ln6_reg_3031_pp0_iter4_reg;
wire   [5:0] offset_5_fu_2322_p3;
reg   [5:0] offset_5_reg_3036;
reg   [5:0] offset_5_reg_3036_pp0_iter1_reg;
reg   [5:0] offset_5_reg_3036_pp0_iter2_reg;
reg   [5:0] offset_5_reg_3036_pp0_iter3_reg;
reg   [5:0] offset_5_reg_3036_pp0_iter4_reg;
wire   [7:0] zext_ln172_23_fu_2352_p1;
reg   [7:0] zext_ln172_23_reg_3045;
reg   [7:0] zext_ln172_23_reg_3045_pp0_iter5_reg;
wire   [8:0] add_ln299_fu_2358_p2;
reg   [8:0] add_ln299_reg_3050;
wire   [8:0] add_ln301_fu_2364_p2;
reg   [8:0] add_ln301_reg_3055;
wire   [7:0] add_ln303_fu_2370_p2;
reg   [7:0] add_ln303_reg_3060;
wire   [3:0] trunc_ln172_fu_2376_p1;
reg   [3:0] trunc_ln172_reg_3065;
reg   [3:0] trunc_ln172_reg_3065_pp0_iter5_reg;
reg   [5:0] tmp_90_reg_3069;
reg   [5:0] tmp_92_reg_3074;
reg   [5:0] tmp_94_reg_3079;
wire   [7:0] zext_ln172_27_fu_2441_p1;
reg   [7:0] zext_ln172_27_reg_3084;
wire   [8:0] zext_ln172_28_fu_2444_p1;
reg   [8:0] zext_ln172_28_reg_3089;
wire   [8:0] add_ln301_1_fu_2447_p2;
reg   [8:0] add_ln301_1_reg_3094;
wire   [7:0] add_ln303_1_fu_2453_p2;
reg   [7:0] add_ln303_1_reg_3099;
reg   [2:0] tmp_89_reg_3104;
reg   [2:0] tmp_97_reg_3149;
wire   [3:0] trunc_ln172_5_fu_2516_p1;
reg   [3:0] trunc_ln172_5_reg_3154;
wire   [8:0] add_ln299_1_fu_2520_p2;
reg   [8:0] add_ln299_1_reg_3168;
reg   [5:0] tmp_100_reg_3183;
reg   [4:0] tmp_101_reg_3193;
reg   [5:0] tmp_102_reg_3203;
reg   [6:0] tmp_104_reg_3218;
reg   [4:0] tmp_93_reg_3223;
reg   [5:0] tmp_98_reg_3228;
reg   [63:0] DATA_x_2_load_reg_3233;
reg   [63:0] DATA_x_9_load_reg_3250;
reg   [63:0] DATA_x_12_load_reg_3267;
reg   [63:0] DATA_x_13_load_reg_3284;
reg   [63:0] DATA_x_10_load_reg_3301;
reg   [63:0] DATA_x_14_load_reg_3318;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln298_fu_2478_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_12_fu_2601_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln299_fu_2617_p1;
wire   [63:0] zext_ln300_fu_2642_p1;
wire   [63:0] zext_ln301_fu_2659_p1;
wire   [63:0] zext_ln303_fu_2700_p1;
wire   [63:0] zext_ln304_fu_2725_p1;
wire   [63:0] zext_ln305_fu_2751_p1;
wire   [63:0] zext_ln172_13_fu_2768_p1;
wire   [63:0] zext_ln303_1_fu_2803_p1;
wire   [63:0] zext_ln305_1_fu_2819_p1;
wire   [63:0] zext_ln302_fu_2835_p1;
wire   [63:0] zext_ln299_1_fu_2851_p1;
wire   [63:0] zext_ln300_1_fu_2876_p1;
wire   [63:0] zext_ln301_1_fu_2893_p1;
wire   [63:0] zext_ln302_1_fu_2909_p1;
wire   [63:0] zext_ln304_1_fu_2934_p1;
reg   [6:0] tid_fu_164;
wire   [6:0] add_ln294_fu_2336_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_ce0_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [5:0] smem_11_address0_local;
reg    smem_11_we1_local;
reg   [63:0] smem_11_d1_local;
reg    smem_11_ce1_local;
reg   [5:0] smem_11_address1_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_10_we1_local;
reg   [63:0] smem_10_d1_local;
reg    smem_10_ce1_local;
reg   [5:0] smem_10_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [5:0] smem_9_address1_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_8_we1_local;
reg   [63:0] smem_8_d1_local;
reg    smem_8_ce1_local;
reg   [5:0] smem_8_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [5:0] smem_7_address1_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_6_we1_local;
reg   [63:0] smem_6_d1_local;
reg    smem_6_ce1_local;
reg   [5:0] smem_6_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [5:0] smem_5_address1_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_4_we1_local;
reg   [63:0] smem_4_d1_local;
reg    smem_4_ce1_local;
reg   [5:0] smem_4_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [5:0] smem_3_address1_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_2_we1_local;
reg   [63:0] smem_2_d1_local;
reg    smem_2_ce1_local;
reg   [5:0] smem_2_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [5:0] smem_1_address1_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_we1_local;
reg   [63:0] smem_d1_local;
reg    smem_ce1_local;
reg   [5:0] smem_address1_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [5:0] smem_12_address0_local;
reg    smem_12_we1_local;
reg   [63:0] smem_12_d1_local;
reg    smem_12_ce1_local;
reg   [5:0] smem_12_address1_local;
wire   [5:0] grp_fu_2307_p0;
wire   [4:0] grp_fu_2307_p1;
wire   [5:0] grp_fu_2330_p0;
wire   [4:0] grp_fu_2330_p1;
wire   [8:0] zext_ln172_24_fu_2355_p1;
wire   [3:0] grp_fu_2307_p2;
wire   [8:0] mul_ln299_fu_2383_p0;
wire   [10:0] mul_ln299_fu_2383_p1;
wire   [18:0] mul_ln299_fu_2383_p2;
wire   [8:0] mul_ln301_fu_2402_p0;
wire   [10:0] mul_ln301_fu_2402_p1;
wire   [18:0] mul_ln301_fu_2402_p2;
wire  signed [8:0] sext_ln303_fu_2418_p1;
wire   [8:0] mul_ln303_fu_2425_p0;
wire   [10:0] mul_ln303_fu_2425_p1;
wire   [18:0] mul_ln303_fu_2425_p2;
wire   [5:0] mul_ln172_fu_2462_p0;
wire   [7:0] mul_ln172_fu_2462_p1;
wire   [12:0] mul_ln172_fu_2462_p2;
wire   [5:0] mul_ln172_5_fu_2500_p0;
wire   [7:0] mul_ln172_5_fu_2500_p1;
wire   [12:0] mul_ln172_5_fu_2500_p2;
wire   [3:0] grp_fu_2330_p2;
wire   [8:0] mul_ln301_1_fu_2528_p0;
wire   [10:0] mul_ln301_1_fu_2528_p1;
wire   [18:0] mul_ln301_1_fu_2528_p2;
wire   [7:0] add_ln302_1_fu_2544_p2;
wire   [7:0] mul_ln302_1_fu_2553_p0;
wire   [9:0] mul_ln302_1_fu_2553_p1;
wire   [16:0] mul_ln302_1_fu_2553_p2;
wire  signed [8:0] sext_ln303_1_fu_2569_p1;
wire   [8:0] mul_ln303_1_fu_2576_p0;
wire   [10:0] mul_ln303_1_fu_2576_p1;
wire   [18:0] mul_ln303_1_fu_2576_p2;
wire   [20:0] tmp_104_fu_2592_p1;
wire  signed [20:0] grp_fu_2951_p3;
wire   [16:0] tmp_91_fu_2633_p1;
wire  signed [16:0] grp_fu_2960_p3;
wire   [4:0] tmp_91_fu_2633_p4;
wire   [7:0] add_ln302_fu_2675_p2;
wire   [7:0] mul_ln302_fu_2684_p0;
wire   [9:0] mul_ln302_fu_2684_p1;
wire   [16:0] mul_ln302_fu_2684_p2;
wire   [18:0] tmp_95_fu_2716_p1;
wire  signed [18:0] grp_fu_2969_p3;
wire   [5:0] tmp_95_fu_2716_p4;
wire   [20:0] tmp_96_fu_2742_p1;
wire  signed [20:0] grp_fu_2978_p3;
wire   [6:0] tmp_96_fu_2742_p4;
wire   [8:0] mul_ln299_1_fu_2787_p0;
wire   [10:0] mul_ln299_1_fu_2787_p1;
wire   [18:0] mul_ln299_1_fu_2787_p2;
wire   [16:0] tmp_99_fu_2867_p1;
wire  signed [16:0] grp_fu_2987_p3;
wire   [4:0] tmp_99_fu_2867_p4;
wire   [18:0] tmp_103_fu_2925_p1;
wire  signed [18:0] grp_fu_2996_p3;
wire   [5:0] tmp_103_fu_2925_p4;
wire   [5:0] grp_fu_2951_p0;
wire   [8:0] grp_fu_2951_p1;
wire   [10:0] grp_fu_2951_p2;
wire   [5:0] grp_fu_2960_p0;
wire   [6:0] grp_fu_2960_p1;
wire   [8:0] grp_fu_2960_p2;
wire   [5:0] grp_fu_2969_p0;
wire   [7:0] grp_fu_2969_p1;
wire   [9:0] grp_fu_2969_p2;
wire   [5:0] grp_fu_2978_p0;
wire   [8:0] grp_fu_2978_p1;
wire   [10:0] grp_fu_2978_p2;
wire   [5:0] grp_fu_2987_p0;
wire   [6:0] grp_fu_2987_p1;
wire   [8:0] grp_fu_2987_p2;
wire   [5:0] grp_fu_2996_p0;
wire   [7:0] grp_fu_2996_p1;
wire   [9:0] grp_fu_2996_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_2951_p00;
wire   [9:0] grp_fu_2978_p00;
wire   [12:0] mul_ln172_5_fu_2500_p00;
wire   [12:0] mul_ln172_fu_2462_p00;
wire   [18:0] mul_ln299_1_fu_2787_p00;
wire   [18:0] mul_ln299_fu_2383_p00;
wire   [18:0] mul_ln301_1_fu_2528_p00;
wire   [18:0] mul_ln301_fu_2402_p00;
wire   [16:0] mul_ln302_1_fu_2553_p00;
wire   [16:0] mul_ln302_fu_2684_p00;
wire   [18:0] mul_ln303_1_fu_2576_p00;
wire   [18:0] mul_ln303_fu_2425_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_164 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U642(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2307_p0),.din1(grp_fu_2307_p1),.ce(1'b1),.dout(grp_fu_2307_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U643(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2330_p0),.din1(grp_fu_2330_p1),.ce(1'b1),.dout(grp_fu_2330_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U644(.din0(mul_ln299_fu_2383_p0),.din1(mul_ln299_fu_2383_p1),.dout(mul_ln299_fu_2383_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U645(.din0(mul_ln301_fu_2402_p0),.din1(mul_ln301_fu_2402_p1),.dout(mul_ln301_fu_2402_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U646(.din0(mul_ln303_fu_2425_p0),.din1(mul_ln303_fu_2425_p1),.dout(mul_ln303_fu_2425_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U647(.din0(mul_ln172_fu_2462_p0),.din1(mul_ln172_fu_2462_p1),.dout(mul_ln172_fu_2462_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U648(.din0(mul_ln172_5_fu_2500_p0),.din1(mul_ln172_5_fu_2500_p1),.dout(mul_ln172_5_fu_2500_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U649(.din0(mul_ln301_1_fu_2528_p0),.din1(mul_ln301_1_fu_2528_p1),.dout(mul_ln301_1_fu_2528_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U650(.din0(mul_ln302_1_fu_2553_p0),.din1(mul_ln302_1_fu_2553_p1),.dout(mul_ln302_1_fu_2553_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U651(.din0(mul_ln303_1_fu_2576_p0),.din1(mul_ln303_1_fu_2576_p1),.dout(mul_ln303_1_fu_2576_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U652(.din0(mul_ln302_fu_2684_p0),.din1(mul_ln302_fu_2684_p1),.dout(mul_ln302_fu_2684_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U653(.din0(mul_ln299_1_fu_2787_p0),.din1(mul_ln299_1_fu_2787_p1),.dout(mul_ln299_1_fu_2787_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U654(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2951_p0),.din1(grp_fu_2951_p1),.din2(grp_fu_2951_p2),.ce(1'b1),.dout(grp_fu_2951_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U655(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2960_p0),.din1(grp_fu_2960_p1),.din2(grp_fu_2960_p2),.ce(1'b1),.dout(grp_fu_2960_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U656(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2969_p0),.din1(grp_fu_2969_p1),.din2(grp_fu_2969_p2),.ce(1'b1),.dout(grp_fu_2969_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U657(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2978_p0),.din1(grp_fu_2978_p1),.din2(grp_fu_2978_p2),.ce(1'b1),.dout(grp_fu_2978_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U658(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2987_p0),.din1(grp_fu_2987_p1),.din2(grp_fu_2987_p2),.ce(1'b1),.dout(grp_fu_2987_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U659(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2996_p0),.din1(grp_fu_2996_p1),.din2(grp_fu_2996_p2),.ce(1'b1),.dout(grp_fu_2996_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_164 <= 7'd0;
    end else if (((tmp_reg_3018 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_164 <= add_ln294_fu_2336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_10_load_reg_3301 <= DATA_x_10_q0;
        DATA_x_12_load_reg_3267 <= DATA_x_12_q0;
        DATA_x_13_load_reg_3284 <= DATA_x_13_q0;
        DATA_x_14_load_reg_3318 <= DATA_x_14_q0;
        DATA_x_2_load_reg_3233 <= DATA_x_2_q0;
        DATA_x_9_load_reg_3250 <= DATA_x_9_q0;
        add_ln301_1_reg_3094[8 : 1] <= add_ln301_1_fu_2447_p2[8 : 1];
        add_ln303_1_reg_3099[7 : 1] <= add_ln303_1_fu_2453_p2[7 : 1];
        lshr_ln6_reg_3031 <= {{tid_3_reg_3012[5:1]}};
        lshr_ln6_reg_3031_pp0_iter1_reg <= lshr_ln6_reg_3031;
        lshr_ln6_reg_3031_pp0_iter2_reg <= lshr_ln6_reg_3031_pp0_iter1_reg;
        lshr_ln6_reg_3031_pp0_iter3_reg <= lshr_ln6_reg_3031_pp0_iter2_reg;
        lshr_ln6_reg_3031_pp0_iter4_reg <= lshr_ln6_reg_3031_pp0_iter3_reg;
        offset_5_reg_3036[5 : 1] <= offset_5_fu_2322_p3[5 : 1];
        offset_5_reg_3036_pp0_iter1_reg[5 : 1] <= offset_5_reg_3036[5 : 1];
        offset_5_reg_3036_pp0_iter2_reg[5 : 1] <= offset_5_reg_3036_pp0_iter1_reg[5 : 1];
        offset_5_reg_3036_pp0_iter3_reg[5 : 1] <= offset_5_reg_3036_pp0_iter2_reg[5 : 1];
        offset_5_reg_3036_pp0_iter4_reg[5 : 1] <= offset_5_reg_3036_pp0_iter3_reg[5 : 1];
        tmp_90_reg_3069 <= {{mul_ln299_fu_2383_p2[18:13]}};
        tmp_92_reg_3074 <= {{mul_ln301_fu_2402_p2[18:13]}};
        tmp_93_reg_3223 <= {{mul_ln302_fu_2684_p2[16:12]}};
        tmp_94_reg_3079 <= {{mul_ln303_fu_2425_p2[18:13]}};
        tmp_98_reg_3228 <= {{mul_ln299_1_fu_2787_p2[18:13]}};
        trunc_ln172_reg_3065 <= trunc_ln172_fu_2376_p1;
        trunc_ln172_reg_3065_pp0_iter5_reg <= trunc_ln172_reg_3065;
        zext_ln172_27_reg_3084[5 : 1] <= zext_ln172_27_fu_2441_p1[5 : 1];
        zext_ln172_28_reg_3089[5 : 1] <= zext_ln172_28_fu_2444_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_1_reg_3168[8 : 1] <= add_ln299_1_fu_2520_p2[8 : 1];
        add_ln299_reg_3050 <= add_ln299_fu_2358_p2;
        add_ln301_reg_3055 <= add_ln301_fu_2364_p2;
        add_ln303_reg_3060 <= add_ln303_fu_2370_p2;
        offset_reg_3022 <= offset_fu_2303_p1;
        offset_reg_3022_pp0_iter1_reg <= offset_reg_3022;
        offset_reg_3022_pp0_iter2_reg <= offset_reg_3022_pp0_iter1_reg;
        offset_reg_3022_pp0_iter3_reg <= offset_reg_3022_pp0_iter2_reg;
        offset_reg_3022_pp0_iter4_reg <= offset_reg_3022_pp0_iter3_reg;
        tid_3_reg_3012 <= ap_sig_allocacmp_tid_3;
        tmp_100_reg_3183 <= {{mul_ln301_1_fu_2528_p2[18:13]}};
        tmp_101_reg_3193 <= {{mul_ln302_1_fu_2553_p2[16:12]}};
        tmp_102_reg_3203 <= {{mul_ln303_1_fu_2576_p2[18:13]}};
        tmp_104_reg_3218 <= {{tmp_104_fu_2592_p1[20:14]}};
        tmp_89_reg_3104 <= {{mul_ln172_fu_2462_p2[12:10]}};
        tmp_97_reg_3149 <= {{mul_ln172_5_fu_2500_p2[12:10]}};
        tmp_reg_3018 <= ap_sig_allocacmp_tid_3[32'd6];
        tmp_reg_3018_pp0_iter1_reg <= tmp_reg_3018;
        tmp_reg_3018_pp0_iter2_reg <= tmp_reg_3018_pp0_iter1_reg;
        tmp_reg_3018_pp0_iter3_reg <= tmp_reg_3018_pp0_iter2_reg;
        tmp_reg_3018_pp0_iter4_reg <= tmp_reg_3018_pp0_iter3_reg;
        trunc_ln172_5_reg_3154 <= trunc_ln172_5_fu_2516_p1;
        zext_ln172_23_reg_3045[5 : 0] <= zext_ln172_23_fu_2352_p1[5 : 0];
        zext_ln172_23_reg_3045_pp0_iter5_reg[5 : 0] <= zext_ln172_23_reg_3045[5 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3018 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_3018_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_q0;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_x_8_q0;
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_q0;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_x_8_q0;
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_12_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_12_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_12_d0_local = DATA_x_q0;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_12_d1_local = DATA_x_8_q0;
    end else begin
        smem_12_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we1_local = 1'b1;
    end else begin
        smem_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_1_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_1_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_x_8_q0;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_2_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_2_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q0;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_2_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_x_8_q0;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_x_8_q0;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_q0;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_x_8_q0;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_x_8_q0;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_6_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_q0;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_x_8_q0;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_7_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_7_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_7_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_x_8_q0;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_8_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_8_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_8_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_q0;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_x_8_q0;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_9_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_9_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13) | ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15)))))) begin
        smem_9_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_q0;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_9_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_x_8_q0;
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3065 == 4'd12) | ((trunc_ln172_reg_3065 == 4'd13)| ((trunc_ln172_reg_3065 == 4'd14) | (trunc_ln172_reg_3065 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_address0_local = zext_ln302_1_fu_2909_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln299_1_fu_2851_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln301_1_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln304_1_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln300_1_fu_2876_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln299_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln303_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln305_fu_2751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln301_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln304_fu_2725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln300_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_12_fu_2601_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln302_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln303_1_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln305_1_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_13_fu_2768_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15)))))) begin
        smem_d0_local = DATA_x_10_load_reg_3301;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_9_load_reg_3250;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_13_load_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_14_load_reg_3318;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_x_12_load_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q0;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_x_2_load_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_11_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_x_8_q0;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3065 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_5_reg_3154 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_5_reg_3154 == 4'd12) | ((trunc_ln172_5_reg_3154 == 4'd13) | ((trunc_ln172_5_reg_3154 == 4'd14) | (trunc_ln172_5_reg_3154 == 4'd15))))))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_5_reg_3154 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3065_pp0_iter5_reg == 4'd12) | ((trunc_ln172_reg_3065_pp0_iter5_reg == 4'd13) | ((trunc_ln172_reg_3065_pp0_iter5_reg == 4'd14) | (trunc_ln172_reg_3065_pp0_iter5_reg == 4'd15))))))) begin
        smem_we1_local = 1'b1;
    end else begin
        smem_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter5_stage0) & (ap_idle_pp0_0to4 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_1_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln298_fu_2478_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign add_ln294_fu_2336_p2 = (tid_3_reg_3012 + 7'd2);
assign add_ln299_1_fu_2520_p2 = ($signed(zext_ln172_28_reg_3089) + $signed(9'd288));
assign add_ln299_fu_2358_p2 = ($signed(zext_ln172_24_fu_2355_p1) + $signed(9'd288));
assign add_ln301_1_fu_2447_p2 = ($signed(zext_ln172_28_fu_2444_p1) + $signed(9'd360));
assign add_ln301_fu_2364_p2 = ($signed(zext_ln172_24_fu_2355_p1) + $signed(9'd360));
assign add_ln302_1_fu_2544_p2 = ($signed(zext_ln172_27_reg_3084) + $signed(8'd144));
assign add_ln302_fu_2675_p2 = ($signed(zext_ln172_23_reg_3045_pp0_iter5_reg) + $signed(8'd144));
assign add_ln303_1_fu_2453_p2 = ($signed(zext_ln172_27_fu_2441_p1) + $signed(8'd176));
assign add_ln303_fu_2370_p2 = ($signed(zext_ln172_23_fu_2352_p1) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_2307_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_2307_p1 = 6'd13;
assign grp_fu_2330_p0 = {{lshr_ln6_fu_2313_p4}, {1'd1}};
assign grp_fu_2330_p1 = 6'd13;
assign grp_fu_2951_p0 = grp_fu_2951_p00;
assign grp_fu_2951_p00 = offset_5_reg_3036_pp0_iter2_reg;
assign grp_fu_2951_p1 = 10'd504;
assign grp_fu_2951_p2 = 21'd1261;
assign grp_fu_2960_p0 = zext_ln172_23_fu_2352_p1;
assign grp_fu_2960_p1 = 8'd72;
assign grp_fu_2960_p2 = 17'd316;
assign grp_fu_2969_p0 = zext_ln172_24_fu_2355_p1;
assign grp_fu_2969_p1 = 9'd216;
assign grp_fu_2969_p2 = 19'd631;
assign grp_fu_2978_p0 = grp_fu_2978_p00;
assign grp_fu_2978_p00 = offset_reg_3022_pp0_iter3_reg;
assign grp_fu_2978_p1 = 10'd504;
assign grp_fu_2978_p2 = 21'd1261;
assign grp_fu_2987_p0 = zext_ln172_27_fu_2441_p1;
assign grp_fu_2987_p1 = 8'd72;
assign grp_fu_2987_p2 = 17'd316;
assign grp_fu_2996_p0 = zext_ln172_28_fu_2444_p1;
assign grp_fu_2996_p1 = 9'd216;
assign grp_fu_2996_p2 = 19'd631;
assign lshr_ln6_fu_2313_p4 = {{tid_3_reg_3012[5:1]}};
assign mul_ln172_5_fu_2500_p0 = mul_ln172_5_fu_2500_p00;
assign mul_ln172_5_fu_2500_p00 = offset_5_reg_3036_pp0_iter4_reg;
assign mul_ln172_5_fu_2500_p1 = 13'd79;
assign mul_ln172_fu_2462_p0 = mul_ln172_fu_2462_p00;
assign mul_ln172_fu_2462_p00 = offset_reg_3022_pp0_iter4_reg;
assign mul_ln172_fu_2462_p1 = 13'd79;
assign mul_ln299_1_fu_2787_p0 = mul_ln299_1_fu_2787_p00;
assign mul_ln299_1_fu_2787_p00 = add_ln299_1_reg_3168;
assign mul_ln299_1_fu_2787_p1 = 19'd631;
assign mul_ln299_fu_2383_p0 = mul_ln299_fu_2383_p00;
assign mul_ln299_fu_2383_p00 = add_ln299_reg_3050;
assign mul_ln299_fu_2383_p1 = 19'd631;
assign mul_ln301_1_fu_2528_p0 = mul_ln301_1_fu_2528_p00;
assign mul_ln301_1_fu_2528_p00 = add_ln301_1_reg_3094;
assign mul_ln301_1_fu_2528_p1 = 19'd631;
assign mul_ln301_fu_2402_p0 = mul_ln301_fu_2402_p00;
assign mul_ln301_fu_2402_p00 = add_ln301_reg_3055;
assign mul_ln301_fu_2402_p1 = 19'd631;
assign mul_ln302_1_fu_2553_p0 = mul_ln302_1_fu_2553_p00;
assign mul_ln302_1_fu_2553_p00 = add_ln302_1_fu_2544_p2;
assign mul_ln302_1_fu_2553_p1 = 17'd316;
assign mul_ln302_fu_2684_p0 = mul_ln302_fu_2684_p00;
assign mul_ln302_fu_2684_p00 = add_ln302_fu_2675_p2;
assign mul_ln302_fu_2684_p1 = 17'd316;
assign mul_ln303_1_fu_2576_p0 = mul_ln303_1_fu_2576_p00;
assign mul_ln303_1_fu_2576_p00 = $unsigned(sext_ln303_1_fu_2569_p1);
assign mul_ln303_1_fu_2576_p1 = 19'd631;
assign mul_ln303_fu_2425_p0 = mul_ln303_fu_2425_p00;
assign mul_ln303_fu_2425_p00 = $unsigned(sext_ln303_fu_2418_p1);
assign mul_ln303_fu_2425_p1 = 19'd631;
assign offset_5_fu_2322_p3 = {{lshr_ln6_fu_2313_p4}, {1'd1}};
assign offset_fu_2303_p1 = ap_sig_allocacmp_tid_3[5:0];
assign sext_ln303_1_fu_2569_p1 = $signed(add_ln303_1_reg_3099);
assign sext_ln303_fu_2418_p1 = $signed(add_ln303_reg_3060);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_d1 = smem_10_d1_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_10_we1 = smem_10_we1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_d1 = smem_11_d1_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_11_we1 = smem_11_we1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_d1 = smem_12_d1_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_12_we1 = smem_12_we1_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_d1 = smem_2_d1_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_2_we1 = smem_2_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_d1 = smem_4_d1_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_4_we1 = smem_4_we1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_d1 = smem_6_d1_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_6_we1 = smem_6_we1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_d1 = smem_8_d1_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_8_we1 = smem_8_we1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_d1 = smem_9_d1_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_9_we1 = smem_9_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign smem_d0 = smem_d0_local;
assign smem_d1 = smem_d1_local;
assign smem_we0 = smem_we0_local;
assign smem_we1 = smem_we1_local;
assign tmp_103_fu_2925_p1 = grp_fu_2996_p3;
assign tmp_103_fu_2925_p4 = {{tmp_103_fu_2925_p1[18:13]}};
assign tmp_104_fu_2592_p1 = grp_fu_2951_p3;
assign tmp_91_fu_2633_p1 = grp_fu_2960_p3;
assign tmp_91_fu_2633_p4 = {{tmp_91_fu_2633_p1[16:12]}};
assign tmp_95_fu_2716_p1 = grp_fu_2969_p3;
assign tmp_95_fu_2716_p4 = {{tmp_95_fu_2716_p1[18:13]}};
assign tmp_96_fu_2742_p1 = grp_fu_2978_p3;
assign tmp_96_fu_2742_p4 = {{tmp_96_fu_2742_p1[20:14]}};
assign tmp_99_fu_2867_p1 = grp_fu_2987_p3;
assign tmp_99_fu_2867_p4 = {{tmp_99_fu_2867_p1[16:12]}};
assign trunc_ln172_5_fu_2516_p1 = grp_fu_2330_p2[3:0];
assign trunc_ln172_fu_2376_p1 = grp_fu_2307_p2[3:0];
assign zext_ln172_12_fu_2601_p1 = tmp_89_reg_3104;
assign zext_ln172_13_fu_2768_p1 = tmp_97_reg_3149;
assign zext_ln172_23_fu_2352_p1 = offset_reg_3022_pp0_iter3_reg;
assign zext_ln172_24_fu_2355_p1 = offset_reg_3022_pp0_iter3_reg;
assign zext_ln172_27_fu_2441_p1 = offset_5_reg_3036_pp0_iter3_reg;
assign zext_ln172_28_fu_2444_p1 = offset_5_reg_3036_pp0_iter3_reg;
assign zext_ln298_fu_2478_p1 = lshr_ln6_reg_3031_pp0_iter4_reg;
assign zext_ln299_1_fu_2851_p1 = tmp_98_reg_3228;
assign zext_ln299_fu_2617_p1 = tmp_90_reg_3069;
assign zext_ln300_1_fu_2876_p1 = tmp_99_fu_2867_p4;
assign zext_ln300_fu_2642_p1 = tmp_91_fu_2633_p4;
assign zext_ln301_1_fu_2893_p1 = tmp_100_reg_3183;
assign zext_ln301_fu_2659_p1 = tmp_92_reg_3074;
assign zext_ln302_1_fu_2909_p1 = tmp_101_reg_3193;
assign zext_ln302_fu_2835_p1 = tmp_93_reg_3223;
assign zext_ln303_1_fu_2803_p1 = tmp_102_reg_3203;
assign zext_ln303_fu_2700_p1 = tmp_94_reg_3079;
assign zext_ln304_1_fu_2934_p1 = tmp_103_fu_2925_p4;
assign zext_ln304_fu_2725_p1 = tmp_95_fu_2716_p4;
assign zext_ln305_1_fu_2819_p1 = tmp_104_reg_3218;
assign zext_ln305_fu_2751_p1 = tmp_96_fu_2742_p4;
always @ (posedge ap_clk) begin
    offset_5_reg_3036[0] <= 1'b1;
    offset_5_reg_3036_pp0_iter1_reg[0] <= 1'b1;
    offset_5_reg_3036_pp0_iter2_reg[0] <= 1'b1;
    offset_5_reg_3036_pp0_iter3_reg[0] <= 1'b1;
    offset_5_reg_3036_pp0_iter4_reg[0] <= 1'b1;
    zext_ln172_23_reg_3045[7:6] <= 2'b00;
    zext_ln172_23_reg_3045_pp0_iter5_reg[7:6] <= 2'b00;
    zext_ln172_27_reg_3084[0] <= 1'b1;
    zext_ln172_27_reg_3084[7:6] <= 2'b00;
    zext_ln172_28_reg_3089[0] <= 1'b1;
    zext_ln172_28_reg_3089[8:6] <= 3'b000;
    add_ln301_1_reg_3094[0] <= 1'b1;
    add_ln303_1_reg_3099[0] <= 1'b1;
    add_ln299_1_reg_3168[0] <= 1'b1;
end
endmodule 