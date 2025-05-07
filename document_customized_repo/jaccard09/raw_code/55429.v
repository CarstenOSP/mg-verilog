module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,tmp_23,tmp_25,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,tmp_24,tmp_26,empty,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,r,indvars_iv_next93); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [8:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [8:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [8:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [8:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [8:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [8:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [8:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [8:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [8:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [8:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [8:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [8:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [8:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [8:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [8:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [12:0] tmp_23;
input  [8:0] tmp_25;
output  [8:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [8:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [8:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [8:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [8:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [8:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [8:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [8:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [8:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [8:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [8:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [8:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [8:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [8:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [8:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [8:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [8:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [8:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [8:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [8:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [8:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [8:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [8:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [8:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
input  [12:0] tmp_24;
input  [8:0] tmp_26;
input  [12:0] empty;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [8:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [8:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [8:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [8:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [8:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [8:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
input  [6:0] r;
input  [6:0] indvars_iv_next93;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln8_reg_2936;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1404_p2;
reg   [31:0] reg_1590;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_1408_p2;
reg   [31:0] reg_1594;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_1420_p2;
reg   [31:0] reg_1598;
wire   [31:0] grp_fu_1424_p2;
reg   [31:0] reg_1602;
wire   [31:0] grp_fu_1428_p2;
reg   [31:0] reg_1606;
wire   [31:0] grp_fu_1432_p2;
reg   [31:0] reg_1610;
wire   [31:0] grp_fu_1436_p2;
reg   [31:0] reg_1614;
wire   [31:0] grp_fu_1440_p2;
reg   [31:0] reg_1618;
wire   [31:0] grp_fu_1444_p2;
reg   [31:0] reg_1622;
wire   [31:0] grp_fu_1448_p2;
reg   [31:0] reg_1626;
wire   [31:0] grp_fu_1416_p2;
reg   [31:0] reg_1630;
wire   [3:0] trunc_ln8_fu_1642_p1;
reg   [3:0] trunc_ln8_reg_2716;
reg   [3:0] trunc_ln8_reg_2716_pp0_iter1_reg;
reg   [3:0] trunc_ln8_reg_2716_pp0_iter2_reg;
wire   [63:0] zext_ln12_fu_1670_p1;
reg   [63:0] zext_ln12_reg_2738;
reg   [63:0] zext_ln12_reg_2738_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_2738_pp0_iter2_reg;
wire   [63:0] zext_ln12_2_fu_1710_p1;
reg   [63:0] zext_ln12_2_reg_2822;
wire   [8:0] add_ln5_1_fu_1751_p2;
reg   [8:0] add_ln5_1_reg_2890;
reg   [8:0] lshr_ln12_3_reg_2895;
wire   [12:0] or_ln8_fu_1776_p3;
reg   [12:0] or_ln8_reg_2900;
wire   [10:0] tmp_30_fu_1825_p4;
reg   [10:0] tmp_30_reg_2926;
wire   [12:0] or_ln8_3_fu_1835_p3;
reg   [12:0] or_ln8_3_reg_2931;
wire   [0:0] icmp_ln8_fu_1843_p2;
reg   [0:0] icmp_ln8_reg_2936_pp0_iter1_reg;
reg   [0:0] icmp_ln8_reg_2936_pp0_iter2_reg;
reg   [8:0] lshr_ln12_7_reg_2940;
reg   [8:0] lshr_ln12_8_reg_2945;
reg   [8:0] lshr_ln12_s_reg_2970;
wire  signed [31:0] tmp_fu_1930_p11;
reg  signed [31:0] tmp_reg_2975;
wire  signed [31:0] tmp_1_fu_1953_p11;
reg  signed [31:0] tmp_1_reg_2980;
wire  signed [31:0] tmp_2_fu_1976_p11;
reg  signed [31:0] tmp_2_reg_2986;
wire  signed [31:0] tmp_3_fu_1999_p11;
reg  signed [31:0] tmp_3_reg_2992;
wire  signed [31:0] tmp_4_fu_2022_p11;
reg  signed [31:0] tmp_4_reg_2997;
wire  signed [31:0] tmp_5_fu_2045_p11;
reg  signed [31:0] tmp_5_reg_3003;
reg   [8:0] lshr_ln12_5_reg_3069;
wire  signed [31:0] tmp_10_fu_2115_p11;
reg  signed [31:0] tmp_10_reg_3074;
wire  signed [31:0] tmp_15_fu_2152_p11;
reg  signed [31:0] tmp_15_reg_3139;
reg   [8:0] lshr_ln12_10_reg_3165;
reg   [8:0] lshr_ln12_11_reg_3170;
wire   [12:0] or_ln8_2_fu_2212_p3;
reg   [12:0] or_ln8_2_reg_3175;
wire  signed [31:0] tmp_7_fu_2259_p11;
reg  signed [31:0] tmp_7_reg_3221;
wire  signed [31:0] grp_fu_1452_p11;
reg  signed [31:0] tmp_8_reg_3227;
wire  signed [31:0] grp_fu_1475_p11;
reg  signed [31:0] tmp_9_reg_3233;
wire  signed [31:0] grp_fu_1498_p11;
reg  signed [31:0] tmp_12_reg_3278;
wire  signed [31:0] grp_fu_1521_p11;
reg  signed [31:0] tmp_13_reg_3284;
wire  signed [31:0] grp_fu_1544_p11;
reg  signed [31:0] tmp_14_reg_3290;
wire  signed [31:0] tmp_16_fu_2289_p11;
reg  signed [31:0] tmp_16_reg_3295;
wire  signed [31:0] grp_fu_1567_p11;
reg  signed [31:0] tmp_22_reg_3401;
wire  signed [31:0] tmp_6_fu_2386_p11;
reg  signed [31:0] tmp_6_reg_3406;
wire   [31:0] grp_fu_1412_p2;
reg   [31:0] mul_ln13_2_reg_3411;
reg   [31:0] mul_ln13_4_reg_3416;
reg  signed [31:0] tmp_s_reg_3421;
reg  signed [31:0] tmp_11_reg_3426;
reg  signed [31:0] tmp_17_reg_3431;
reg  signed [31:0] tmp_18_reg_3436;
reg  signed [31:0] tmp_19_reg_3442;
wire  signed [31:0] tmp_20_fu_2409_p11;
reg  signed [31:0] tmp_20_reg_3448;
reg  signed [31:0] tmp_21_reg_3453;
reg   [31:0] mul_ln13_3_reg_3458;
wire   [31:0] add_ln13_1_fu_2432_p2;
reg   [31:0] add_ln13_1_reg_3463;
reg   [31:0] mul_ln13_9_reg_3468;
wire   [31:0] add_ln13_13_fu_2444_p2;
reg   [31:0] add_ln13_13_reg_3473;
reg   [31:0] mul_ln13_18_reg_3478;
reg   [31:0] mul_ln13_20_reg_3483;
reg   [31:0] mul_ln13_29_reg_3488;
reg   [31:0] mul_ln13_33_reg_3493;
wire   [31:0] add_ln13_5_fu_2455_p2;
reg   [31:0] add_ln13_5_reg_3498;
reg   [31:0] mul_ln13_10_reg_3503;
wire   [31:0] add_ln13_9_fu_2461_p2;
reg   [31:0] add_ln13_9_reg_3508;
wire   [31:0] add_ln13_14_fu_2473_p2;
reg   [31:0] add_ln13_14_reg_3513;
reg   [31:0] mul_ln13_19_reg_3518;
reg   [31:0] mul_ln13_22_reg_3523;
reg   [31:0] mul_ln13_26_reg_3528;
reg   [31:0] mul_ln13_32_reg_3533;
wire   [31:0] add_ln13_29_fu_2484_p2;
reg   [31:0] add_ln13_29_reg_3538;
wire   [31:0] add_ln13_fu_2489_p2;
reg   [31:0] add_ln13_reg_3543;
wire   [31:0] add_ln13_6_fu_2499_p2;
reg   [31:0] add_ln13_6_reg_3548;
wire   [31:0] temp_1_fu_2513_p2;
reg   [31:0] temp_1_reg_3553;
wire   [31:0] add_ln13_16_fu_2518_p2;
reg   [31:0] add_ln13_16_reg_3561;
wire   [31:0] add_ln13_17_fu_2523_p2;
reg   [31:0] add_ln13_17_reg_3566;
wire   [31:0] add_ln13_21_fu_2533_p2;
reg   [31:0] add_ln13_21_reg_3571;
wire   [31:0] add_ln13_24_fu_2539_p2;
reg   [31:0] add_ln13_24_reg_3576;
wire   [31:0] add_ln13_25_fu_2545_p2;
reg   [31:0] add_ln13_25_reg_3581;
wire   [31:0] add_ln13_30_fu_2555_p2;
reg   [31:0] add_ln13_30_reg_3586;
wire   [31:0] temp_fu_2564_p2;
reg   [31:0] temp_reg_3591;
wire   [31:0] add_ln13_22_fu_2573_p2;
reg   [31:0] add_ln13_22_reg_3599;
wire   [31:0] temp_3_fu_2582_p2;
reg   [31:0] temp_3_reg_3604;
wire   [31:0] temp_2_fu_2591_p2;
reg   [31:0] temp_2_reg_3612;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_1688_p1;
wire   [63:0] zext_ln12_3_fu_1728_p1;
wire   [63:0] zext_ln12_8_fu_1799_p1;
wire   [63:0] zext_ln12_11_fu_1895_p1;
wire   [63:0] zext_ln12_5_fu_2068_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_6_fu_2093_p1;
wire   [63:0] zext_ln12_9_fu_2138_p1;
wire   [63:0] zext_ln12_10_fu_2145_p1;
wire   [63:0] zext_ln12_12_fu_2175_p1;
wire   [63:0] zext_ln12_17_fu_2240_p1;
wire   [63:0] zext_ln12_4_fu_2248_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_7_fu_2282_p1;
reg    ap_predicate_pred809_state4;
reg    ap_predicate_pred811_state4;
reg    ap_predicate_pred813_state4;
reg    ap_predicate_pred815_state4;
wire   [63:0] zext_ln12_13_fu_2312_p1;
wire   [63:0] zext_ln12_14_fu_2319_p1;
wire   [63:0] zext_ln12_15_fu_2348_p1;
wire   [63:0] zext_ln12_16_fu_2378_p1;
reg    ap_predicate_pred876_state10;
reg    ap_predicate_pred881_state10;
reg    ap_predicate_pred886_state10;
reg    ap_predicate_pred891_state10;
reg   [63:0] c_fu_184;
wire   [63:0] add_ln8_fu_1919_p2;
wire    ap_loop_init;
reg    orig_0_ce1_local;
reg   [8:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [8:0] orig_0_address0_local;
reg    orig_4_ce1_local;
reg   [8:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [8:0] orig_4_address0_local;
reg    orig_8_ce1_local;
reg   [8:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [8:0] orig_8_address0_local;
reg    orig_12_ce1_local;
reg   [8:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [8:0] orig_12_address0_local;
reg    orig_1_ce1_local;
reg   [8:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [8:0] orig_1_address0_local;
reg    orig_5_ce1_local;
reg   [8:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [8:0] orig_5_address0_local;
reg    orig_9_ce1_local;
reg   [8:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [8:0] orig_9_address0_local;
reg    orig_13_ce1_local;
reg   [8:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [8:0] orig_13_address0_local;
reg    orig_2_ce1_local;
reg   [8:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [8:0] orig_2_address0_local;
reg    orig_6_ce1_local;
reg   [8:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [8:0] orig_6_address0_local;
reg    orig_10_ce1_local;
reg   [8:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [8:0] orig_10_address0_local;
reg    orig_14_ce1_local;
reg   [8:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [8:0] orig_14_address0_local;
reg    orig_3_ce1_local;
reg   [8:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [8:0] orig_3_address0_local;
reg    orig_7_ce1_local;
reg   [8:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [8:0] orig_7_address0_local;
reg    orig_11_ce1_local;
reg   [8:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [8:0] orig_11_address0_local;
reg    orig_15_ce1_local;
reg   [8:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [8:0] orig_15_address0_local;
reg    sol_9_we0_local;
reg    sol_9_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_13_we0_local;
reg    sol_13_ce0_local;
reg    sol_8_we0_local;
reg    sol_8_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_12_we0_local;
reg    sol_12_ce0_local;
reg    sol_11_we0_local;
reg    sol_11_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_10_we0_local;
reg    sol_10_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_14_we0_local;
reg    sol_14_ce0_local;
reg  signed [31:0] grp_fu_1404_p0;
reg  signed [31:0] grp_fu_1404_p1;
reg  signed [31:0] grp_fu_1408_p0;
reg  signed [31:0] grp_fu_1408_p1;
reg  signed [31:0] grp_fu_1412_p0;
reg  signed [31:0] grp_fu_1412_p1;
reg  signed [31:0] grp_fu_1416_p0;
reg  signed [31:0] grp_fu_1416_p1;
reg  signed [31:0] grp_fu_1420_p0;
reg  signed [31:0] grp_fu_1420_p1;
reg  signed [31:0] grp_fu_1424_p0;
reg  signed [31:0] grp_fu_1424_p1;
reg  signed [31:0] grp_fu_1428_p0;
reg  signed [31:0] grp_fu_1428_p1;
reg  signed [31:0] grp_fu_1432_p0;
reg  signed [31:0] grp_fu_1432_p1;
reg  signed [31:0] grp_fu_1436_p0;
reg  signed [31:0] grp_fu_1436_p1;
reg  signed [31:0] grp_fu_1440_p0;
reg  signed [31:0] grp_fu_1440_p1;
reg  signed [31:0] grp_fu_1444_p0;
reg  signed [31:0] grp_fu_1444_p1;
reg  signed [31:0] grp_fu_1448_p0;
reg  signed [31:0] grp_fu_1448_p1;
wire   [31:0] grp_fu_1452_p9;
wire   [31:0] grp_fu_1475_p9;
wire   [31:0] grp_fu_1498_p9;
wire   [31:0] grp_fu_1521_p9;
wire   [31:0] grp_fu_1544_p9;
wire   [31:0] grp_fu_1567_p9;
wire   [12:0] trunc_ln8_1_fu_1646_p1;
wire   [8:0] trunc_ln_fu_1655_p4;
wire   [8:0] add_ln12_fu_1665_p2;
wire   [12:0] empty_11_fu_1650_p2;
wire   [8:0] lshr_ln12_1_fu_1678_p4;
wire   [8:0] add_ln5_fu_1705_p2;
wire   [12:0] empty_12_fu_1700_p2;
wire   [8:0] lshr_ln12_2_fu_1718_p4;
wire   [8:0] add_ln5_2_fu_1745_p2;
wire   [12:0] empty_13_fu_1740_p2;
wire   [11:0] tmp_27_fu_1766_p4;
wire   [12:0] empty_16_fu_1784_p2;
wire   [8:0] lshr_ln12_6_fu_1789_p4;
wire   [61:0] tmp_28_fu_1807_p4;
wire   [63:0] or_ln8_1_fu_1817_p3;
wire   [12:0] empty_17_fu_1849_p2;
wire   [12:0] add_ln12_1_fu_1864_p2;
wire   [12:0] empty_18_fu_1880_p2;
wire   [8:0] lshr_ln12_9_fu_1885_p4;
wire   [12:0] add_ln12_2_fu_1903_p2;
wire   [31:0] tmp_fu_1930_p9;
wire   [31:0] tmp_1_fu_1953_p9;
wire   [31:0] tmp_2_fu_1976_p9;
wire   [31:0] tmp_3_fu_1999_p9;
wire   [31:0] tmp_4_fu_2022_p9;
wire   [31:0] tmp_5_fu_2045_p9;
wire   [12:0] empty_14_fu_2079_p2;
wire   [8:0] lshr_ln12_4_fu_2083_p4;
wire   [12:0] empty_15_fu_2101_p2;
wire   [31:0] tmp_10_fu_2115_p9;
wire   [31:0] tmp_15_fu_2152_p9;
wire   [12:0] empty_19_fu_2182_p2;
wire   [12:0] add_ln12_3_fu_2196_p2;
wire   [12:0] add_ln12_7_fu_2219_p2;
wire   [12:0] add_ln12_6_fu_2225_p2;
wire   [8:0] lshr_ln12_14_fu_2230_p4;
wire   [31:0] tmp_7_fu_2259_p9;
wire   [31:0] tmp_16_fu_2289_p9;
wire   [12:0] tmp_31_fu_2326_p3;
wire   [12:0] add_ln12_4_fu_2333_p2;
wire   [8:0] lshr_ln12_12_fu_2338_p4;
wire   [12:0] tmp_32_fu_2356_p3;
wire   [12:0] add_ln12_5_fu_2363_p2;
wire   [8:0] lshr_ln12_13_fu_2368_p4;
wire   [31:0] tmp_6_fu_2386_p9;
wire   [31:0] tmp_20_fu_2409_p9;
wire   [31:0] add_ln13_12_fu_2438_p2;
wire   [31:0] add_ln13_4_fu_2450_p2;
wire   [31:0] add_ln13_11_fu_2467_p2;
wire   [31:0] add_ln13_28_fu_2478_p2;
wire   [31:0] add_ln13_3_fu_2495_p2;
wire   [31:0] add_ln13_8_fu_2504_p2;
wire   [31:0] add_ln13_10_fu_2508_p2;
wire   [31:0] add_ln13_20_fu_2528_p2;
wire   [31:0] add_ln13_27_fu_2550_p2;
wire   [31:0] add_ln13_2_fu_2560_p2;
wire   [31:0] add_ln13_19_fu_2569_p2;
wire   [31:0] add_ln13_26_fu_2578_p2;
wire   [31:0] add_ln13_18_fu_2587_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] grp_fu_1452_p1;
wire   [3:0] grp_fu_1452_p3;
wire  signed [3:0] grp_fu_1452_p5;
wire  signed [3:0] grp_fu_1452_p7;
wire   [3:0] grp_fu_1475_p1;
wire   [3:0] grp_fu_1475_p3;
wire  signed [3:0] grp_fu_1475_p5;
wire  signed [3:0] grp_fu_1475_p7;
wire   [3:0] grp_fu_1498_p1;
wire   [3:0] grp_fu_1498_p3;
wire  signed [3:0] grp_fu_1498_p5;
wire  signed [3:0] grp_fu_1498_p7;
wire  signed [3:0] grp_fu_1521_p1;
wire   [3:0] grp_fu_1521_p3;
wire   [3:0] grp_fu_1521_p5;
wire  signed [3:0] grp_fu_1521_p7;
wire   [3:0] grp_fu_1544_p1;
wire   [3:0] grp_fu_1544_p3;
wire  signed [3:0] grp_fu_1544_p5;
wire  signed [3:0] grp_fu_1544_p7;
wire  signed [3:0] grp_fu_1567_p1;
wire   [3:0] grp_fu_1567_p3;
wire   [3:0] grp_fu_1567_p5;
wire  signed [3:0] grp_fu_1567_p7;
wire   [3:0] tmp_fu_1930_p1;
wire   [3:0] tmp_fu_1930_p3;
wire  signed [3:0] tmp_fu_1930_p5;
wire  signed [3:0] tmp_fu_1930_p7;
wire   [3:0] tmp_1_fu_1953_p1;
wire   [3:0] tmp_1_fu_1953_p3;
wire  signed [3:0] tmp_1_fu_1953_p5;
wire  signed [3:0] tmp_1_fu_1953_p7;
wire   [3:0] tmp_2_fu_1976_p1;
wire   [3:0] tmp_2_fu_1976_p3;
wire  signed [3:0] tmp_2_fu_1976_p5;
wire  signed [3:0] tmp_2_fu_1976_p7;
wire   [3:0] tmp_3_fu_1999_p1;
wire   [3:0] tmp_3_fu_1999_p3;
wire  signed [3:0] tmp_3_fu_1999_p5;
wire  signed [3:0] tmp_3_fu_1999_p7;
wire   [3:0] tmp_4_fu_2022_p1;
wire   [3:0] tmp_4_fu_2022_p3;
wire  signed [3:0] tmp_4_fu_2022_p5;
wire  signed [3:0] tmp_4_fu_2022_p7;
wire   [3:0] tmp_5_fu_2045_p1;
wire   [3:0] tmp_5_fu_2045_p3;
wire  signed [3:0] tmp_5_fu_2045_p5;
wire  signed [3:0] tmp_5_fu_2045_p7;
wire   [3:0] tmp_10_fu_2115_p1;
wire   [3:0] tmp_10_fu_2115_p3;
wire  signed [3:0] tmp_10_fu_2115_p5;
wire  signed [3:0] tmp_10_fu_2115_p7;
wire   [3:0] tmp_15_fu_2152_p1;
wire   [3:0] tmp_15_fu_2152_p3;
wire  signed [3:0] tmp_15_fu_2152_p5;
wire  signed [3:0] tmp_15_fu_2152_p7;
wire   [3:0] tmp_7_fu_2259_p1;
wire   [3:0] tmp_7_fu_2259_p3;
wire  signed [3:0] tmp_7_fu_2259_p5;
wire  signed [3:0] tmp_7_fu_2259_p7;
wire  signed [3:0] tmp_16_fu_2289_p1;
wire   [3:0] tmp_16_fu_2289_p3;
wire   [3:0] tmp_16_fu_2289_p5;
wire  signed [3:0] tmp_16_fu_2289_p7;
wire   [3:0] tmp_6_fu_2386_p1;
wire   [3:0] tmp_6_fu_2386_p3;
wire  signed [3:0] tmp_6_fu_2386_p5;
wire  signed [3:0] tmp_6_fu_2386_p7;
wire  signed [3:0] tmp_20_fu_2409_p1;
wire   [3:0] tmp_20_fu_2409_p3;
wire   [3:0] tmp_20_fu_2409_p5;
wire  signed [3:0] tmp_20_fu_2409_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_184 = 64'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1404_p0),.din1(grp_fu_1404_p1),.ce(1'b1),.dout(grp_fu_1404_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1408_p0),.din1(grp_fu_1408_p1),.ce(1'b1),.dout(grp_fu_1408_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1412_p0),.din1(grp_fu_1412_p1),.ce(1'b1),.dout(grp_fu_1412_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1416_p0),.din1(grp_fu_1416_p1),.ce(1'b1),.dout(grp_fu_1416_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1420_p0),.din1(grp_fu_1420_p1),.ce(1'b1),.dout(grp_fu_1420_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1424_p0),.din1(grp_fu_1424_p1),.ce(1'b1),.dout(grp_fu_1424_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1428_p0),.din1(grp_fu_1428_p1),.ce(1'b1),.dout(grp_fu_1428_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1432_p0),.din1(grp_fu_1432_p1),.ce(1'b1),.dout(grp_fu_1432_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1436_p0),.din1(grp_fu_1436_p1),.ce(1'b1),.dout(grp_fu_1436_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1440_p0),.din1(grp_fu_1440_p1),.ce(1'b1),.dout(grp_fu_1440_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1444_p0),.din1(grp_fu_1444_p1),.ce(1'b1),.dout(grp_fu_1444_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1448_p0),.din1(grp_fu_1448_p1),.ce(1'b1),.dout(grp_fu_1448_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U13(.din0(orig_2_q1),.din1(orig_6_q1),.din2(orig_10_q1),.din3(orig_14_q1),.def(grp_fu_1452_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1452_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U14(.din0(orig_3_q1),.din1(orig_7_q1),.din2(orig_11_q1),.din3(orig_15_q1),.def(grp_fu_1475_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1475_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U15(.din0(orig_3_q0),.din1(orig_7_q0),.din2(orig_11_q0),.din3(orig_15_q0),.def(grp_fu_1498_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1498_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U16(.din0(orig_0_q0),.din1(orig_4_q0),.din2(orig_8_q0),.din3(orig_12_q0),.def(grp_fu_1521_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1521_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U17(.din0(orig_2_q0),.din1(orig_6_q0),.din2(orig_10_q0),.din3(orig_14_q0),.def(grp_fu_1544_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1544_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U18(.din0(orig_1_q0),.din1(orig_5_q0),.din2(orig_9_q0),.din3(orig_13_q0),.def(grp_fu_1567_p9),.sel(trunc_ln8_reg_2716),.dout(grp_fu_1567_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U19(.din0(orig_0_q1),.din1(orig_4_q1),.din2(orig_8_q1),.din3(orig_12_q1),.def(tmp_fu_1930_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_fu_1930_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U20(.din0(orig_1_q1),.din1(orig_5_q1),.din2(orig_9_q1),.din3(orig_13_q1),.def(tmp_1_fu_1953_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_1_fu_1953_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U21(.din0(orig_2_q1),.din1(orig_6_q1),.din2(orig_10_q1),.din3(orig_14_q1),.def(tmp_2_fu_1976_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_2_fu_1976_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U22(.din0(orig_0_q0),.din1(orig_4_q0),.din2(orig_8_q0),.din3(orig_12_q0),.def(tmp_3_fu_1999_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_3_fu_1999_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U23(.din0(orig_1_q0),.din1(orig_5_q0),.din2(orig_9_q0),.din3(orig_13_q0),.def(tmp_4_fu_2022_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_4_fu_2022_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U24(.din0(orig_2_q0),.din1(orig_6_q0),.din2(orig_10_q0),.din3(orig_14_q0),.def(tmp_5_fu_2045_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_5_fu_2045_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U25(.din0(orig_3_q1),.din1(orig_7_q1),.din2(orig_11_q1),.din3(orig_15_q1),.def(tmp_10_fu_2115_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_10_fu_2115_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U26(.din0(orig_3_q0),.din1(orig_7_q0),.din2(orig_11_q0),.din3(orig_15_q0),.def(tmp_15_fu_2152_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_15_fu_2152_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U27(.din0(orig_1_q0),.din1(orig_5_q0),.din2(orig_9_q0),.din3(orig_13_q0),.def(tmp_7_fu_2259_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_7_fu_2259_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U28(.din0(orig_0_q1),.din1(orig_4_q1),.din2(orig_8_q1),.din3(orig_12_q1),.def(tmp_16_fu_2289_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_16_fu_2289_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U29(.din0(orig_0_q0),.din1(orig_4_q0),.din2(orig_8_q0),.din3(orig_12_q0),.def(tmp_6_fu_2386_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_6_fu_2386_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U30(.din0(orig_1_q1),.din1(orig_5_q1),.din2(orig_9_q1),.din3(orig_13_q1),.def(tmp_20_fu_2409_p9),.sel(trunc_ln8_reg_2716),.dout(tmp_20_fu_2409_p11));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_184 <= 64'd0;
    end else if (((icmp_ln8_fu_1843_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c_fu_184 <= add_ln8_fu_1919_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_13_reg_3473 <= add_ln13_13_fu_2444_p2;
        add_ln13_1_reg_3463 <= add_ln13_1_fu_2432_p2;
        add_ln13_22_reg_3599 <= add_ln13_22_fu_2573_p2;
        ap_predicate_pred809_state4 <= ((icmp_ln8_reg_2936 == 1'd1) & (trunc_ln8_reg_2716 == 4'd0));
        ap_predicate_pred811_state4 <= ((icmp_ln8_reg_2936 == 1'd1) & (trunc_ln8_reg_2716 == 4'd4));
        ap_predicate_pred813_state4 <= ((icmp_ln8_reg_2936 == 1'd1) & (trunc_ln8_reg_2716 == 4'd8));
        ap_predicate_pred815_state4 <= ((icmp_ln8_reg_2936 == 1'd1) & (trunc_ln8_reg_2716 == 4'd12));
        ap_predicate_pred876_state10 <= ((icmp_ln8_reg_2936_pp0_iter2_reg == 1'd1) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8));
        ap_predicate_pred881_state10 <= ((icmp_ln8_reg_2936_pp0_iter2_reg == 1'd1) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4));
        ap_predicate_pred886_state10 <= ((icmp_ln8_reg_2936_pp0_iter2_reg == 1'd1) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0));
        ap_predicate_pred891_state10 <= (~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (icmp_ln8_reg_2936_pp0_iter2_reg == 1'd1));
        lshr_ln12_10_reg_3165 <= {{empty_19_fu_2182_p2[12:4]}};
        lshr_ln12_11_reg_3170 <= {{add_ln12_3_fu_2196_p2[12:4]}};
        lshr_ln12_5_reg_3069 <= {{empty_15_fu_2101_p2[12:4]}};
        or_ln8_2_reg_3175[12 : 2] <= or_ln8_2_fu_2212_p3[12 : 2];
        temp_3_reg_3604 <= temp_3_fu_2582_p2;
        temp_reg_3591 <= temp_fu_2564_p2;
        tmp_10_reg_3074 <= tmp_10_fu_2115_p11;
        tmp_15_reg_3139 <= tmp_15_fu_2152_p11;
        tmp_1_reg_2980 <= tmp_1_fu_1953_p11;
        tmp_2_reg_2986 <= tmp_2_fu_1976_p11;
        tmp_3_reg_2992 <= tmp_3_fu_1999_p11;
        tmp_4_reg_2997 <= tmp_4_fu_2022_p11;
        tmp_5_reg_3003 <= tmp_5_fu_2045_p11;
        tmp_reg_2975 <= tmp_fu_1930_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_14_reg_3513 <= add_ln13_14_fu_2473_p2;
        add_ln13_29_reg_3538 <= add_ln13_29_fu_2484_p2;
        add_ln13_5_reg_3498 <= add_ln13_5_fu_2455_p2;
        add_ln13_9_reg_3508 <= add_ln13_9_fu_2461_p2;
        temp_2_reg_3612 <= temp_2_fu_2591_p2;
        tmp_16_reg_3295 <= tmp_16_fu_2289_p11;
        tmp_7_reg_3221 <= tmp_7_fu_2259_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_16_reg_3561 <= add_ln13_16_fu_2518_p2;
        add_ln13_17_reg_3566 <= add_ln13_17_fu_2523_p2;
        add_ln13_21_reg_3571 <= add_ln13_21_fu_2533_p2;
        add_ln13_24_reg_3576 <= add_ln13_24_fu_2539_p2;
        add_ln13_25_reg_3581 <= add_ln13_25_fu_2545_p2;
        add_ln13_30_reg_3586 <= add_ln13_30_fu_2555_p2;
        add_ln13_6_reg_3548 <= add_ln13_6_fu_2499_p2;
        add_ln13_reg_3543 <= add_ln13_fu_2489_p2;
        add_ln5_1_reg_2890 <= add_ln5_1_fu_1751_p2;
        icmp_ln8_reg_2936 <= icmp_ln8_fu_1843_p2;
        icmp_ln8_reg_2936_pp0_iter1_reg <= icmp_ln8_reg_2936;
        icmp_ln8_reg_2936_pp0_iter2_reg <= icmp_ln8_reg_2936_pp0_iter1_reg;
        lshr_ln12_3_reg_2895 <= {{empty_13_fu_1740_p2[12:4]}};
        lshr_ln12_7_reg_2940 <= {{empty_17_fu_1849_p2[12:4]}};
        lshr_ln12_8_reg_2945 <= {{add_ln12_1_fu_1864_p2[12:4]}};
        lshr_ln12_s_reg_2970 <= {{add_ln12_2_fu_1903_p2[12:4]}};
        or_ln8_3_reg_2931[12 : 2] <= or_ln8_3_fu_1835_p3[12 : 2];
        or_ln8_reg_2900[12 : 1] <= or_ln8_fu_1776_p3[12 : 1];
        temp_1_reg_3553 <= temp_1_fu_2513_p2;
        tmp_20_reg_3448 <= tmp_20_fu_2409_p11;
        tmp_30_reg_2926 <= {{c_fu_184[12:2]}};
        tmp_6_reg_3406 <= tmp_6_fu_2386_p11;
        trunc_ln8_reg_2716 <= trunc_ln8_fu_1642_p1;
        trunc_ln8_reg_2716_pp0_iter1_reg <= trunc_ln8_reg_2716;
        trunc_ln8_reg_2716_pp0_iter2_reg <= trunc_ln8_reg_2716_pp0_iter1_reg;
        zext_ln12_2_reg_2822[8 : 0] <= zext_ln12_2_fu_1710_p1[8 : 0];
        zext_ln12_reg_2738[8 : 0] <= zext_ln12_fu_1670_p1[8 : 0];
        zext_ln12_reg_2738_pp0_iter1_reg[8 : 0] <= zext_ln12_reg_2738[8 : 0];
        zext_ln12_reg_2738_pp0_iter2_reg[8 : 0] <= zext_ln12_reg_2738_pp0_iter1_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_10_reg_3503 <= grp_fu_1408_p2;
        mul_ln13_19_reg_3518 <= grp_fu_1412_p2;
        mul_ln13_22_reg_3523 <= grp_fu_1420_p2;
        mul_ln13_26_reg_3528 <= grp_fu_1432_p2;
        mul_ln13_32_reg_3533 <= grp_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_18_reg_3478 <= grp_fu_1424_p2;
        mul_ln13_20_reg_3483 <= grp_fu_1428_p2;
        mul_ln13_29_reg_3488 <= grp_fu_1436_p2;
        mul_ln13_33_reg_3493 <= grp_fu_1448_p2;
        mul_ln13_3_reg_3458 <= grp_fu_1404_p2;
        mul_ln13_9_reg_3468 <= grp_fu_1412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_2_reg_3411 <= grp_fu_1412_p2;
        mul_ln13_4_reg_3416 <= grp_fu_1416_p2;
        tmp_11_reg_3426 <= grp_fu_1452_p11;
        tmp_17_reg_3431 <= grp_fu_1544_p11;
        tmp_18_reg_3436 <= grp_fu_1498_p11;
        tmp_19_reg_3442 <= grp_fu_1521_p11;
        tmp_21_reg_3453 <= grp_fu_1567_p11;
        tmp_s_reg_3421 <= grp_fu_1475_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1590 <= grp_fu_1404_p2;
        reg_1602 <= grp_fu_1424_p2;
        reg_1606 <= grp_fu_1428_p2;
        reg_1614 <= grp_fu_1436_p2;
        reg_1626 <= grp_fu_1448_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1594 <= grp_fu_1408_p2;
        reg_1598 <= grp_fu_1420_p2;
        reg_1610 <= grp_fu_1432_p2;
        reg_1622 <= grp_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1618 <= grp_fu_1440_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1630 <= grp_fu_1416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_12_reg_3278 <= grp_fu_1498_p11;
        tmp_13_reg_3284 <= grp_fu_1521_p11;
        tmp_14_reg_3290 <= grp_fu_1544_p11;
        tmp_22_reg_3401 <= grp_fu_1567_p11;
        tmp_8_reg_3227 <= grp_fu_1452_p11;
        tmp_9_reg_3233 <= grp_fu_1475_p11;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_2936 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_2936_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1404_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1404_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1404_p0 = filter_load_2;
        end else begin
            grp_fu_1404_p0 = 'bx;
        end
    end else begin
        grp_fu_1404_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1404_p1 = tmp_6_reg_3406;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1404_p1 = tmp_8_reg_3227;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1404_p1 = tmp_2_reg_2986;
        end else begin
            grp_fu_1404_p1 = 'bx;
        end
    end else begin
        grp_fu_1404_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1408_p0 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1408_p0 = filter_load_5;
    end else begin
        grp_fu_1408_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1408_p1 = tmp_s_reg_3421;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1408_p1 = tmp_7_reg_3221;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1408_p1 = tmp_5_reg_3003;
        end else begin
            grp_fu_1408_p1 = 'bx;
        end
    end else begin
        grp_fu_1408_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1412_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1412_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1412_p0 = filter_load_1;
        end else begin
            grp_fu_1412_p0 = 'bx;
        end
    end else begin
        grp_fu_1412_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1412_p1 = tmp_16_reg_3295;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1412_p1 = tmp_9_reg_3233;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1412_p1 = tmp_1_reg_2980;
        end else begin
            grp_fu_1412_p1 = 'bx;
        end
    end else begin
        grp_fu_1412_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1416_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1416_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1416_p0 = filter_load;
        end else begin
            grp_fu_1416_p0 = 'bx;
        end
    end else begin
        grp_fu_1416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1416_p1 = tmp_19_reg_3442;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1416_p1 = tmp_7_reg_3221;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1416_p1 = tmp_reg_2975;
        end else begin
            grp_fu_1416_p1 = 'bx;
        end
    end else begin
        grp_fu_1416_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1420_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1420_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1420_p0 = filter_load_4;
        end else begin
            grp_fu_1420_p0 = 'bx;
        end
    end else begin
        grp_fu_1420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1420_p1 = tmp_11_reg_3426;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1420_p1 = tmp_8_reg_3227;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1420_p1 = tmp_4_reg_2997;
        end else begin
            grp_fu_1420_p1 = 'bx;
        end
    end else begin
        grp_fu_1420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1424_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1424_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1424_p0 = filter_load_3;
        end else begin
            grp_fu_1424_p0 = 'bx;
        end
    end else begin
        grp_fu_1424_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1424_p1 = tmp_17_reg_3431;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1424_p1 = tmp_13_reg_3284;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1424_p1 = tmp_3_reg_2992;
        end else begin
            grp_fu_1424_p1 = 'bx;
        end
    end else begin
        grp_fu_1424_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1428_p0 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1428_p0 = filter_load_1;
    end else begin
        grp_fu_1428_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1428_p1 = tmp_15_reg_3139;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1428_p1 = tmp_12_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1428_p1 = tmp_2_reg_2986;
        end else begin
            grp_fu_1428_p1 = 'bx;
        end
    end else begin
        grp_fu_1428_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1432_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1432_p0 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1432_p0 = filter_load_8;
        end else begin
            grp_fu_1432_p0 = 'bx;
        end
    end else begin
        grp_fu_1432_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1432_p1 = tmp_18_reg_3436;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1432_p1 = tmp_14_reg_3290;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1432_p1 = tmp_10_reg_3074;
        end else begin
            grp_fu_1432_p1 = 'bx;
        end
    end else begin
        grp_fu_1432_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1436_p0 = filter_load_2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1436_p0 = filter_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1436_p0 = filter_load;
        end else begin
            grp_fu_1436_p0 = 'bx;
        end
    end else begin
        grp_fu_1436_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1436_p1 = tmp_20_reg_3448;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1436_p1 = tmp_13_reg_3284;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1436_p1 = tmp_1_reg_2980;
        end else begin
            grp_fu_1436_p1 = 'bx;
        end
    end else begin
        grp_fu_1436_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1440_p0 = filter_load_5;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1440_p0 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1440_p0 = filter_load_4;
        end else begin
            grp_fu_1440_p0 = 'bx;
        end
    end else begin
        grp_fu_1440_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1440_p1 = tmp_21_reg_3453;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1440_p1 = tmp_22_reg_3401;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1440_p1 = tmp_5_reg_3003;
        end else begin
            grp_fu_1440_p1 = 'bx;
        end
    end else begin
        grp_fu_1440_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1444_p0 = filter_load_6;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1444_p0 = filter_load;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1444_p0 = filter_load_3;
        end else begin
            grp_fu_1444_p0 = 'bx;
        end
    end else begin
        grp_fu_1444_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1444_p1 = tmp_18_reg_3436;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1444_p1 = tmp_12_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1444_p1 = tmp_4_reg_2997;
        end else begin
            grp_fu_1444_p1 = 'bx;
        end
    end else begin
        grp_fu_1444_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1448_p0 = filter_load_7;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1448_p0 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1448_p0 = filter_load_3;
        end else begin
            grp_fu_1448_p0 = 'bx;
        end
    end else begin
        grp_fu_1448_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1448_p1 = tmp_19_reg_3442;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1448_p1 = tmp_16_reg_3295;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1448_p1 = tmp_15_reg_3139;
        end else begin
            grp_fu_1448_p1 = 'bx;
        end
    end else begin
        grp_fu_1448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_predicate_pred815_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_14_fu_2319_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln12_10_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1710_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_12_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_fu_1670_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred815_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address0_local = zext_ln12_2_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address1_local = zext_ln12_reg_2738;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_10_address1_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_13_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address0_local = zext_ln12_9_fu_2138_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_11_fu_1895_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address1_local = zext_ln12_7_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_11_address1_local = zext_ln12_6_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address1_local = zext_ln12_8_fu_1799_p1;
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred813_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_14_fu_2319_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_12_address0_local = zext_ln12_10_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_2_fu_1710_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_12_address1_local = zext_ln12_12_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_12_address1_local = zext_ln12_fu_1670_p1;
        end else begin
            orig_12_address1_local = 'bx;
        end
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred813_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_16_fu_2378_p1;
    end else if (((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address0_local = zext_ln12_17_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_13_address0_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address1_local = zext_ln12_15_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address0_local = zext_ln12_2_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address1_local = zext_ln12_reg_2738;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_14_address1_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_13_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address0_local = zext_ln12_9_fu_2138_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_11_fu_1895_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address1_local = zext_ln12_7_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_15_address1_local = zext_ln12_6_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address1_local = zext_ln12_8_fu_1799_p1;
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_16_fu_2378_p1;
    end else if (((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_17_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln12_15_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln12_2_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address1_local = zext_ln12_reg_2738;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address1_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_13_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln12_9_fu_2138_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_11_fu_1895_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address1_local = zext_ln12_7_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address1_local = zext_ln12_6_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address1_local = zext_ln12_8_fu_1799_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred809_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_14_fu_2319_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln12_10_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_2_fu_1710_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_4_address1_local = zext_ln12_12_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address1_local = zext_ln12_fu_1670_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred809_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_16_fu_2378_p1;
    end else if (((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln12_17_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address1_local = zext_ln12_15_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln12_2_reg_2822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address1_local = zext_ln12_reg_2738;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address1_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_13_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln12_9_fu_2138_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_11_fu_1895_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address1_local = zext_ln12_7_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address1_local = zext_ln12_6_fu_2093_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address1_local = zext_ln12_8_fu_1799_p1;
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred811_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_14_fu_2319_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_4_fu_2248_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_8_address0_local = zext_ln12_10_fu_2145_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_2_fu_1710_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_8_address1_local = zext_ln12_12_fu_2175_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_8_address1_local = zext_ln12_fu_1670_p1;
        end else begin
            orig_8_address1_local = 'bx;
        end
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred811_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_16_fu_2378_p1;
    end else if (((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln12_17_fu_2240_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_9_address0_local = zext_ln12_5_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_3_fu_1728_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address1_local = zext_ln12_15_fu_2348_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address1_local = zext_ln12_1_fu_1688_p1;
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln8_reg_2936 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred876_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & ~(trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_ce0_local = 1'b1;
    end else begin
        sol_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred891_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred886_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred881_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln8_reg_2716_pp0_iter2_reg == 4'd8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_1864_p2 = (empty_17_fu_1849_p2 + 13'd2);
assign add_ln12_2_fu_1903_p2 = (empty_18_fu_1880_p2 + 13'd2);
assign add_ln12_3_fu_2196_p2 = (empty_19_fu_2182_p2 + 13'd2);
assign add_ln12_4_fu_2333_p2 = (or_ln8_2_reg_3175 + tmp_31_fu_2326_p3);
assign add_ln12_5_fu_2363_p2 = (or_ln8_2_reg_3175 + tmp_32_fu_2356_p3);
assign add_ln12_6_fu_2225_p2 = (add_ln12_7_fu_2219_p2 + tmp_23);
assign add_ln12_7_fu_2219_p2 = (or_ln8_2_fu_2212_p3 + 13'd130);
assign add_ln12_fu_1665_p2 = (trunc_ln_fu_1655_p4 + tmp_25);
assign add_ln13_10_fu_2508_p2 = (add_ln13_9_reg_3508 + add_ln13_8_fu_2504_p2);
assign add_ln13_11_fu_2467_p2 = (reg_1614 + reg_1606);
assign add_ln13_12_fu_2438_p2 = (reg_1622 + reg_1610);
assign add_ln13_13_fu_2444_p2 = (add_ln13_12_fu_2438_p2 + reg_1618);
assign add_ln13_14_fu_2473_p2 = (add_ln13_13_reg_3473 + add_ln13_11_fu_2467_p2);
assign add_ln13_16_fu_2518_p2 = (reg_1602 + mul_ln13_26_reg_3528);
assign add_ln13_17_fu_2523_p2 = (mul_ln13_19_reg_3518 + reg_1606);
assign add_ln13_18_fu_2587_p2 = (add_ln13_17_reg_3566 + add_ln13_16_reg_3561);
assign add_ln13_19_fu_2569_p2 = (mul_ln13_22_reg_3523 + mul_ln13_20_reg_3483);
assign add_ln13_1_fu_2432_p2 = (reg_1594 + reg_1598);
assign add_ln13_20_fu_2528_p2 = (mul_ln13_18_reg_3478 + reg_1630);
assign add_ln13_21_fu_2533_p2 = (add_ln13_20_fu_2528_p2 + reg_1610);
assign add_ln13_22_fu_2573_p2 = (add_ln13_21_reg_3571 + add_ln13_19_fu_2569_p2);
assign add_ln13_24_fu_2539_p2 = (reg_1614 + reg_1618);
assign add_ln13_25_fu_2545_p2 = (reg_1626 + mul_ln13_32_reg_3533);
assign add_ln13_26_fu_2578_p2 = (add_ln13_25_reg_3581 + add_ln13_24_reg_3576);
assign add_ln13_27_fu_2550_p2 = (reg_1622 + mul_ln13_29_reg_3488);
assign add_ln13_28_fu_2478_p2 = (reg_1626 + reg_1618);
assign add_ln13_29_fu_2484_p2 = (add_ln13_28_fu_2478_p2 + mul_ln13_33_reg_3493);
assign add_ln13_2_fu_2560_p2 = (add_ln13_1_reg_3463 + add_ln13_reg_3543);
assign add_ln13_30_fu_2555_p2 = (add_ln13_29_reg_3538 + add_ln13_27_fu_2550_p2);
assign add_ln13_3_fu_2495_p2 = (mul_ln13_4_reg_3416 + mul_ln13_2_reg_3411);
assign add_ln13_4_fu_2450_p2 = (reg_1590 + mul_ln13_3_reg_3458);
assign add_ln13_5_fu_2455_p2 = (add_ln13_4_fu_2450_p2 + reg_1602);
assign add_ln13_6_fu_2499_p2 = (add_ln13_5_reg_3498 + add_ln13_3_fu_2495_p2);
assign add_ln13_8_fu_2504_p2 = (mul_ln13_9_reg_3468 + mul_ln13_10_reg_3503);
assign add_ln13_9_fu_2461_p2 = (reg_1598 + reg_1630);
assign add_ln13_fu_2489_p2 = (reg_1590 + reg_1594);
assign add_ln5_1_fu_1751_p2 = (add_ln5_2_fu_1745_p2 + tmp_25);
assign add_ln5_2_fu_1745_p2 = (trunc_ln_fu_1655_p4 + 9'd8);
assign add_ln5_fu_1705_p2 = (trunc_ln_fu_1655_p4 + tmp_26);
assign add_ln8_fu_1919_p2 = (c_fu_184 + 64'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_11_fu_1650_p2 = (trunc_ln8_1_fu_1646_p1 + tmp_23);
assign empty_12_fu_1700_p2 = (trunc_ln8_1_fu_1646_p1 + tmp_24);
assign empty_13_fu_1740_p2 = (trunc_ln8_1_fu_1646_p1 + empty);
assign empty_14_fu_2079_p2 = (or_ln8_reg_2900 + tmp_23);
assign empty_15_fu_2101_p2 = (or_ln8_reg_2900 + tmp_24);
assign empty_16_fu_1784_p2 = (or_ln8_fu_1776_p3 + empty);
assign empty_17_fu_1849_p2 = (or_ln8_3_fu_1835_p3 + tmp_23);
assign empty_18_fu_1880_p2 = (or_ln8_3_fu_1835_p3 + tmp_24);
assign empty_19_fu_2182_p2 = (or_ln8_3_reg_2931 + empty);
assign grp_fu_1452_p9 = 'bx;
assign grp_fu_1475_p9 = 'bx;
assign grp_fu_1498_p9 = 'bx;
assign grp_fu_1521_p9 = 'bx;
assign grp_fu_1544_p9 = 'bx;
assign grp_fu_1567_p9 = 'bx;
assign icmp_ln8_fu_1843_p2 = (($signed(or_ln8_1_fu_1817_p3) < $signed(64'd62)) ? 1'b1 : 1'b0);
assign lshr_ln12_12_fu_2338_p4 = {{add_ln12_4_fu_2333_p2[12:4]}};
assign lshr_ln12_13_fu_2368_p4 = {{add_ln12_5_fu_2363_p2[12:4]}};
assign lshr_ln12_14_fu_2230_p4 = {{add_ln12_6_fu_2225_p2[12:4]}};
assign lshr_ln12_1_fu_1678_p4 = {{empty_11_fu_1650_p2[12:4]}};
assign lshr_ln12_2_fu_1718_p4 = {{empty_12_fu_1700_p2[12:4]}};
assign lshr_ln12_4_fu_2083_p4 = {{empty_14_fu_2079_p2[12:4]}};
assign lshr_ln12_6_fu_1789_p4 = {{empty_16_fu_1784_p2[12:4]}};
assign lshr_ln12_9_fu_1885_p4 = {{empty_18_fu_1880_p2[12:4]}};
assign or_ln8_1_fu_1817_p3 = {{tmp_28_fu_1807_p4}, {2'd2}};
assign or_ln8_2_fu_2212_p3 = {{tmp_30_reg_2926}, {2'd3}};
assign or_ln8_3_fu_1835_p3 = {{tmp_30_fu_1825_p4}, {2'd2}};
assign or_ln8_fu_1776_p3 = {{tmp_27_fu_1766_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = orig_15_address0_local;
assign orig_15_address1 = orig_15_address1_local;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign sol_0_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_3591;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = temp_2_reg_3612;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = temp_3_reg_3604;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = temp_reg_3591;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = temp_1_reg_3553;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = temp_2_reg_3612;
assign sol_14_we0 = sol_14_we0_local;
assign sol_15_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_d0 = temp_3_reg_3604;
assign sol_15_we0 = sol_15_we0_local;
assign sol_1_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_3553;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_2_reg_3612;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_3_reg_3604;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_3591;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_1_reg_3553;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_2_reg_3612;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_3_reg_3604;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = temp_reg_3591;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = zext_ln12_reg_2738_pp0_iter2_reg;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = temp_1_reg_3553;
assign sol_9_we0 = sol_9_we0_local;
assign temp_1_fu_2513_p2 = (add_ln13_14_reg_3513 + add_ln13_10_fu_2508_p2);
assign temp_2_fu_2591_p2 = (add_ln13_22_reg_3599 + add_ln13_18_fu_2587_p2);
assign temp_3_fu_2582_p2 = (add_ln13_30_reg_3586 + add_ln13_26_fu_2578_p2);
assign temp_fu_2564_p2 = (add_ln13_6_reg_3548 + add_ln13_2_fu_2560_p2);
assign tmp_10_fu_2115_p9 = 'bx;
assign tmp_15_fu_2152_p9 = 'bx;
assign tmp_16_fu_2289_p9 = 'bx;
assign tmp_1_fu_1953_p9 = 'bx;
assign tmp_20_fu_2409_p9 = 'bx;
assign tmp_27_fu_1766_p4 = {{c_fu_184[12:1]}};
assign tmp_28_fu_1807_p4 = {{c_fu_184[63:2]}};
assign tmp_2_fu_1976_p9 = 'bx;
assign tmp_30_fu_1825_p4 = {{c_fu_184[12:2]}};
assign tmp_31_fu_2326_p3 = {{r}, {6'd2}};
assign tmp_32_fu_2356_p3 = {{indvars_iv_next93}, {6'd2}};
assign tmp_3_fu_1999_p9 = 'bx;
assign tmp_4_fu_2022_p9 = 'bx;
assign tmp_5_fu_2045_p9 = 'bx;
assign tmp_6_fu_2386_p9 = 'bx;
assign tmp_7_fu_2259_p9 = 'bx;
assign tmp_fu_1930_p9 = 'bx;
assign trunc_ln8_1_fu_1646_p1 = c_fu_184[12:0];
assign trunc_ln8_fu_1642_p1 = c_fu_184[3:0];
assign trunc_ln_fu_1655_p4 = {{c_fu_184[12:4]}};
assign zext_ln12_10_fu_2145_p1 = lshr_ln12_8_reg_2945;
assign zext_ln12_11_fu_1895_p1 = lshr_ln12_9_fu_1885_p4;
assign zext_ln12_12_fu_2175_p1 = lshr_ln12_s_reg_2970;
assign zext_ln12_13_fu_2312_p1 = lshr_ln12_10_reg_3165;
assign zext_ln12_14_fu_2319_p1 = lshr_ln12_11_reg_3170;
assign zext_ln12_15_fu_2348_p1 = lshr_ln12_12_fu_2338_p4;
assign zext_ln12_16_fu_2378_p1 = lshr_ln12_13_fu_2368_p4;
assign zext_ln12_17_fu_2240_p1 = lshr_ln12_14_fu_2230_p4;
assign zext_ln12_1_fu_1688_p1 = lshr_ln12_1_fu_1678_p4;
assign zext_ln12_2_fu_1710_p1 = add_ln5_fu_1705_p2;
assign zext_ln12_3_fu_1728_p1 = lshr_ln12_2_fu_1718_p4;
assign zext_ln12_4_fu_2248_p1 = add_ln5_1_reg_2890;
assign zext_ln12_5_fu_2068_p1 = lshr_ln12_3_reg_2895;
assign zext_ln12_6_fu_2093_p1 = lshr_ln12_4_fu_2083_p4;
assign zext_ln12_7_fu_2282_p1 = lshr_ln12_5_reg_3069;
assign zext_ln12_8_fu_1799_p1 = lshr_ln12_6_fu_1789_p4;
assign zext_ln12_9_fu_2138_p1 = lshr_ln12_7_reg_2940;
assign zext_ln12_fu_1670_p1 = add_ln12_fu_1665_p2;
always @ (posedge ap_clk) begin
    zext_ln12_reg_2738[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2738_pp0_iter1_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2738_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_2822[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    or_ln8_reg_2900[0] <= 1'b1;
    or_ln8_3_reg_2931[1:0] <= 2'b10;
    or_ln8_2_reg_3175[1:0] <= 2'b11;
end
endmodule 