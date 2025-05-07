module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,zext_ln52_2,llike_address0,llike_ce0,llike_q0,min_s_34_out,min_s_34_out_ap_vld,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_1042_p_din0,grp_fu_1042_p_din1,grp_fu_1042_p_opcode,grp_fu_1042_p_dout0,grp_fu_1042_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 33'd1;
parameter    ap_ST_fsm_pp0_stage1 = 33'd2;
parameter    ap_ST_fsm_pp0_stage2 = 33'd4;
parameter    ap_ST_fsm_pp0_stage3 = 33'd8;
parameter    ap_ST_fsm_pp0_stage4 = 33'd16;
parameter    ap_ST_fsm_pp0_stage5 = 33'd32;
parameter    ap_ST_fsm_pp0_stage6 = 33'd64;
parameter    ap_ST_fsm_pp0_stage7 = 33'd128;
parameter    ap_ST_fsm_pp0_stage8 = 33'd256;
parameter    ap_ST_fsm_pp0_stage9 = 33'd512;
parameter    ap_ST_fsm_pp0_stage10 = 33'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 33'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 33'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 33'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 33'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 33'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 33'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 33'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 33'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 33'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 33'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 33'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 33'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 33'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 33'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 33'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 33'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 33'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 33'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 33'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 33'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 33'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 33'd4294967296;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_36;
input  [7:0] t_1;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [9:0] zext_ln52_2;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_1042_p_din0;
output  [63:0] grp_fu_1042_p_din1;
output  [4:0] grp_fu_1042_p_opcode;
input  [0:0] grp_fu_1042_p_dout0;
output   grp_fu_1042_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_reg_2879;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_534;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_539;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_543;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_548;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_553;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_558;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_563;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_568;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_573;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_578_p1;
reg   [11:0] zext_ln52_cast_reg_2744;
reg   [5:0] s_reg_2763;
wire   [5:0] add_ln53_fu_660_p2;
reg   [5:0] add_ln53_reg_2861;
wire   [5:0] add_ln53_1_fu_666_p2;
reg   [5:0] add_ln53_1_reg_2867;
wire   [6:0] add_ln53_14_fu_672_p2;
reg   [6:0] add_ln53_14_reg_2873;
reg   [0:0] tmp_reg_2879_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2883;
reg   [63:0] llike_2_load_reg_2888;
reg   [63:0] llike_3_load_reg_2898;
wire   [5:0] add_ln53_2_fu_720_p2;
reg   [5:0] add_ln53_2_reg_2908;
reg   [63:0] llike_4_load_reg_2914;
wire   [5:0] add_ln53_3_fu_725_p2;
reg   [5:0] add_ln53_3_reg_2919;
reg   [63:0] llike_5_load_reg_2925;
reg   [63:0] llike_6_load_reg_2930;
reg   [63:0] llike_7_load_reg_2935;
reg   [63:0] llike_8_load_reg_2940;
reg   [63:0] llike_9_load_reg_2945;
reg   [63:0] llike_10_load_reg_2950;
reg   [63:0] llike_11_load_reg_2955;
reg   [63:0] llike_12_load_reg_2960;
reg   [63:0] llike_13_load_reg_2965;
reg   [63:0] llike_14_load_reg_2970;
reg   [63:0] llike_15_load_reg_2975;
wire   [63:0] bitcast_ln54_fu_753_p1;
wire   [5:0] add_ln53_4_fu_792_p2;
reg   [5:0] add_ln53_4_reg_3000;
wire   [5:0] add_ln53_5_fu_797_p2;
reg   [5:0] add_ln53_5_reg_3006;
reg   [63:0] llike_load_reg_3012;
wire   [63:0] bitcast_ln54_1_fu_802_p1;
wire   [5:0] add_ln53_6_fu_841_p2;
reg   [5:0] add_ln53_6_reg_3032;
wire   [5:0] add_ln53_7_fu_846_p2;
reg   [5:0] add_ln53_7_reg_3038;
wire   [63:0] bitcast_ln54_2_fu_851_p1;
wire   [5:0] add_ln53_8_fu_890_p2;
reg   [5:0] add_ln53_8_reg_3059;
wire   [5:0] add_ln53_9_fu_895_p2;
reg   [5:0] add_ln53_9_reg_3065;
wire   [63:0] bitcast_ln54_3_fu_900_p1;
reg   [63:0] transition_load_8_reg_3076;
wire   [5:0] add_ln53_10_fu_939_p2;
reg   [5:0] add_ln53_10_reg_3091;
wire   [5:0] add_ln53_11_fu_944_p2;
reg   [5:0] add_ln53_11_reg_3097;
reg   [5:0] add_ln53_11_reg_3097_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_4_fu_949_p1;
reg   [63:0] transition_load_10_reg_3108;
wire   [5:0] add_ln53_12_fu_988_p2;
reg   [5:0] add_ln53_12_reg_3123;
reg   [5:0] add_ln53_12_reg_3123_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_993_p2;
reg   [5:0] add_ln53_13_reg_3129;
reg   [5:0] add_ln53_13_reg_3129_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_5_fu_998_p1;
reg   [63:0] transition_load_12_reg_3140;
wire   [63:0] bitcast_ln54_6_fu_1037_p1;
reg   [63:0] transition_load_14_reg_3160;
wire   [5:0] trunc_ln54_fu_1042_p1;
reg   [5:0] trunc_ln54_reg_3165;
reg   [5:0] trunc_ln54_reg_3165_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1063_p1;
reg   [63:0] min_p_1_reg_3180;
wire   [63:0] bitcast_ln54_8_fu_1072_p1;
wire   [0:0] and_ln55_1_fu_1153_p2;
reg   [0:0] and_ln55_1_reg_3192;
wire   [63:0] bitcast_ln54_9_fu_1159_p1;
wire   [63:0] min_p_3_fu_1164_p3;
reg   [63:0] min_p_3_reg_3203;
wire   [63:0] bitcast_ln54_10_fu_1171_p1;
wire   [0:0] and_ln55_3_fu_1252_p2;
reg   [0:0] and_ln55_3_reg_3215;
wire   [63:0] bitcast_ln54_11_fu_1258_p1;
wire   [63:0] min_p_5_fu_1263_p3;
reg   [63:0] min_p_5_reg_3226;
wire   [63:0] bitcast_ln54_12_fu_1270_p1;
wire   [0:0] and_ln55_5_fu_1351_p2;
reg   [0:0] and_ln55_5_reg_3238;
wire   [63:0] bitcast_ln54_13_fu_1357_p1;
wire   [63:0] min_p_7_fu_1362_p3;
reg   [63:0] min_p_7_reg_3249;
wire   [63:0] bitcast_ln54_14_fu_1369_p1;
wire   [0:0] and_ln55_7_fu_1450_p2;
reg   [0:0] and_ln55_7_reg_3261;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_3267;
wire   [63:0] bitcast_ln54_15_fu_1456_p1;
wire   [63:0] min_p_9_fu_1494_p3;
reg   [63:0] min_p_9_reg_3279;
wire   [7:0] min_s_7_fu_1504_p3;
reg   [7:0] min_s_7_reg_3286;
wire   [0:0] and_ln55_9_fu_1588_p2;
reg   [0:0] and_ln55_9_reg_3291;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_3297;
wire   [63:0] min_p_11_fu_1594_p3;
reg   [63:0] min_p_11_reg_3304;
wire   [0:0] and_ln55_11_fu_1678_p2;
reg   [0:0] and_ln55_11_reg_3311;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_3317;
wire   [63:0] min_p_13_fu_1693_p3;
reg   [63:0] min_p_13_reg_3324;
wire   [7:0] min_s_9_fu_1703_p3;
reg   [7:0] min_s_9_reg_3331;
wire   [0:0] and_ln55_13_fu_1787_p2;
reg   [0:0] and_ln55_13_reg_3336;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_3342;
wire   [63:0] min_p_15_fu_1793_p3;
reg   [63:0] min_p_15_reg_3349;
wire   [0:0] and_ln55_15_fu_1877_p2;
reg   [0:0] and_ln55_15_reg_3356;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_1892_p3;
reg   [63:0] min_p_17_reg_3362;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_1902_p3;
reg   [7:0] min_s_11_reg_3369;
wire   [0:0] and_ln55_17_fu_1985_p2;
reg   [0:0] and_ln55_17_reg_3374;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_1991_p3;
reg   [63:0] min_p_19_reg_3380;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2074_p2;
reg   [0:0] and_ln55_19_reg_3387;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_2089_p3;
reg   [63:0] min_p_21_reg_3393;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2099_p3;
reg   [7:0] min_s_13_reg_3400;
wire   [0:0] and_ln55_21_fu_2182_p2;
reg   [0:0] and_ln55_21_reg_3405;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_2188_p3;
reg   [63:0] min_p_23_reg_3411;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2281_p2;
reg   [0:0] and_ln55_23_reg_3418;
wire   [63:0] min_p_25_fu_2296_p3;
reg   [63:0] min_p_25_reg_3424;
wire   [7:0] min_s_15_fu_2306_p3;
reg   [7:0] min_s_15_reg_3431;
wire   [0:0] and_ln55_25_fu_2389_p2;
reg   [0:0] and_ln55_25_reg_3436;
wire   [63:0] min_p_27_fu_2395_p3;
reg   [63:0] min_p_27_reg_3442;
wire   [0:0] and_ln55_27_fu_2478_p2;
reg   [0:0] and_ln55_27_reg_3449;
wire   [63:0] min_p_29_fu_2484_p3;
reg   [63:0] min_p_29_reg_3455;
wire   [0:0] and_ln55_29_fu_2567_p2;
reg   [0:0] and_ln55_29_reg_3462;
wire   [63:0] min_p_31_fu_2573_p3;
reg   [63:0] min_p_31_reg_3468;
wire   [7:0] min_s_18_fu_2601_p3;
reg   [7:0] min_s_18_reg_3475;
reg   [0:0] tmp_48_reg_3480;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_622_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_655_p1;
wire   [63:0] zext_ln54_1_fu_698_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_715_p1;
wire   [63:0] zext_ln54_18_fu_748_p1;
wire   [63:0] zext_ln54_3_fu_770_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_787_p1;
wire   [63:0] zext_ln54_5_fu_819_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_836_p1;
wire   [63:0] zext_ln54_7_fu_868_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_885_p1;
wire   [63:0] zext_ln54_9_fu_917_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_934_p1;
wire   [63:0] zext_ln54_11_fu_966_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_983_p1;
wire   [63:0] zext_ln54_13_fu_1015_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1032_p1;
wire   [63:0] zext_ln54_15_fu_1058_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_138;
wire   [63:0] min_p_33_fu_2691_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_142;
wire   [7:0] min_s_19_fu_2701_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_146;
wire   [5:0] add_ln53_15_fu_2194_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_8_ce0_local;
reg    llike_9_ce0_local;
reg    llike_10_ce0_local;
reg    llike_11_ce0_local;
reg    llike_12_ce0_local;
reg    llike_13_ce0_local;
reg    llike_14_ce0_local;
reg    llike_15_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_526_p0;
reg   [63:0] grp_fu_526_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_530_p0;
reg   [63:0] grp_fu_530_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [1:0] lshr_ln8_2_fu_604_p4;
wire   [9:0] tmp_s_fu_614_p3;
wire   [11:0] shl_ln3_fu_641_p3;
wire   [11:0] add_ln54_fu_649_p2;
wire   [6:0] zext_ln16_fu_600_p1;
wire   [11:0] shl_ln54_1_fu_686_p3;
wire   [11:0] add_ln54_1_fu_693_p2;
wire   [11:0] shl_ln54_2_fu_703_p3;
wire   [11:0] add_ln54_2_fu_710_p2;
wire   [2:0] lshr_ln9_2_fu_730_p4;
wire   [9:0] zext_ln54_17_fu_739_p1;
wire   [9:0] add_ln54_16_fu_743_p2;
wire   [11:0] shl_ln54_3_fu_758_p3;
wire   [11:0] add_ln54_3_fu_765_p2;
wire   [11:0] shl_ln54_4_fu_775_p3;
wire   [11:0] add_ln54_4_fu_782_p2;
wire   [11:0] shl_ln54_5_fu_807_p3;
wire   [11:0] add_ln54_5_fu_814_p2;
wire   [11:0] shl_ln54_6_fu_824_p3;
wire   [11:0] add_ln54_6_fu_831_p2;
wire   [11:0] shl_ln54_7_fu_856_p3;
wire   [11:0] add_ln54_7_fu_863_p2;
wire   [11:0] shl_ln54_8_fu_873_p3;
wire   [11:0] add_ln54_8_fu_880_p2;
wire   [11:0] shl_ln54_9_fu_905_p3;
wire   [11:0] add_ln54_9_fu_912_p2;
wire   [11:0] shl_ln54_s_fu_922_p3;
wire   [11:0] add_ln54_10_fu_929_p2;
wire   [11:0] shl_ln54_10_fu_954_p3;
wire   [11:0] add_ln54_11_fu_961_p2;
wire   [11:0] shl_ln54_11_fu_971_p3;
wire   [11:0] add_ln54_12_fu_978_p2;
wire   [11:0] shl_ln54_12_fu_1003_p3;
wire   [11:0] add_ln54_13_fu_1010_p2;
wire   [11:0] shl_ln54_13_fu_1020_p3;
wire   [11:0] add_ln54_14_fu_1027_p2;
wire   [11:0] shl_ln54_14_fu_1045_p3;
wire   [11:0] add_ln54_15_fu_1053_p2;
wire   [63:0] bitcast_ln55_fu_1076_p1;
wire   [63:0] bitcast_ln55_1_fu_1094_p1;
wire   [10:0] tmp_1_fu_1080_p4;
wire   [51:0] trunc_ln55_fu_1090_p1;
wire   [0:0] icmp_ln55_1_fu_1117_p2;
wire   [0:0] icmp_ln55_fu_1111_p2;
wire   [10:0] tmp_2_fu_1097_p4;
wire   [51:0] trunc_ln55_1_fu_1107_p1;
wire   [0:0] icmp_ln55_3_fu_1135_p2;
wire   [0:0] icmp_ln55_2_fu_1129_p2;
wire   [0:0] or_ln55_fu_1123_p2;
wire   [0:0] and_ln55_fu_1147_p2;
wire   [0:0] or_ln55_1_fu_1141_p2;
wire   [63:0] bitcast_ln55_2_fu_1175_p1;
wire   [63:0] bitcast_ln55_3_fu_1193_p1;
wire   [10:0] tmp_4_fu_1179_p4;
wire   [51:0] trunc_ln55_2_fu_1189_p1;
wire   [0:0] icmp_ln55_5_fu_1216_p2;
wire   [0:0] icmp_ln55_4_fu_1210_p2;
wire   [10:0] tmp_5_fu_1196_p4;
wire   [51:0] trunc_ln55_3_fu_1206_p1;
wire   [0:0] icmp_ln55_7_fu_1234_p2;
wire   [0:0] icmp_ln55_6_fu_1228_p2;
wire   [0:0] or_ln55_3_fu_1240_p2;
wire   [0:0] or_ln55_2_fu_1222_p2;
wire   [0:0] and_ln55_2_fu_1246_p2;
wire   [63:0] bitcast_ln55_4_fu_1274_p1;
wire   [63:0] bitcast_ln55_5_fu_1292_p1;
wire   [10:0] tmp_7_fu_1278_p4;
wire   [51:0] trunc_ln55_4_fu_1288_p1;
wire   [0:0] icmp_ln55_9_fu_1315_p2;
wire   [0:0] icmp_ln55_8_fu_1309_p2;
wire   [10:0] tmp_8_fu_1295_p4;
wire   [51:0] trunc_ln55_5_fu_1305_p1;
wire   [0:0] icmp_ln55_11_fu_1333_p2;
wire   [0:0] icmp_ln55_10_fu_1327_p2;
wire   [0:0] or_ln55_5_fu_1339_p2;
wire   [0:0] or_ln55_4_fu_1321_p2;
wire   [0:0] and_ln55_4_fu_1345_p2;
wire   [63:0] bitcast_ln55_6_fu_1373_p1;
wire   [63:0] bitcast_ln55_7_fu_1391_p1;
wire   [10:0] tmp_10_fu_1377_p4;
wire   [51:0] trunc_ln55_6_fu_1387_p1;
wire   [0:0] icmp_ln55_13_fu_1414_p2;
wire   [0:0] icmp_ln55_12_fu_1408_p2;
wire   [10:0] tmp_11_fu_1394_p4;
wire   [51:0] trunc_ln55_7_fu_1404_p1;
wire   [0:0] icmp_ln55_15_fu_1432_p2;
wire   [0:0] icmp_ln55_14_fu_1426_p2;
wire   [0:0] or_ln55_7_fu_1438_p2;
wire   [0:0] or_ln55_6_fu_1420_p2;
wire   [0:0] and_ln55_6_fu_1444_p2;
wire   [7:0] zext_ln55_fu_1464_p1;
wire   [7:0] zext_ln55_1_fu_1474_p1;
wire   [7:0] min_s_4_fu_1467_p3;
wire   [7:0] zext_ln55_2_fu_1484_p1;
wire   [7:0] min_s_5_fu_1477_p3;
wire   [7:0] zext_ln55_3_fu_1501_p1;
wire   [7:0] min_s_6_fu_1487_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1511_p1;
wire   [63:0] bitcast_ln55_9_fu_1529_p1;
wire   [10:0] tmp_13_fu_1515_p4;
wire   [51:0] trunc_ln55_8_fu_1525_p1;
wire   [0:0] icmp_ln55_17_fu_1552_p2;
wire   [0:0] icmp_ln55_16_fu_1546_p2;
wire   [10:0] tmp_14_fu_1532_p4;
wire   [51:0] trunc_ln55_9_fu_1542_p1;
wire   [0:0] icmp_ln55_19_fu_1570_p2;
wire   [0:0] icmp_ln55_18_fu_1564_p2;
wire   [0:0] or_ln55_9_fu_1576_p2;
wire   [0:0] or_ln55_8_fu_1558_p2;
wire   [0:0] and_ln55_8_fu_1582_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1601_p1;
wire   [63:0] bitcast_ln55_11_fu_1619_p1;
wire   [10:0] tmp_16_fu_1605_p4;
wire   [51:0] trunc_ln55_10_fu_1615_p1;
wire   [0:0] icmp_ln55_21_fu_1642_p2;
wire   [0:0] icmp_ln55_20_fu_1636_p2;
wire   [10:0] tmp_17_fu_1622_p4;
wire   [51:0] trunc_ln55_11_fu_1632_p1;
wire   [0:0] icmp_ln55_23_fu_1660_p2;
wire   [0:0] icmp_ln55_22_fu_1654_p2;
wire   [0:0] or_ln55_11_fu_1666_p2;
wire   [0:0] or_ln55_10_fu_1648_p2;
wire   [0:0] and_ln55_10_fu_1672_p2;
wire   [7:0] zext_ln55_4_fu_1684_p1;
wire   [7:0] zext_ln55_5_fu_1700_p1;
wire   [7:0] min_s_8_fu_1687_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_1710_p1;
wire   [63:0] bitcast_ln55_13_fu_1728_p1;
wire   [10:0] tmp_19_fu_1714_p4;
wire   [51:0] trunc_ln55_12_fu_1724_p1;
wire   [0:0] icmp_ln55_25_fu_1751_p2;
wire   [0:0] icmp_ln55_24_fu_1745_p2;
wire   [10:0] tmp_20_fu_1731_p4;
wire   [51:0] trunc_ln55_13_fu_1741_p1;
wire   [0:0] icmp_ln55_27_fu_1769_p2;
wire   [0:0] icmp_ln55_26_fu_1763_p2;
wire   [0:0] or_ln55_13_fu_1775_p2;
wire   [0:0] or_ln55_12_fu_1757_p2;
wire   [0:0] and_ln55_12_fu_1781_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_1800_p1;
wire   [63:0] bitcast_ln55_15_fu_1818_p1;
wire   [10:0] tmp_22_fu_1804_p4;
wire   [51:0] trunc_ln55_14_fu_1814_p1;
wire   [0:0] icmp_ln55_29_fu_1841_p2;
wire   [0:0] icmp_ln55_28_fu_1835_p2;
wire   [10:0] tmp_23_fu_1821_p4;
wire   [51:0] trunc_ln55_15_fu_1831_p1;
wire   [0:0] icmp_ln55_31_fu_1859_p2;
wire   [0:0] icmp_ln55_30_fu_1853_p2;
wire   [0:0] or_ln55_15_fu_1865_p2;
wire   [0:0] or_ln55_14_fu_1847_p2;
wire   [0:0] and_ln55_14_fu_1871_p2;
wire   [7:0] zext_ln55_6_fu_1883_p1;
wire   [7:0] zext_ln55_7_fu_1899_p1;
wire   [7:0] min_s_10_fu_1886_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_1909_p1;
wire   [63:0] bitcast_ln55_17_fu_1926_p1;
wire   [10:0] tmp_25_fu_1912_p4;
wire   [51:0] trunc_ln55_16_fu_1922_p1;
wire   [0:0] icmp_ln55_33_fu_1949_p2;
wire   [0:0] icmp_ln55_32_fu_1943_p2;
wire   [10:0] tmp_26_fu_1929_p4;
wire   [51:0] trunc_ln55_17_fu_1939_p1;
wire   [0:0] icmp_ln55_35_fu_1967_p2;
wire   [0:0] icmp_ln55_34_fu_1961_p2;
wire   [0:0] or_ln55_17_fu_1973_p2;
wire   [0:0] or_ln55_16_fu_1955_p2;
wire   [0:0] and_ln55_16_fu_1979_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_1997_p1;
wire   [63:0] bitcast_ln55_19_fu_2015_p1;
wire   [10:0] tmp_28_fu_2001_p4;
wire   [51:0] trunc_ln55_18_fu_2011_p1;
wire   [0:0] icmp_ln55_37_fu_2038_p2;
wire   [0:0] icmp_ln55_36_fu_2032_p2;
wire   [10:0] tmp_29_fu_2018_p4;
wire   [51:0] trunc_ln55_19_fu_2028_p1;
wire   [0:0] icmp_ln55_39_fu_2056_p2;
wire   [0:0] icmp_ln55_38_fu_2050_p2;
wire   [0:0] or_ln55_19_fu_2062_p2;
wire   [0:0] or_ln55_18_fu_2044_p2;
wire   [0:0] and_ln55_18_fu_2068_p2;
wire   [7:0] zext_ln55_8_fu_2080_p1;
wire   [7:0] zext_ln55_9_fu_2096_p1;
wire   [7:0] min_s_12_fu_2083_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2106_p1;
wire   [63:0] bitcast_ln55_21_fu_2123_p1;
wire   [10:0] tmp_31_fu_2109_p4;
wire   [51:0] trunc_ln55_20_fu_2119_p1;
wire   [0:0] icmp_ln55_41_fu_2146_p2;
wire   [0:0] icmp_ln55_40_fu_2140_p2;
wire   [10:0] tmp_32_fu_2126_p4;
wire   [51:0] trunc_ln55_21_fu_2136_p1;
wire   [0:0] icmp_ln55_43_fu_2164_p2;
wire   [0:0] icmp_ln55_42_fu_2158_p2;
wire   [0:0] or_ln55_21_fu_2170_p2;
wire   [0:0] or_ln55_20_fu_2152_p2;
wire   [0:0] and_ln55_20_fu_2176_p2;
wire   [63:0] bitcast_ln55_22_fu_2204_p1;
wire   [63:0] bitcast_ln55_23_fu_2222_p1;
wire   [10:0] tmp_34_fu_2208_p4;
wire   [51:0] trunc_ln55_22_fu_2218_p1;
wire   [0:0] icmp_ln55_45_fu_2245_p2;
wire   [0:0] icmp_ln55_44_fu_2239_p2;
wire   [10:0] tmp_35_fu_2225_p4;
wire   [51:0] trunc_ln55_23_fu_2235_p1;
wire   [0:0] icmp_ln55_47_fu_2263_p2;
wire   [0:0] icmp_ln55_46_fu_2257_p2;
wire   [0:0] or_ln55_23_fu_2269_p2;
wire   [0:0] or_ln55_22_fu_2251_p2;
wire   [0:0] and_ln55_22_fu_2275_p2;
wire   [7:0] zext_ln55_10_fu_2287_p1;
wire   [7:0] zext_ln55_11_fu_2303_p1;
wire   [7:0] min_s_14_fu_2290_p3;
wire   [63:0] bitcast_ln55_24_fu_2313_p1;
wire   [63:0] bitcast_ln55_25_fu_2330_p1;
wire   [10:0] tmp_37_fu_2316_p4;
wire   [51:0] trunc_ln55_24_fu_2326_p1;
wire   [0:0] icmp_ln55_49_fu_2353_p2;
wire   [0:0] icmp_ln55_48_fu_2347_p2;
wire   [10:0] tmp_38_fu_2333_p4;
wire   [51:0] trunc_ln55_25_fu_2343_p1;
wire   [0:0] icmp_ln55_51_fu_2371_p2;
wire   [0:0] icmp_ln55_50_fu_2365_p2;
wire   [0:0] or_ln55_25_fu_2377_p2;
wire   [0:0] or_ln55_24_fu_2359_p2;
wire   [0:0] and_ln55_24_fu_2383_p2;
wire   [63:0] bitcast_ln55_26_fu_2401_p1;
wire   [63:0] bitcast_ln55_27_fu_2419_p1;
wire   [10:0] tmp_40_fu_2405_p4;
wire   [51:0] trunc_ln55_26_fu_2415_p1;
wire   [0:0] icmp_ln55_53_fu_2442_p2;
wire   [0:0] icmp_ln55_52_fu_2436_p2;
wire   [10:0] tmp_41_fu_2422_p4;
wire   [51:0] trunc_ln55_27_fu_2432_p1;
wire   [0:0] icmp_ln55_55_fu_2460_p2;
wire   [0:0] icmp_ln55_54_fu_2454_p2;
wire   [0:0] or_ln55_27_fu_2466_p2;
wire   [0:0] or_ln55_26_fu_2448_p2;
wire   [0:0] and_ln55_26_fu_2472_p2;
wire   [63:0] bitcast_ln55_28_fu_2491_p1;
wire   [63:0] bitcast_ln55_29_fu_2508_p1;
wire   [10:0] tmp_43_fu_2494_p4;
wire   [51:0] trunc_ln55_28_fu_2504_p1;
wire   [0:0] icmp_ln55_57_fu_2531_p2;
wire   [0:0] icmp_ln55_56_fu_2525_p2;
wire   [10:0] tmp_44_fu_2511_p4;
wire   [51:0] trunc_ln55_29_fu_2521_p1;
wire   [0:0] icmp_ln55_59_fu_2549_p2;
wire   [0:0] icmp_ln55_58_fu_2543_p2;
wire   [0:0] or_ln55_29_fu_2555_p2;
wire   [0:0] or_ln55_28_fu_2537_p2;
wire   [0:0] and_ln55_28_fu_2561_p2;
wire   [7:0] zext_ln55_12_fu_2579_p1;
wire   [7:0] zext_ln55_13_fu_2588_p1;
wire   [7:0] min_s_16_fu_2582_p3;
wire   [7:0] zext_ln55_14_fu_2598_p1;
wire   [7:0] min_s_17_fu_2591_p3;
wire   [63:0] bitcast_ln55_30_fu_2609_p1;
wire   [63:0] bitcast_ln55_31_fu_2627_p1;
wire   [10:0] tmp_46_fu_2613_p4;
wire   [51:0] trunc_ln55_30_fu_2623_p1;
wire   [0:0] icmp_ln55_61_fu_2650_p2;
wire   [0:0] icmp_ln55_60_fu_2644_p2;
wire   [10:0] tmp_47_fu_2630_p4;
wire   [51:0] trunc_ln55_31_fu_2640_p1;
wire   [0:0] icmp_ln55_63_fu_2668_p2;
wire   [0:0] icmp_ln55_62_fu_2662_p2;
wire   [0:0] or_ln55_31_fu_2674_p2;
wire   [0:0] or_ln55_30_fu_2656_p2;
wire   [0:0] and_ln55_30_fu_2680_p2;
wire   [0:0] and_ln55_31_fu_2686_p2;
wire   [7:0] zext_ln55_15_fu_2698_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [32:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_138 = 64'd0;
#0 min_s_fu_142 = 8'd0;
#0 min_s_1_fu_146 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage32),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage8) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage32_subdone) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_138 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2879_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_138 <= min_p_33_fu_2691_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_146 <= 6'd1;
    end else if (((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_146 <= add_ln53_15_fu_2194_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_142 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2879_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_142 <= min_s_19_fu_2701_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_534 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_534 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_543 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_543 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_548 <= transition_q0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_548 <= transition_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_10_reg_3091 <= add_ln53_10_fu_939_p2;
        add_ln53_11_reg_3097 <= add_ln53_11_fu_944_p2;
        add_ln53_11_reg_3097_pp0_iter1_reg <= add_ln53_11_reg_3097;
        min_p_29_reg_3455 <= min_p_29_fu_2484_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln53_12_reg_3123 <= add_ln53_12_fu_988_p2;
        add_ln53_12_reg_3123_pp0_iter1_reg <= add_ln53_12_reg_3123;
        add_ln53_13_reg_3129 <= add_ln53_13_fu_993_p2;
        add_ln53_13_reg_3129_pp0_iter1_reg <= add_ln53_13_reg_3129;
        and_ln55_29_reg_3462 <= and_ln55_29_fu_2567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_2873 <= add_ln53_14_fu_672_p2;
        add_ln53_1_reg_2867 <= add_ln53_1_fu_666_p2;
        add_ln53_reg_2861 <= add_ln53_fu_660_p2;
        and_ln55_23_reg_3418 <= and_ln55_23_fu_2281_p2;
        s_reg_2763 <= ap_sig_allocacmp_s;
        tmp_reg_2879 <= add_ln53_14_fu_672_p2[32'd6];
        tmp_reg_2879_pp0_iter1_reg <= tmp_reg_2879;
        zext_ln52_cast_reg_2744[7 : 0] <= zext_ln52_cast_fu_578_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_2908 <= add_ln53_2_fu_720_p2;
        add_ln53_3_reg_2919 <= add_ln53_3_fu_725_p2;
        llike_10_load_reg_2950 <= llike_10_q0;
        llike_11_load_reg_2955 <= llike_11_q0;
        llike_12_load_reg_2960 <= llike_12_q0;
        llike_13_load_reg_2965 <= llike_13_q0;
        llike_14_load_reg_2970 <= llike_14_q0;
        llike_15_load_reg_2975 <= llike_15_q0;
        llike_1_load_reg_2883 <= llike_1_q0;
        llike_2_load_reg_2888 <= llike_2_q0;
        llike_3_load_reg_2898 <= llike_3_q0;
        llike_4_load_reg_2914 <= llike_4_q0;
        llike_5_load_reg_2925 <= llike_5_q0;
        llike_6_load_reg_2930 <= llike_6_q0;
        llike_7_load_reg_2935 <= llike_7_q0;
        llike_8_load_reg_2940 <= llike_8_q0;
        llike_9_load_reg_2945 <= llike_9_q0;
        min_p_25_reg_3424 <= min_p_25_fu_2296_p3;
        min_s_15_reg_3431 <= min_s_15_fu_2306_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_3000 <= add_ln53_4_fu_792_p2;
        add_ln53_5_reg_3006 <= add_ln53_5_fu_797_p2;
        and_ln55_25_reg_3436 <= and_ln55_25_fu_2389_p2;
        llike_load_reg_3012 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_6_reg_3032 <= add_ln53_6_fu_841_p2;
        add_ln53_7_reg_3038 <= add_ln53_7_fu_846_p2;
        min_p_27_reg_3442 <= min_p_27_fu_2395_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln53_8_reg_3059 <= add_ln53_8_fu_890_p2;
        add_ln53_9_reg_3065 <= add_ln53_9_fu_895_p2;
        and_ln55_27_reg_3449 <= and_ln55_27_fu_2478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3311 <= and_ln55_11_fu_1678_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3336 <= and_ln55_13_fu_1787_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3356 <= and_ln55_15_fu_1877_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3374 <= and_ln55_17_fu_1985_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3387 <= and_ln55_19_fu_2074_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3192 <= and_ln55_1_fu_1153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3405 <= and_ln55_21_fu_2182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3215 <= and_ln55_3_fu_1252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3238 <= and_ln55_5_fu_1351_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3261 <= and_ln55_7_fu_1450_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3291 <= and_ln55_9_fu_1588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_3304 <= min_p_11_fu_1594_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_3324 <= min_p_13_fu_1693_p3;
        min_s_9_reg_3331 <= min_s_9_fu_1703_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_3349 <= min_p_15_fu_1793_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_3362 <= min_p_17_fu_1892_p3;
        min_s_11_reg_3369 <= min_s_11_fu_1902_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_3380 <= min_p_19_fu_1991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3180 <= min_p_fu_138;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_3393 <= min_p_21_fu_2089_p3;
        min_s_13_reg_3400 <= min_s_13_fu_2099_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_3411 <= min_p_23_fu_2188_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_3468 <= min_p_31_fu_2573_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3203 <= min_p_3_fu_1164_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3226 <= min_p_5_fu_1263_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_3249 <= min_p_7_fu_1362_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_3279 <= min_p_9_fu_1494_p3;
        min_s_7_reg_3286 <= min_s_7_fu_1504_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3475 <= min_s_18_fu_2601_p3;
        tmp_48_reg_3480 <= grp_fu_1042_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_3297 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_3317 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_3342 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_3267 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_539 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_553 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_558 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_563 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_568 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_573 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        transition_load_10_reg_3108 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        transition_load_12_reg_3140 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        transition_load_14_reg_3160 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        transition_load_8_reg_3076 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3165 <= trunc_ln54_fu_1042_p1;
        trunc_ln54_reg_3165_pp0_iter1_reg <= trunc_ln54_reg_3165;
    end
end
always @ (*) begin
    if (((tmp_reg_2879 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2879_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_146;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_526_p0 = llike_load_reg_3012;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_526_p0 = llike_15_load_reg_2975;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_526_p0 = llike_14_load_reg_2970;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_526_p0 = llike_13_load_reg_2965;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_526_p0 = llike_12_load_reg_2960;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_526_p0 = llike_11_load_reg_2955;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_526_p0 = llike_10_load_reg_2950;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_526_p0 = llike_9_load_reg_2945;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_526_p0 = llike_8_load_reg_2940;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_526_p0 = llike_7_load_reg_2935;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_526_p0 = llike_6_load_reg_2930;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_526_p0 = llike_5_load_reg_2925;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_526_p0 = llike_4_load_reg_2914;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_526_p0 = llike_3_load_reg_2898;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_526_p0 = llike_2_load_reg_2888;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_526_p0 = llike_1_load_reg_2883;
        end else begin
            grp_fu_526_p0 = 'bx;
        end
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_526_p1 = bitcast_ln54_15_fu_1456_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_526_p1 = bitcast_ln54_14_fu_1369_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_526_p1 = bitcast_ln54_13_fu_1357_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_526_p1 = bitcast_ln54_12_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_526_p1 = bitcast_ln54_11_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_526_p1 = bitcast_ln54_10_fu_1171_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_526_p1 = bitcast_ln54_9_fu_1159_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_526_p1 = bitcast_ln54_8_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_526_p1 = bitcast_ln54_7_fu_1063_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_526_p1 = bitcast_ln54_6_fu_1037_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_526_p1 = bitcast_ln54_5_fu_998_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_526_p1 = bitcast_ln54_4_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_526_p1 = bitcast_ln54_3_fu_900_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_526_p1 = bitcast_ln54_2_fu_851_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_526_p1 = bitcast_ln54_1_fu_802_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_526_p1 = bitcast_ln54_fu_753_p1;
        end else begin
            grp_fu_526_p1 = 'bx;
        end
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_530_p0 = p_14_reg_3342;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_530_p0 = p_12_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_530_p0 = p_10_reg_3297;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_530_p0 = p_8_reg_3267;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_530_p0 = reg_573;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_530_p0 = reg_568;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_530_p0 = reg_563;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_530_p0 = reg_558;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_530_p0 = reg_553;
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_530_p1 = min_p_31_fu_2573_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_530_p1 = min_p_29_fu_2484_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_530_p1 = min_p_27_fu_2395_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_530_p1 = min_p_25_fu_2296_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_530_p1 = min_p_23_fu_2188_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_530_p1 = min_p_21_fu_2089_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_530_p1 = min_p_19_fu_1991_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_530_p1 = min_p_17_fu_1892_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_530_p1 = min_p_15_fu_1793_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_530_p1 = min_p_13_fu_1693_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_530_p1 = min_p_11_fu_1594_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_530_p1 = min_p_9_fu_1494_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_530_p1 = min_p_7_fu_1362_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_530_p1 = min_p_5_fu_1263_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_530_p1 = min_p_3_fu_1164_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_530_p1 = min_p_fu_138;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_reg_2879_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address0_local = zext_ln54_13_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address0_local = zext_ln54_11_fu_966_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address0_local = zext_ln54_9_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address0_local = zext_ln54_7_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_819_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_770_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_655_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_address1_local = zext_ln54_15_fu_1058_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_address1_local = zext_ln54_14_fu_1032_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_address1_local = zext_ln54_12_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_address1_local = zext_ln54_10_fu_934_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_8_fu_885_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_698_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_10_fu_939_p2 = (s_reg_2763 + 6'd11);
assign add_ln53_11_fu_944_p2 = (s_reg_2763 + 6'd12);
assign add_ln53_12_fu_988_p2 = (s_reg_2763 + 6'd13);
assign add_ln53_13_fu_993_p2 = (s_reg_2763 + 6'd14);
assign add_ln53_14_fu_672_p2 = (zext_ln16_fu_600_p1 + 7'd15);
assign add_ln53_15_fu_2194_p2 = (s_reg_2763 + 6'd16);
assign add_ln53_1_fu_666_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_720_p2 = (s_reg_2763 + 6'd3);
assign add_ln53_3_fu_725_p2 = (s_reg_2763 + 6'd4);
assign add_ln53_4_fu_792_p2 = (s_reg_2763 + 6'd5);
assign add_ln53_5_fu_797_p2 = (s_reg_2763 + 6'd6);
assign add_ln53_6_fu_841_p2 = (s_reg_2763 + 6'd7);
assign add_ln53_7_fu_846_p2 = (s_reg_2763 + 6'd8);
assign add_ln53_8_fu_890_p2 = (s_reg_2763 + 6'd9);
assign add_ln53_9_fu_895_p2 = (s_reg_2763 + 6'd10);
assign add_ln53_fu_660_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_929_p2 = (shl_ln54_s_fu_922_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_11_fu_961_p2 = (shl_ln54_10_fu_954_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_12_fu_978_p2 = (shl_ln54_11_fu_971_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_13_fu_1010_p2 = (shl_ln54_12_fu_1003_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_14_fu_1027_p2 = (shl_ln54_13_fu_1020_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_15_fu_1053_p2 = (shl_ln54_14_fu_1045_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_16_fu_743_p2 = (zext_ln52_2 + zext_ln54_17_fu_739_p1);
assign add_ln54_1_fu_693_p2 = (shl_ln54_1_fu_686_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_2_fu_710_p2 = (shl_ln54_2_fu_703_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_3_fu_765_p2 = (shl_ln54_3_fu_758_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_4_fu_782_p2 = (shl_ln54_4_fu_775_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_5_fu_814_p2 = (shl_ln54_5_fu_807_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_6_fu_831_p2 = (shl_ln54_6_fu_824_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_7_fu_863_p2 = (shl_ln54_7_fu_856_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_8_fu_880_p2 = (shl_ln54_8_fu_873_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_9_fu_912_p2 = (shl_ln54_9_fu_905_p3 + zext_ln52_cast_reg_2744);
assign add_ln54_fu_649_p2 = (shl_ln3_fu_641_p3 + zext_ln52_cast_fu_578_p1);
assign and_ln55_10_fu_1672_p2 = (or_ln55_11_fu_1666_p2 & or_ln55_10_fu_1648_p2);
assign and_ln55_11_fu_1678_p2 = (grp_fu_1042_p_dout0 & and_ln55_10_fu_1672_p2);
assign and_ln55_12_fu_1781_p2 = (or_ln55_13_fu_1775_p2 & or_ln55_12_fu_1757_p2);
assign and_ln55_13_fu_1787_p2 = (grp_fu_1042_p_dout0 & and_ln55_12_fu_1781_p2);
assign and_ln55_14_fu_1871_p2 = (or_ln55_15_fu_1865_p2 & or_ln55_14_fu_1847_p2);
assign and_ln55_15_fu_1877_p2 = (grp_fu_1042_p_dout0 & and_ln55_14_fu_1871_p2);
assign and_ln55_16_fu_1979_p2 = (or_ln55_17_fu_1973_p2 & or_ln55_16_fu_1955_p2);
assign and_ln55_17_fu_1985_p2 = (grp_fu_1042_p_dout0 & and_ln55_16_fu_1979_p2);
assign and_ln55_18_fu_2068_p2 = (or_ln55_19_fu_2062_p2 & or_ln55_18_fu_2044_p2);
assign and_ln55_19_fu_2074_p2 = (grp_fu_1042_p_dout0 & and_ln55_18_fu_2068_p2);
assign and_ln55_1_fu_1153_p2 = (or_ln55_1_fu_1141_p2 & and_ln55_fu_1147_p2);
assign and_ln55_20_fu_2176_p2 = (or_ln55_21_fu_2170_p2 & or_ln55_20_fu_2152_p2);
assign and_ln55_21_fu_2182_p2 = (grp_fu_1042_p_dout0 & and_ln55_20_fu_2176_p2);
assign and_ln55_22_fu_2275_p2 = (or_ln55_23_fu_2269_p2 & or_ln55_22_fu_2251_p2);
assign and_ln55_23_fu_2281_p2 = (grp_fu_1042_p_dout0 & and_ln55_22_fu_2275_p2);
assign and_ln55_24_fu_2383_p2 = (or_ln55_25_fu_2377_p2 & or_ln55_24_fu_2359_p2);
assign and_ln55_25_fu_2389_p2 = (grp_fu_1042_p_dout0 & and_ln55_24_fu_2383_p2);
assign and_ln55_26_fu_2472_p2 = (or_ln55_27_fu_2466_p2 & or_ln55_26_fu_2448_p2);
assign and_ln55_27_fu_2478_p2 = (grp_fu_1042_p_dout0 & and_ln55_26_fu_2472_p2);
assign and_ln55_28_fu_2561_p2 = (or_ln55_29_fu_2555_p2 & or_ln55_28_fu_2537_p2);
assign and_ln55_29_fu_2567_p2 = (grp_fu_1042_p_dout0 & and_ln55_28_fu_2561_p2);
assign and_ln55_2_fu_1246_p2 = (or_ln55_3_fu_1240_p2 & or_ln55_2_fu_1222_p2);
assign and_ln55_30_fu_2680_p2 = (or_ln55_31_fu_2674_p2 & or_ln55_30_fu_2656_p2);
assign and_ln55_31_fu_2686_p2 = (tmp_48_reg_3480 & and_ln55_30_fu_2680_p2);
assign and_ln55_3_fu_1252_p2 = (grp_fu_1042_p_dout0 & and_ln55_2_fu_1246_p2);
assign and_ln55_4_fu_1345_p2 = (or_ln55_5_fu_1339_p2 & or_ln55_4_fu_1321_p2);
assign and_ln55_5_fu_1351_p2 = (grp_fu_1042_p_dout0 & and_ln55_4_fu_1345_p2);
assign and_ln55_6_fu_1444_p2 = (or_ln55_7_fu_1438_p2 & or_ln55_6_fu_1420_p2);
assign and_ln55_7_fu_1450_p2 = (grp_fu_1042_p_dout0 & and_ln55_6_fu_1444_p2);
assign and_ln55_8_fu_1582_p2 = (or_ln55_9_fu_1576_p2 & or_ln55_8_fu_1558_p2);
assign and_ln55_9_fu_1588_p2 = (grp_fu_1042_p_dout0 & and_ln55_8_fu_1582_p2);
assign and_ln55_fu_1147_p2 = (or_ln55_fu_1123_p2 & grp_fu_1042_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage32;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_10_fu_1171_p1 = transition_load_10_reg_3108;
assign bitcast_ln54_11_fu_1258_p1 = reg_539;
assign bitcast_ln54_12_fu_1270_p1 = transition_load_12_reg_3140;
assign bitcast_ln54_13_fu_1357_p1 = reg_548;
assign bitcast_ln54_14_fu_1369_p1 = transition_load_14_reg_3160;
assign bitcast_ln54_15_fu_1456_p1 = reg_534;
assign bitcast_ln54_1_fu_802_p1 = reg_534;
assign bitcast_ln54_2_fu_851_p1 = reg_539;
assign bitcast_ln54_3_fu_900_p1 = reg_534;
assign bitcast_ln54_4_fu_949_p1 = reg_543;
assign bitcast_ln54_5_fu_998_p1 = reg_539;
assign bitcast_ln54_6_fu_1037_p1 = reg_548;
assign bitcast_ln54_7_fu_1063_p1 = reg_534;
assign bitcast_ln54_8_fu_1072_p1 = transition_load_8_reg_3076;
assign bitcast_ln54_9_fu_1159_p1 = reg_543;
assign bitcast_ln54_fu_753_p1 = reg_534;
assign bitcast_ln55_10_fu_1601_p1 = reg_558;
assign bitcast_ln55_11_fu_1619_p1 = min_p_11_reg_3304;
assign bitcast_ln55_12_fu_1710_p1 = reg_573;
assign bitcast_ln55_13_fu_1728_p1 = min_p_13_reg_3324;
assign bitcast_ln55_14_fu_1800_p1 = reg_563;
assign bitcast_ln55_15_fu_1818_p1 = min_p_15_reg_3349;
assign bitcast_ln55_16_fu_1909_p1 = p_8_reg_3267;
assign bitcast_ln55_17_fu_1926_p1 = min_p_17_reg_3362;
assign bitcast_ln55_18_fu_1997_p1 = reg_553;
assign bitcast_ln55_19_fu_2015_p1 = min_p_19_reg_3380;
assign bitcast_ln55_1_fu_1094_p1 = min_p_1_reg_3180;
assign bitcast_ln55_20_fu_2106_p1 = p_10_reg_3297;
assign bitcast_ln55_21_fu_2123_p1 = min_p_21_reg_3393;
assign bitcast_ln55_22_fu_2204_p1 = reg_568;
assign bitcast_ln55_23_fu_2222_p1 = min_p_23_reg_3411;
assign bitcast_ln55_24_fu_2313_p1 = p_12_reg_3317;
assign bitcast_ln55_25_fu_2330_p1 = min_p_25_reg_3424;
assign bitcast_ln55_26_fu_2401_p1 = reg_558;
assign bitcast_ln55_27_fu_2419_p1 = min_p_27_reg_3442;
assign bitcast_ln55_28_fu_2491_p1 = p_14_reg_3342;
assign bitcast_ln55_29_fu_2508_p1 = min_p_29_reg_3455;
assign bitcast_ln55_2_fu_1175_p1 = reg_558;
assign bitcast_ln55_30_fu_2609_p1 = reg_573;
assign bitcast_ln55_31_fu_2627_p1 = min_p_31_reg_3468;
assign bitcast_ln55_3_fu_1193_p1 = min_p_3_reg_3203;
assign bitcast_ln55_4_fu_1274_p1 = reg_563;
assign bitcast_ln55_5_fu_1292_p1 = min_p_5_reg_3226;
assign bitcast_ln55_6_fu_1373_p1 = reg_553;
assign bitcast_ln55_7_fu_1391_p1 = min_p_7_reg_3249;
assign bitcast_ln55_8_fu_1511_p1 = reg_568;
assign bitcast_ln55_9_fu_1529_p1 = min_p_9_reg_3279;
assign bitcast_ln55_fu_1076_p1 = reg_553;
assign grp_fu_1042_p_ce = 1'b1;
assign grp_fu_1042_p_din0 = grp_fu_530_p0;
assign grp_fu_1042_p_din1 = grp_fu_530_p1;
assign grp_fu_1042_p_opcode = 5'd4;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_526_p0;
assign grp_fu_612_p_din1 = grp_fu_526_p1;
assign grp_fu_612_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1327_p2 = ((tmp_8_fu_1295_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1333_p2 = ((trunc_ln55_5_fu_1305_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1408_p2 = ((tmp_10_fu_1377_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1414_p2 = ((trunc_ln55_6_fu_1387_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1426_p2 = ((tmp_11_fu_1394_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1432_p2 = ((trunc_ln55_7_fu_1404_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1546_p2 = ((tmp_13_fu_1515_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1552_p2 = ((trunc_ln55_8_fu_1525_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1564_p2 = ((tmp_14_fu_1532_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1570_p2 = ((trunc_ln55_9_fu_1542_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1117_p2 = ((trunc_ln55_fu_1090_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1636_p2 = ((tmp_16_fu_1605_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1642_p2 = ((trunc_ln55_10_fu_1615_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1654_p2 = ((tmp_17_fu_1622_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1660_p2 = ((trunc_ln55_11_fu_1632_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1745_p2 = ((tmp_19_fu_1714_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1751_p2 = ((trunc_ln55_12_fu_1724_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1763_p2 = ((tmp_20_fu_1731_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1769_p2 = ((trunc_ln55_13_fu_1741_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1835_p2 = ((tmp_22_fu_1804_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1841_p2 = ((trunc_ln55_14_fu_1814_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1129_p2 = ((tmp_2_fu_1097_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1853_p2 = ((tmp_23_fu_1821_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1859_p2 = ((trunc_ln55_15_fu_1831_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_1943_p2 = ((tmp_25_fu_1912_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_1949_p2 = ((trunc_ln55_16_fu_1922_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_1961_p2 = ((tmp_26_fu_1929_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_1967_p2 = ((trunc_ln55_17_fu_1939_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2032_p2 = ((tmp_28_fu_2001_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2038_p2 = ((trunc_ln55_18_fu_2011_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2050_p2 = ((tmp_29_fu_2018_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2056_p2 = ((trunc_ln55_19_fu_2028_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1135_p2 = ((trunc_ln55_1_fu_1107_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2140_p2 = ((tmp_31_fu_2109_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2146_p2 = ((trunc_ln55_20_fu_2119_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2158_p2 = ((tmp_32_fu_2126_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2164_p2 = ((trunc_ln55_21_fu_2136_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2239_p2 = ((tmp_34_fu_2208_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2245_p2 = ((trunc_ln55_22_fu_2218_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2257_p2 = ((tmp_35_fu_2225_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2263_p2 = ((trunc_ln55_23_fu_2235_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2347_p2 = ((tmp_37_fu_2316_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2353_p2 = ((trunc_ln55_24_fu_2326_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1210_p2 = ((tmp_4_fu_1179_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2365_p2 = ((tmp_38_fu_2333_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2371_p2 = ((trunc_ln55_25_fu_2343_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2436_p2 = ((tmp_40_fu_2405_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2442_p2 = ((trunc_ln55_26_fu_2415_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2454_p2 = ((tmp_41_fu_2422_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2460_p2 = ((trunc_ln55_27_fu_2432_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2525_p2 = ((tmp_43_fu_2494_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2531_p2 = ((trunc_ln55_28_fu_2504_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2543_p2 = ((tmp_44_fu_2511_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2549_p2 = ((trunc_ln55_29_fu_2521_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1216_p2 = ((trunc_ln55_2_fu_1189_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_2644_p2 = ((tmp_46_fu_2613_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_2650_p2 = ((trunc_ln55_30_fu_2623_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_2662_p2 = ((tmp_47_fu_2630_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_2668_p2 = ((trunc_ln55_31_fu_2640_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1228_p2 = ((tmp_5_fu_1196_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1234_p2 = ((trunc_ln55_3_fu_1206_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1309_p2 = ((tmp_7_fu_1278_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1315_p2 = ((trunc_ln55_4_fu_1288_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1111_p2 = ((tmp_1_fu_1080_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = zext_ln54_16_fu_622_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = zext_ln54_16_fu_622_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = zext_ln54_16_fu_622_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = zext_ln54_16_fu_622_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = zext_ln54_16_fu_622_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = zext_ln54_16_fu_622_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = zext_ln54_16_fu_622_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_16_fu_622_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_16_fu_622_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_16_fu_622_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_16_fu_622_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_16_fu_622_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_16_fu_622_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = zext_ln54_16_fu_622_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = zext_ln54_16_fu_622_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = zext_ln54_18_fu_748_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_604_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_2_fu_730_p4 = {{add_ln53_14_reg_2873[6:4]}};
assign min_p_11_fu_1594_p3 = ((and_ln55_9_reg_3291[0:0] == 1'b1) ? reg_568 : min_p_9_reg_3279);
assign min_p_13_fu_1693_p3 = ((and_ln55_11_reg_3311[0:0] == 1'b1) ? reg_558 : min_p_11_reg_3304);
assign min_p_15_fu_1793_p3 = ((and_ln55_13_reg_3336[0:0] == 1'b1) ? reg_573 : min_p_13_reg_3324);
assign min_p_17_fu_1892_p3 = ((and_ln55_15_reg_3356[0:0] == 1'b1) ? reg_563 : min_p_15_reg_3349);
assign min_p_19_fu_1991_p3 = ((and_ln55_17_reg_3374[0:0] == 1'b1) ? p_8_reg_3267 : min_p_17_reg_3362);
assign min_p_21_fu_2089_p3 = ((and_ln55_19_reg_3387[0:0] == 1'b1) ? reg_553 : min_p_19_reg_3380);
assign min_p_23_fu_2188_p3 = ((and_ln55_21_reg_3405[0:0] == 1'b1) ? p_10_reg_3297 : min_p_21_reg_3393);
assign min_p_25_fu_2296_p3 = ((and_ln55_23_reg_3418[0:0] == 1'b1) ? reg_568 : min_p_23_reg_3411);
assign min_p_27_fu_2395_p3 = ((and_ln55_25_reg_3436[0:0] == 1'b1) ? p_12_reg_3317 : min_p_25_reg_3424);
assign min_p_29_fu_2484_p3 = ((and_ln55_27_reg_3449[0:0] == 1'b1) ? reg_558 : min_p_27_reg_3442);
assign min_p_31_fu_2573_p3 = ((and_ln55_29_reg_3462[0:0] == 1'b1) ? p_14_reg_3342 : min_p_29_reg_3455);
assign min_p_33_fu_2691_p3 = ((and_ln55_31_fu_2686_p2[0:0] == 1'b1) ? reg_573 : min_p_31_reg_3468);
assign min_p_3_fu_1164_p3 = ((and_ln55_1_reg_3192[0:0] == 1'b1) ? reg_553 : min_p_1_reg_3180);
assign min_p_5_fu_1263_p3 = ((and_ln55_3_reg_3215[0:0] == 1'b1) ? reg_558 : min_p_3_reg_3203);
assign min_p_7_fu_1362_p3 = ((and_ln55_5_reg_3238[0:0] == 1'b1) ? reg_563 : min_p_5_reg_3226);
assign min_p_9_fu_1494_p3 = ((and_ln55_7_reg_3261[0:0] == 1'b1) ? reg_553 : min_p_7_reg_3249);
assign min_s_10_fu_1886_p3 = ((and_ln55_13_reg_3336[0:0] == 1'b1) ? zext_ln55_6_fu_1883_p1 : min_s_9_reg_3331);
assign min_s_11_fu_1902_p3 = ((and_ln55_15_reg_3356[0:0] == 1'b1) ? zext_ln55_7_fu_1899_p1 : min_s_10_fu_1886_p3);
assign min_s_12_fu_2083_p3 = ((and_ln55_17_reg_3374[0:0] == 1'b1) ? zext_ln55_8_fu_2080_p1 : min_s_11_reg_3369);
assign min_s_13_fu_2099_p3 = ((and_ln55_19_reg_3387[0:0] == 1'b1) ? zext_ln55_9_fu_2096_p1 : min_s_12_fu_2083_p3);
assign min_s_14_fu_2290_p3 = ((and_ln55_21_reg_3405[0:0] == 1'b1) ? zext_ln55_10_fu_2287_p1 : min_s_13_reg_3400);
assign min_s_15_fu_2306_p3 = ((and_ln55_23_reg_3418[0:0] == 1'b1) ? zext_ln55_11_fu_2303_p1 : min_s_14_fu_2290_p3);
assign min_s_16_fu_2582_p3 = ((and_ln55_25_reg_3436[0:0] == 1'b1) ? zext_ln55_12_fu_2579_p1 : min_s_15_reg_3431);
assign min_s_17_fu_2591_p3 = ((and_ln55_27_reg_3449[0:0] == 1'b1) ? zext_ln55_13_fu_2588_p1 : min_s_16_fu_2582_p3);
assign min_s_18_fu_2601_p3 = ((and_ln55_29_reg_3462[0:0] == 1'b1) ? zext_ln55_14_fu_2598_p1 : min_s_17_fu_2591_p3);
assign min_s_19_fu_2701_p3 = ((and_ln55_31_fu_2686_p2[0:0] == 1'b1) ? zext_ln55_15_fu_2698_p1 : min_s_18_reg_3475);
assign min_s_34_out = ((and_ln55_29_reg_3462[0:0] == 1'b1) ? zext_ln55_14_fu_2598_p1 : min_s_17_fu_2591_p3);
assign min_s_4_fu_1467_p3 = ((and_ln55_1_reg_3192[0:0] == 1'b1) ? zext_ln55_fu_1464_p1 : min_s_fu_142);
assign min_s_5_fu_1477_p3 = ((and_ln55_3_reg_3215[0:0] == 1'b1) ? zext_ln55_1_fu_1474_p1 : min_s_4_fu_1467_p3);
assign min_s_6_fu_1487_p3 = ((and_ln55_5_reg_3238[0:0] == 1'b1) ? zext_ln55_2_fu_1484_p1 : min_s_5_fu_1477_p3);
assign min_s_7_fu_1504_p3 = ((and_ln55_7_reg_3261[0:0] == 1'b1) ? zext_ln55_3_fu_1501_p1 : min_s_6_fu_1487_p3);
assign min_s_8_fu_1687_p3 = ((and_ln55_9_reg_3291[0:0] == 1'b1) ? zext_ln55_4_fu_1684_p1 : min_s_7_reg_3286);
assign min_s_9_fu_1703_p3 = ((and_ln55_11_reg_3311[0:0] == 1'b1) ? zext_ln55_5_fu_1700_p1 : min_s_8_fu_1687_p3);
assign or_ln55_10_fu_1648_p2 = (icmp_ln55_21_fu_1642_p2 | icmp_ln55_20_fu_1636_p2);
assign or_ln55_11_fu_1666_p2 = (icmp_ln55_23_fu_1660_p2 | icmp_ln55_22_fu_1654_p2);
assign or_ln55_12_fu_1757_p2 = (icmp_ln55_25_fu_1751_p2 | icmp_ln55_24_fu_1745_p2);
assign or_ln55_13_fu_1775_p2 = (icmp_ln55_27_fu_1769_p2 | icmp_ln55_26_fu_1763_p2);
assign or_ln55_14_fu_1847_p2 = (icmp_ln55_29_fu_1841_p2 | icmp_ln55_28_fu_1835_p2);
assign or_ln55_15_fu_1865_p2 = (icmp_ln55_31_fu_1859_p2 | icmp_ln55_30_fu_1853_p2);
assign or_ln55_16_fu_1955_p2 = (icmp_ln55_33_fu_1949_p2 | icmp_ln55_32_fu_1943_p2);
assign or_ln55_17_fu_1973_p2 = (icmp_ln55_35_fu_1967_p2 | icmp_ln55_34_fu_1961_p2);
assign or_ln55_18_fu_2044_p2 = (icmp_ln55_37_fu_2038_p2 | icmp_ln55_36_fu_2032_p2);
assign or_ln55_19_fu_2062_p2 = (icmp_ln55_39_fu_2056_p2 | icmp_ln55_38_fu_2050_p2);
assign or_ln55_1_fu_1141_p2 = (icmp_ln55_3_fu_1135_p2 | icmp_ln55_2_fu_1129_p2);
assign or_ln55_20_fu_2152_p2 = (icmp_ln55_41_fu_2146_p2 | icmp_ln55_40_fu_2140_p2);
assign or_ln55_21_fu_2170_p2 = (icmp_ln55_43_fu_2164_p2 | icmp_ln55_42_fu_2158_p2);
assign or_ln55_22_fu_2251_p2 = (icmp_ln55_45_fu_2245_p2 | icmp_ln55_44_fu_2239_p2);
assign or_ln55_23_fu_2269_p2 = (icmp_ln55_47_fu_2263_p2 | icmp_ln55_46_fu_2257_p2);
assign or_ln55_24_fu_2359_p2 = (icmp_ln55_49_fu_2353_p2 | icmp_ln55_48_fu_2347_p2);
assign or_ln55_25_fu_2377_p2 = (icmp_ln55_51_fu_2371_p2 | icmp_ln55_50_fu_2365_p2);
assign or_ln55_26_fu_2448_p2 = (icmp_ln55_53_fu_2442_p2 | icmp_ln55_52_fu_2436_p2);
assign or_ln55_27_fu_2466_p2 = (icmp_ln55_55_fu_2460_p2 | icmp_ln55_54_fu_2454_p2);
assign or_ln55_28_fu_2537_p2 = (icmp_ln55_57_fu_2531_p2 | icmp_ln55_56_fu_2525_p2);
assign or_ln55_29_fu_2555_p2 = (icmp_ln55_59_fu_2549_p2 | icmp_ln55_58_fu_2543_p2);
assign or_ln55_2_fu_1222_p2 = (icmp_ln55_5_fu_1216_p2 | icmp_ln55_4_fu_1210_p2);
assign or_ln55_30_fu_2656_p2 = (icmp_ln55_61_fu_2650_p2 | icmp_ln55_60_fu_2644_p2);
assign or_ln55_31_fu_2674_p2 = (icmp_ln55_63_fu_2668_p2 | icmp_ln55_62_fu_2662_p2);
assign or_ln55_3_fu_1240_p2 = (icmp_ln55_7_fu_1234_p2 | icmp_ln55_6_fu_1228_p2);
assign or_ln55_4_fu_1321_p2 = (icmp_ln55_9_fu_1315_p2 | icmp_ln55_8_fu_1309_p2);
assign or_ln55_5_fu_1339_p2 = (icmp_ln55_11_fu_1333_p2 | icmp_ln55_10_fu_1327_p2);
assign or_ln55_6_fu_1420_p2 = (icmp_ln55_13_fu_1414_p2 | icmp_ln55_12_fu_1408_p2);
assign or_ln55_7_fu_1438_p2 = (icmp_ln55_15_fu_1432_p2 | icmp_ln55_14_fu_1426_p2);
assign or_ln55_8_fu_1558_p2 = (icmp_ln55_17_fu_1552_p2 | icmp_ln55_16_fu_1546_p2);
assign or_ln55_9_fu_1576_p2 = (icmp_ln55_19_fu_1570_p2 | icmp_ln55_18_fu_1564_p2);
assign or_ln55_fu_1123_p2 = (icmp_ln55_fu_1111_p2 | icmp_ln55_1_fu_1117_p2);
assign shl_ln3_fu_641_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_10_fu_954_p3 = {{add_ln53_10_reg_3091}, {6'd0}};
assign shl_ln54_11_fu_971_p3 = {{add_ln53_11_reg_3097}, {6'd0}};
assign shl_ln54_12_fu_1003_p3 = {{add_ln53_12_reg_3123}, {6'd0}};
assign shl_ln54_13_fu_1020_p3 = {{add_ln53_13_reg_3129}, {6'd0}};
assign shl_ln54_14_fu_1045_p3 = {{trunc_ln54_fu_1042_p1}, {6'd0}};
assign shl_ln54_1_fu_686_p3 = {{add_ln53_reg_2861}, {6'd0}};
assign shl_ln54_2_fu_703_p3 = {{add_ln53_1_reg_2867}, {6'd0}};
assign shl_ln54_3_fu_758_p3 = {{add_ln53_2_reg_2908}, {6'd0}};
assign shl_ln54_4_fu_775_p3 = {{add_ln53_3_reg_2919}, {6'd0}};
assign shl_ln54_5_fu_807_p3 = {{add_ln53_4_reg_3000}, {6'd0}};
assign shl_ln54_6_fu_824_p3 = {{add_ln53_5_reg_3006}, {6'd0}};
assign shl_ln54_7_fu_856_p3 = {{add_ln53_6_reg_3032}, {6'd0}};
assign shl_ln54_8_fu_873_p3 = {{add_ln53_7_reg_3038}, {6'd0}};
assign shl_ln54_9_fu_905_p3 = {{add_ln53_8_reg_3059}, {6'd0}};
assign shl_ln54_s_fu_922_p3 = {{add_ln53_9_reg_3065}, {6'd0}};
assign tmp_10_fu_1377_p4 = {{bitcast_ln55_6_fu_1373_p1[62:52]}};
assign tmp_11_fu_1394_p4 = {{bitcast_ln55_7_fu_1391_p1[62:52]}};
assign tmp_13_fu_1515_p4 = {{bitcast_ln55_8_fu_1511_p1[62:52]}};
assign tmp_14_fu_1532_p4 = {{bitcast_ln55_9_fu_1529_p1[62:52]}};
assign tmp_16_fu_1605_p4 = {{bitcast_ln55_10_fu_1601_p1[62:52]}};
assign tmp_17_fu_1622_p4 = {{bitcast_ln55_11_fu_1619_p1[62:52]}};
assign tmp_19_fu_1714_p4 = {{bitcast_ln55_12_fu_1710_p1[62:52]}};
assign tmp_1_fu_1080_p4 = {{bitcast_ln55_fu_1076_p1[62:52]}};
assign tmp_20_fu_1731_p4 = {{bitcast_ln55_13_fu_1728_p1[62:52]}};
assign tmp_22_fu_1804_p4 = {{bitcast_ln55_14_fu_1800_p1[62:52]}};
assign tmp_23_fu_1821_p4 = {{bitcast_ln55_15_fu_1818_p1[62:52]}};
assign tmp_25_fu_1912_p4 = {{bitcast_ln55_16_fu_1909_p1[62:52]}};
assign tmp_26_fu_1929_p4 = {{bitcast_ln55_17_fu_1926_p1[62:52]}};
assign tmp_28_fu_2001_p4 = {{bitcast_ln55_18_fu_1997_p1[62:52]}};
assign tmp_29_fu_2018_p4 = {{bitcast_ln55_19_fu_2015_p1[62:52]}};
assign tmp_2_fu_1097_p4 = {{bitcast_ln55_1_fu_1094_p1[62:52]}};
assign tmp_31_fu_2109_p4 = {{bitcast_ln55_20_fu_2106_p1[62:52]}};
assign tmp_32_fu_2126_p4 = {{bitcast_ln55_21_fu_2123_p1[62:52]}};
assign tmp_34_fu_2208_p4 = {{bitcast_ln55_22_fu_2204_p1[62:52]}};
assign tmp_35_fu_2225_p4 = {{bitcast_ln55_23_fu_2222_p1[62:52]}};
assign tmp_37_fu_2316_p4 = {{bitcast_ln55_24_fu_2313_p1[62:52]}};
assign tmp_38_fu_2333_p4 = {{bitcast_ln55_25_fu_2330_p1[62:52]}};
assign tmp_40_fu_2405_p4 = {{bitcast_ln55_26_fu_2401_p1[62:52]}};
assign tmp_41_fu_2422_p4 = {{bitcast_ln55_27_fu_2419_p1[62:52]}};
assign tmp_43_fu_2494_p4 = {{bitcast_ln55_28_fu_2491_p1[62:52]}};
assign tmp_44_fu_2511_p4 = {{bitcast_ln55_29_fu_2508_p1[62:52]}};
assign tmp_46_fu_2613_p4 = {{bitcast_ln55_30_fu_2609_p1[62:52]}};
assign tmp_47_fu_2630_p4 = {{bitcast_ln55_31_fu_2627_p1[62:52]}};
assign tmp_4_fu_1179_p4 = {{bitcast_ln55_2_fu_1175_p1[62:52]}};
assign tmp_5_fu_1196_p4 = {{bitcast_ln55_3_fu_1193_p1[62:52]}};
assign tmp_7_fu_1278_p4 = {{bitcast_ln55_4_fu_1274_p1[62:52]}};
assign tmp_8_fu_1295_p4 = {{bitcast_ln55_5_fu_1292_p1[62:52]}};
assign tmp_s_fu_614_p3 = {{t_1}, {lshr_ln8_2_fu_604_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_1042_p1 = add_ln53_14_reg_2873[5:0];
assign trunc_ln55_10_fu_1615_p1 = bitcast_ln55_10_fu_1601_p1[51:0];
assign trunc_ln55_11_fu_1632_p1 = bitcast_ln55_11_fu_1619_p1[51:0];
assign trunc_ln55_12_fu_1724_p1 = bitcast_ln55_12_fu_1710_p1[51:0];
assign trunc_ln55_13_fu_1741_p1 = bitcast_ln55_13_fu_1728_p1[51:0];
assign trunc_ln55_14_fu_1814_p1 = bitcast_ln55_14_fu_1800_p1[51:0];
assign trunc_ln55_15_fu_1831_p1 = bitcast_ln55_15_fu_1818_p1[51:0];
assign trunc_ln55_16_fu_1922_p1 = bitcast_ln55_16_fu_1909_p1[51:0];
assign trunc_ln55_17_fu_1939_p1 = bitcast_ln55_17_fu_1926_p1[51:0];
assign trunc_ln55_18_fu_2011_p1 = bitcast_ln55_18_fu_1997_p1[51:0];
assign trunc_ln55_19_fu_2028_p1 = bitcast_ln55_19_fu_2015_p1[51:0];
assign trunc_ln55_1_fu_1107_p1 = bitcast_ln55_1_fu_1094_p1[51:0];
assign trunc_ln55_20_fu_2119_p1 = bitcast_ln55_20_fu_2106_p1[51:0];
assign trunc_ln55_21_fu_2136_p1 = bitcast_ln55_21_fu_2123_p1[51:0];
assign trunc_ln55_22_fu_2218_p1 = bitcast_ln55_22_fu_2204_p1[51:0];
assign trunc_ln55_23_fu_2235_p1 = bitcast_ln55_23_fu_2222_p1[51:0];
assign trunc_ln55_24_fu_2326_p1 = bitcast_ln55_24_fu_2313_p1[51:0];
assign trunc_ln55_25_fu_2343_p1 = bitcast_ln55_25_fu_2330_p1[51:0];
assign trunc_ln55_26_fu_2415_p1 = bitcast_ln55_26_fu_2401_p1[51:0];
assign trunc_ln55_27_fu_2432_p1 = bitcast_ln55_27_fu_2419_p1[51:0];
assign trunc_ln55_28_fu_2504_p1 = bitcast_ln55_28_fu_2491_p1[51:0];
assign trunc_ln55_29_fu_2521_p1 = bitcast_ln55_29_fu_2508_p1[51:0];
assign trunc_ln55_2_fu_1189_p1 = bitcast_ln55_2_fu_1175_p1[51:0];
assign trunc_ln55_30_fu_2623_p1 = bitcast_ln55_30_fu_2609_p1[51:0];
assign trunc_ln55_31_fu_2640_p1 = bitcast_ln55_31_fu_2627_p1[51:0];
assign trunc_ln55_3_fu_1206_p1 = bitcast_ln55_3_fu_1193_p1[51:0];
assign trunc_ln55_4_fu_1288_p1 = bitcast_ln55_4_fu_1274_p1[51:0];
assign trunc_ln55_5_fu_1305_p1 = bitcast_ln55_5_fu_1292_p1[51:0];
assign trunc_ln55_6_fu_1387_p1 = bitcast_ln55_6_fu_1373_p1[51:0];
assign trunc_ln55_7_fu_1404_p1 = bitcast_ln55_7_fu_1391_p1[51:0];
assign trunc_ln55_8_fu_1525_p1 = bitcast_ln55_8_fu_1511_p1[51:0];
assign trunc_ln55_9_fu_1542_p1 = bitcast_ln55_9_fu_1529_p1[51:0];
assign trunc_ln55_fu_1090_p1 = bitcast_ln55_fu_1076_p1[51:0];
assign zext_ln16_fu_600_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_578_p1 = zext_ln52;
assign zext_ln54_10_fu_934_p1 = add_ln54_10_fu_929_p2;
assign zext_ln54_11_fu_966_p1 = add_ln54_11_fu_961_p2;
assign zext_ln54_12_fu_983_p1 = add_ln54_12_fu_978_p2;
assign zext_ln54_13_fu_1015_p1 = add_ln54_13_fu_1010_p2;
assign zext_ln54_14_fu_1032_p1 = add_ln54_14_fu_1027_p2;
assign zext_ln54_15_fu_1058_p1 = add_ln54_15_fu_1053_p2;
assign zext_ln54_16_fu_622_p1 = tmp_s_fu_614_p3;
assign zext_ln54_17_fu_739_p1 = lshr_ln9_2_fu_730_p4;
assign zext_ln54_18_fu_748_p1 = add_ln54_16_fu_743_p2;
assign zext_ln54_1_fu_698_p1 = add_ln54_1_fu_693_p2;
assign zext_ln54_2_fu_715_p1 = add_ln54_2_fu_710_p2;
assign zext_ln54_3_fu_770_p1 = add_ln54_3_fu_765_p2;
assign zext_ln54_4_fu_787_p1 = add_ln54_4_fu_782_p2;
assign zext_ln54_5_fu_819_p1 = add_ln54_5_fu_814_p2;
assign zext_ln54_6_fu_836_p1 = add_ln54_6_fu_831_p2;
assign zext_ln54_7_fu_868_p1 = add_ln54_7_fu_863_p2;
assign zext_ln54_8_fu_885_p1 = add_ln54_8_fu_880_p2;
assign zext_ln54_9_fu_917_p1 = add_ln54_9_fu_912_p2;
assign zext_ln54_fu_655_p1 = add_ln54_fu_649_p2;
assign zext_ln55_10_fu_2287_p1 = add_ln53_9_reg_3065;
assign zext_ln55_11_fu_2303_p1 = add_ln53_10_reg_3091;
assign zext_ln55_12_fu_2579_p1 = add_ln53_11_reg_3097_pp0_iter1_reg;
assign zext_ln55_13_fu_2588_p1 = add_ln53_12_reg_3123_pp0_iter1_reg;
assign zext_ln55_14_fu_2598_p1 = add_ln53_13_reg_3129_pp0_iter1_reg;
assign zext_ln55_15_fu_2698_p1 = trunc_ln54_reg_3165_pp0_iter1_reg;
assign zext_ln55_1_fu_1474_p1 = add_ln53_reg_2861;
assign zext_ln55_2_fu_1484_p1 = add_ln53_1_reg_2867;
assign zext_ln55_3_fu_1501_p1 = add_ln53_2_reg_2908;
assign zext_ln55_4_fu_1684_p1 = add_ln53_3_reg_2919;
assign zext_ln55_5_fu_1700_p1 = add_ln53_4_reg_3000;
assign zext_ln55_6_fu_1883_p1 = add_ln53_5_reg_3006;
assign zext_ln55_7_fu_1899_p1 = add_ln53_6_reg_3032;
assign zext_ln55_8_fu_2080_p1 = add_ln53_7_reg_3038;
assign zext_ln55_9_fu_2096_p1 = add_ln53_8_reg_3059;
assign zext_ln55_fu_1464_p1 = s_reg_2763;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_2744[11:8] <= 4'b0000;
end
endmodule 