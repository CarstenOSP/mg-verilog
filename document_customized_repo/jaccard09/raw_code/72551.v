module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_12_address1,smem_12_ce1,smem_12_we1,smem_12_d1,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_10_address1,smem_10_ce1,smem_10_we1,smem_10_d1,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_8_address1,smem_8_ce1,smem_8_we1,smem_8_d1,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_6_address1,smem_6_ce1,smem_6_we1,smem_6_d1,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_4_address1,smem_4_ce1,smem_4_we1,smem_4_d1,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_2_address1,smem_2_ce1,smem_2_we1,smem_2_d1,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,smem_address1,smem_ce1,smem_we1,smem_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0); 
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
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
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
reg   [0:0] tmp_reg_3004;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_reg_2998;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_3004_pp0_iter1_reg;
reg   [0:0] tmp_reg_3004_pp0_iter2_reg;
reg   [0:0] tmp_reg_3004_pp0_iter3_reg;
reg   [0:0] tmp_reg_3004_pp0_iter4_reg;
wire   [5:0] offset_fu_2290_p1;
reg   [5:0] offset_reg_3008;
reg   [5:0] offset_reg_3008_pp0_iter1_reg;
reg   [5:0] offset_reg_3008_pp0_iter2_reg;
reg   [5:0] offset_reg_3008_pp0_iter3_reg;
reg   [5:0] offset_reg_3008_pp0_iter4_reg;
wire   [4:0] lshr_ln1_fu_2300_p4;
reg   [4:0] lshr_ln1_reg_3017;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] lshr_ln1_reg_3017_pp0_iter1_reg;
reg   [4:0] lshr_ln1_reg_3017_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_3017_pp0_iter3_reg;
reg   [4:0] lshr_ln1_reg_3017_pp0_iter4_reg;
wire   [5:0] offset_5_fu_2309_p3;
reg   [5:0] offset_5_reg_3022;
reg   [5:0] offset_5_reg_3022_pp0_iter1_reg;
reg   [5:0] offset_5_reg_3022_pp0_iter2_reg;
reg   [5:0] offset_5_reg_3022_pp0_iter3_reg;
reg   [5:0] offset_5_reg_3022_pp0_iter4_reg;
wire   [7:0] zext_ln172_21_fu_2339_p1;
reg   [7:0] zext_ln172_21_reg_3031;
wire   [8:0] add_ln210_fu_2345_p2;
reg   [8:0] add_ln210_reg_3036;
wire   [8:0] add_ln212_fu_2351_p2;
reg   [8:0] add_ln212_reg_3041;
wire   [7:0] add_ln214_fu_2357_p2;
reg   [7:0] add_ln214_reg_3046;
wire   [3:0] trunc_ln172_fu_2363_p1;
reg   [3:0] trunc_ln172_reg_3051;
reg   [3:0] trunc_ln172_reg_3051_pp0_iter5_reg;
reg   [5:0] tmp_96_reg_3055;
reg   [5:0] tmp_98_reg_3060;
reg   [4:0] tmp_99_reg_3065;
reg   [5:0] tmp_100_reg_3070;
wire   [7:0] zext_ln172_25_fu_2453_p1;
reg   [7:0] zext_ln172_25_reg_3075;
wire   [8:0] zext_ln172_26_fu_2456_p1;
reg   [8:0] zext_ln172_26_reg_3080;
wire   [8:0] add_ln212_1_fu_2459_p2;
reg   [8:0] add_ln212_1_reg_3085;
wire   [7:0] add_ln214_1_fu_2465_p2;
reg   [7:0] add_ln214_1_reg_3090;
reg   [2:0] tmp_95_reg_3095;
reg   [2:0] tmp_103_reg_3140;
wire   [3:0] trunc_ln172_6_fu_2528_p1;
reg   [3:0] trunc_ln172_6_reg_3145;
wire   [8:0] add_ln210_1_fu_2532_p2;
reg   [8:0] add_ln210_1_reg_3159;
reg   [5:0] tmp_106_reg_3174;
reg   [4:0] tmp_107_reg_3184;
reg   [5:0] tmp_108_reg_3194;
reg   [6:0] tmp_110_reg_3209;
reg   [4:0] tmp_97_reg_3214;
reg   [5:0] tmp_104_reg_3219;
reg   [63:0] DATA_y_4_load_reg_3224;
reg   [63:0] DATA_y_9_load_reg_3241;
reg   [63:0] DATA_y_12_load_reg_3258;
reg   [63:0] DATA_y_13_load_reg_3275;
reg   [63:0] DATA_y_10_load_reg_3292;
reg   [63:0] DATA_y_11_load_reg_3309;
reg   [63:0] DATA_y_14_load_reg_3326;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln209_fu_2490_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_4_fu_2613_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln210_fu_2629_p1;
wire   [63:0] zext_ln212_fu_2654_p1;
wire   [63:0] zext_ln213_fu_2670_p1;
wire   [63:0] zext_ln214_fu_2686_p1;
wire   [63:0] zext_ln215_fu_2711_p1;
wire   [63:0] zext_ln216_fu_2737_p1;
wire   [63:0] zext_ln172_5_fu_2754_p1;
wire   [63:0] zext_ln216_1_fu_2789_p1;
wire   [63:0] zext_ln211_fu_2805_p1;
wire   [63:0] zext_ln210_1_fu_2821_p1;
wire   [63:0] zext_ln211_1_fu_2846_p1;
wire   [63:0] zext_ln212_1_fu_2863_p1;
wire   [63:0] zext_ln213_1_fu_2879_p1;
wire   [63:0] zext_ln214_1_fu_2895_p1;
wire   [63:0] zext_ln215_1_fu_2920_p1;
reg   [6:0] tid_3_fu_164;
wire   [6:0] add_ln204_fu_2323_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_ce0_local;
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
wire   [5:0] grp_fu_2294_p0;
wire   [4:0] grp_fu_2294_p1;
wire   [5:0] grp_fu_2317_p0;
wire   [4:0] grp_fu_2317_p1;
wire   [8:0] zext_ln172_22_fu_2342_p1;
wire   [3:0] grp_fu_2294_p2;
wire   [8:0] mul_ln210_fu_2370_p0;
wire   [10:0] mul_ln210_fu_2370_p1;
wire   [18:0] mul_ln210_fu_2370_p2;
wire   [8:0] mul_ln212_fu_2389_p0;
wire   [10:0] mul_ln212_fu_2389_p1;
wire   [18:0] mul_ln212_fu_2389_p2;
wire   [7:0] add_ln213_fu_2405_p2;
wire   [7:0] mul_ln213_fu_2414_p0;
wire   [9:0] mul_ln213_fu_2414_p1;
wire   [16:0] mul_ln213_fu_2414_p2;
wire  signed [8:0] sext_ln214_fu_2430_p1;
wire   [8:0] mul_ln214_fu_2437_p0;
wire   [10:0] mul_ln214_fu_2437_p1;
wire   [18:0] mul_ln214_fu_2437_p2;
wire   [5:0] mul_ln172_4_fu_2474_p0;
wire   [7:0] mul_ln172_4_fu_2474_p1;
wire   [12:0] mul_ln172_4_fu_2474_p2;
wire   [5:0] mul_ln172_5_fu_2512_p0;
wire   [7:0] mul_ln172_5_fu_2512_p1;
wire   [12:0] mul_ln172_5_fu_2512_p2;
wire   [3:0] grp_fu_2317_p2;
wire   [8:0] mul_ln212_1_fu_2540_p0;
wire   [10:0] mul_ln212_1_fu_2540_p1;
wire   [18:0] mul_ln212_1_fu_2540_p2;
wire   [7:0] add_ln213_1_fu_2556_p2;
wire   [7:0] mul_ln213_1_fu_2565_p0;
wire   [9:0] mul_ln213_1_fu_2565_p1;
wire   [16:0] mul_ln213_1_fu_2565_p2;
wire  signed [8:0] sext_ln214_1_fu_2581_p1;
wire   [8:0] mul_ln214_1_fu_2588_p0;
wire   [10:0] mul_ln214_1_fu_2588_p1;
wire   [18:0] mul_ln214_1_fu_2588_p2;
wire   [20:0] tmp_110_fu_2604_p1;
wire  signed [20:0] grp_fu_2937_p3;
wire   [16:0] tmp_97_fu_2645_p1;
wire  signed [16:0] grp_fu_2946_p3;
wire   [18:0] tmp_101_fu_2702_p1;
wire  signed [18:0] grp_fu_2955_p3;
wire   [5:0] tmp_101_fu_2702_p4;
wire   [20:0] tmp_102_fu_2728_p1;
wire  signed [20:0] grp_fu_2964_p3;
wire   [6:0] tmp_102_fu_2728_p4;
wire   [8:0] mul_ln210_1_fu_2773_p0;
wire   [10:0] mul_ln210_1_fu_2773_p1;
wire   [18:0] mul_ln210_1_fu_2773_p2;
wire   [16:0] tmp_105_fu_2837_p1;
wire  signed [16:0] grp_fu_2973_p3;
wire   [4:0] tmp_105_fu_2837_p4;
wire   [18:0] tmp_109_fu_2911_p1;
wire  signed [18:0] grp_fu_2982_p3;
wire   [5:0] tmp_109_fu_2911_p4;
wire   [5:0] grp_fu_2937_p0;
wire   [8:0] grp_fu_2937_p1;
wire   [10:0] grp_fu_2937_p2;
wire   [5:0] grp_fu_2946_p0;
wire   [6:0] grp_fu_2946_p1;
wire   [8:0] grp_fu_2946_p2;
wire   [5:0] grp_fu_2955_p0;
wire   [7:0] grp_fu_2955_p1;
wire   [9:0] grp_fu_2955_p2;
wire   [5:0] grp_fu_2964_p0;
wire   [8:0] grp_fu_2964_p1;
wire   [10:0] grp_fu_2964_p2;
wire   [5:0] grp_fu_2973_p0;
wire   [6:0] grp_fu_2973_p1;
wire   [8:0] grp_fu_2973_p2;
wire   [5:0] grp_fu_2982_p0;
wire   [7:0] grp_fu_2982_p1;
wire   [9:0] grp_fu_2982_p2;
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
wire   [9:0] grp_fu_2937_p00;
wire   [9:0] grp_fu_2964_p00;
wire   [12:0] mul_ln172_4_fu_2474_p00;
wire   [12:0] mul_ln172_5_fu_2512_p00;
wire   [18:0] mul_ln210_1_fu_2773_p00;
wire   [18:0] mul_ln210_fu_2370_p00;
wire   [18:0] mul_ln212_1_fu_2540_p00;
wire   [18:0] mul_ln212_fu_2389_p00;
wire   [16:0] mul_ln213_1_fu_2565_p00;
wire   [16:0] mul_ln213_fu_2414_p00;
wire   [18:0] mul_ln214_1_fu_2588_p00;
wire   [18:0] mul_ln214_fu_2437_p00;
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
#0 tid_3_fu_164 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2294_p0),.din1(grp_fu_2294_p1),.ce(1'b1),.dout(grp_fu_2294_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2317_p0),.din1(grp_fu_2317_p1),.ce(1'b1),.dout(grp_fu_2317_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U268(.din0(mul_ln210_fu_2370_p0),.din1(mul_ln210_fu_2370_p1),.dout(mul_ln210_fu_2370_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U269(.din0(mul_ln212_fu_2389_p0),.din1(mul_ln212_fu_2389_p1),.dout(mul_ln212_fu_2389_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U270(.din0(mul_ln213_fu_2414_p0),.din1(mul_ln213_fu_2414_p1),.dout(mul_ln213_fu_2414_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U271(.din0(mul_ln214_fu_2437_p0),.din1(mul_ln214_fu_2437_p1),.dout(mul_ln214_fu_2437_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U272(.din0(mul_ln172_4_fu_2474_p0),.din1(mul_ln172_4_fu_2474_p1),.dout(mul_ln172_4_fu_2474_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U273(.din0(mul_ln172_5_fu_2512_p0),.din1(mul_ln172_5_fu_2512_p1),.dout(mul_ln172_5_fu_2512_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U274(.din0(mul_ln212_1_fu_2540_p0),.din1(mul_ln212_1_fu_2540_p1),.dout(mul_ln212_1_fu_2540_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U275(.din0(mul_ln213_1_fu_2565_p0),.din1(mul_ln213_1_fu_2565_p1),.dout(mul_ln213_1_fu_2565_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U276(.din0(mul_ln214_1_fu_2588_p0),.din1(mul_ln214_1_fu_2588_p1),.dout(mul_ln214_1_fu_2588_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U277(.din0(mul_ln210_1_fu_2773_p0),.din1(mul_ln210_1_fu_2773_p1),.dout(mul_ln210_1_fu_2773_p2));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2937_p0),.din1(grp_fu_2937_p1),.din2(grp_fu_2937_p2),.ce(1'b1),.dout(grp_fu_2937_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2946_p0),.din1(grp_fu_2946_p1),.din2(grp_fu_2946_p2),.ce(1'b1),.dout(grp_fu_2946_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2955_p0),.din1(grp_fu_2955_p1),.din2(grp_fu_2955_p2),.ce(1'b1),.dout(grp_fu_2955_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2964_p0),.din1(grp_fu_2964_p1),.din2(grp_fu_2964_p2),.ce(1'b1),.dout(grp_fu_2964_p3));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2973_p0),.din1(grp_fu_2973_p1),.din2(grp_fu_2973_p2),.ce(1'b1),.dout(grp_fu_2973_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2982_p0),.din1(grp_fu_2982_p1),.din2(grp_fu_2982_p2),.ce(1'b1),.dout(grp_fu_2982_p3));
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
        tid_3_fu_164 <= 7'd0;
    end else if (((tmp_reg_3004 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_3_fu_164 <= add_ln204_fu_2323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_10_load_reg_3292 <= DATA_y_10_q0;
        DATA_y_11_load_reg_3309 <= DATA_y_11_q0;
        DATA_y_12_load_reg_3258 <= DATA_y_12_q0;
        DATA_y_13_load_reg_3275 <= DATA_y_13_q0;
        DATA_y_14_load_reg_3326 <= DATA_y_14_q0;
        DATA_y_4_load_reg_3224 <= DATA_y_4_q0;
        DATA_y_9_load_reg_3241 <= DATA_y_9_q0;
        add_ln212_1_reg_3085[8 : 1] <= add_ln212_1_fu_2459_p2[8 : 1];
        add_ln214_1_reg_3090[7 : 1] <= add_ln214_1_fu_2465_p2[7 : 1];
        lshr_ln1_reg_3017 <= {{tid_reg_2998[5:1]}};
        lshr_ln1_reg_3017_pp0_iter1_reg <= lshr_ln1_reg_3017;
        lshr_ln1_reg_3017_pp0_iter2_reg <= lshr_ln1_reg_3017_pp0_iter1_reg;
        lshr_ln1_reg_3017_pp0_iter3_reg <= lshr_ln1_reg_3017_pp0_iter2_reg;
        lshr_ln1_reg_3017_pp0_iter4_reg <= lshr_ln1_reg_3017_pp0_iter3_reg;
        offset_5_reg_3022[5 : 1] <= offset_5_fu_2309_p3[5 : 1];
        offset_5_reg_3022_pp0_iter1_reg[5 : 1] <= offset_5_reg_3022[5 : 1];
        offset_5_reg_3022_pp0_iter2_reg[5 : 1] <= offset_5_reg_3022_pp0_iter1_reg[5 : 1];
        offset_5_reg_3022_pp0_iter3_reg[5 : 1] <= offset_5_reg_3022_pp0_iter2_reg[5 : 1];
        offset_5_reg_3022_pp0_iter4_reg[5 : 1] <= offset_5_reg_3022_pp0_iter3_reg[5 : 1];
        tmp_100_reg_3070 <= {{mul_ln214_fu_2437_p2[18:13]}};
        tmp_104_reg_3219 <= {{mul_ln210_1_fu_2773_p2[18:13]}};
        tmp_96_reg_3055 <= {{mul_ln210_fu_2370_p2[18:13]}};
        tmp_97_reg_3214 <= {{tmp_97_fu_2645_p1[16:12]}};
        tmp_98_reg_3060 <= {{mul_ln212_fu_2389_p2[18:13]}};
        tmp_99_reg_3065 <= {{mul_ln213_fu_2414_p2[16:12]}};
        trunc_ln172_reg_3051 <= trunc_ln172_fu_2363_p1;
        trunc_ln172_reg_3051_pp0_iter5_reg <= trunc_ln172_reg_3051;
        zext_ln172_25_reg_3075[5 : 1] <= zext_ln172_25_fu_2453_p1[5 : 1];
        zext_ln172_26_reg_3080[5 : 1] <= zext_ln172_26_fu_2456_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln210_1_reg_3159[8 : 1] <= add_ln210_1_fu_2532_p2[8 : 1];
        add_ln210_reg_3036 <= add_ln210_fu_2345_p2;
        add_ln212_reg_3041 <= add_ln212_fu_2351_p2;
        add_ln214_reg_3046 <= add_ln214_fu_2357_p2;
        offset_reg_3008 <= offset_fu_2290_p1;
        offset_reg_3008_pp0_iter1_reg <= offset_reg_3008;
        offset_reg_3008_pp0_iter2_reg <= offset_reg_3008_pp0_iter1_reg;
        offset_reg_3008_pp0_iter3_reg <= offset_reg_3008_pp0_iter2_reg;
        offset_reg_3008_pp0_iter4_reg <= offset_reg_3008_pp0_iter3_reg;
        tid_reg_2998 <= ap_sig_allocacmp_tid;
        tmp_103_reg_3140 <= {{mul_ln172_5_fu_2512_p2[12:10]}};
        tmp_106_reg_3174 <= {{mul_ln212_1_fu_2540_p2[18:13]}};
        tmp_107_reg_3184 <= {{mul_ln213_1_fu_2565_p2[16:12]}};
        tmp_108_reg_3194 <= {{mul_ln214_1_fu_2588_p2[18:13]}};
        tmp_110_reg_3209 <= {{tmp_110_fu_2604_p1[20:14]}};
        tmp_95_reg_3095 <= {{mul_ln172_4_fu_2474_p2[12:10]}};
        tmp_reg_3004 <= ap_sig_allocacmp_tid[32'd6];
        tmp_reg_3004_pp0_iter1_reg <= tmp_reg_3004;
        tmp_reg_3004_pp0_iter2_reg <= tmp_reg_3004_pp0_iter1_reg;
        tmp_reg_3004_pp0_iter3_reg <= tmp_reg_3004_pp0_iter2_reg;
        tmp_reg_3004_pp0_iter4_reg <= tmp_reg_3004_pp0_iter3_reg;
        trunc_ln172_6_reg_3145 <= trunc_ln172_6_fu_2528_p1;
        zext_ln172_21_reg_3031[5 : 0] <= zext_ln172_21_fu_2339_p1[5 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3004 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_3004_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_q0;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d1_local = DATA_y_8_q0;
    end else begin
        smem_10_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_10_we1_local = 1'b1;
    end else begin
        smem_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_q0;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_11_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d1_local = DATA_y_8_q0;
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_12_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_12_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_12_d0_local = DATA_y_q0;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_12_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_12_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_12_d1_local = DATA_y_8_q0;
    end else begin
        smem_12_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_12_we1_local = 1'b1;
    end else begin
        smem_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_1_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_1_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_1_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d1_local = DATA_y_8_q0;
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_2_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_2_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_2_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_q0;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d1_local = DATA_y_8_q0;
    end else begin
        smem_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_we1_local = 1'b1;
    end else begin
        smem_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_3_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_3_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_3_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_3_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d1_local = DATA_y_8_q0;
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_4_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_4_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_4_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_4_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_q0;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d1_local = DATA_y_8_q0;
    end else begin
        smem_4_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_4_we1_local = 1'b1;
    end else begin
        smem_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_5_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_5_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_5_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_5_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d1_local = DATA_y_8_q0;
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145== 4'd15))))))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_6_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_6_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13) | ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15)))))) begin
        smem_6_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_q0;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_6_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d1_local = DATA_y_8_q0;
    end else begin
        smem_6_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_3051 == 4'd12) | ((trunc_ln172_reg_3051 == 4'd13)| ((trunc_ln172_reg_3051 == 4'd14) | (trunc_ln172_reg_3051 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_6_we1_local = 1'b1;
    end else begin
        smem_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d1_local = DATA_y_8_q0;
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_q0;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d1_local = DATA_y_8_q0;
    end else begin
        smem_8_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_8_we1_local = 1'b1;
    end else begin
        smem_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_q0;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d1_local = DATA_y_8_q0;
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_address0_local = zext_ln211_1_fu_2846_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln210_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln215_1_fu_2920_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln213_1_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln212_1_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln214_1_fu_2895_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln210_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln215_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln213_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln212_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln216_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln214_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_4_fu_2613_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address1_local = zext_ln211_fu_2805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln216_1_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address1_local = zext_ln172_5_fu_2754_p1;
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15)))))) begin
        smem_d0_local = DATA_y_12_load_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_9_load_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_14_load_reg_3326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_10_load_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_13_load_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_11_load_reg_3309;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_6_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_7_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_q0;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d1_local = DATA_y_4_load_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_15_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d1_local = DATA_y_8_q0;
    end else begin
        smem_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln172_reg_3051 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001)& (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln172_6_reg_3145 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_6_reg_3145 == 4'd12) | ((trunc_ln172_6_reg_3145 == 4'd13) | ((trunc_ln172_6_reg_3145 == 4'd14) | (trunc_ln172_6_reg_3145 == 4'd15))))))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln172_6_reg_3145 == 4'd6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_3051_pp0_iter5_reg == 4'd12) | ((trunc_ln172_reg_3051_pp0_iter5_reg == 4'd13) | ((trunc_ln172_reg_3051_pp0_iter5_reg == 4'd14) | (trunc_ln172_reg_3051_pp0_iter5_reg == 4'd15))))))) begin
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
assign DATA_y_10_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln209_fu_2490_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln204_fu_2323_p2 = (tid_reg_2998 + 7'd2);
assign add_ln210_1_fu_2532_p2 = ($signed(zext_ln172_26_reg_3080) + $signed(9'd264));
assign add_ln210_fu_2345_p2 = ($signed(zext_ln172_22_fu_2342_p1) + $signed(9'd264));
assign add_ln212_1_fu_2459_p2 = ($signed(zext_ln172_26_fu_2456_p1) + $signed(9'd330));
assign add_ln212_fu_2351_p2 = ($signed(zext_ln172_22_fu_2342_p1) + $signed(9'd330));
assign add_ln213_1_fu_2556_p2 = ($signed(zext_ln172_25_reg_3075) + $signed(8'd132));
assign add_ln213_fu_2405_p2 = ($signed(zext_ln172_21_reg_3031) + $signed(8'd132));
assign add_ln214_1_fu_2465_p2 = ($signed(zext_ln172_25_fu_2453_p1) + $signed(8'd140));
assign add_ln214_fu_2357_p2 = ($signed(zext_ln172_21_fu_2339_p1) + $signed(8'd140));
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
assign grp_fu_2294_p0 = ap_sig_allocacmp_tid[5:0];
assign grp_fu_2294_p1 = 6'd13;
assign grp_fu_2317_p0 = {{lshr_ln1_fu_2300_p4}, {1'd1}};
assign grp_fu_2317_p1 = 6'd13;
assign grp_fu_2937_p0 = grp_fu_2937_p00;
assign grp_fu_2937_p00 = offset_5_reg_3022_pp0_iter2_reg;
assign grp_fu_2937_p1 = 10'd462;
assign grp_fu_2937_p2 = 21'd1261;
assign grp_fu_2946_p0 = zext_ln172_21_fu_2339_p1;
assign grp_fu_2946_p1 = 8'd66;
assign grp_fu_2946_p2 = 17'd316;
assign grp_fu_2955_p0 = zext_ln172_22_fu_2342_p1;
assign grp_fu_2955_p1 = 9'd198;
assign grp_fu_2955_p2 = 19'd631;
assign grp_fu_2964_p0 = grp_fu_2964_p00;
assign grp_fu_2964_p00 = offset_reg_3008_pp0_iter3_reg;
assign grp_fu_2964_p1 = 10'd462;
assign grp_fu_2964_p2 = 21'd1261;
assign grp_fu_2973_p0 = zext_ln172_25_fu_2453_p1;
assign grp_fu_2973_p1 = 8'd66;
assign grp_fu_2973_p2 = 17'd316;
assign grp_fu_2982_p0 = zext_ln172_26_fu_2456_p1;
assign grp_fu_2982_p1 = 9'd198;
assign grp_fu_2982_p2 = 19'd631;
assign lshr_ln1_fu_2300_p4 = {{tid_reg_2998[5:1]}};
assign mul_ln172_4_fu_2474_p0 = mul_ln172_4_fu_2474_p00;
assign mul_ln172_4_fu_2474_p00 = offset_reg_3008_pp0_iter4_reg;
assign mul_ln172_4_fu_2474_p1 = 13'd79;
assign mul_ln172_5_fu_2512_p0 = mul_ln172_5_fu_2512_p00;
assign mul_ln172_5_fu_2512_p00 = offset_5_reg_3022_pp0_iter4_reg;
assign mul_ln172_5_fu_2512_p1 = 13'd79;
assign mul_ln210_1_fu_2773_p0 = mul_ln210_1_fu_2773_p00;
assign mul_ln210_1_fu_2773_p00 = add_ln210_1_reg_3159;
assign mul_ln210_1_fu_2773_p1 = 19'd631;
assign mul_ln210_fu_2370_p0 = mul_ln210_fu_2370_p00;
assign mul_ln210_fu_2370_p00 = add_ln210_reg_3036;
assign mul_ln210_fu_2370_p1 = 19'd631;
assign mul_ln212_1_fu_2540_p0 = mul_ln212_1_fu_2540_p00;
assign mul_ln212_1_fu_2540_p00 = add_ln212_1_reg_3085;
assign mul_ln212_1_fu_2540_p1 = 19'd631;
assign mul_ln212_fu_2389_p0 = mul_ln212_fu_2389_p00;
assign mul_ln212_fu_2389_p00 = add_ln212_reg_3041;
assign mul_ln212_fu_2389_p1 = 19'd631;
assign mul_ln213_1_fu_2565_p0 = mul_ln213_1_fu_2565_p00;
assign mul_ln213_1_fu_2565_p00 = add_ln213_1_fu_2556_p2;
assign mul_ln213_1_fu_2565_p1 = 17'd316;
assign mul_ln213_fu_2414_p0 = mul_ln213_fu_2414_p00;
assign mul_ln213_fu_2414_p00 = add_ln213_fu_2405_p2;
assign mul_ln213_fu_2414_p1 = 17'd316;
assign mul_ln214_1_fu_2588_p0 = mul_ln214_1_fu_2588_p00;
assign mul_ln214_1_fu_2588_p00 = $unsigned(sext_ln214_1_fu_2581_p1);
assign mul_ln214_1_fu_2588_p1 = 19'd631;
assign mul_ln214_fu_2437_p0 = mul_ln214_fu_2437_p00;
assign mul_ln214_fu_2437_p00 = $unsigned(sext_ln214_fu_2430_p1);
assign mul_ln214_fu_2437_p1 = 19'd631;
assign offset_5_fu_2309_p3 = {{lshr_ln1_fu_2300_p4}, {1'd1}};
assign offset_fu_2290_p1 = ap_sig_allocacmp_tid[5:0];
assign sext_ln214_1_fu_2581_p1 = $signed(add_ln214_1_reg_3090);
assign sext_ln214_fu_2430_p1 = $signed(add_ln214_reg_3046);
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
assign tmp_101_fu_2702_p1 = grp_fu_2955_p3;
assign tmp_101_fu_2702_p4 = {{tmp_101_fu_2702_p1[18:13]}};
assign tmp_102_fu_2728_p1 = grp_fu_2964_p3;
assign tmp_102_fu_2728_p4 = {{tmp_102_fu_2728_p1[20:14]}};
assign tmp_105_fu_2837_p1 = grp_fu_2973_p3;
assign tmp_105_fu_2837_p4 = {{tmp_105_fu_2837_p1[16:12]}};
assign tmp_109_fu_2911_p1 = grp_fu_2982_p3;
assign tmp_109_fu_2911_p4 = {{tmp_109_fu_2911_p1[18:13]}};
assign tmp_110_fu_2604_p1 = grp_fu_2937_p3;
assign tmp_97_fu_2645_p1 = grp_fu_2946_p3;
assign trunc_ln172_6_fu_2528_p1 = grp_fu_2317_p2[3:0];
assign trunc_ln172_fu_2363_p1 = grp_fu_2294_p2[3:0];
assign zext_ln172_21_fu_2339_p1 = offset_reg_3008_pp0_iter3_reg;
assign zext_ln172_22_fu_2342_p1 = offset_reg_3008_pp0_iter3_reg;
assign zext_ln172_25_fu_2453_p1 = offset_5_reg_3022_pp0_iter3_reg;
assign zext_ln172_26_fu_2456_p1 = offset_5_reg_3022_pp0_iter3_reg;
assign zext_ln172_4_fu_2613_p1 = tmp_95_reg_3095;
assign zext_ln172_5_fu_2754_p1 = tmp_103_reg_3140;
assign zext_ln209_fu_2490_p1 = lshr_ln1_reg_3017_pp0_iter4_reg;
assign zext_ln210_1_fu_2821_p1 = tmp_104_reg_3219;
assign zext_ln210_fu_2629_p1 = tmp_96_reg_3055;
assign zext_ln211_1_fu_2846_p1 = tmp_105_fu_2837_p4;
assign zext_ln211_fu_2805_p1 = tmp_97_reg_3214;
assign zext_ln212_1_fu_2863_p1 = tmp_106_reg_3174;
assign zext_ln212_fu_2654_p1 = tmp_98_reg_3060;
assign zext_ln213_1_fu_2879_p1 = tmp_107_reg_3184;
assign zext_ln213_fu_2670_p1 = tmp_99_reg_3065;
assign zext_ln214_1_fu_2895_p1 = tmp_108_reg_3194;
assign zext_ln214_fu_2686_p1 = tmp_100_reg_3070;
assign zext_ln215_1_fu_2920_p1 = tmp_109_fu_2911_p4;
assign zext_ln215_fu_2711_p1 = tmp_101_fu_2702_p4;
assign zext_ln216_1_fu_2789_p1 = tmp_110_reg_3209;
assign zext_ln216_fu_2737_p1 = tmp_102_fu_2728_p4;
always @ (posedge ap_clk) begin
    offset_5_reg_3022[0] <= 1'b1;
    offset_5_reg_3022_pp0_iter1_reg[0] <= 1'b1;
    offset_5_reg_3022_pp0_iter2_reg[0] <= 1'b1;
    offset_5_reg_3022_pp0_iter3_reg[0] <= 1'b1;
    offset_5_reg_3022_pp0_iter4_reg[0] <= 1'b1;
    zext_ln172_21_reg_3031[7:6] <= 2'b00;
    zext_ln172_25_reg_3075[0] <= 1'b1;
    zext_ln172_25_reg_3075[7:6] <= 2'b00;
    zext_ln172_26_reg_3080[0] <= 1'b1;
    zext_ln172_26_reg_3080[8:6] <= 3'b000;
    add_ln212_1_reg_3085[0] <= 1'b1;
    add_ln214_1_reg_3090[0] <= 1'b1;
    add_ln210_1_reg_3159[0] <= 1'b1;
end
endmodule 