module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_36,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_3,min_s_34_out,min_s_34_out_ap_vld,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1054_p_din0,grp_fu_1054_p_din1,grp_fu_1054_p_opcode,grp_fu_1054_p_dout0,grp_fu_1054_p_ce); 
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
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [11:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
input  [6:0] zext_ln52_2;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] zext_ln52_3;
output  [7:0] min_s_34_out;
output   min_s_34_out_ap_vld;
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1054_p_din0;
output  [63:0] grp_fu_1054_p_din1;
output  [4:0] grp_fu_1054_p_opcode;
input  [0:0] grp_fu_1054_p_dout0;
output   grp_fu_1054_p_ce;
reg ap_idle;
reg min_s_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_58_reg_3254;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_623_p3;
reg   [63:0] reg_637;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_630_p3;
reg   [63:0] reg_641;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_645;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_649;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_653;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_658;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_663;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_668;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_673;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_678_p1;
reg   [10:0] zext_ln52_2_cast_reg_3123;
reg   [5:0] s_reg_3142;
wire   [3:0] lshr_ln8_s_fu_704_p4;
reg   [3:0] lshr_ln8_s_reg_3156;
wire   [5:0] add_ln53_fu_749_p2;
reg   [5:0] add_ln53_reg_3187;
wire   [5:0] add_ln53_1_fu_755_p2;
reg   [5:0] add_ln53_1_reg_3193;
wire   [5:0] add_ln53_2_fu_761_p2;
reg   [5:0] add_ln53_2_reg_3199;
wire   [5:0] add_ln53_4_fu_809_p2;
reg   [5:0] add_ln53_4_reg_3215;
wire   [5:0] add_ln53_5_fu_838_p2;
reg   [5:0] add_ln53_5_reg_3226;
wire   [5:0] add_ln53_6_fu_867_p2;
reg   [5:0] add_ln53_6_reg_3237;
wire   [6:0] add_ln53_14_fu_896_p2;
reg   [6:0] add_ln53_14_reg_3248;
reg   [0:0] tmp_58_reg_3254_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3258;
reg   [63:0] llike_2_load_reg_3263;
reg   [63:0] llike_3_load_reg_3278;
reg   [63:0] llike_load_reg_3293;
wire   [5:0] add_ln53_3_fu_946_p2;
reg   [5:0] add_ln53_3_reg_3298;
reg   [63:0] llike_1_load_1_reg_3304;
reg   [63:0] llike_2_load_1_reg_3309;
reg   [63:0] llike_3_load_1_reg_3314;
reg   [63:0] llike_load_1_reg_3319;
wire   [5:0] add_ln53_8_fu_968_p2;
reg   [5:0] add_ln53_8_reg_3329;
wire   [5:0] add_ln53_9_fu_995_p2;
reg   [5:0] add_ln53_9_reg_3340;
wire   [5:0] add_ln53_10_fu_1022_p2;
reg   [5:0] add_ln53_10_reg_3351;
wire   [5:0] add_ln53_12_fu_1066_p2;
reg   [5:0] add_ln53_12_reg_3367;
reg   [5:0] add_ln53_12_reg_3367_pp0_iter1_reg;
wire   [5:0] add_ln53_13_fu_1093_p2;
reg   [5:0] add_ln53_13_reg_3378;
reg   [5:0] add_ln53_13_reg_3378_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_fu_1143_p1;
reg   [63:0] llike_1_load_2_reg_3419;
reg   [63:0] llike_2_load_2_reg_3424;
reg   [63:0] llike_3_load_2_reg_3429;
reg   [63:0] llike_load_2_reg_3434;
reg   [63:0] llike_1_load_3_reg_3439;
reg   [63:0] llike_2_load_3_reg_3444;
reg   [63:0] llike_3_load_3_reg_3449;
reg   [63:0] llike_load_3_reg_3454;
wire   [63:0] bitcast_ln54_1_fu_1184_p1;
wire   [5:0] add_ln53_7_fu_1225_p2;
reg   [5:0] add_ln53_7_reg_3484;
wire   [63:0] bitcast_ln54_2_fu_1230_p1;
wire   [63:0] bitcast_ln54_3_fu_1271_p1;
reg   [63:0] select_ln54_8_reg_3520;
wire   [5:0] add_ln53_11_fu_1312_p2;
reg   [5:0] add_ln53_11_reg_3545;
reg   [5:0] add_ln53_11_reg_3545_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_4_fu_1317_p1;
reg   [63:0] select_ln54_9_reg_3556;
wire   [63:0] bitcast_ln54_5_fu_1358_p1;
reg   [63:0] select_ln54_12_reg_3586;
wire   [63:0] bitcast_ln54_6_fu_1399_p1;
reg   [63:0] select_ln54_13_reg_3616;
wire   [5:0] trunc_ln54_fu_1404_p1;
reg   [5:0] trunc_ln54_reg_3621;
reg   [5:0] trunc_ln54_reg_3621_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_7_fu_1426_p1;
reg   [63:0] select_ln54_15_reg_3641;
reg   [63:0] min_p_1_reg_3646;
wire   [63:0] bitcast_ln54_8_fu_1435_p1;
wire   [0:0] and_ln55_1_fu_1516_p2;
reg   [0:0] and_ln55_1_reg_3658;
wire   [63:0] bitcast_ln54_9_fu_1522_p1;
wire   [63:0] min_p_3_fu_1526_p3;
reg   [63:0] min_p_3_reg_3669;
wire   [63:0] bitcast_ln54_10_fu_1533_p1;
wire   [0:0] and_ln55_3_fu_1615_p2;
reg   [0:0] and_ln55_3_reg_3681;
wire   [63:0] bitcast_ln54_11_fu_1621_p1;
wire   [63:0] min_p_5_fu_1626_p3;
reg   [63:0] min_p_5_reg_3692;
wire   [63:0] bitcast_ln54_12_fu_1633_p1;
wire   [0:0] and_ln55_5_fu_1714_p2;
reg   [0:0] and_ln55_5_reg_3704;
wire   [63:0] bitcast_ln54_13_fu_1720_p1;
wire   [63:0] min_p_7_fu_1724_p3;
reg   [63:0] min_p_7_reg_3715;
wire   [63:0] bitcast_ln54_14_fu_1731_p1;
wire   [0:0] and_ln55_7_fu_1813_p2;
reg   [0:0] and_ln55_7_reg_3727;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] p_8_reg_3733;
wire   [63:0] bitcast_ln54_15_fu_1819_p1;
wire   [63:0] min_p_9_fu_1856_p3;
reg   [63:0] min_p_9_reg_3745;
wire   [7:0] min_s_7_fu_1866_p3;
reg   [7:0] min_s_7_reg_3752;
wire   [0:0] and_ln55_9_fu_1950_p2;
reg   [0:0] and_ln55_9_reg_3757;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] p_10_reg_3763;
wire   [63:0] min_p_11_fu_1956_p3;
reg   [63:0] min_p_11_reg_3770;
wire   [0:0] and_ln55_11_fu_2040_p2;
reg   [0:0] and_ln55_11_reg_3777;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] p_12_reg_3783;
wire   [63:0] min_p_13_fu_2055_p3;
reg   [63:0] min_p_13_reg_3790;
wire   [7:0] min_s_9_fu_2065_p3;
reg   [7:0] min_s_9_reg_3797;
wire   [0:0] and_ln55_13_fu_2149_p2;
reg   [0:0] and_ln55_13_reg_3802;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] p_14_reg_3808;
wire   [63:0] min_p_15_fu_2155_p3;
reg   [63:0] min_p_15_reg_3815;
wire   [0:0] and_ln55_15_fu_2239_p2;
reg   [0:0] and_ln55_15_reg_3822;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_17_fu_2254_p3;
reg   [63:0] min_p_17_reg_3828;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_11_fu_2264_p3;
reg   [7:0] min_s_11_reg_3835;
wire   [0:0] and_ln55_17_fu_2347_p2;
reg   [0:0] and_ln55_17_reg_3840;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_19_fu_2353_p3;
reg   [63:0] min_p_19_reg_3846;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln55_19_fu_2436_p2;
reg   [0:0] and_ln55_19_reg_3853;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_21_fu_2451_p3;
reg   [63:0] min_p_21_reg_3859;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [7:0] min_s_13_fu_2461_p3;
reg   [7:0] min_s_13_reg_3866;
wire   [0:0] and_ln55_21_fu_2544_p2;
reg   [0:0] and_ln55_21_reg_3871;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_23_fu_2550_p3;
reg   [63:0] min_p_23_reg_3877;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln55_23_fu_2643_p2;
reg   [0:0] and_ln55_23_reg_3884;
wire   [63:0] min_p_25_fu_2658_p3;
reg   [63:0] min_p_25_reg_3890;
wire   [7:0] min_s_15_fu_2668_p3;
reg   [7:0] min_s_15_reg_3897;
wire   [0:0] and_ln55_25_fu_2751_p2;
reg   [0:0] and_ln55_25_reg_3902;
wire   [63:0] min_p_27_fu_2757_p3;
reg   [63:0] min_p_27_reg_3908;
wire   [0:0] and_ln55_27_fu_2840_p2;
reg   [0:0] and_ln55_27_reg_3915;
wire   [63:0] min_p_29_fu_2846_p3;
reg   [63:0] min_p_29_reg_3921;
wire   [0:0] and_ln55_29_fu_2929_p2;
reg   [0:0] and_ln55_29_reg_3928;
wire   [63:0] min_p_31_fu_2935_p3;
reg   [63:0] min_p_31_reg_3934;
wire   [7:0] min_s_18_fu_2963_p3;
reg   [7:0] min_s_18_reg_3941;
reg   [0:0] tmp_61_reg_3946;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
reg    ap_condition_exit_pp0_iter1_stage8;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_16_fu_722_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_743_p1;
wire   [63:0] zext_ln54_17_fu_785_p1;
wire   [63:0] zext_ln54_18_fu_804_p1;
wire   [63:0] zext_ln54_19_fu_833_p1;
wire   [63:0] zext_ln54_20_fu_862_p1;
wire   [63:0] zext_ln54_21_fu_891_p1;
wire   [63:0] zext_ln54_1_fu_922_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_940_p1;
wire   [63:0] zext_ln54_22_fu_963_p1;
wire   [63:0] zext_ln54_23_fu_990_p1;
wire   [63:0] zext_ln54_24_fu_1017_p1;
wire   [63:0] zext_ln54_25_fu_1044_p1;
wire   [63:0] zext_ln54_26_fu_1061_p1;
wire   [63:0] zext_ln54_27_fu_1088_p1;
wire   [63:0] zext_ln54_28_fu_1115_p1;
wire   [63:0] zext_ln54_30_fu_1138_p1;
wire   [63:0] zext_ln54_3_fu_1160_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1178_p1;
wire   [63:0] zext_ln54_5_fu_1201_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1219_p1;
wire   [63:0] zext_ln54_7_fu_1247_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_8_fu_1265_p1;
wire   [63:0] zext_ln54_9_fu_1288_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln54_10_fu_1306_p1;
wire   [63:0] zext_ln54_11_fu_1334_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_12_fu_1352_p1;
wire   [63:0] zext_ln54_13_fu_1375_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln54_14_fu_1393_p1;
wire   [63:0] zext_ln54_15_fu_1420_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_33_fu_3053_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_132;
wire   [7:0] min_s_19_fu_3063_p3;
wire    ap_block_pp0_stage18;
reg   [5:0] min_s_1_fu_136;
wire   [5:0] add_ln53_15_fu_2556_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_2_ce1_local;
reg   [11:0] llike_2_address1_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_ce1_local;
reg   [11:0] llike_3_address1_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg    llike_ce1_local;
reg   [11:0] llike_address1_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_615_p0;
reg   [63:0] grp_fu_615_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_619_p0;
reg   [63:0] grp_fu_619_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_714_p3;
wire   [10:0] shl_ln2_fu_729_p3;
wire   [10:0] add_ln54_fu_737_p2;
wire   [3:0] lshr_ln8_1_fu_767_p4;
wire   [11:0] tmp_10_fu_777_p3;
wire   [3:0] add_ln8_fu_790_p2;
wire   [11:0] tmp_14_fu_796_p3;
wire   [3:0] lshr_ln8_2_fu_815_p4;
wire   [11:0] tmp_18_fu_825_p3;
wire   [3:0] lshr_ln8_3_fu_844_p4;
wire   [11:0] tmp_22_fu_854_p3;
wire   [3:0] lshr_ln8_4_fu_873_p4;
wire   [11:0] tmp_26_fu_883_p3;
wire   [6:0] zext_ln21_fu_700_p1;
wire   [10:0] shl_ln54_1_fu_910_p3;
wire   [10:0] add_ln54_1_fu_917_p2;
wire   [10:0] shl_ln54_2_fu_928_p3;
wire   [10:0] add_ln54_2_fu_935_p2;
wire   [3:0] add_ln8_1_fu_951_p2;
wire   [11:0] tmp_30_fu_956_p3;
wire   [3:0] lshr_ln8_5_fu_973_p4;
wire   [11:0] tmp_34_fu_983_p3;
wire   [3:0] lshr_ln8_6_fu_1000_p4;
wire   [11:0] tmp_38_fu_1010_p3;
wire   [3:0] lshr_ln8_7_fu_1027_p4;
wire   [11:0] tmp_42_fu_1037_p3;
wire   [3:0] add_ln8_2_fu_1049_p2;
wire   [11:0] tmp_46_fu_1054_p3;
wire   [3:0] lshr_ln8_8_fu_1071_p4;
wire   [11:0] tmp_50_fu_1081_p3;
wire   [3:0] lshr_ln8_9_fu_1098_p4;
wire   [11:0] tmp_54_fu_1108_p3;
wire   [4:0] lshr_ln9_3_fu_1120_p4;
wire   [11:0] zext_ln54_29_fu_1129_p1;
wire   [11:0] add_ln54_16_fu_1133_p2;
wire   [10:0] shl_ln54_3_fu_1148_p3;
wire   [10:0] add_ln54_3_fu_1155_p2;
wire   [10:0] shl_ln54_4_fu_1166_p3;
wire   [10:0] add_ln54_4_fu_1173_p2;
wire   [10:0] shl_ln54_5_fu_1189_p3;
wire   [10:0] add_ln54_5_fu_1196_p2;
wire   [10:0] shl_ln54_6_fu_1207_p3;
wire   [10:0] add_ln54_6_fu_1214_p2;
wire   [10:0] shl_ln54_7_fu_1235_p3;
wire   [10:0] add_ln54_7_fu_1242_p2;
wire   [10:0] shl_ln54_8_fu_1253_p3;
wire   [10:0] add_ln54_8_fu_1260_p2;
wire   [10:0] shl_ln54_9_fu_1276_p3;
wire   [10:0] add_ln54_9_fu_1283_p2;
wire   [10:0] shl_ln54_s_fu_1294_p3;
wire   [10:0] add_ln54_10_fu_1301_p2;
wire   [10:0] shl_ln54_10_fu_1322_p3;
wire   [10:0] add_ln54_11_fu_1329_p2;
wire   [10:0] shl_ln54_11_fu_1340_p3;
wire   [10:0] add_ln54_12_fu_1347_p2;
wire   [10:0] shl_ln54_12_fu_1363_p3;
wire   [10:0] add_ln54_13_fu_1370_p2;
wire   [10:0] shl_ln54_13_fu_1381_p3;
wire   [10:0] add_ln54_14_fu_1388_p2;
wire   [10:0] shl_ln54_14_fu_1407_p3;
wire   [10:0] add_ln54_15_fu_1415_p2;
wire   [63:0] bitcast_ln55_fu_1439_p1;
wire   [63:0] bitcast_ln55_1_fu_1457_p1;
wire   [10:0] tmp_1_fu_1443_p4;
wire   [51:0] trunc_ln55_fu_1453_p1;
wire   [0:0] icmp_ln55_1_fu_1480_p2;
wire   [0:0] icmp_ln55_fu_1474_p2;
wire   [10:0] tmp_2_fu_1460_p4;
wire   [51:0] trunc_ln55_1_fu_1470_p1;
wire   [0:0] icmp_ln55_3_fu_1498_p2;
wire   [0:0] icmp_ln55_2_fu_1492_p2;
wire   [0:0] or_ln55_fu_1486_p2;
wire   [0:0] and_ln55_fu_1510_p2;
wire   [0:0] or_ln55_1_fu_1504_p2;
wire   [63:0] bitcast_ln55_2_fu_1538_p1;
wire   [63:0] bitcast_ln55_3_fu_1556_p1;
wire   [10:0] tmp_4_fu_1542_p4;
wire   [51:0] trunc_ln55_2_fu_1552_p1;
wire   [0:0] icmp_ln55_5_fu_1579_p2;
wire   [0:0] icmp_ln55_4_fu_1573_p2;
wire   [10:0] tmp_5_fu_1559_p4;
wire   [51:0] trunc_ln55_3_fu_1569_p1;
wire   [0:0] icmp_ln55_7_fu_1597_p2;
wire   [0:0] icmp_ln55_6_fu_1591_p2;
wire   [0:0] or_ln55_3_fu_1603_p2;
wire   [0:0] or_ln55_2_fu_1585_p2;
wire   [0:0] and_ln55_2_fu_1609_p2;
wire   [63:0] bitcast_ln55_4_fu_1637_p1;
wire   [63:0] bitcast_ln55_5_fu_1655_p1;
wire   [10:0] tmp_7_fu_1641_p4;
wire   [51:0] trunc_ln55_4_fu_1651_p1;
wire   [0:0] icmp_ln55_9_fu_1678_p2;
wire   [0:0] icmp_ln55_8_fu_1672_p2;
wire   [10:0] tmp_8_fu_1658_p4;
wire   [51:0] trunc_ln55_5_fu_1668_p1;
wire   [0:0] icmp_ln55_11_fu_1696_p2;
wire   [0:0] icmp_ln55_10_fu_1690_p2;
wire   [0:0] or_ln55_5_fu_1702_p2;
wire   [0:0] or_ln55_4_fu_1684_p2;
wire   [0:0] and_ln55_4_fu_1708_p2;
wire   [63:0] bitcast_ln55_6_fu_1736_p1;
wire   [63:0] bitcast_ln55_7_fu_1754_p1;
wire   [10:0] tmp_11_fu_1740_p4;
wire   [51:0] trunc_ln55_6_fu_1750_p1;
wire   [0:0] icmp_ln55_13_fu_1777_p2;
wire   [0:0] icmp_ln55_12_fu_1771_p2;
wire   [10:0] tmp_12_fu_1757_p4;
wire   [51:0] trunc_ln55_7_fu_1767_p1;
wire   [0:0] icmp_ln55_15_fu_1795_p2;
wire   [0:0] icmp_ln55_14_fu_1789_p2;
wire   [0:0] or_ln55_7_fu_1801_p2;
wire   [0:0] or_ln55_6_fu_1783_p2;
wire   [0:0] and_ln55_6_fu_1807_p2;
wire   [7:0] zext_ln55_fu_1826_p1;
wire   [7:0] zext_ln55_1_fu_1836_p1;
wire   [7:0] min_s_4_fu_1829_p3;
wire   [7:0] zext_ln55_2_fu_1846_p1;
wire   [7:0] min_s_5_fu_1839_p3;
wire   [7:0] zext_ln55_3_fu_1863_p1;
wire   [7:0] min_s_6_fu_1849_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln55_8_fu_1873_p1;
wire   [63:0] bitcast_ln55_9_fu_1891_p1;
wire   [10:0] tmp_15_fu_1877_p4;
wire   [51:0] trunc_ln55_8_fu_1887_p1;
wire   [0:0] icmp_ln55_17_fu_1914_p2;
wire   [0:0] icmp_ln55_16_fu_1908_p2;
wire   [10:0] tmp_16_fu_1894_p4;
wire   [51:0] trunc_ln55_9_fu_1904_p1;
wire   [0:0] icmp_ln55_19_fu_1932_p2;
wire   [0:0] icmp_ln55_18_fu_1926_p2;
wire   [0:0] or_ln55_9_fu_1938_p2;
wire   [0:0] or_ln55_8_fu_1920_p2;
wire   [0:0] and_ln55_8_fu_1944_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln55_10_fu_1963_p1;
wire   [63:0] bitcast_ln55_11_fu_1981_p1;
wire   [10:0] tmp_19_fu_1967_p4;
wire   [51:0] trunc_ln55_10_fu_1977_p1;
wire   [0:0] icmp_ln55_21_fu_2004_p2;
wire   [0:0] icmp_ln55_20_fu_1998_p2;
wire   [10:0] tmp_20_fu_1984_p4;
wire   [51:0] trunc_ln55_11_fu_1994_p1;
wire   [0:0] icmp_ln55_23_fu_2022_p2;
wire   [0:0] icmp_ln55_22_fu_2016_p2;
wire   [0:0] or_ln55_11_fu_2028_p2;
wire   [0:0] or_ln55_10_fu_2010_p2;
wire   [0:0] and_ln55_10_fu_2034_p2;
wire   [7:0] zext_ln55_4_fu_2046_p1;
wire   [7:0] zext_ln55_5_fu_2062_p1;
wire   [7:0] min_s_8_fu_2049_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln55_12_fu_2072_p1;
wire   [63:0] bitcast_ln55_13_fu_2090_p1;
wire   [10:0] tmp_23_fu_2076_p4;
wire   [51:0] trunc_ln55_12_fu_2086_p1;
wire   [0:0] icmp_ln55_25_fu_2113_p2;
wire   [0:0] icmp_ln55_24_fu_2107_p2;
wire   [10:0] tmp_24_fu_2093_p4;
wire   [51:0] trunc_ln55_13_fu_2103_p1;
wire   [0:0] icmp_ln55_27_fu_2131_p2;
wire   [0:0] icmp_ln55_26_fu_2125_p2;
wire   [0:0] or_ln55_13_fu_2137_p2;
wire   [0:0] or_ln55_12_fu_2119_p2;
wire   [0:0] and_ln55_12_fu_2143_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln55_14_fu_2162_p1;
wire   [63:0] bitcast_ln55_15_fu_2180_p1;
wire   [10:0] tmp_27_fu_2166_p4;
wire   [51:0] trunc_ln55_14_fu_2176_p1;
wire   [0:0] icmp_ln55_29_fu_2203_p2;
wire   [0:0] icmp_ln55_28_fu_2197_p2;
wire   [10:0] tmp_28_fu_2183_p4;
wire   [51:0] trunc_ln55_15_fu_2193_p1;
wire   [0:0] icmp_ln55_31_fu_2221_p2;
wire   [0:0] icmp_ln55_30_fu_2215_p2;
wire   [0:0] or_ln55_15_fu_2227_p2;
wire   [0:0] or_ln55_14_fu_2209_p2;
wire   [0:0] and_ln55_14_fu_2233_p2;
wire   [7:0] zext_ln55_6_fu_2245_p1;
wire   [7:0] zext_ln55_7_fu_2261_p1;
wire   [7:0] min_s_10_fu_2248_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln55_16_fu_2271_p1;
wire   [63:0] bitcast_ln55_17_fu_2288_p1;
wire   [10:0] tmp_31_fu_2274_p4;
wire   [51:0] trunc_ln55_16_fu_2284_p1;
wire   [0:0] icmp_ln55_33_fu_2311_p2;
wire   [0:0] icmp_ln55_32_fu_2305_p2;
wire   [10:0] tmp_32_fu_2291_p4;
wire   [51:0] trunc_ln55_17_fu_2301_p1;
wire   [0:0] icmp_ln55_35_fu_2329_p2;
wire   [0:0] icmp_ln55_34_fu_2323_p2;
wire   [0:0] or_ln55_17_fu_2335_p2;
wire   [0:0] or_ln55_16_fu_2317_p2;
wire   [0:0] and_ln55_16_fu_2341_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln55_18_fu_2359_p1;
wire   [63:0] bitcast_ln55_19_fu_2377_p1;
wire   [10:0] tmp_35_fu_2363_p4;
wire   [51:0] trunc_ln55_18_fu_2373_p1;
wire   [0:0] icmp_ln55_37_fu_2400_p2;
wire   [0:0] icmp_ln55_36_fu_2394_p2;
wire   [10:0] tmp_36_fu_2380_p4;
wire   [51:0] trunc_ln55_19_fu_2390_p1;
wire   [0:0] icmp_ln55_39_fu_2418_p2;
wire   [0:0] icmp_ln55_38_fu_2412_p2;
wire   [0:0] or_ln55_19_fu_2424_p2;
wire   [0:0] or_ln55_18_fu_2406_p2;
wire   [0:0] and_ln55_18_fu_2430_p2;
wire   [7:0] zext_ln55_8_fu_2442_p1;
wire   [7:0] zext_ln55_9_fu_2458_p1;
wire   [7:0] min_s_12_fu_2445_p3;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln55_20_fu_2468_p1;
wire   [63:0] bitcast_ln55_21_fu_2485_p1;
wire   [10:0] tmp_39_fu_2471_p4;
wire   [51:0] trunc_ln55_20_fu_2481_p1;
wire   [0:0] icmp_ln55_41_fu_2508_p2;
wire   [0:0] icmp_ln55_40_fu_2502_p2;
wire   [10:0] tmp_40_fu_2488_p4;
wire   [51:0] trunc_ln55_21_fu_2498_p1;
wire   [0:0] icmp_ln55_43_fu_2526_p2;
wire   [0:0] icmp_ln55_42_fu_2520_p2;
wire   [0:0] or_ln55_21_fu_2532_p2;
wire   [0:0] or_ln55_20_fu_2514_p2;
wire   [0:0] and_ln55_20_fu_2538_p2;
wire   [63:0] bitcast_ln55_22_fu_2566_p1;
wire   [63:0] bitcast_ln55_23_fu_2584_p1;
wire   [10:0] tmp_43_fu_2570_p4;
wire   [51:0] trunc_ln55_22_fu_2580_p1;
wire   [0:0] icmp_ln55_45_fu_2607_p2;
wire   [0:0] icmp_ln55_44_fu_2601_p2;
wire   [10:0] tmp_44_fu_2587_p4;
wire   [51:0] trunc_ln55_23_fu_2597_p1;
wire   [0:0] icmp_ln55_47_fu_2625_p2;
wire   [0:0] icmp_ln55_46_fu_2619_p2;
wire   [0:0] or_ln55_23_fu_2631_p2;
wire   [0:0] or_ln55_22_fu_2613_p2;
wire   [0:0] and_ln55_22_fu_2637_p2;
wire   [7:0] zext_ln55_10_fu_2649_p1;
wire   [7:0] zext_ln55_11_fu_2665_p1;
wire   [7:0] min_s_14_fu_2652_p3;
wire   [63:0] bitcast_ln55_24_fu_2675_p1;
wire   [63:0] bitcast_ln55_25_fu_2692_p1;
wire   [10:0] tmp_47_fu_2678_p4;
wire   [51:0] trunc_ln55_24_fu_2688_p1;
wire   [0:0] icmp_ln55_49_fu_2715_p2;
wire   [0:0] icmp_ln55_48_fu_2709_p2;
wire   [10:0] tmp_48_fu_2695_p4;
wire   [51:0] trunc_ln55_25_fu_2705_p1;
wire   [0:0] icmp_ln55_51_fu_2733_p2;
wire   [0:0] icmp_ln55_50_fu_2727_p2;
wire   [0:0] or_ln55_25_fu_2739_p2;
wire   [0:0] or_ln55_24_fu_2721_p2;
wire   [0:0] and_ln55_24_fu_2745_p2;
wire   [63:0] bitcast_ln55_26_fu_2763_p1;
wire   [63:0] bitcast_ln55_27_fu_2781_p1;
wire   [10:0] tmp_51_fu_2767_p4;
wire   [51:0] trunc_ln55_26_fu_2777_p1;
wire   [0:0] icmp_ln55_53_fu_2804_p2;
wire   [0:0] icmp_ln55_52_fu_2798_p2;
wire   [10:0] tmp_52_fu_2784_p4;
wire   [51:0] trunc_ln55_27_fu_2794_p1;
wire   [0:0] icmp_ln55_55_fu_2822_p2;
wire   [0:0] icmp_ln55_54_fu_2816_p2;
wire   [0:0] or_ln55_27_fu_2828_p2;
wire   [0:0] or_ln55_26_fu_2810_p2;
wire   [0:0] and_ln55_26_fu_2834_p2;
wire   [63:0] bitcast_ln55_28_fu_2853_p1;
wire   [63:0] bitcast_ln55_29_fu_2870_p1;
wire   [10:0] tmp_55_fu_2856_p4;
wire   [51:0] trunc_ln55_28_fu_2866_p1;
wire   [0:0] icmp_ln55_57_fu_2893_p2;
wire   [0:0] icmp_ln55_56_fu_2887_p2;
wire   [10:0] tmp_56_fu_2873_p4;
wire   [51:0] trunc_ln55_29_fu_2883_p1;
wire   [0:0] icmp_ln55_59_fu_2911_p2;
wire   [0:0] icmp_ln55_58_fu_2905_p2;
wire   [0:0] or_ln55_29_fu_2917_p2;
wire   [0:0] or_ln55_28_fu_2899_p2;
wire   [0:0] and_ln55_28_fu_2923_p2;
wire   [7:0] zext_ln55_12_fu_2941_p1;
wire   [7:0] zext_ln55_13_fu_2950_p1;
wire   [7:0] min_s_16_fu_2944_p3;
wire   [7:0] zext_ln55_14_fu_2960_p1;
wire   [7:0] min_s_17_fu_2953_p3;
wire   [63:0] bitcast_ln55_30_fu_2971_p1;
wire   [63:0] bitcast_ln55_31_fu_2989_p1;
wire   [10:0] tmp_59_fu_2975_p4;
wire   [51:0] trunc_ln55_30_fu_2985_p1;
wire   [0:0] icmp_ln55_61_fu_3012_p2;
wire   [0:0] icmp_ln55_60_fu_3006_p2;
wire   [10:0] tmp_60_fu_2992_p4;
wire   [51:0] trunc_ln55_31_fu_3002_p1;
wire   [0:0] icmp_ln55_63_fu_3030_p2;
wire   [0:0] icmp_ln55_62_fu_3024_p2;
wire   [0:0] or_ln55_31_fu_3036_p2;
wire   [0:0] or_ln55_30_fu_3018_p2;
wire   [0:0] and_ln55_30_fu_3042_p2;
wire   [0:0] and_ln55_31_fu_3048_p2;
wire   [7:0] zext_ln55_15_fu_3060_p1;
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
#0 min_p_fu_128 = 64'd0;
#0 min_s_fu_132 = 8'd0;
#0 min_s_1_fu_136 = 6'd0;
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
        min_p_fu_128 <= min_p_36;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_58_reg_3254_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_128 <= min_p_33_fu_3053_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_136 <= 6'd1;
    end else if (((tmp_58_reg_3254 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_1_fu_136 <= add_ln53_15_fu_2556_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_132 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_58_reg_3254_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_132 <= min_s_19_fu_3063_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_10_reg_3351 <= add_ln53_10_fu_1022_p2;
        add_ln53_12_reg_3367 <= add_ln53_12_fu_1066_p2;
        add_ln53_12_reg_3367_pp0_iter1_reg <= add_ln53_12_reg_3367;
        add_ln53_13_reg_3378 <= add_ln53_13_fu_1093_p2;
        add_ln53_13_reg_3378_pp0_iter1_reg <= add_ln53_13_reg_3378;
        add_ln53_3_reg_3298 <= add_ln53_3_fu_946_p2;
        add_ln53_8_reg_3329 <= add_ln53_8_fu_968_p2;
        add_ln53_9_reg_3340 <= add_ln53_9_fu_995_p2;
        min_p_25_reg_3890 <= min_p_25_fu_2658_p3;
        min_s_15_reg_3897 <= min_s_15_fu_2668_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln53_11_reg_3545 <= add_ln53_11_fu_1312_p2;
        add_ln53_11_reg_3545_pp0_iter1_reg <= add_ln53_11_reg_3545;
        min_p_29_reg_3921 <= min_p_29_fu_2846_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_14_reg_3248 <= add_ln53_14_fu_896_p2;
        add_ln53_1_reg_3193 <= add_ln53_1_fu_755_p2;
        add_ln53_2_reg_3199 <= add_ln53_2_fu_761_p2;
        add_ln53_4_reg_3215 <= add_ln53_4_fu_809_p2;
        add_ln53_5_reg_3226 <= add_ln53_5_fu_838_p2;
        add_ln53_6_reg_3237 <= add_ln53_6_fu_867_p2;
        add_ln53_reg_3187 <= add_ln53_fu_749_p2;
        and_ln55_23_reg_3884 <= and_ln55_23_fu_2643_p2;
        lshr_ln8_s_reg_3156 <= {{ap_sig_allocacmp_s[5:2]}};
        s_reg_3142 <= ap_sig_allocacmp_s;
        tmp_58_reg_3254 <= add_ln53_14_fu_896_p2[32'd6];
        tmp_58_reg_3254_pp0_iter1_reg <= tmp_58_reg_3254;
        zext_ln52_2_cast_reg_3123[6 : 0] <= zext_ln52_2_cast_fu_678_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln53_7_reg_3484 <= add_ln53_7_fu_1225_p2;
        min_p_27_reg_3908 <= min_p_27_fu_2757_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln55_11_reg_3777 <= and_ln55_11_fu_2040_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln55_13_reg_3802 <= and_ln55_13_fu_2149_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln55_15_reg_3822 <= and_ln55_15_fu_2239_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln55_17_reg_3840 <= and_ln55_17_fu_2347_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln55_19_reg_3853 <= and_ln55_19_fu_2436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3658 <= and_ln55_1_fu_1516_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln55_21_reg_3871 <= and_ln55_21_fu_2544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_25_reg_3902 <= and_ln55_25_fu_2751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_27_reg_3915 <= and_ln55_27_fu_2840_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_29_reg_3928 <= and_ln55_29_fu_2929_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3681 <= and_ln55_3_fu_1615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3704 <= and_ln55_5_fu_1714_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln55_7_reg_3727 <= and_ln55_7_fu_1813_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln55_9_reg_3757 <= and_ln55_9_fu_1950_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_3304 <= llike_1_q0;
        llike_1_load_reg_3258 <= llike_1_q1;
        llike_2_load_1_reg_3309 <= llike_2_q0;
        llike_2_load_reg_3263 <= llike_2_q1;
        llike_3_load_1_reg_3314 <= llike_3_q0;
        llike_3_load_reg_3278 <= llike_3_q1;
        llike_load_1_reg_3319 <= llike_q0;
        llike_load_reg_3293 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_3419 <= llike_1_q1;
        llike_1_load_3_reg_3439 <= llike_1_q0;
        llike_2_load_2_reg_3424 <= llike_2_q1;
        llike_2_load_3_reg_3444 <= llike_2_q0;
        llike_3_load_2_reg_3429 <= llike_3_q1;
        llike_3_load_3_reg_3449 <= llike_3_q0;
        llike_load_2_reg_3434 <= llike_q1;
        llike_load_3_reg_3454 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_11_reg_3770 <= min_p_11_fu_1956_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_13_reg_3790 <= min_p_13_fu_2055_p3;
        min_s_9_reg_3797 <= min_s_9_fu_2065_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_15_reg_3815 <= min_p_15_fu_2155_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_17_reg_3828 <= min_p_17_fu_2254_p3;
        min_s_11_reg_3835 <= min_s_11_fu_2264_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_19_reg_3846 <= min_p_19_fu_2353_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3646 <= min_p_fu_128;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_21_reg_3859 <= min_p_21_fu_2451_p3;
        min_s_13_reg_3866 <= min_s_13_fu_2461_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_23_reg_3877 <= min_p_23_fu_2550_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_31_reg_3934 <= min_p_31_fu_2935_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3669 <= min_p_3_fu_1526_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3692 <= min_p_5_fu_1626_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_7_reg_3715 <= min_p_7_fu_1724_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_9_reg_3745 <= min_p_9_fu_1856_p3;
        min_s_7_reg_3752 <= min_s_7_fu_1866_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_18_reg_3941 <= min_s_18_fu_2963_p3;
        tmp_61_reg_3946 <= grp_fu_1054_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        p_10_reg_3763 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        p_12_reg_3783 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        p_14_reg_3808 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        p_8_reg_3733 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_637 <= grp_fu_623_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_641 <= grp_fu_630_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_645 <= grp_fu_623_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_649 <= grp_fu_630_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_653 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_658 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_663 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_668 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_673 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln54_12_reg_3586 <= grp_fu_630_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        select_ln54_13_reg_3616 <= grp_fu_623_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln54_15_reg_3641 <= grp_fu_630_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_8_reg_3520 <= grp_fu_630_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln54_9_reg_3556 <= grp_fu_623_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln54_reg_3621 <= trunc_ln54_fu_1404_p1;
        trunc_ln54_reg_3621_pp0_iter1_reg <= trunc_ln54_reg_3621;
    end
end
always @ (*) begin
    if (((tmp_58_reg_3254 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_58_reg_3254_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_136;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_615_p0 = llike_load_3_reg_3454;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_615_p0 = llike_3_load_3_reg_3449;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_615_p0 = llike_2_load_3_reg_3444;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_615_p0 = llike_1_load_3_reg_3439;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_615_p0 = llike_load_2_reg_3434;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_615_p0 = llike_3_load_2_reg_3429;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_615_p0 = llike_2_load_2_reg_3424;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_615_p0 = llike_1_load_2_reg_3419;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_615_p0 = llike_load_1_reg_3319;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_615_p0 = llike_3_load_1_reg_3314;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_615_p0 = llike_2_load_1_reg_3309;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_615_p0 = llike_1_load_1_reg_3304;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_615_p0 = llike_load_reg_3293;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_615_p0 = llike_3_load_reg_3278;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_615_p0 = llike_2_load_reg_3263;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_615_p0 = llike_1_load_reg_3258;
        end else begin
            grp_fu_615_p0 = 'bx;
        end
    end else begin
        grp_fu_615_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_615_p1 = bitcast_ln54_15_fu_1819_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_615_p1 = bitcast_ln54_14_fu_1731_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_615_p1 = bitcast_ln54_13_fu_1720_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_615_p1 = bitcast_ln54_12_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_615_p1 = bitcast_ln54_11_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_615_p1 = bitcast_ln54_10_fu_1533_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_615_p1 = bitcast_ln54_9_fu_1522_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_615_p1 = bitcast_ln54_8_fu_1435_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_615_p1 = bitcast_ln54_7_fu_1426_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_615_p1 = bitcast_ln54_6_fu_1399_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_615_p1 = bitcast_ln54_5_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_615_p1 = bitcast_ln54_4_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_615_p1 = bitcast_ln54_3_fu_1271_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_615_p1 = bitcast_ln54_2_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_615_p1 = bitcast_ln54_1_fu_1184_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_615_p1 = bitcast_ln54_fu_1143_p1;
        end else begin
            grp_fu_615_p1 = 'bx;
        end
    end else begin
        grp_fu_615_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_619_p0 = p_14_reg_3808;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_619_p0 = p_12_reg_3783;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_619_p0 = p_10_reg_3763;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_619_p0 = p_8_reg_3733;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        grp_fu_619_p0 = reg_673;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_619_p0 = reg_668;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_619_p0 = reg_663;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_619_p0 = reg_658;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_619_p0 = reg_653;
    end else begin
        grp_fu_619_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_619_p1 = min_p_31_fu_2935_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_619_p1 = min_p_29_fu_2846_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_619_p1 = min_p_27_fu_2757_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_619_p1 = min_p_25_fu_2658_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_619_p1 = min_p_23_fu_2550_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_619_p1 = min_p_21_fu_2451_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_619_p1 = min_p_19_fu_2353_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_619_p1 = min_p_17_fu_2254_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_619_p1 = min_p_15_fu_2155_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_619_p1 = min_p_13_fu_2055_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_619_p1 = min_p_11_fu_1956_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_619_p1 = min_p_9_fu_1856_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_619_p1 = min_p_7_fu_1724_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_619_p1 = min_p_5_fu_1626_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_619_p1 = min_p_3_fu_1526_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_619_p1 = min_p_fu_128;
    end else begin
        grp_fu_619_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_26_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_18_fu_804_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln54_22_fu_963_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_16_fu_722_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_27_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_19_fu_833_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address1_local = zext_ln54_23_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln54_16_fu_722_p1;
        end else begin
            llike_2_address1_local = 'bx;
        end
    end else begin
        llike_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_28_fu_1115_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_20_fu_862_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address1_local = zext_ln54_24_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln54_16_fu_722_p1;
        end else begin
            llike_3_address1_local = 'bx;
        end
    end else begin
        llike_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_30_fu_1138_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_21_fu_891_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln54_25_fu_1044_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_17_fu_785_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_58_reg_3254_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_34_out_ap_vld = 1'b1;
    end else begin
        min_s_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln54_13_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln54_11_fu_1334_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln54_9_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln54_7_fu_1247_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_743_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_0_address1_local = zext_ln54_15_fu_1420_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln54_14_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln54_12_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln54_10_fu_1306_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_8_fu_1265_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1178_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_922_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln54_13_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln54_11_fu_1334_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln54_9_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln54_7_fu_1247_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_743_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            transition_1_address1_local = zext_ln54_15_fu_1420_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln54_14_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln54_12_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln54_10_fu_1306_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_8_fu_1265_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1178_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_922_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
assign add_ln53_10_fu_1022_p2 = (s_reg_3142 + 6'd11);
assign add_ln53_11_fu_1312_p2 = (s_reg_3142 + 6'd12);
assign add_ln53_12_fu_1066_p2 = (s_reg_3142 + 6'd13);
assign add_ln53_13_fu_1093_p2 = (s_reg_3142 + 6'd14);
assign add_ln53_14_fu_896_p2 = (zext_ln21_fu_700_p1 + 7'd15);
assign add_ln53_15_fu_2556_p2 = (s_reg_3142 + 6'd16);
assign add_ln53_1_fu_755_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_761_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_946_p2 = (s_reg_3142 + 6'd4);
assign add_ln53_4_fu_809_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_838_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_867_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln53_7_fu_1225_p2 = (s_reg_3142 + 6'd8);
assign add_ln53_8_fu_968_p2 = (s_reg_3142 + 6'd9);
assign add_ln53_9_fu_995_p2 = (s_reg_3142 + 6'd10);
assign add_ln53_fu_749_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_10_fu_1301_p2 = (shl_ln54_s_fu_1294_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_11_fu_1329_p2 = (shl_ln54_10_fu_1322_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_12_fu_1347_p2 = (shl_ln54_11_fu_1340_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_13_fu_1370_p2 = (shl_ln54_12_fu_1363_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_14_fu_1388_p2 = (shl_ln54_13_fu_1381_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_15_fu_1415_p2 = (shl_ln54_14_fu_1407_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_16_fu_1133_p2 = (zext_ln52_3 + zext_ln54_29_fu_1129_p1);
assign add_ln54_1_fu_917_p2 = (shl_ln54_1_fu_910_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_2_fu_935_p2 = (shl_ln54_2_fu_928_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_3_fu_1155_p2 = (shl_ln54_3_fu_1148_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_4_fu_1173_p2 = (shl_ln54_4_fu_1166_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_5_fu_1196_p2 = (shl_ln54_5_fu_1189_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_6_fu_1214_p2 = (shl_ln54_6_fu_1207_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_7_fu_1242_p2 = (shl_ln54_7_fu_1235_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_8_fu_1260_p2 = (shl_ln54_8_fu_1253_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_9_fu_1283_p2 = (shl_ln54_9_fu_1276_p3 + zext_ln52_2_cast_reg_3123);
assign add_ln54_fu_737_p2 = (shl_ln2_fu_729_p3 + zext_ln52_2_cast_fu_678_p1);
assign add_ln8_1_fu_951_p2 = (lshr_ln8_s_reg_3156 + 4'd2);
assign add_ln8_2_fu_1049_p2 = (lshr_ln8_s_reg_3156 + 4'd3);
assign add_ln8_fu_790_p2 = (lshr_ln8_s_fu_704_p4 + 4'd1);
assign and_ln55_10_fu_2034_p2 = (or_ln55_11_fu_2028_p2 & or_ln55_10_fu_2010_p2);
assign and_ln55_11_fu_2040_p2 = (grp_fu_1054_p_dout0 & and_ln55_10_fu_2034_p2);
assign and_ln55_12_fu_2143_p2 = (or_ln55_13_fu_2137_p2 & or_ln55_12_fu_2119_p2);
assign and_ln55_13_fu_2149_p2 = (grp_fu_1054_p_dout0 & and_ln55_12_fu_2143_p2);
assign and_ln55_14_fu_2233_p2 = (or_ln55_15_fu_2227_p2 & or_ln55_14_fu_2209_p2);
assign and_ln55_15_fu_2239_p2 = (grp_fu_1054_p_dout0 & and_ln55_14_fu_2233_p2);
assign and_ln55_16_fu_2341_p2 = (or_ln55_17_fu_2335_p2 & or_ln55_16_fu_2317_p2);
assign and_ln55_17_fu_2347_p2 = (grp_fu_1054_p_dout0 & and_ln55_16_fu_2341_p2);
assign and_ln55_18_fu_2430_p2 = (or_ln55_19_fu_2424_p2 & or_ln55_18_fu_2406_p2);
assign and_ln55_19_fu_2436_p2 = (grp_fu_1054_p_dout0 & and_ln55_18_fu_2430_p2);
assign and_ln55_1_fu_1516_p2 = (or_ln55_1_fu_1504_p2 & and_ln55_fu_1510_p2);
assign and_ln55_20_fu_2538_p2 = (or_ln55_21_fu_2532_p2 & or_ln55_20_fu_2514_p2);
assign and_ln55_21_fu_2544_p2 = (grp_fu_1054_p_dout0 & and_ln55_20_fu_2538_p2);
assign and_ln55_22_fu_2637_p2 = (or_ln55_23_fu_2631_p2 & or_ln55_22_fu_2613_p2);
assign and_ln55_23_fu_2643_p2 = (grp_fu_1054_p_dout0 & and_ln55_22_fu_2637_p2);
assign and_ln55_24_fu_2745_p2 = (or_ln55_25_fu_2739_p2 & or_ln55_24_fu_2721_p2);
assign and_ln55_25_fu_2751_p2 = (grp_fu_1054_p_dout0 & and_ln55_24_fu_2745_p2);
assign and_ln55_26_fu_2834_p2 = (or_ln55_27_fu_2828_p2 & or_ln55_26_fu_2810_p2);
assign and_ln55_27_fu_2840_p2 = (grp_fu_1054_p_dout0 & and_ln55_26_fu_2834_p2);
assign and_ln55_28_fu_2923_p2 = (or_ln55_29_fu_2917_p2 & or_ln55_28_fu_2899_p2);
assign and_ln55_29_fu_2929_p2 = (grp_fu_1054_p_dout0 & and_ln55_28_fu_2923_p2);
assign and_ln55_2_fu_1609_p2 = (or_ln55_3_fu_1603_p2 & or_ln55_2_fu_1585_p2);
assign and_ln55_30_fu_3042_p2 = (or_ln55_31_fu_3036_p2 & or_ln55_30_fu_3018_p2);
assign and_ln55_31_fu_3048_p2 = (tmp_61_reg_3946 & and_ln55_30_fu_3042_p2);
assign and_ln55_3_fu_1615_p2 = (grp_fu_1054_p_dout0 & and_ln55_2_fu_1609_p2);
assign and_ln55_4_fu_1708_p2 = (or_ln55_5_fu_1702_p2 & or_ln55_4_fu_1684_p2);
assign and_ln55_5_fu_1714_p2 = (grp_fu_1054_p_dout0 & and_ln55_4_fu_1708_p2);
assign and_ln55_6_fu_1807_p2 = (or_ln55_7_fu_1801_p2 & or_ln55_6_fu_1783_p2);
assign and_ln55_7_fu_1813_p2 = (grp_fu_1054_p_dout0 & and_ln55_6_fu_1807_p2);
assign and_ln55_8_fu_1944_p2 = (or_ln55_9_fu_1938_p2 & or_ln55_8_fu_1920_p2);
assign and_ln55_9_fu_1950_p2 = (grp_fu_1054_p_dout0 & and_ln55_8_fu_1944_p2);
assign and_ln55_fu_1510_p2 = (or_ln55_fu_1486_p2 & grp_fu_1054_p_dout0);
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
assign bitcast_ln54_10_fu_1533_p1 = reg_641;
assign bitcast_ln54_11_fu_1621_p1 = reg_637;
assign bitcast_ln54_12_fu_1633_p1 = select_ln54_12_reg_3586;
assign bitcast_ln54_13_fu_1720_p1 = select_ln54_13_reg_3616;
assign bitcast_ln54_14_fu_1731_p1 = reg_649;
assign bitcast_ln54_15_fu_1819_p1 = select_ln54_15_reg_3641;
assign bitcast_ln54_1_fu_1184_p1 = reg_641;
assign bitcast_ln54_2_fu_1230_p1 = reg_637;
assign bitcast_ln54_3_fu_1271_p1 = reg_645;
assign bitcast_ln54_4_fu_1317_p1 = reg_641;
assign bitcast_ln54_5_fu_1358_p1 = reg_637;
assign bitcast_ln54_6_fu_1399_p1 = reg_649;
assign bitcast_ln54_7_fu_1426_p1 = reg_645;
assign bitcast_ln54_8_fu_1435_p1 = select_ln54_8_reg_3520;
assign bitcast_ln54_9_fu_1522_p1 = select_ln54_9_reg_3556;
assign bitcast_ln54_fu_1143_p1 = reg_637;
assign bitcast_ln55_10_fu_1963_p1 = reg_658;
assign bitcast_ln55_11_fu_1981_p1 = min_p_11_reg_3770;
assign bitcast_ln55_12_fu_2072_p1 = reg_673;
assign bitcast_ln55_13_fu_2090_p1 = min_p_13_reg_3790;
assign bitcast_ln55_14_fu_2162_p1 = reg_663;
assign bitcast_ln55_15_fu_2180_p1 = min_p_15_reg_3815;
assign bitcast_ln55_16_fu_2271_p1 = p_8_reg_3733;
assign bitcast_ln55_17_fu_2288_p1 = min_p_17_reg_3828;
assign bitcast_ln55_18_fu_2359_p1 = reg_653;
assign bitcast_ln55_19_fu_2377_p1 = min_p_19_reg_3846;
assign bitcast_ln55_1_fu_1457_p1 = min_p_1_reg_3646;
assign bitcast_ln55_20_fu_2468_p1 = p_10_reg_3763;
assign bitcast_ln55_21_fu_2485_p1 = min_p_21_reg_3859;
assign bitcast_ln55_22_fu_2566_p1 = reg_668;
assign bitcast_ln55_23_fu_2584_p1 = min_p_23_reg_3877;
assign bitcast_ln55_24_fu_2675_p1 = p_12_reg_3783;
assign bitcast_ln55_25_fu_2692_p1 = min_p_25_reg_3890;
assign bitcast_ln55_26_fu_2763_p1 = reg_658;
assign bitcast_ln55_27_fu_2781_p1 = min_p_27_reg_3908;
assign bitcast_ln55_28_fu_2853_p1 = p_14_reg_3808;
assign bitcast_ln55_29_fu_2870_p1 = min_p_29_reg_3921;
assign bitcast_ln55_2_fu_1538_p1 = reg_658;
assign bitcast_ln55_30_fu_2971_p1 = reg_673;
assign bitcast_ln55_31_fu_2989_p1 = min_p_31_reg_3934;
assign bitcast_ln55_3_fu_1556_p1 = min_p_3_reg_3669;
assign bitcast_ln55_4_fu_1637_p1 = reg_663;
assign bitcast_ln55_5_fu_1655_p1 = min_p_5_reg_3692;
assign bitcast_ln55_6_fu_1736_p1 = reg_653;
assign bitcast_ln55_7_fu_1754_p1 = min_p_7_reg_3715;
assign bitcast_ln55_8_fu_1873_p1 = reg_668;
assign bitcast_ln55_9_fu_1891_p1 = min_p_9_reg_3745;
assign bitcast_ln55_fu_1439_p1 = reg_653;
assign grp_fu_1054_p_ce = 1'b1;
assign grp_fu_1054_p_din0 = grp_fu_619_p0;
assign grp_fu_1054_p_din1 = grp_fu_619_p1;
assign grp_fu_1054_p_opcode = 5'd4;
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_615_p0;
assign grp_fu_453_p_din1 = grp_fu_615_p1;
assign grp_fu_453_p_opcode = 2'd0;
assign grp_fu_623_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_630_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign icmp_ln55_10_fu_1690_p2 = ((tmp_8_fu_1658_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1696_p2 = ((trunc_ln55_5_fu_1668_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1771_p2 = ((tmp_11_fu_1740_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1777_p2 = ((trunc_ln55_6_fu_1750_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1789_p2 = ((tmp_12_fu_1757_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1795_p2 = ((trunc_ln55_7_fu_1767_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1908_p2 = ((tmp_15_fu_1877_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1914_p2 = ((trunc_ln55_8_fu_1887_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1926_p2 = ((tmp_16_fu_1894_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1932_p2 = ((trunc_ln55_9_fu_1904_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1480_p2 = ((trunc_ln55_fu_1453_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1998_p2 = ((tmp_19_fu_1967_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2004_p2 = ((trunc_ln55_10_fu_1977_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2016_p2 = ((tmp_20_fu_1984_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2022_p2 = ((trunc_ln55_11_fu_1994_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2107_p2 = ((tmp_23_fu_2076_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2113_p2 = ((trunc_ln55_12_fu_2086_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2125_p2 = ((tmp_24_fu_2093_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2131_p2 = ((trunc_ln55_13_fu_2103_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2197_p2 = ((tmp_27_fu_2166_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2203_p2 = ((trunc_ln55_14_fu_2176_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1492_p2 = ((tmp_2_fu_1460_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2215_p2 = ((tmp_28_fu_2183_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2221_p2 = ((trunc_ln55_15_fu_2193_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_32_fu_2305_p2 = ((tmp_31_fu_2274_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_33_fu_2311_p2 = ((trunc_ln55_16_fu_2284_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_34_fu_2323_p2 = ((tmp_32_fu_2291_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_35_fu_2329_p2 = ((trunc_ln55_17_fu_2301_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_36_fu_2394_p2 = ((tmp_35_fu_2363_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_37_fu_2400_p2 = ((trunc_ln55_18_fu_2373_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_38_fu_2412_p2 = ((tmp_36_fu_2380_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_39_fu_2418_p2 = ((trunc_ln55_19_fu_2390_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1498_p2 = ((trunc_ln55_1_fu_1470_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_40_fu_2502_p2 = ((tmp_39_fu_2471_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_41_fu_2508_p2 = ((trunc_ln55_20_fu_2481_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_42_fu_2520_p2 = ((tmp_40_fu_2488_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_43_fu_2526_p2 = ((trunc_ln55_21_fu_2498_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_44_fu_2601_p2 = ((tmp_43_fu_2570_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_45_fu_2607_p2 = ((trunc_ln55_22_fu_2580_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_46_fu_2619_p2 = ((tmp_44_fu_2587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_47_fu_2625_p2 = ((trunc_ln55_23_fu_2597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_48_fu_2709_p2 = ((tmp_47_fu_2678_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_49_fu_2715_p2 = ((trunc_ln55_24_fu_2688_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1573_p2 = ((tmp_4_fu_1542_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_50_fu_2727_p2 = ((tmp_48_fu_2695_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_51_fu_2733_p2 = ((trunc_ln55_25_fu_2705_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_52_fu_2798_p2 = ((tmp_51_fu_2767_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_53_fu_2804_p2 = ((trunc_ln55_26_fu_2777_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_54_fu_2816_p2 = ((tmp_52_fu_2784_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_55_fu_2822_p2 = ((trunc_ln55_27_fu_2794_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_56_fu_2887_p2 = ((tmp_55_fu_2856_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_57_fu_2893_p2 = ((trunc_ln55_28_fu_2866_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_58_fu_2905_p2 = ((tmp_56_fu_2873_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_59_fu_2911_p2 = ((trunc_ln55_29_fu_2883_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1579_p2 = ((trunc_ln55_2_fu_1552_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_60_fu_3006_p2 = ((tmp_59_fu_2975_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_61_fu_3012_p2 = ((trunc_ln55_30_fu_2985_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_62_fu_3024_p2 = ((tmp_60_fu_2992_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_63_fu_3030_p2 = ((trunc_ln55_31_fu_3002_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1591_p2 = ((tmp_5_fu_1559_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1597_p2 = ((trunc_ln55_3_fu_1569_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1672_p2 = ((tmp_7_fu_1641_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1678_p2 = ((trunc_ln55_4_fu_1651_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1474_p2 = ((tmp_1_fu_1443_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_address1 = llike_2_address1_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_address1 = llike_3_address1_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_1_fu_767_p4 = {{add_ln53_2_fu_761_p2[5:2]}};
assign lshr_ln8_2_fu_815_p4 = {{add_ln53_4_fu_809_p2[5:2]}};
assign lshr_ln8_3_fu_844_p4 = {{add_ln53_5_fu_838_p2[5:2]}};
assign lshr_ln8_4_fu_873_p4 = {{add_ln53_6_fu_867_p2[5:2]}};
assign lshr_ln8_5_fu_973_p4 = {{add_ln53_8_fu_968_p2[5:2]}};
assign lshr_ln8_6_fu_1000_p4 = {{add_ln53_9_fu_995_p2[5:2]}};
assign lshr_ln8_7_fu_1027_p4 = {{add_ln53_10_fu_1022_p2[5:2]}};
assign lshr_ln8_8_fu_1071_p4 = {{add_ln53_12_fu_1066_p2[5:2]}};
assign lshr_ln8_9_fu_1098_p4 = {{add_ln53_13_fu_1093_p2[5:2]}};
assign lshr_ln8_s_fu_704_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_3_fu_1120_p4 = {{add_ln53_14_reg_3248[6:2]}};
assign min_p_11_fu_1956_p3 = ((and_ln55_9_reg_3757[0:0] == 1'b1) ? reg_668 : min_p_9_reg_3745);
assign min_p_13_fu_2055_p3 = ((and_ln55_11_reg_3777[0:0] == 1'b1) ? reg_658 : min_p_11_reg_3770);
assign min_p_15_fu_2155_p3 = ((and_ln55_13_reg_3802[0:0] == 1'b1) ? reg_673 : min_p_13_reg_3790);
assign min_p_17_fu_2254_p3 = ((and_ln55_15_reg_3822[0:0] == 1'b1) ? reg_663 : min_p_15_reg_3815);
assign min_p_19_fu_2353_p3 = ((and_ln55_17_reg_3840[0:0] == 1'b1) ? p_8_reg_3733 : min_p_17_reg_3828);
assign min_p_21_fu_2451_p3 = ((and_ln55_19_reg_3853[0:0] == 1'b1) ? reg_653 : min_p_19_reg_3846);
assign min_p_23_fu_2550_p3 = ((and_ln55_21_reg_3871[0:0] == 1'b1) ? p_10_reg_3763 : min_p_21_reg_3859);
assign min_p_25_fu_2658_p3 = ((and_ln55_23_reg_3884[0:0] == 1'b1) ? reg_668 : min_p_23_reg_3877);
assign min_p_27_fu_2757_p3 = ((and_ln55_25_reg_3902[0:0] == 1'b1) ? p_12_reg_3783 : min_p_25_reg_3890);
assign min_p_29_fu_2846_p3 = ((and_ln55_27_reg_3915[0:0] == 1'b1) ? reg_658 : min_p_27_reg_3908);
assign min_p_31_fu_2935_p3 = ((and_ln55_29_reg_3928[0:0] == 1'b1) ? p_14_reg_3808 : min_p_29_reg_3921);
assign min_p_33_fu_3053_p3 = ((and_ln55_31_fu_3048_p2[0:0] == 1'b1) ? reg_673 : min_p_31_reg_3934);
assign min_p_3_fu_1526_p3 = ((and_ln55_1_reg_3658[0:0] == 1'b1) ? reg_653 : min_p_1_reg_3646);
assign min_p_5_fu_1626_p3 = ((and_ln55_3_reg_3681[0:0] == 1'b1) ? reg_658 : min_p_3_reg_3669);
assign min_p_7_fu_1724_p3 = ((and_ln55_5_reg_3704[0:0] == 1'b1) ? reg_663 : min_p_5_reg_3692);
assign min_p_9_fu_1856_p3 = ((and_ln55_7_reg_3727[0:0] == 1'b1) ? reg_653 : min_p_7_reg_3715);
assign min_s_10_fu_2248_p3 = ((and_ln55_13_reg_3802[0:0] == 1'b1) ? zext_ln55_6_fu_2245_p1 : min_s_9_reg_3797);
assign min_s_11_fu_2264_p3 = ((and_ln55_15_reg_3822[0:0] == 1'b1) ? zext_ln55_7_fu_2261_p1 : min_s_10_fu_2248_p3);
assign min_s_12_fu_2445_p3 = ((and_ln55_17_reg_3840[0:0] == 1'b1) ? zext_ln55_8_fu_2442_p1 : min_s_11_reg_3835);
assign min_s_13_fu_2461_p3 = ((and_ln55_19_reg_3853[0:0] == 1'b1) ? zext_ln55_9_fu_2458_p1 : min_s_12_fu_2445_p3);
assign min_s_14_fu_2652_p3 = ((and_ln55_21_reg_3871[0:0] == 1'b1) ? zext_ln55_10_fu_2649_p1 : min_s_13_reg_3866);
assign min_s_15_fu_2668_p3 = ((and_ln55_23_reg_3884[0:0] == 1'b1) ? zext_ln55_11_fu_2665_p1 : min_s_14_fu_2652_p3);
assign min_s_16_fu_2944_p3 = ((and_ln55_25_reg_3902[0:0] == 1'b1) ? zext_ln55_12_fu_2941_p1 : min_s_15_reg_3897);
assign min_s_17_fu_2953_p3 = ((and_ln55_27_reg_3915[0:0] == 1'b1) ? zext_ln55_13_fu_2950_p1 : min_s_16_fu_2944_p3);
assign min_s_18_fu_2963_p3 = ((and_ln55_29_reg_3928[0:0] == 1'b1) ? zext_ln55_14_fu_2960_p1 : min_s_17_fu_2953_p3);
assign min_s_19_fu_3063_p3 = ((and_ln55_31_fu_3048_p2[0:0] == 1'b1) ? zext_ln55_15_fu_3060_p1 : min_s_18_reg_3941);
assign min_s_34_out = ((and_ln55_29_reg_3928[0:0] == 1'b1) ? zext_ln55_14_fu_2960_p1 : min_s_17_fu_2953_p3);
assign min_s_4_fu_1829_p3 = ((and_ln55_1_reg_3658[0:0] == 1'b1) ? zext_ln55_fu_1826_p1 : min_s_fu_132);
assign min_s_5_fu_1839_p3 = ((and_ln55_3_reg_3681[0:0] == 1'b1) ? zext_ln55_1_fu_1836_p1 : min_s_4_fu_1829_p3);
assign min_s_6_fu_1849_p3 = ((and_ln55_5_reg_3704[0:0] == 1'b1) ? zext_ln55_2_fu_1846_p1 : min_s_5_fu_1839_p3);
assign min_s_7_fu_1866_p3 = ((and_ln55_7_reg_3727[0:0] == 1'b1) ? zext_ln55_3_fu_1863_p1 : min_s_6_fu_1849_p3);
assign min_s_8_fu_2049_p3 = ((and_ln55_9_reg_3757[0:0] == 1'b1) ? zext_ln55_4_fu_2046_p1 : min_s_7_reg_3752);
assign min_s_9_fu_2065_p3 = ((and_ln55_11_reg_3777[0:0] == 1'b1) ? zext_ln55_5_fu_2062_p1 : min_s_8_fu_2049_p3);
assign or_ln55_10_fu_2010_p2 = (icmp_ln55_21_fu_2004_p2 | icmp_ln55_20_fu_1998_p2);
assign or_ln55_11_fu_2028_p2 = (icmp_ln55_23_fu_2022_p2 | icmp_ln55_22_fu_2016_p2);
assign or_ln55_12_fu_2119_p2 = (icmp_ln55_25_fu_2113_p2 | icmp_ln55_24_fu_2107_p2);
assign or_ln55_13_fu_2137_p2 = (icmp_ln55_27_fu_2131_p2 | icmp_ln55_26_fu_2125_p2);
assign or_ln55_14_fu_2209_p2 = (icmp_ln55_29_fu_2203_p2 | icmp_ln55_28_fu_2197_p2);
assign or_ln55_15_fu_2227_p2 = (icmp_ln55_31_fu_2221_p2 | icmp_ln55_30_fu_2215_p2);
assign or_ln55_16_fu_2317_p2 = (icmp_ln55_33_fu_2311_p2 | icmp_ln55_32_fu_2305_p2);
assign or_ln55_17_fu_2335_p2 = (icmp_ln55_35_fu_2329_p2 | icmp_ln55_34_fu_2323_p2);
assign or_ln55_18_fu_2406_p2 = (icmp_ln55_37_fu_2400_p2 | icmp_ln55_36_fu_2394_p2);
assign or_ln55_19_fu_2424_p2 = (icmp_ln55_39_fu_2418_p2 | icmp_ln55_38_fu_2412_p2);
assign or_ln55_1_fu_1504_p2 = (icmp_ln55_3_fu_1498_p2 | icmp_ln55_2_fu_1492_p2);
assign or_ln55_20_fu_2514_p2 = (icmp_ln55_41_fu_2508_p2 | icmp_ln55_40_fu_2502_p2);
assign or_ln55_21_fu_2532_p2 = (icmp_ln55_43_fu_2526_p2 | icmp_ln55_42_fu_2520_p2);
assign or_ln55_22_fu_2613_p2 = (icmp_ln55_45_fu_2607_p2 | icmp_ln55_44_fu_2601_p2);
assign or_ln55_23_fu_2631_p2 = (icmp_ln55_47_fu_2625_p2 | icmp_ln55_46_fu_2619_p2);
assign or_ln55_24_fu_2721_p2 = (icmp_ln55_49_fu_2715_p2 | icmp_ln55_48_fu_2709_p2);
assign or_ln55_25_fu_2739_p2 = (icmp_ln55_51_fu_2733_p2 | icmp_ln55_50_fu_2727_p2);
assign or_ln55_26_fu_2810_p2 = (icmp_ln55_53_fu_2804_p2 | icmp_ln55_52_fu_2798_p2);
assign or_ln55_27_fu_2828_p2 = (icmp_ln55_55_fu_2822_p2 | icmp_ln55_54_fu_2816_p2);
assign or_ln55_28_fu_2899_p2 = (icmp_ln55_57_fu_2893_p2 | icmp_ln55_56_fu_2887_p2);
assign or_ln55_29_fu_2917_p2 = (icmp_ln55_59_fu_2911_p2 | icmp_ln55_58_fu_2905_p2);
assign or_ln55_2_fu_1585_p2 = (icmp_ln55_5_fu_1579_p2 | icmp_ln55_4_fu_1573_p2);
assign or_ln55_30_fu_3018_p2 = (icmp_ln55_61_fu_3012_p2 | icmp_ln55_60_fu_3006_p2);
assign or_ln55_31_fu_3036_p2 = (icmp_ln55_63_fu_3030_p2 | icmp_ln55_62_fu_3024_p2);
assign or_ln55_3_fu_1603_p2 = (icmp_ln55_7_fu_1597_p2 | icmp_ln55_6_fu_1591_p2);
assign or_ln55_4_fu_1684_p2 = (icmp_ln55_9_fu_1678_p2 | icmp_ln55_8_fu_1672_p2);
assign or_ln55_5_fu_1702_p2 = (icmp_ln55_11_fu_1696_p2 | icmp_ln55_10_fu_1690_p2);
assign or_ln55_6_fu_1783_p2 = (icmp_ln55_13_fu_1777_p2 | icmp_ln55_12_fu_1771_p2);
assign or_ln55_7_fu_1801_p2 = (icmp_ln55_15_fu_1795_p2 | icmp_ln55_14_fu_1789_p2);
assign or_ln55_8_fu_1920_p2 = (icmp_ln55_17_fu_1914_p2 | icmp_ln55_16_fu_1908_p2);
assign or_ln55_9_fu_1938_p2 = (icmp_ln55_19_fu_1932_p2 | icmp_ln55_18_fu_1926_p2);
assign or_ln55_fu_1486_p2 = (icmp_ln55_fu_1474_p2 | icmp_ln55_1_fu_1480_p2);
assign shl_ln2_fu_729_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_10_fu_1322_p3 = {{add_ln53_10_reg_3351}, {5'd0}};
assign shl_ln54_11_fu_1340_p3 = {{add_ln53_11_reg_3545}, {5'd0}};
assign shl_ln54_12_fu_1363_p3 = {{add_ln53_12_reg_3367}, {5'd0}};
assign shl_ln54_13_fu_1381_p3 = {{add_ln53_13_reg_3378}, {5'd0}};
assign shl_ln54_14_fu_1407_p3 = {{trunc_ln54_fu_1404_p1}, {5'd0}};
assign shl_ln54_1_fu_910_p3 = {{add_ln53_reg_3187}, {5'd0}};
assign shl_ln54_2_fu_928_p3 = {{add_ln53_1_reg_3193}, {5'd0}};
assign shl_ln54_3_fu_1148_p3 = {{add_ln53_2_reg_3199}, {5'd0}};
assign shl_ln54_4_fu_1166_p3 = {{add_ln53_3_reg_3298}, {5'd0}};
assign shl_ln54_5_fu_1189_p3 = {{add_ln53_4_reg_3215}, {5'd0}};
assign shl_ln54_6_fu_1207_p3 = {{add_ln53_5_reg_3226}, {5'd0}};
assign shl_ln54_7_fu_1235_p3 = {{add_ln53_6_reg_3237}, {5'd0}};
assign shl_ln54_8_fu_1253_p3 = {{add_ln53_7_reg_3484}, {5'd0}};
assign shl_ln54_9_fu_1276_p3 = {{add_ln53_8_reg_3329}, {5'd0}};
assign shl_ln54_s_fu_1294_p3 = {{add_ln53_9_reg_3340}, {5'd0}};
assign tmp_10_fu_777_p3 = {{t_1}, {lshr_ln8_1_fu_767_p4}};
assign tmp_11_fu_1740_p4 = {{bitcast_ln55_6_fu_1736_p1[62:52]}};
assign tmp_12_fu_1757_p4 = {{bitcast_ln55_7_fu_1754_p1[62:52]}};
assign tmp_14_fu_796_p3 = {{t_1}, {add_ln8_fu_790_p2}};
assign tmp_15_fu_1877_p4 = {{bitcast_ln55_8_fu_1873_p1[62:52]}};
assign tmp_16_fu_1894_p4 = {{bitcast_ln55_9_fu_1891_p1[62:52]}};
assign tmp_18_fu_825_p3 = {{t_1}, {lshr_ln8_2_fu_815_p4}};
assign tmp_19_fu_1967_p4 = {{bitcast_ln55_10_fu_1963_p1[62:52]}};
assign tmp_1_fu_1443_p4 = {{bitcast_ln55_fu_1439_p1[62:52]}};
assign tmp_20_fu_1984_p4 = {{bitcast_ln55_11_fu_1981_p1[62:52]}};
assign tmp_22_fu_854_p3 = {{t_1}, {lshr_ln8_3_fu_844_p4}};
assign tmp_23_fu_2076_p4 = {{bitcast_ln55_12_fu_2072_p1[62:52]}};
assign tmp_24_fu_2093_p4 = {{bitcast_ln55_13_fu_2090_p1[62:52]}};
assign tmp_26_fu_883_p3 = {{t_1}, {lshr_ln8_4_fu_873_p4}};
assign tmp_27_fu_2166_p4 = {{bitcast_ln55_14_fu_2162_p1[62:52]}};
assign tmp_28_fu_2183_p4 = {{bitcast_ln55_15_fu_2180_p1[62:52]}};
assign tmp_2_fu_1460_p4 = {{bitcast_ln55_1_fu_1457_p1[62:52]}};
assign tmp_30_fu_956_p3 = {{t_1}, {add_ln8_1_fu_951_p2}};
assign tmp_31_fu_2274_p4 = {{bitcast_ln55_16_fu_2271_p1[62:52]}};
assign tmp_32_fu_2291_p4 = {{bitcast_ln55_17_fu_2288_p1[62:52]}};
assign tmp_34_fu_983_p3 = {{t_1}, {lshr_ln8_5_fu_973_p4}};
assign tmp_35_fu_2363_p4 = {{bitcast_ln55_18_fu_2359_p1[62:52]}};
assign tmp_36_fu_2380_p4 = {{bitcast_ln55_19_fu_2377_p1[62:52]}};
assign tmp_38_fu_1010_p3 = {{t_1}, {lshr_ln8_6_fu_1000_p4}};
assign tmp_39_fu_2471_p4 = {{bitcast_ln55_20_fu_2468_p1[62:52]}};
assign tmp_40_fu_2488_p4 = {{bitcast_ln55_21_fu_2485_p1[62:52]}};
assign tmp_42_fu_1037_p3 = {{t_1}, {lshr_ln8_7_fu_1027_p4}};
assign tmp_43_fu_2570_p4 = {{bitcast_ln55_22_fu_2566_p1[62:52]}};
assign tmp_44_fu_2587_p4 = {{bitcast_ln55_23_fu_2584_p1[62:52]}};
assign tmp_46_fu_1054_p3 = {{t_1}, {add_ln8_2_fu_1049_p2}};
assign tmp_47_fu_2678_p4 = {{bitcast_ln55_24_fu_2675_p1[62:52]}};
assign tmp_48_fu_2695_p4 = {{bitcast_ln55_25_fu_2692_p1[62:52]}};
assign tmp_4_fu_1542_p4 = {{bitcast_ln55_2_fu_1538_p1[62:52]}};
assign tmp_50_fu_1081_p3 = {{t_1}, {lshr_ln8_8_fu_1071_p4}};
assign tmp_51_fu_2767_p4 = {{bitcast_ln55_26_fu_2763_p1[62:52]}};
assign tmp_52_fu_2784_p4 = {{bitcast_ln55_27_fu_2781_p1[62:52]}};
assign tmp_54_fu_1108_p3 = {{t_1}, {lshr_ln8_9_fu_1098_p4}};
assign tmp_55_fu_2856_p4 = {{bitcast_ln55_28_fu_2853_p1[62:52]}};
assign tmp_56_fu_2873_p4 = {{bitcast_ln55_29_fu_2870_p1[62:52]}};
assign tmp_59_fu_2975_p4 = {{bitcast_ln55_30_fu_2971_p1[62:52]}};
assign tmp_5_fu_1559_p4 = {{bitcast_ln55_3_fu_1556_p1[62:52]}};
assign tmp_60_fu_2992_p4 = {{bitcast_ln55_31_fu_2989_p1[62:52]}};
assign tmp_7_fu_1641_p4 = {{bitcast_ln55_4_fu_1637_p1[62:52]}};
assign tmp_8_fu_1658_p4 = {{bitcast_ln55_5_fu_1655_p1[62:52]}};
assign tmp_s_fu_714_p3 = {{t_1}, {lshr_ln8_s_fu_704_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_1404_p1 = add_ln53_14_reg_3248[5:0];
assign trunc_ln55_10_fu_1977_p1 = bitcast_ln55_10_fu_1963_p1[51:0];
assign trunc_ln55_11_fu_1994_p1 = bitcast_ln55_11_fu_1981_p1[51:0];
assign trunc_ln55_12_fu_2086_p1 = bitcast_ln55_12_fu_2072_p1[51:0];
assign trunc_ln55_13_fu_2103_p1 = bitcast_ln55_13_fu_2090_p1[51:0];
assign trunc_ln55_14_fu_2176_p1 = bitcast_ln55_14_fu_2162_p1[51:0];
assign trunc_ln55_15_fu_2193_p1 = bitcast_ln55_15_fu_2180_p1[51:0];
assign trunc_ln55_16_fu_2284_p1 = bitcast_ln55_16_fu_2271_p1[51:0];
assign trunc_ln55_17_fu_2301_p1 = bitcast_ln55_17_fu_2288_p1[51:0];
assign trunc_ln55_18_fu_2373_p1 = bitcast_ln55_18_fu_2359_p1[51:0];
assign trunc_ln55_19_fu_2390_p1 = bitcast_ln55_19_fu_2377_p1[51:0];
assign trunc_ln55_1_fu_1470_p1 = bitcast_ln55_1_fu_1457_p1[51:0];
assign trunc_ln55_20_fu_2481_p1 = bitcast_ln55_20_fu_2468_p1[51:0];
assign trunc_ln55_21_fu_2498_p1 = bitcast_ln55_21_fu_2485_p1[51:0];
assign trunc_ln55_22_fu_2580_p1 = bitcast_ln55_22_fu_2566_p1[51:0];
assign trunc_ln55_23_fu_2597_p1 = bitcast_ln55_23_fu_2584_p1[51:0];
assign trunc_ln55_24_fu_2688_p1 = bitcast_ln55_24_fu_2675_p1[51:0];
assign trunc_ln55_25_fu_2705_p1 = bitcast_ln55_25_fu_2692_p1[51:0];
assign trunc_ln55_26_fu_2777_p1 = bitcast_ln55_26_fu_2763_p1[51:0];
assign trunc_ln55_27_fu_2794_p1 = bitcast_ln55_27_fu_2781_p1[51:0];
assign trunc_ln55_28_fu_2866_p1 = bitcast_ln55_28_fu_2853_p1[51:0];
assign trunc_ln55_29_fu_2883_p1 = bitcast_ln55_29_fu_2870_p1[51:0];
assign trunc_ln55_2_fu_1552_p1 = bitcast_ln55_2_fu_1538_p1[51:0];
assign trunc_ln55_30_fu_2985_p1 = bitcast_ln55_30_fu_2971_p1[51:0];
assign trunc_ln55_31_fu_3002_p1 = bitcast_ln55_31_fu_2989_p1[51:0];
assign trunc_ln55_3_fu_1569_p1 = bitcast_ln55_3_fu_1556_p1[51:0];
assign trunc_ln55_4_fu_1651_p1 = bitcast_ln55_4_fu_1637_p1[51:0];
assign trunc_ln55_5_fu_1668_p1 = bitcast_ln55_5_fu_1655_p1[51:0];
assign trunc_ln55_6_fu_1750_p1 = bitcast_ln55_6_fu_1736_p1[51:0];
assign trunc_ln55_7_fu_1767_p1 = bitcast_ln55_7_fu_1754_p1[51:0];
assign trunc_ln55_8_fu_1887_p1 = bitcast_ln55_8_fu_1873_p1[51:0];
assign trunc_ln55_9_fu_1904_p1 = bitcast_ln55_9_fu_1891_p1[51:0];
assign trunc_ln55_fu_1453_p1 = bitcast_ln55_fu_1439_p1[51:0];
assign zext_ln21_fu_700_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_678_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1306_p1 = add_ln54_10_fu_1301_p2;
assign zext_ln54_11_fu_1334_p1 = add_ln54_11_fu_1329_p2;
assign zext_ln54_12_fu_1352_p1 = add_ln54_12_fu_1347_p2;
assign zext_ln54_13_fu_1375_p1 = add_ln54_13_fu_1370_p2;
assign zext_ln54_14_fu_1393_p1 = add_ln54_14_fu_1388_p2;
assign zext_ln54_15_fu_1420_p1 = add_ln54_15_fu_1415_p2;
assign zext_ln54_16_fu_722_p1 = tmp_s_fu_714_p3;
assign zext_ln54_17_fu_785_p1 = tmp_10_fu_777_p3;
assign zext_ln54_18_fu_804_p1 = tmp_14_fu_796_p3;
assign zext_ln54_19_fu_833_p1 = tmp_18_fu_825_p3;
assign zext_ln54_1_fu_922_p1 = add_ln54_1_fu_917_p2;
assign zext_ln54_20_fu_862_p1 = tmp_22_fu_854_p3;
assign zext_ln54_21_fu_891_p1 = tmp_26_fu_883_p3;
assign zext_ln54_22_fu_963_p1 = tmp_30_fu_956_p3;
assign zext_ln54_23_fu_990_p1 = tmp_34_fu_983_p3;
assign zext_ln54_24_fu_1017_p1 = tmp_38_fu_1010_p3;
assign zext_ln54_25_fu_1044_p1 = tmp_42_fu_1037_p3;
assign zext_ln54_26_fu_1061_p1 = tmp_46_fu_1054_p3;
assign zext_ln54_27_fu_1088_p1 = tmp_50_fu_1081_p3;
assign zext_ln54_28_fu_1115_p1 = tmp_54_fu_1108_p3;
assign zext_ln54_29_fu_1129_p1 = lshr_ln9_3_fu_1120_p4;
assign zext_ln54_2_fu_940_p1 = add_ln54_2_fu_935_p2;
assign zext_ln54_30_fu_1138_p1 = add_ln54_16_fu_1133_p2;
assign zext_ln54_3_fu_1160_p1 = add_ln54_3_fu_1155_p2;
assign zext_ln54_4_fu_1178_p1 = add_ln54_4_fu_1173_p2;
assign zext_ln54_5_fu_1201_p1 = add_ln54_5_fu_1196_p2;
assign zext_ln54_6_fu_1219_p1 = add_ln54_6_fu_1214_p2;
assign zext_ln54_7_fu_1247_p1 = add_ln54_7_fu_1242_p2;
assign zext_ln54_8_fu_1265_p1 = add_ln54_8_fu_1260_p2;
assign zext_ln54_9_fu_1288_p1 = add_ln54_9_fu_1283_p2;
assign zext_ln54_fu_743_p1 = add_ln54_fu_737_p2;
assign zext_ln55_10_fu_2649_p1 = add_ln53_9_reg_3340;
assign zext_ln55_11_fu_2665_p1 = add_ln53_10_reg_3351;
assign zext_ln55_12_fu_2941_p1 = add_ln53_11_reg_3545_pp0_iter1_reg;
assign zext_ln55_13_fu_2950_p1 = add_ln53_12_reg_3367_pp0_iter1_reg;
assign zext_ln55_14_fu_2960_p1 = add_ln53_13_reg_3378_pp0_iter1_reg;
assign zext_ln55_15_fu_3060_p1 = trunc_ln54_reg_3621_pp0_iter1_reg;
assign zext_ln55_1_fu_1836_p1 = add_ln53_reg_3187;
assign zext_ln55_2_fu_1846_p1 = add_ln53_1_reg_3193;
assign zext_ln55_3_fu_1863_p1 = add_ln53_2_reg_3199;
assign zext_ln55_4_fu_2046_p1 = add_ln53_3_reg_3298;
assign zext_ln55_5_fu_2062_p1 = add_ln53_4_reg_3215;
assign zext_ln55_6_fu_2245_p1 = add_ln53_5_reg_3226;
assign zext_ln55_7_fu_2261_p1 = add_ln53_6_reg_3237;
assign zext_ln55_8_fu_2442_p1 = add_ln53_7_reg_3484;
assign zext_ln55_9_fu_2458_p1 = add_ln53_8_reg_3329;
assign zext_ln55_fu_1826_p1 = s_reg_3142;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_3123[10:7] <= 4'b0000;
end
endmodule 