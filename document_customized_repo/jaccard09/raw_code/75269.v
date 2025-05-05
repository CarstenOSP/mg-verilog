module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_993_p_din0,grp_fu_993_p_din1,grp_fu_993_p_opcode,grp_fu_993_p_dout0,grp_fu_993_p_ce,grp_fu_2015_p_din0,grp_fu_2015_p_din1,grp_fu_2015_p_opcode,grp_fu_2015_p_dout0,grp_fu_2015_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_20;
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
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_993_p_din0;
output  [63:0] grp_fu_993_p_din1;
output  [1:0] grp_fu_993_p_opcode;
input  [63:0] grp_fu_993_p_dout0;
output   grp_fu_993_p_ce;
output  [63:0] grp_fu_2015_p_din0;
output  [63:0] grp_fu_2015_p_din1;
output  [4:0] grp_fu_2015_p_opcode;
input  [0:0] grp_fu_2015_p_dout0;
output   grp_fu_2015_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_33_reg_2854;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_875;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_880;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_885;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_890_p1;
reg   [8:0] zext_ln52_2_cast_reg_2725;
reg   [5:0] s_reg_2736;
wire   [5:0] add_ln53_fu_967_p2;
reg   [5:0] add_ln53_reg_2798;
wire   [5:0] add_ln53_1_fu_973_p2;
reg   [5:0] add_ln53_1_reg_2804;
reg   [5:0] add_ln53_1_reg_2804_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_979_p2;
reg   [5:0] add_ln53_2_reg_2810;
reg   [5:0] add_ln53_2_reg_2810_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_1027_p2;
reg   [5:0] add_ln53_4_reg_2826;
reg   [5:0] add_ln53_4_reg_2826_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_1056_p2;
reg   [5:0] add_ln53_5_reg_2837;
reg   [5:0] add_ln53_5_reg_2837_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_1085_p2;
reg   [6:0] add_ln53_6_reg_2848;
reg   [0:0] tmp_33_reg_2854_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2858;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1131_p19;
reg   [63:0] tmp_1_reg_2863;
reg   [63:0] llike_2_load_reg_2868;
reg   [63:0] llike_3_load_reg_2913;
reg   [63:0] llike_load_reg_2958;
wire   [5:0] add_ln53_3_fu_1218_p2;
reg   [5:0] add_ln53_3_reg_2963;
reg   [5:0] add_ln53_3_reg_2963_pp0_iter1_reg;
reg   [63:0] llike_1_load_1_reg_2969;
reg   [63:0] llike_2_load_1_reg_2974;
reg   [63:0] llike_3_load_1_reg_2979;
wire   [63:0] tmp_5_fu_1278_p19;
reg   [63:0] tmp_5_reg_2989;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_1349_p19;
reg   [63:0] tmp_9_reg_2994;
reg   [63:0] llike_load_1_reg_3079;
wire   [63:0] tmp_14_fu_1468_p19;
reg   [63:0] tmp_14_reg_3084;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_19_fu_1539_p19;
reg   [63:0] tmp_19_reg_3089;
wire   [63:0] tmp_24_fu_1658_p19;
reg   [63:0] tmp_24_reg_3174;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_29_fu_1729_p19;
reg   [63:0] tmp_29_reg_3179;
wire   [5:0] trunc_ln54_fu_1768_p1;
reg   [5:0] trunc_ln54_reg_3184;
reg   [5:0] trunc_ln54_reg_3184_pp0_iter1_reg;
wire   [63:0] tmp_34_fu_1828_p19;
reg   [63:0] tmp_34_reg_3229;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_3234;
wire   [0:0] and_ln55_1_fu_1948_p2;
reg   [0:0] and_ln55_1_reg_3241;
wire   [63:0] min_p_3_fu_1954_p3;
reg   [63:0] min_p_3_reg_3247;
wire   [0:0] and_ln55_3_fu_2038_p2;
reg   [0:0] and_ln55_3_reg_3254;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_3260;
wire   [63:0] min_p_5_fu_2057_p3;
reg   [63:0] min_p_5_reg_3267;
wire   [7:0] min_s_5_fu_2067_p3;
reg   [7:0] min_s_5_reg_3274;
wire   [0:0] and_ln55_5_fu_2151_p2;
reg   [0:0] and_ln55_5_reg_3279;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_3285;
wire   [63:0] min_p_7_fu_2157_p3;
reg   [63:0] min_p_7_reg_3292;
wire   [0:0] icmp_ln55_14_fu_2182_p2;
reg   [0:0] icmp_ln55_14_reg_3298;
wire   [0:0] icmp_ln55_15_fu_2188_p2;
reg   [0:0] icmp_ln55_15_reg_3303;
wire   [0:0] and_ln55_7_fu_2250_p2;
reg   [0:0] and_ln55_7_reg_3308;
wire   [63:0] min_p_9_fu_2265_p3;
reg   [63:0] min_p_9_reg_3314;
wire   [7:0] min_s_7_fu_2275_p3;
reg   [7:0] min_s_7_reg_3321;
wire   [0:0] and_ln55_9_fu_2358_p2;
reg   [0:0] and_ln55_9_reg_3326;
wire   [63:0] min_p_11_fu_2364_p3;
reg   [63:0] min_p_11_reg_3332;
wire   [0:0] and_ln55_11_fu_2447_p2;
reg   [0:0] and_ln55_11_reg_3339;
wire   [63:0] min_p_13_fu_2453_p3;
reg   [63:0] min_p_13_reg_3345;
wire   [0:0] and_ln55_13_fu_2536_p2;
reg   [0:0] and_ln55_13_reg_3352;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_2564_p3;
reg   [7:0] min_s_10_reg_3358;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_2572_p3;
reg   [63:0] min_p_15_reg_3363;
reg   [0:0] tmp_37_reg_3370;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_934_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_955_p1;
wire   [63:0] zext_ln54_9_fu_1003_p1;
wire   [63:0] zext_ln54_10_fu_1022_p1;
wire   [63:0] zext_ln54_11_fu_1051_p1;
wire   [63:0] zext_ln54_12_fu_1080_p1;
wire   [63:0] zext_ln54_1_fu_1182_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1206_p1;
wire   [63:0] zext_ln54_14_fu_1241_p1;
wire   [63:0] zext_ln54_3_fu_1400_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1424_p1;
wire   [63:0] zext_ln54_5_fu_1590_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1614_p1;
wire   [63:0] zext_ln54_7_fu_1784_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_138;
wire   [63:0] min_p_17_fu_2660_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_142;
wire   [7:0] min_s_11_fu_2670_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_146;
wire   [5:0] add_ln53_7_fu_2194_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_867_p0;
reg   [63:0] grp_fu_867_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_871_p0;
reg   [63:0] grp_fu_871_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [3:0] lshr_ln8_s_fu_916_p4;
wire   [11:0] tmp_s_fu_926_p3;
wire   [8:0] shl_ln2_fu_941_p3;
wire   [8:0] add_ln54_fu_949_p2;
wire   [3:0] lshr_ln8_1_fu_985_p4;
wire   [11:0] tmp_13_fu_995_p3;
wire   [3:0] add_ln8_fu_1008_p2;
wire   [11:0] tmp_18_fu_1014_p3;
wire   [3:0] lshr_ln8_2_fu_1033_p4;
wire   [11:0] tmp_23_fu_1043_p3;
wire   [3:0] lshr_ln8_3_fu_1062_p4;
wire   [11:0] tmp_28_fu_1072_p3;
wire   [6:0] zext_ln21_fu_912_p1;
wire   [63:0] tmp_1_fu_1131_p2;
wire   [63:0] tmp_1_fu_1131_p4;
wire   [63:0] tmp_1_fu_1131_p6;
wire   [63:0] tmp_1_fu_1131_p8;
wire   [63:0] tmp_1_fu_1131_p10;
wire   [63:0] tmp_1_fu_1131_p12;
wire   [63:0] tmp_1_fu_1131_p14;
wire   [63:0] tmp_1_fu_1131_p16;
wire   [63:0] tmp_1_fu_1131_p17;
wire   [8:0] shl_ln54_1_fu_1170_p3;
wire   [8:0] add_ln54_1_fu_1177_p2;
wire   [8:0] shl_ln54_2_fu_1194_p3;
wire   [8:0] add_ln54_2_fu_1201_p2;
wire   [4:0] lshr_ln9_3_fu_1223_p4;
wire   [11:0] zext_ln54_13_fu_1232_p1;
wire   [11:0] add_ln54_8_fu_1236_p2;
wire   [63:0] tmp_5_fu_1278_p2;
wire   [63:0] tmp_5_fu_1278_p4;
wire   [63:0] tmp_5_fu_1278_p6;
wire   [63:0] tmp_5_fu_1278_p8;
wire   [63:0] tmp_5_fu_1278_p10;
wire   [63:0] tmp_5_fu_1278_p12;
wire   [63:0] tmp_5_fu_1278_p14;
wire   [63:0] tmp_5_fu_1278_p16;
wire   [63:0] tmp_5_fu_1278_p17;
wire   [63:0] tmp_9_fu_1349_p2;
wire   [63:0] tmp_9_fu_1349_p4;
wire   [63:0] tmp_9_fu_1349_p6;
wire   [63:0] tmp_9_fu_1349_p8;
wire   [63:0] tmp_9_fu_1349_p10;
wire   [63:0] tmp_9_fu_1349_p12;
wire   [63:0] tmp_9_fu_1349_p14;
wire   [63:0] tmp_9_fu_1349_p16;
wire   [63:0] tmp_9_fu_1349_p17;
wire   [8:0] shl_ln54_3_fu_1388_p3;
wire   [8:0] add_ln54_3_fu_1395_p2;
wire   [8:0] shl_ln54_4_fu_1412_p3;
wire   [8:0] add_ln54_4_fu_1419_p2;
wire   [63:0] tmp_14_fu_1468_p2;
wire   [63:0] tmp_14_fu_1468_p4;
wire   [63:0] tmp_14_fu_1468_p6;
wire   [63:0] tmp_14_fu_1468_p8;
wire   [63:0] tmp_14_fu_1468_p10;
wire   [63:0] tmp_14_fu_1468_p12;
wire   [63:0] tmp_14_fu_1468_p14;
wire   [63:0] tmp_14_fu_1468_p16;
wire   [63:0] tmp_14_fu_1468_p17;
wire   [63:0] tmp_19_fu_1539_p2;
wire   [63:0] tmp_19_fu_1539_p4;
wire   [63:0] tmp_19_fu_1539_p6;
wire   [63:0] tmp_19_fu_1539_p8;
wire   [63:0] tmp_19_fu_1539_p10;
wire   [63:0] tmp_19_fu_1539_p12;
wire   [63:0] tmp_19_fu_1539_p14;
wire   [63:0] tmp_19_fu_1539_p16;
wire   [63:0] tmp_19_fu_1539_p17;
wire   [8:0] shl_ln54_5_fu_1578_p3;
wire   [8:0] add_ln54_5_fu_1585_p2;
wire   [8:0] shl_ln54_6_fu_1602_p3;
wire   [8:0] add_ln54_6_fu_1609_p2;
wire   [63:0] tmp_24_fu_1658_p2;
wire   [63:0] tmp_24_fu_1658_p4;
wire   [63:0] tmp_24_fu_1658_p6;
wire   [63:0] tmp_24_fu_1658_p8;
wire   [63:0] tmp_24_fu_1658_p10;
wire   [63:0] tmp_24_fu_1658_p12;
wire   [63:0] tmp_24_fu_1658_p14;
wire   [63:0] tmp_24_fu_1658_p16;
wire   [63:0] tmp_24_fu_1658_p17;
wire   [63:0] tmp_29_fu_1729_p2;
wire   [63:0] tmp_29_fu_1729_p4;
wire   [63:0] tmp_29_fu_1729_p6;
wire   [63:0] tmp_29_fu_1729_p8;
wire   [63:0] tmp_29_fu_1729_p10;
wire   [63:0] tmp_29_fu_1729_p12;
wire   [63:0] tmp_29_fu_1729_p14;
wire   [63:0] tmp_29_fu_1729_p16;
wire   [63:0] tmp_29_fu_1729_p17;
wire   [8:0] shl_ln54_7_fu_1771_p3;
wire   [8:0] add_ln54_7_fu_1779_p2;
wire   [63:0] tmp_34_fu_1828_p2;
wire   [63:0] tmp_34_fu_1828_p4;
wire   [63:0] tmp_34_fu_1828_p6;
wire   [63:0] tmp_34_fu_1828_p8;
wire   [63:0] tmp_34_fu_1828_p10;
wire   [63:0] tmp_34_fu_1828_p12;
wire   [63:0] tmp_34_fu_1828_p14;
wire   [63:0] tmp_34_fu_1828_p16;
wire   [63:0] tmp_34_fu_1828_p17;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1871_p1;
wire   [63:0] bitcast_ln55_1_fu_1889_p1;
wire   [10:0] tmp_2_fu_1875_p4;
wire   [51:0] trunc_ln55_fu_1885_p1;
wire   [0:0] icmp_ln55_1_fu_1912_p2;
wire   [0:0] icmp_ln55_fu_1906_p2;
wire   [10:0] tmp_3_fu_1892_p4;
wire   [51:0] trunc_ln55_1_fu_1902_p1;
wire   [0:0] icmp_ln55_3_fu_1930_p2;
wire   [0:0] icmp_ln55_2_fu_1924_p2;
wire   [0:0] or_ln55_fu_1918_p2;
wire   [0:0] and_ln55_fu_1942_p2;
wire   [0:0] or_ln55_1_fu_1936_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1961_p1;
wire   [63:0] bitcast_ln55_3_fu_1979_p1;
wire   [10:0] tmp_6_fu_1965_p4;
wire   [51:0] trunc_ln55_2_fu_1975_p1;
wire   [0:0] icmp_ln55_5_fu_2002_p2;
wire   [0:0] icmp_ln55_4_fu_1996_p2;
wire   [10:0] tmp_7_fu_1982_p4;
wire   [51:0] trunc_ln55_3_fu_1992_p1;
wire   [0:0] icmp_ln55_7_fu_2020_p2;
wire   [0:0] icmp_ln55_6_fu_2014_p2;
wire   [0:0] or_ln55_3_fu_2026_p2;
wire   [0:0] or_ln55_2_fu_2008_p2;
wire   [0:0] and_ln55_2_fu_2032_p2;
wire   [7:0] zext_ln55_fu_2047_p1;
wire   [7:0] zext_ln55_1_fu_2064_p1;
wire   [7:0] min_s_4_fu_2050_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_2074_p1;
wire   [63:0] bitcast_ln55_5_fu_2092_p1;
wire   [10:0] tmp_10_fu_2078_p4;
wire   [51:0] trunc_ln55_4_fu_2088_p1;
wire   [0:0] icmp_ln55_9_fu_2115_p2;
wire   [0:0] icmp_ln55_8_fu_2109_p2;
wire   [10:0] tmp_11_fu_2095_p4;
wire   [51:0] trunc_ln55_5_fu_2105_p1;
wire   [0:0] icmp_ln55_11_fu_2133_p2;
wire   [0:0] icmp_ln55_10_fu_2127_p2;
wire   [0:0] or_ln55_5_fu_2139_p2;
wire   [0:0] or_ln55_4_fu_2121_p2;
wire   [0:0] and_ln55_4_fu_2145_p2;
wire   [63:0] bitcast_ln55_7_fu_2164_p1;
wire   [10:0] tmp_16_fu_2168_p4;
wire   [51:0] trunc_ln55_7_fu_2178_p1;
wire   [63:0] bitcast_ln55_6_fu_2204_p1;
wire   [10:0] tmp_15_fu_2208_p4;
wire   [51:0] trunc_ln55_6_fu_2218_p1;
wire   [0:0] icmp_ln55_13_fu_2228_p2;
wire   [0:0] icmp_ln55_12_fu_2222_p2;
wire   [0:0] or_ln55_7_fu_2240_p2;
wire   [0:0] or_ln55_6_fu_2234_p2;
wire   [0:0] and_ln55_6_fu_2244_p2;
wire   [7:0] zext_ln55_2_fu_2256_p1;
wire   [7:0] zext_ln55_3_fu_2272_p1;
wire   [7:0] min_s_6_fu_2259_p3;
wire   [63:0] bitcast_ln55_8_fu_2282_p1;
wire   [63:0] bitcast_ln55_9_fu_2299_p1;
wire   [10:0] tmp_20_fu_2285_p4;
wire   [51:0] trunc_ln55_8_fu_2295_p1;
wire   [0:0] icmp_ln55_17_fu_2322_p2;
wire   [0:0] icmp_ln55_16_fu_2316_p2;
wire   [10:0] tmp_21_fu_2302_p4;
wire   [51:0] trunc_ln55_9_fu_2312_p1;
wire   [0:0] icmp_ln55_19_fu_2340_p2;
wire   [0:0] icmp_ln55_18_fu_2334_p2;
wire   [0:0] or_ln55_9_fu_2346_p2;
wire   [0:0] or_ln55_8_fu_2328_p2;
wire   [0:0] and_ln55_8_fu_2352_p2;
wire   [63:0] bitcast_ln55_10_fu_2370_p1;
wire   [63:0] bitcast_ln55_11_fu_2388_p1;
wire   [10:0] tmp_25_fu_2374_p4;
wire   [51:0] trunc_ln55_10_fu_2384_p1;
wire   [0:0] icmp_ln55_21_fu_2411_p2;
wire   [0:0] icmp_ln55_20_fu_2405_p2;
wire   [10:0] tmp_26_fu_2391_p4;
wire   [51:0] trunc_ln55_11_fu_2401_p1;
wire   [0:0] icmp_ln55_23_fu_2429_p2;
wire   [0:0] icmp_ln55_22_fu_2423_p2;
wire   [0:0] or_ln55_11_fu_2435_p2;
wire   [0:0] or_ln55_10_fu_2417_p2;
wire   [0:0] and_ln55_10_fu_2441_p2;
wire   [63:0] bitcast_ln55_12_fu_2460_p1;
wire   [63:0] bitcast_ln55_13_fu_2477_p1;
wire   [10:0] tmp_30_fu_2463_p4;
wire   [51:0] trunc_ln55_12_fu_2473_p1;
wire   [0:0] icmp_ln55_25_fu_2500_p2;
wire   [0:0] icmp_ln55_24_fu_2494_p2;
wire   [10:0] tmp_31_fu_2480_p4;
wire   [51:0] trunc_ln55_13_fu_2490_p1;
wire   [0:0] icmp_ln55_27_fu_2518_p2;
wire   [0:0] icmp_ln55_26_fu_2512_p2;
wire   [0:0] or_ln55_13_fu_2524_p2;
wire   [0:0] or_ln55_12_fu_2506_p2;
wire   [0:0] and_ln55_12_fu_2530_p2;
wire   [7:0] zext_ln55_4_fu_2542_p1;
wire   [7:0] zext_ln55_5_fu_2551_p1;
wire   [7:0] min_s_8_fu_2545_p3;
wire   [7:0] zext_ln55_6_fu_2561_p1;
wire   [7:0] min_s_9_fu_2554_p3;
wire   [63:0] bitcast_ln55_14_fu_2578_p1;
wire   [63:0] bitcast_ln55_15_fu_2596_p1;
wire   [10:0] tmp_35_fu_2582_p4;
wire   [51:0] trunc_ln55_14_fu_2592_p1;
wire   [0:0] icmp_ln55_29_fu_2619_p2;
wire   [0:0] icmp_ln55_28_fu_2613_p2;
wire   [10:0] tmp_36_fu_2599_p4;
wire   [51:0] trunc_ln55_15_fu_2609_p1;
wire   [0:0] icmp_ln55_31_fu_2637_p2;
wire   [0:0] icmp_ln55_30_fu_2631_p2;
wire   [0:0] or_ln55_15_fu_2643_p2;
wire   [0:0] or_ln55_14_fu_2625_p2;
wire   [0:0] and_ln55_14_fu_2649_p2;
wire   [0:0] and_ln55_15_fu_2655_p2;
wire   [7:0] zext_ln55_7_fu_2667_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire   [2:0] tmp_1_fu_1131_p1;
wire   [2:0] tmp_1_fu_1131_p3;
wire   [2:0] tmp_1_fu_1131_p5;
wire   [2:0] tmp_1_fu_1131_p7;
wire  signed [2:0] tmp_1_fu_1131_p9;
wire  signed [2:0] tmp_1_fu_1131_p11;
wire  signed [2:0] tmp_1_fu_1131_p13;
wire  signed [2:0] tmp_1_fu_1131_p15;
wire   [2:0] tmp_5_fu_1278_p1;
wire   [2:0] tmp_5_fu_1278_p3;
wire   [2:0] tmp_5_fu_1278_p5;
wire   [2:0] tmp_5_fu_1278_p7;
wire  signed [2:0] tmp_5_fu_1278_p9;
wire  signed [2:0] tmp_5_fu_1278_p11;
wire  signed [2:0] tmp_5_fu_1278_p13;
wire  signed [2:0] tmp_5_fu_1278_p15;
wire   [2:0] tmp_9_fu_1349_p1;
wire   [2:0] tmp_9_fu_1349_p3;
wire   [2:0] tmp_9_fu_1349_p5;
wire   [2:0] tmp_9_fu_1349_p7;
wire  signed [2:0] tmp_9_fu_1349_p9;
wire  signed [2:0] tmp_9_fu_1349_p11;
wire  signed [2:0] tmp_9_fu_1349_p13;
wire  signed [2:0] tmp_9_fu_1349_p15;
wire   [2:0] tmp_14_fu_1468_p1;
wire   [2:0] tmp_14_fu_1468_p3;
wire   [2:0] tmp_14_fu_1468_p5;
wire   [2:0] tmp_14_fu_1468_p7;
wire  signed [2:0] tmp_14_fu_1468_p9;
wire  signed [2:0] tmp_14_fu_1468_p11;
wire  signed [2:0] tmp_14_fu_1468_p13;
wire  signed [2:0] tmp_14_fu_1468_p15;
wire   [2:0] tmp_19_fu_1539_p1;
wire   [2:0] tmp_19_fu_1539_p3;
wire   [2:0] tmp_19_fu_1539_p5;
wire   [2:0] tmp_19_fu_1539_p7;
wire  signed [2:0] tmp_19_fu_1539_p9;
wire  signed [2:0] tmp_19_fu_1539_p11;
wire  signed [2:0] tmp_19_fu_1539_p13;
wire  signed [2:0] tmp_19_fu_1539_p15;
wire   [2:0] tmp_24_fu_1658_p1;
wire   [2:0] tmp_24_fu_1658_p3;
wire   [2:0] tmp_24_fu_1658_p5;
wire   [2:0] tmp_24_fu_1658_p7;
wire  signed [2:0] tmp_24_fu_1658_p9;
wire  signed [2:0] tmp_24_fu_1658_p11;
wire  signed [2:0] tmp_24_fu_1658_p13;
wire  signed [2:0] tmp_24_fu_1658_p15;
wire   [2:0] tmp_29_fu_1729_p1;
wire   [2:0] tmp_29_fu_1729_p3;
wire   [2:0] tmp_29_fu_1729_p5;
wire   [2:0] tmp_29_fu_1729_p7;
wire  signed [2:0] tmp_29_fu_1729_p9;
wire  signed [2:0] tmp_29_fu_1729_p11;
wire  signed [2:0] tmp_29_fu_1729_p13;
wire  signed [2:0] tmp_29_fu_1729_p15;
wire   [2:0] tmp_34_fu_1828_p1;
wire   [2:0] tmp_34_fu_1828_p3;
wire   [2:0] tmp_34_fu_1828_p5;
wire   [2:0] tmp_34_fu_1828_p7;
wire  signed [2:0] tmp_34_fu_1828_p9;
wire  signed [2:0] tmp_34_fu_1828_p11;
wire  signed [2:0] tmp_34_fu_1828_p13;
wire  signed [2:0] tmp_34_fu_1828_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_138 = 64'd0;
#0 min_s_fu_142 = 8'd0;
#0 min_s_1_fu_146 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U123(.din0(tmp_1_fu_1131_p2),.din1(tmp_1_fu_1131_p4),.din2(tmp_1_fu_1131_p6),.din3(tmp_1_fu_1131_p8),.din4(tmp_1_fu_1131_p10),.din5(tmp_1_fu_1131_p12),.din6(tmp_1_fu_1131_p14),.din7(tmp_1_fu_1131_p16),.def(tmp_1_fu_1131_p17),.sel(empty),.dout(tmp_1_fu_1131_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U124(.din0(tmp_5_fu_1278_p2),.din1(tmp_5_fu_1278_p4),.din2(tmp_5_fu_1278_p6),.din3(tmp_5_fu_1278_p8),.din4(tmp_5_fu_1278_p10),.din5(tmp_5_fu_1278_p12),.din6(tmp_5_fu_1278_p14),.din7(tmp_5_fu_1278_p16),.def(tmp_5_fu_1278_p17),.sel(empty),.dout(tmp_5_fu_1278_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U125(.din0(tmp_9_fu_1349_p2),.din1(tmp_9_fu_1349_p4),.din2(tmp_9_fu_1349_p6),.din3(tmp_9_fu_1349_p8),.din4(tmp_9_fu_1349_p10),.din5(tmp_9_fu_1349_p12),.din6(tmp_9_fu_1349_p14),.din7(tmp_9_fu_1349_p16),.def(tmp_9_fu_1349_p17),.sel(empty),.dout(tmp_9_fu_1349_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U126(.din0(tmp_14_fu_1468_p2),.din1(tmp_14_fu_1468_p4),.din2(tmp_14_fu_1468_p6),.din3(tmp_14_fu_1468_p8),.din4(tmp_14_fu_1468_p10),.din5(tmp_14_fu_1468_p12),.din6(tmp_14_fu_1468_p14),.din7(tmp_14_fu_1468_p16),.def(tmp_14_fu_1468_p17),.sel(empty),.dout(tmp_14_fu_1468_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U127(.din0(tmp_19_fu_1539_p2),.din1(tmp_19_fu_1539_p4),.din2(tmp_19_fu_1539_p6),.din3(tmp_19_fu_1539_p8),.din4(tmp_19_fu_1539_p10),.din5(tmp_19_fu_1539_p12),.din6(tmp_19_fu_1539_p14),.din7(tmp_19_fu_1539_p16),.def(tmp_19_fu_1539_p17),.sel(empty),.dout(tmp_19_fu_1539_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U128(.din0(tmp_24_fu_1658_p2),.din1(tmp_24_fu_1658_p4),.din2(tmp_24_fu_1658_p6),.din3(tmp_24_fu_1658_p8),.din4(tmp_24_fu_1658_p10),.din5(tmp_24_fu_1658_p12),.din6(tmp_24_fu_1658_p14),.din7(tmp_24_fu_1658_p16),.def(tmp_24_fu_1658_p17),.sel(empty),.dout(tmp_24_fu_1658_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U129(.din0(tmp_29_fu_1729_p2),.din1(tmp_29_fu_1729_p4),.din2(tmp_29_fu_1729_p6),.din3(tmp_29_fu_1729_p8),.din4(tmp_29_fu_1729_p10),.din5(tmp_29_fu_1729_p12),.din6(tmp_29_fu_1729_p14),.din7(tmp_29_fu_1729_p16),.def(tmp_29_fu_1729_p17),.sel(empty),.dout(tmp_29_fu_1729_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U130(.din0(tmp_34_fu_1828_p2),.din1(tmp_34_fu_1828_p4),.din2(tmp_34_fu_1828_p6),.din3(tmp_34_fu_1828_p8),.din4(tmp_34_fu_1828_p10),.din5(tmp_34_fu_1828_p12),.din6(tmp_34_fu_1828_p14),.din7(tmp_34_fu_1828_p16),.def(tmp_34_fu_1828_p17),.sel(empty),.dout(tmp_34_fu_1828_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_138 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2854_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_138 <= min_p_17_fu_2660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_146 <= 6'd1;
    end else if (((tmp_33_reg_2854 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_146 <= add_ln53_7_fu_2194_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_142 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2854_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_142 <= min_s_11_fu_2670_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2804 <= add_ln53_1_fu_973_p2;
        add_ln53_1_reg_2804_pp0_iter1_reg <= add_ln53_1_reg_2804;
        add_ln53_2_reg_2810 <= add_ln53_2_fu_979_p2;
        add_ln53_2_reg_2810_pp0_iter1_reg <= add_ln53_2_reg_2810;
        add_ln53_4_reg_2826 <= add_ln53_4_fu_1027_p2;
        add_ln53_4_reg_2826_pp0_iter1_reg <= add_ln53_4_reg_2826;
        add_ln53_5_reg_2837 <= add_ln53_5_fu_1056_p2;
        add_ln53_5_reg_2837_pp0_iter1_reg <= add_ln53_5_reg_2837;
        add_ln53_6_reg_2848 <= add_ln53_6_fu_1085_p2;
        add_ln53_reg_2798 <= add_ln53_fu_967_p2;
        and_ln55_7_reg_3308 <= and_ln55_7_fu_2250_p2;
        s_reg_2736 <= ap_sig_allocacmp_s;
        tmp_33_reg_2854 <= add_ln53_6_fu_1085_p2[32'd6];
        tmp_33_reg_2854_pp0_iter1_reg <= tmp_33_reg_2854;
        zext_ln52_2_cast_reg_2725[4 : 0] <= zext_ln52_2_cast_fu_890_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_2963 <= add_ln53_3_fu_1218_p2;
        add_ln53_3_reg_2963_pp0_iter1_reg <= add_ln53_3_reg_2963;
        min_p_9_reg_3314 <= min_p_9_fu_2265_p3;
        min_s_7_reg_3321 <= min_s_7_fu_2275_p3;
        tmp_1_reg_2863 <= tmp_1_fu_1131_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_3339 <= and_ln55_11_fu_2447_p2;
        tmp_24_reg_3174 <= tmp_24_fu_1658_p19;
        tmp_29_reg_3179 <= tmp_29_fu_1729_p19;
        trunc_ln54_reg_3184 <= trunc_ln54_fu_1768_p1;
        trunc_ln54_reg_3184_pp0_iter1_reg <= trunc_ln54_reg_3184;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_3352 <= and_ln55_13_fu_2536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3241 <= and_ln55_1_fu_1948_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3254 <= and_ln55_3_fu_2038_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3279 <= and_ln55_5_fu_2151_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_9_reg_3326 <= and_ln55_9_fu_2358_p2;
        tmp_5_reg_2989 <= tmp_5_fu_1278_p19;
        tmp_9_reg_2994 <= tmp_9_fu_1349_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_3298 <= icmp_ln55_14_fu_2182_p2;
        icmp_ln55_15_reg_3303 <= icmp_ln55_15_fu_2188_p2;
        min_p_7_reg_3292 <= min_p_7_fu_2157_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2969 <= llike_1_q0;
        llike_1_load_reg_2858 <= llike_1_q1;
        llike_2_load_1_reg_2974 <= llike_2_q0;
        llike_2_load_reg_2868 <= llike_2_q1;
        llike_3_load_1_reg_2979 <= llike_3_q0;
        llike_3_load_reg_2913 <= llike_3_q1;
        llike_load_reg_2958 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_3079 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_3332 <= min_p_11_fu_2364_p3;
        tmp_14_reg_3084 <= tmp_14_fu_1468_p19;
        tmp_19_reg_3089 <= tmp_19_fu_1539_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_3345 <= min_p_13_fu_2453_p3;
        tmp_34_reg_3229 <= tmp_34_fu_1828_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_3363 <= min_p_15_fu_2572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3234 <= min_p_fu_138;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3247 <= min_p_3_fu_1954_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3267 <= min_p_5_fu_2057_p3;
        min_s_5_reg_3274 <= min_s_5_fu_2067_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_3358 <= min_s_10_fu_2564_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_3260 <= grp_fu_993_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_3285 <= grp_fu_993_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_875 <= grp_fu_993_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_880 <= grp_fu_993_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_885 <= grp_fu_993_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_37_reg_3370 <= grp_fu_2015_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_33_reg_2854 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_33_reg_2854_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_867_p0 = llike_load_1_reg_3079;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_867_p0 = llike_3_load_1_reg_2979;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_867_p0 = llike_2_load_1_reg_2974;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_867_p0 = llike_1_load_1_reg_2969;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_867_p0 = llike_load_reg_2958;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_867_p0 = llike_3_load_reg_2913;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_867_p0 = llike_2_load_reg_2868;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_867_p0 = llike_1_load_reg_2858;
        end else begin
            grp_fu_867_p0 = 'bx;
        end
    end else begin
        grp_fu_867_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_867_p1 = tmp_34_reg_3229;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_867_p1 = tmp_29_reg_3179;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_867_p1 = tmp_24_reg_3174;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_867_p1 = tmp_19_reg_3089;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_867_p1 = tmp_14_reg_3084;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_867_p1 = tmp_9_reg_2994;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_867_p1 = tmp_5_reg_2989;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_867_p1 = tmp_1_reg_2863;
        end else begin
            grp_fu_867_p1 = 'bx;
        end
    end else begin
        grp_fu_867_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_871_p0 = p_6_reg_3285;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_871_p0 = p_4_reg_3260;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_871_p0 = reg_885;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_871_p0 = reg_880;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_871_p0 = reg_875;
    end else begin
        grp_fu_871_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_871_p1 = min_p_15_fu_2572_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_871_p1 = min_p_13_fu_2453_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_871_p1 = min_p_11_fu_2364_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_871_p1 = min_p_9_fu_2265_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_871_p1 = min_p_7_fu_2157_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_871_p1 = min_p_5_fu_2057_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_871_p1 = min_p_3_fu_1954_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_871_p1 = min_p_fu_138;
    end else begin
        grp_fu_871_p1 = 'bx;
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
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
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
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
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
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_14_fu_1241_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_9_fu_1003_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_33_reg_2854_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_2_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_3_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_4_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_5_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_6_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address0_local = zext_ln54_5_fu_1590_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln54_3_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_955_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_7_address1_local = zext_ln54_7_fu_1784_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address1_local = zext_ln54_6_fu_1614_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_4_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_1182_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_973_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_979_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_1218_p2 = (s_reg_2736 + 6'd4);
assign add_ln53_4_fu_1027_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_1056_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_1085_p2 = (zext_ln21_fu_912_p1 + 7'd7);
assign add_ln53_7_fu_2194_p2 = (s_reg_2736 + 6'd8);
assign add_ln53_fu_967_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1177_p2 = (shl_ln54_1_fu_1170_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_2_fu_1201_p2 = (shl_ln54_2_fu_1194_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_3_fu_1395_p2 = (shl_ln54_3_fu_1388_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_4_fu_1419_p2 = (shl_ln54_4_fu_1412_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_5_fu_1585_p2 = (shl_ln54_5_fu_1578_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_6_fu_1609_p2 = (shl_ln54_6_fu_1602_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_7_fu_1779_p2 = (shl_ln54_7_fu_1771_p3 + zext_ln52_2_cast_reg_2725);
assign add_ln54_8_fu_1236_p2 = (zext_ln52_3 + zext_ln54_13_fu_1232_p1);
assign add_ln54_fu_949_p2 = (shl_ln2_fu_941_p3 + zext_ln52_2_cast_fu_890_p1);
assign add_ln8_fu_1008_p2 = (lshr_ln8_s_fu_916_p4 + 4'd1);
assign and_ln55_10_fu_2441_p2 = (or_ln55_11_fu_2435_p2 & or_ln55_10_fu_2417_p2);
assign and_ln55_11_fu_2447_p2 = (grp_fu_2015_p_dout0 & and_ln55_10_fu_2441_p2);
assign and_ln55_12_fu_2530_p2 = (or_ln55_13_fu_2524_p2 & or_ln55_12_fu_2506_p2);
assign and_ln55_13_fu_2536_p2 = (grp_fu_2015_p_dout0 & and_ln55_12_fu_2530_p2);
assign and_ln55_14_fu_2649_p2 = (or_ln55_15_fu_2643_p2 & or_ln55_14_fu_2625_p2);
assign and_ln55_15_fu_2655_p2 = (tmp_37_reg_3370 & and_ln55_14_fu_2649_p2);
assign and_ln55_1_fu_1948_p2 = (or_ln55_1_fu_1936_p2 & and_ln55_fu_1942_p2);
assign and_ln55_2_fu_2032_p2 = (or_ln55_3_fu_2026_p2 & or_ln55_2_fu_2008_p2);
assign and_ln55_3_fu_2038_p2 = (grp_fu_2015_p_dout0 & and_ln55_2_fu_2032_p2);
assign and_ln55_4_fu_2145_p2 = (or_ln55_5_fu_2139_p2 & or_ln55_4_fu_2121_p2);
assign and_ln55_5_fu_2151_p2 = (grp_fu_2015_p_dout0 & and_ln55_4_fu_2145_p2);
assign and_ln55_6_fu_2244_p2 = (or_ln55_7_fu_2240_p2 & or_ln55_6_fu_2234_p2);
assign and_ln55_7_fu_2250_p2 = (grp_fu_2015_p_dout0 & and_ln55_6_fu_2244_p2);
assign and_ln55_8_fu_2352_p2 = (or_ln55_9_fu_2346_p2 & or_ln55_8_fu_2328_p2);
assign and_ln55_9_fu_2358_p2 = (grp_fu_2015_p_dout0 & and_ln55_8_fu_2352_p2);
assign and_ln55_fu_1942_p2 = (or_ln55_fu_1918_p2 & grp_fu_2015_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_10_fu_2370_p1 = reg_880;
assign bitcast_ln55_11_fu_2388_p1 = min_p_11_reg_3332;
assign bitcast_ln55_12_fu_2460_p1 = p_6_reg_3285;
assign bitcast_ln55_13_fu_2477_p1 = min_p_13_reg_3345;
assign bitcast_ln55_14_fu_2578_p1 = reg_885;
assign bitcast_ln55_15_fu_2596_p1 = min_p_15_reg_3363;
assign bitcast_ln55_1_fu_1889_p1 = min_p_1_reg_3234;
assign bitcast_ln55_2_fu_1961_p1 = reg_880;
assign bitcast_ln55_3_fu_1979_p1 = min_p_3_reg_3247;
assign bitcast_ln55_4_fu_2074_p1 = reg_885;
assign bitcast_ln55_5_fu_2092_p1 = min_p_5_reg_3267;
assign bitcast_ln55_6_fu_2204_p1 = reg_875;
assign bitcast_ln55_7_fu_2164_p1 = min_p_7_fu_2157_p3;
assign bitcast_ln55_8_fu_2282_p1 = p_4_reg_3260;
assign bitcast_ln55_9_fu_2299_p1 = min_p_9_reg_3314;
assign bitcast_ln55_fu_1871_p1 = reg_875;
assign grp_fu_2015_p_ce = 1'b1;
assign grp_fu_2015_p_din0 = grp_fu_871_p0;
assign grp_fu_2015_p_din1 = grp_fu_871_p1;
assign grp_fu_2015_p_opcode = 5'd4;
assign grp_fu_993_p_ce = 1'b1;
assign grp_fu_993_p_din0 = grp_fu_867_p0;
assign grp_fu_993_p_din1 = grp_fu_867_p1;
assign grp_fu_993_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2127_p2 = ((tmp_11_fu_2095_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2133_p2 = ((trunc_ln55_5_fu_2105_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2222_p2 = ((tmp_15_fu_2208_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2228_p2 = ((trunc_ln55_6_fu_2218_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2182_p2 = ((tmp_16_fu_2168_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2188_p2 = ((trunc_ln55_7_fu_2178_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2316_p2 = ((tmp_20_fu_2285_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2322_p2 = ((trunc_ln55_8_fu_2295_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2334_p2 = ((tmp_21_fu_2302_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2340_p2 = ((trunc_ln55_9_fu_2312_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1912_p2 = ((trunc_ln55_fu_1885_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2405_p2 = ((tmp_25_fu_2374_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2411_p2 = ((trunc_ln55_10_fu_2384_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2423_p2 = ((tmp_26_fu_2391_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2429_p2 = ((trunc_ln55_11_fu_2401_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2494_p2 = ((tmp_30_fu_2463_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2500_p2 = ((trunc_ln55_12_fu_2473_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2512_p2 = ((tmp_31_fu_2480_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2518_p2 = ((trunc_ln55_13_fu_2490_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2613_p2 = ((tmp_35_fu_2582_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2619_p2 = ((trunc_ln55_14_fu_2592_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1924_p2 = ((tmp_3_fu_1892_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2631_p2 = ((tmp_36_fu_2599_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2637_p2 = ((trunc_ln55_15_fu_2609_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1930_p2 = ((trunc_ln55_1_fu_1902_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1996_p2 = ((tmp_6_fu_1965_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2002_p2 = ((trunc_ln55_2_fu_1975_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2014_p2 = ((tmp_7_fu_1982_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2020_p2 = ((trunc_ln55_3_fu_1992_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2109_p2 = ((tmp_10_fu_2078_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2115_p2 = ((trunc_ln55_4_fu_2088_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1906_p2 = ((tmp_2_fu_1875_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_10_fu_1022_p1;
assign llike_1_address1 = zext_ln54_8_fu_934_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_11_fu_1051_p1;
assign llike_2_address1 = zext_ln54_8_fu_934_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_12_fu_1080_p1;
assign llike_3_address1 = zext_ln54_8_fu_934_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_985_p4 = {{add_ln53_2_fu_979_p2[5:2]}};
assign lshr_ln8_2_fu_1033_p4 = {{add_ln53_4_fu_1027_p2[5:2]}};
assign lshr_ln8_3_fu_1062_p4 = {{add_ln53_5_fu_1056_p2[5:2]}};
assign lshr_ln8_s_fu_916_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_3_fu_1223_p4 = {{add_ln53_6_reg_2848[6:2]}};
assign min_p_11_fu_2364_p3 = ((and_ln55_9_reg_3326[0:0] == 1'b1) ? p_4_reg_3260 : min_p_9_reg_3314);
assign min_p_13_fu_2453_p3 = ((and_ln55_11_reg_3339[0:0] == 1'b1) ? reg_880 : min_p_11_reg_3332);
assign min_p_15_fu_2572_p3 = ((and_ln55_13_reg_3352[0:0] == 1'b1) ? p_6_reg_3285 : min_p_13_reg_3345);
assign min_p_17_fu_2660_p3 = ((and_ln55_15_fu_2655_p2[0:0] == 1'b1) ? reg_885 : min_p_15_reg_3363);
assign min_p_3_fu_1954_p3 = ((and_ln55_1_reg_3241[0:0] == 1'b1) ? reg_875 : min_p_1_reg_3234);
assign min_p_5_fu_2057_p3 = ((and_ln55_3_reg_3254[0:0] == 1'b1) ? reg_880 : min_p_3_reg_3247);
assign min_p_7_fu_2157_p3 = ((and_ln55_5_reg_3279[0:0] == 1'b1) ? reg_885 : min_p_5_reg_3267);
assign min_p_9_fu_2265_p3 = ((and_ln55_7_reg_3308[0:0] == 1'b1) ? reg_875 : min_p_7_reg_3292);
assign min_s_10_fu_2564_p3 = ((and_ln55_13_reg_3352[0:0] == 1'b1) ? zext_ln55_6_fu_2561_p1 : min_s_9_fu_2554_p3);
assign min_s_11_fu_2670_p3 = ((and_ln55_15_fu_2655_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2667_p1 : min_s_10_reg_3358);
assign min_s_18_out = ((and_ln55_13_reg_3352[0:0] == 1'b1) ? zext_ln55_6_fu_2561_p1 : min_s_9_fu_2554_p3);
assign min_s_4_fu_2050_p3 = ((and_ln55_1_reg_3241[0:0] == 1'b1) ? zext_ln55_fu_2047_p1 : min_s_fu_142);
assign min_s_5_fu_2067_p3 = ((and_ln55_3_reg_3254[0:0] == 1'b1) ? zext_ln55_1_fu_2064_p1 : min_s_4_fu_2050_p3);
assign min_s_6_fu_2259_p3 = ((and_ln55_5_reg_3279[0:0] == 1'b1) ? zext_ln55_2_fu_2256_p1 : min_s_5_reg_3274);
assign min_s_7_fu_2275_p3 = ((and_ln55_7_reg_3308[0:0] == 1'b1) ? zext_ln55_3_fu_2272_p1 : min_s_6_fu_2259_p3);
assign min_s_8_fu_2545_p3 = ((and_ln55_9_reg_3326[0:0] == 1'b1) ? zext_ln55_4_fu_2542_p1 : min_s_7_reg_3321);
assign min_s_9_fu_2554_p3 = ((and_ln55_11_reg_3339[0:0] == 1'b1) ? zext_ln55_5_fu_2551_p1 : min_s_8_fu_2545_p3);
assign or_ln55_10_fu_2417_p2 = (icmp_ln55_21_fu_2411_p2 | icmp_ln55_20_fu_2405_p2);
assign or_ln55_11_fu_2435_p2 = (icmp_ln55_23_fu_2429_p2 | icmp_ln55_22_fu_2423_p2);
assign or_ln55_12_fu_2506_p2 = (icmp_ln55_25_fu_2500_p2 | icmp_ln55_24_fu_2494_p2);
assign or_ln55_13_fu_2524_p2 = (icmp_ln55_27_fu_2518_p2 | icmp_ln55_26_fu_2512_p2);
assign or_ln55_14_fu_2625_p2 = (icmp_ln55_29_fu_2619_p2 | icmp_ln55_28_fu_2613_p2);
assign or_ln55_15_fu_2643_p2 = (icmp_ln55_31_fu_2637_p2 | icmp_ln55_30_fu_2631_p2);
assign or_ln55_1_fu_1936_p2 = (icmp_ln55_3_fu_1930_p2 | icmp_ln55_2_fu_1924_p2);
assign or_ln55_2_fu_2008_p2 = (icmp_ln55_5_fu_2002_p2 | icmp_ln55_4_fu_1996_p2);
assign or_ln55_3_fu_2026_p2 = (icmp_ln55_7_fu_2020_p2 | icmp_ln55_6_fu_2014_p2);
assign or_ln55_4_fu_2121_p2 = (icmp_ln55_9_fu_2115_p2 | icmp_ln55_8_fu_2109_p2);
assign or_ln55_5_fu_2139_p2 = (icmp_ln55_11_fu_2133_p2 | icmp_ln55_10_fu_2127_p2);
assign or_ln55_6_fu_2234_p2 = (icmp_ln55_13_fu_2228_p2 | icmp_ln55_12_fu_2222_p2);
assign or_ln55_7_fu_2240_p2 = (icmp_ln55_15_reg_3303 | icmp_ln55_14_reg_3298);
assign or_ln55_8_fu_2328_p2 = (icmp_ln55_17_fu_2322_p2 | icmp_ln55_16_fu_2316_p2);
assign or_ln55_9_fu_2346_p2 = (icmp_ln55_19_fu_2340_p2 | icmp_ln55_18_fu_2334_p2);
assign or_ln55_fu_1918_p2 = (icmp_ln55_fu_1906_p2 | icmp_ln55_1_fu_1912_p2);
assign shl_ln2_fu_941_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_1170_p3 = {{add_ln53_reg_2798}, {3'd0}};
assign shl_ln54_2_fu_1194_p3 = {{add_ln53_1_reg_2804}, {3'd0}};
assign shl_ln54_3_fu_1388_p3 = {{add_ln53_2_reg_2810}, {3'd0}};
assign shl_ln54_4_fu_1412_p3 = {{add_ln53_3_reg_2963}, {3'd0}};
assign shl_ln54_5_fu_1578_p3 = {{add_ln53_4_reg_2826}, {3'd0}};
assign shl_ln54_6_fu_1602_p3 = {{add_ln53_5_reg_2837}, {3'd0}};
assign shl_ln54_7_fu_1771_p3 = {{trunc_ln54_fu_1768_p1}, {3'd0}};
assign tmp_10_fu_2078_p4 = {{bitcast_ln55_4_fu_2074_p1[62:52]}};
assign tmp_11_fu_2095_p4 = {{bitcast_ln55_5_fu_2092_p1[62:52]}};
assign tmp_13_fu_995_p3 = {{t_1}, {lshr_ln8_1_fu_985_p4}};
assign tmp_14_fu_1468_p10 = transition_4_q0;
assign tmp_14_fu_1468_p12 = transition_5_q0;
assign tmp_14_fu_1468_p14 = transition_6_q0;
assign tmp_14_fu_1468_p16 = transition_7_q0;
assign tmp_14_fu_1468_p17 = 'bx;
assign tmp_14_fu_1468_p2 = transition_0_q0;
assign tmp_14_fu_1468_p4 = transition_1_q0;
assign tmp_14_fu_1468_p6 = transition_2_q0;
assign tmp_14_fu_1468_p8 = transition_3_q0;
assign tmp_15_fu_2208_p4 = {{bitcast_ln55_6_fu_2204_p1[62:52]}};
assign tmp_16_fu_2168_p4 = {{bitcast_ln55_7_fu_2164_p1[62:52]}};
assign tmp_18_fu_1014_p3 = {{t_1}, {add_ln8_fu_1008_p2}};
assign tmp_19_fu_1539_p10 = transition_4_q1;
assign tmp_19_fu_1539_p12 = transition_5_q1;
assign tmp_19_fu_1539_p14 = transition_6_q1;
assign tmp_19_fu_1539_p16 = transition_7_q1;
assign tmp_19_fu_1539_p17 = 'bx;
assign tmp_19_fu_1539_p2 = transition_0_q1;
assign tmp_19_fu_1539_p4 = transition_1_q1;
assign tmp_19_fu_1539_p6 = transition_2_q1;
assign tmp_19_fu_1539_p8 = transition_3_q1;
assign tmp_1_fu_1131_p10 = transition_4_q0;
assign tmp_1_fu_1131_p12 = transition_5_q0;
assign tmp_1_fu_1131_p14 = transition_6_q0;
assign tmp_1_fu_1131_p16 = transition_7_q0;
assign tmp_1_fu_1131_p17 = 'bx;
assign tmp_1_fu_1131_p2 = transition_0_q0;
assign tmp_1_fu_1131_p4 = transition_1_q0;
assign tmp_1_fu_1131_p6 = transition_2_q0;
assign tmp_1_fu_1131_p8 = transition_3_q0;
assign tmp_20_fu_2285_p4 = {{bitcast_ln55_8_fu_2282_p1[62:52]}};
assign tmp_21_fu_2302_p4 = {{bitcast_ln55_9_fu_2299_p1[62:52]}};
assign tmp_23_fu_1043_p3 = {{t_1}, {lshr_ln8_2_fu_1033_p4}};
assign tmp_24_fu_1658_p10 = transition_4_q0;
assign tmp_24_fu_1658_p12 = transition_5_q0;
assign tmp_24_fu_1658_p14 = transition_6_q0;
assign tmp_24_fu_1658_p16 = transition_7_q0;
assign tmp_24_fu_1658_p17 = 'bx;
assign tmp_24_fu_1658_p2 = transition_0_q0;
assign tmp_24_fu_1658_p4 = transition_1_q0;
assign tmp_24_fu_1658_p6 = transition_2_q0;
assign tmp_24_fu_1658_p8 = transition_3_q0;
assign tmp_25_fu_2374_p4 = {{bitcast_ln55_10_fu_2370_p1[62:52]}};
assign tmp_26_fu_2391_p4 = {{bitcast_ln55_11_fu_2388_p1[62:52]}};
assign tmp_28_fu_1072_p3 = {{t_1}, {lshr_ln8_3_fu_1062_p4}};
assign tmp_29_fu_1729_p10 = transition_4_q1;
assign tmp_29_fu_1729_p12 = transition_5_q1;
assign tmp_29_fu_1729_p14 = transition_6_q1;
assign tmp_29_fu_1729_p16 = transition_7_q1;
assign tmp_29_fu_1729_p17 = 'bx;
assign tmp_29_fu_1729_p2 = transition_0_q1;
assign tmp_29_fu_1729_p4 = transition_1_q1;
assign tmp_29_fu_1729_p6 = transition_2_q1;
assign tmp_29_fu_1729_p8 = transition_3_q1;
assign tmp_2_fu_1875_p4 = {{bitcast_ln55_fu_1871_p1[62:52]}};
assign tmp_30_fu_2463_p4 = {{bitcast_ln55_12_fu_2460_p1[62:52]}};
assign tmp_31_fu_2480_p4 = {{bitcast_ln55_13_fu_2477_p1[62:52]}};
assign tmp_34_fu_1828_p10 = transition_4_q1;
assign tmp_34_fu_1828_p12 = transition_5_q1;
assign tmp_34_fu_1828_p14 = transition_6_q1;
assign tmp_34_fu_1828_p16 = transition_7_q1;
assign tmp_34_fu_1828_p17 = 'bx;
assign tmp_34_fu_1828_p2 = transition_0_q1;
assign tmp_34_fu_1828_p4 = transition_1_q1;
assign tmp_34_fu_1828_p6 = transition_2_q1;
assign tmp_34_fu_1828_p8 = transition_3_q1;
assign tmp_35_fu_2582_p4 = {{bitcast_ln55_14_fu_2578_p1[62:52]}};
assign tmp_36_fu_2599_p4 = {{bitcast_ln55_15_fu_2596_p1[62:52]}};
assign tmp_3_fu_1892_p4 = {{bitcast_ln55_1_fu_1889_p1[62:52]}};
assign tmp_5_fu_1278_p10 = transition_4_q1;
assign tmp_5_fu_1278_p12 = transition_5_q1;
assign tmp_5_fu_1278_p14 = transition_6_q1;
assign tmp_5_fu_1278_p16 = transition_7_q1;
assign tmp_5_fu_1278_p17 = 'bx;
assign tmp_5_fu_1278_p2 = transition_0_q1;
assign tmp_5_fu_1278_p4 = transition_1_q1;
assign tmp_5_fu_1278_p6 = transition_2_q1;
assign tmp_5_fu_1278_p8 = transition_3_q1;
assign tmp_6_fu_1965_p4 = {{bitcast_ln55_2_fu_1961_p1[62:52]}};
assign tmp_7_fu_1982_p4 = {{bitcast_ln55_3_fu_1979_p1[62:52]}};
assign tmp_9_fu_1349_p10 = transition_4_q0;
assign tmp_9_fu_1349_p12 = transition_5_q0;
assign tmp_9_fu_1349_p14 = transition_6_q0;
assign tmp_9_fu_1349_p16 = transition_7_q0;
assign tmp_9_fu_1349_p17 = 'bx;
assign tmp_9_fu_1349_p2 = transition_0_q0;
assign tmp_9_fu_1349_p4 = transition_1_q0;
assign tmp_9_fu_1349_p6 = transition_2_q0;
assign tmp_9_fu_1349_p8 = transition_3_q0;
assign tmp_s_fu_926_p3 = {{t_1}, {lshr_ln8_s_fu_916_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln54_fu_1768_p1 = add_ln53_6_reg_2848[5:0];
assign trunc_ln55_10_fu_2384_p1 = bitcast_ln55_10_fu_2370_p1[51:0];
assign trunc_ln55_11_fu_2401_p1 = bitcast_ln55_11_fu_2388_p1[51:0];
assign trunc_ln55_12_fu_2473_p1 = bitcast_ln55_12_fu_2460_p1[51:0];
assign trunc_ln55_13_fu_2490_p1 = bitcast_ln55_13_fu_2477_p1[51:0];
assign trunc_ln55_14_fu_2592_p1 = bitcast_ln55_14_fu_2578_p1[51:0];
assign trunc_ln55_15_fu_2609_p1 = bitcast_ln55_15_fu_2596_p1[51:0];
assign trunc_ln55_1_fu_1902_p1 = bitcast_ln55_1_fu_1889_p1[51:0];
assign trunc_ln55_2_fu_1975_p1 = bitcast_ln55_2_fu_1961_p1[51:0];
assign trunc_ln55_3_fu_1992_p1 = bitcast_ln55_3_fu_1979_p1[51:0];
assign trunc_ln55_4_fu_2088_p1 = bitcast_ln55_4_fu_2074_p1[51:0];
assign trunc_ln55_5_fu_2105_p1 = bitcast_ln55_5_fu_2092_p1[51:0];
assign trunc_ln55_6_fu_2218_p1 = bitcast_ln55_6_fu_2204_p1[51:0];
assign trunc_ln55_7_fu_2178_p1 = bitcast_ln55_7_fu_2164_p1[51:0];
assign trunc_ln55_8_fu_2295_p1 = bitcast_ln55_8_fu_2282_p1[51:0];
assign trunc_ln55_9_fu_2312_p1 = bitcast_ln55_9_fu_2299_p1[51:0];
assign trunc_ln55_fu_1885_p1 = bitcast_ln55_fu_1871_p1[51:0];
assign zext_ln21_fu_912_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_890_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1022_p1 = tmp_18_fu_1014_p3;
assign zext_ln54_11_fu_1051_p1 = tmp_23_fu_1043_p3;
assign zext_ln54_12_fu_1080_p1 = tmp_28_fu_1072_p3;
assign zext_ln54_13_fu_1232_p1 = lshr_ln9_3_fu_1223_p4;
assign zext_ln54_14_fu_1241_p1 = add_ln54_8_fu_1236_p2;
assign zext_ln54_1_fu_1182_p1 = add_ln54_1_fu_1177_p2;
assign zext_ln54_2_fu_1206_p1 = add_ln54_2_fu_1201_p2;
assign zext_ln54_3_fu_1400_p1 = add_ln54_3_fu_1395_p2;
assign zext_ln54_4_fu_1424_p1 = add_ln54_4_fu_1419_p2;
assign zext_ln54_5_fu_1590_p1 = add_ln54_5_fu_1585_p2;
assign zext_ln54_6_fu_1614_p1 = add_ln54_6_fu_1609_p2;
assign zext_ln54_7_fu_1784_p1 = add_ln54_7_fu_1779_p2;
assign zext_ln54_8_fu_934_p1 = tmp_s_fu_926_p3;
assign zext_ln54_9_fu_1003_p1 = tmp_13_fu_995_p3;
assign zext_ln54_fu_955_p1 = add_ln54_fu_949_p2;
assign zext_ln55_1_fu_2064_p1 = add_ln53_reg_2798;
assign zext_ln55_2_fu_2256_p1 = add_ln53_1_reg_2804_pp0_iter1_reg;
assign zext_ln55_3_fu_2272_p1 = add_ln53_2_reg_2810_pp0_iter1_reg;
assign zext_ln55_4_fu_2542_p1 = add_ln53_3_reg_2963_pp0_iter1_reg;
assign zext_ln55_5_fu_2551_p1 = add_ln53_4_reg_2826_pp0_iter1_reg;
assign zext_ln55_6_fu_2561_p1 = add_ln53_5_reg_2837_pp0_iter1_reg;
assign zext_ln55_7_fu_2667_p1 = trunc_ln54_reg_3184_pp0_iter1_reg;
assign zext_ln55_fu_2047_p1 = s_reg_2736;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2725[8:5] <= 4'b0000;
end
endmodule 