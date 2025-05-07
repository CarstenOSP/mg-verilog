module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_10,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_9,empty,min_p_26_out,min_p_26_out_ap_vld,grp_fu_902_p_din0,grp_fu_902_p_din1,grp_fu_902_p_opcode,grp_fu_902_p_dout0,grp_fu_902_p_ce,grp_fu_1687_p_din0,grp_fu_1687_p_din1,grp_fu_1687_p_opcode,grp_fu_1687_p_dout0,grp_fu_1687_p_ce); 
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
input  [63:0] min_p_10;
input  [7:0] empty_9;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
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
input  [3:0] lshr_ln;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty_10;
input  [63:0] tmp_9;
input  [9:0] empty;
output  [63:0] min_p_26_out;
output   min_p_26_out_ap_vld;
output  [63:0] grp_fu_902_p_din0;
output  [63:0] grp_fu_902_p_din1;
output  [1:0] grp_fu_902_p_opcode;
input  [63:0] grp_fu_902_p_dout0;
output   grp_fu_902_p_ce;
output  [63:0] grp_fu_1687_p_din0;
output  [63:0] grp_fu_1687_p_din1;
output  [4:0] grp_fu_1687_p_opcode;
input  [0:0] grp_fu_1687_p_dout0;
output   grp_fu_1687_p_ce;
reg ap_idle;
reg min_p_26_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_55_reg_3055;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_871;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_877;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_883;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_889;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_895;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_901;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2903;
wire   [3:0] trunc_ln16_fu_924_p1;
reg   [3:0] trunc_ln16_reg_2908;
wire   [9:0] shl_ln1_fu_966_p3;
reg   [9:0] shl_ln1_reg_3000;
wire   [6:0] add_ln25_fu_1022_p2;
reg   [6:0] add_ln25_reg_3049;
reg   [0:0] tmp_55_reg_3055_pp0_iter1_reg;
wire   [63:0] tmp_10_fu_1036_p35;
reg   [63:0] tmp_10_reg_3059;
wire   [63:0] tmp_11_fu_1123_p11;
reg   [63:0] tmp_11_reg_3064;
wire   [63:0] tmp_12_fu_1146_p35;
reg   [63:0] tmp_12_reg_3069;
wire   [63:0] tmp_13_fu_1233_p11;
reg   [63:0] tmp_13_reg_3074;
wire   [63:0] tmp_14_fu_1256_p35;
reg   [63:0] tmp_14_reg_3079;
wire   [63:0] tmp_16_fu_1357_p35;
reg   [63:0] tmp_16_reg_3104;
wire   [63:0] tmp_18_fu_1458_p35;
reg   [63:0] tmp_18_reg_3129;
wire   [63:0] tmp_20_fu_1529_p35;
reg   [63:0] tmp_20_reg_3134;
wire   [63:0] tmp_22_fu_1600_p35;
reg   [63:0] tmp_22_reg_3139;
wire   [63:0] tmp_15_fu_1725_p11;
reg   [63:0] tmp_15_reg_3224;
wire   [63:0] tmp_17_fu_1764_p11;
reg   [63:0] tmp_17_reg_3229;
reg   [5:0] tmp_51_reg_3274;
wire   [63:0] tmp_26_fu_1862_p35;
reg   [63:0] tmp_26_reg_3279;
wire   [63:0] tmp_19_fu_1949_p11;
reg   [63:0] tmp_19_reg_3284;
wire   [63:0] tmp_21_fu_1988_p11;
reg   [63:0] tmp_21_reg_3289;
wire   [63:0] tmp_23_fu_2059_p11;
reg   [63:0] tmp_23_reg_3334;
wire   [63:0] tmp_27_fu_2098_p11;
reg   [63:0] tmp_27_reg_3339;
reg   [63:0] add52_5_reg_3344;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_3349;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_11_reg_3354;
wire   [0:0] and_ln29_1_fu_2212_p2;
reg   [0:0] and_ln29_1_reg_3361;
wire   [63:0] min_p_13_fu_2218_p3;
reg   [63:0] min_p_13_reg_3366;
wire   [0:0] and_ln29_3_fu_2302_p2;
reg   [0:0] and_ln29_3_reg_3373;
wire   [63:0] min_p_15_fu_2308_p3;
reg   [63:0] min_p_15_reg_3378;
wire   [0:0] and_ln29_5_fu_2392_p2;
reg   [0:0] and_ln29_5_reg_3385;
wire   [63:0] min_p_17_fu_2398_p3;
reg   [63:0] min_p_17_reg_3390;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_2423_p2;
reg   [0:0] icmp_ln29_14_reg_3396;
wire   [0:0] icmp_ln29_15_fu_2429_p2;
reg   [0:0] icmp_ln29_15_reg_3401;
reg   [63:0] p_10_reg_3406;
wire   [0:0] and_ln29_7_fu_2481_p2;
reg   [0:0] and_ln29_7_reg_3413;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_19_fu_2487_p3;
reg   [63:0] min_p_19_reg_3418;
wire   [0:0] and_ln29_9_fu_2571_p2;
reg   [0:0] and_ln29_9_reg_3425;
wire   [63:0] min_p_21_fu_2577_p3;
reg   [63:0] min_p_21_reg_3430;
wire   [0:0] and_ln29_11_fu_2661_p2;
reg   [0:0] and_ln29_11_reg_3437;
wire   [63:0] min_p_23_fu_2667_p3;
reg   [63:0] min_p_23_reg_3442;
wire   [0:0] and_ln29_13_fu_2751_p2;
reg   [0:0] and_ln29_13_reg_3449;
wire   [63:0] min_p_25_fu_2757_p3;
reg   [63:0] min_p_25_reg_3454;
reg   [0:0] tmp_58_reg_3461;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_946_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_982_p1;
wire   [63:0] zext_ln27_1_fu_1014_p1;
wire   [63:0] zext_ln27_2_fu_1349_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1450_p1;
wire   [63:0] zext_ln26_2_fu_1689_p1;
wire   [63:0] zext_ln27_4_fu_1809_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1839_p1;
wire   [63:0] zext_ln27_6_fu_2017_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_2035_p1;
reg   [63:0] min_p_fu_184;
wire   [63:0] min_p_27_fu_2846_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_188;
wire   [5:0] add_ln25_1_fu_2121_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_ce0_local;
reg   [9:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [9:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [9:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [9:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [9:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [9:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [9:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [9:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [9:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [9:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [9:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [9:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [9:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [9:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [9:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [9:0] llike_15_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg   [63:0] grp_fu_863_p0;
reg   [63:0] grp_fu_863_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_867_p0;
reg   [63:0] grp_fu_867_p1;
wire   [1:0] lshr_ln7_1_fu_928_p4;
wire   [9:0] tmp_s_fu_938_p3;
wire   [9:0] add_ln_fu_974_p3;
wire   [9:0] add_ln27_fu_990_p2;
wire   [5:0] tmp_31_fu_996_p4;
wire   [9:0] add_ln27_2_fu_1006_p3;
wire   [6:0] zext_ln16_fu_920_p1;
wire   [63:0] tmp_10_fu_1036_p33;
wire   [63:0] tmp_11_fu_1123_p2;
wire   [63:0] tmp_11_fu_1123_p4;
wire   [63:0] tmp_11_fu_1123_p6;
wire   [63:0] tmp_11_fu_1123_p8;
wire   [63:0] tmp_11_fu_1123_p9;
wire   [63:0] tmp_12_fu_1146_p33;
wire   [63:0] tmp_13_fu_1233_p2;
wire   [63:0] tmp_13_fu_1233_p4;
wire   [63:0] tmp_13_fu_1233_p6;
wire   [63:0] tmp_13_fu_1233_p8;
wire   [63:0] tmp_13_fu_1233_p9;
wire   [63:0] tmp_14_fu_1256_p33;
wire   [9:0] add_ln27_1_fu_1327_p2;
wire   [5:0] tmp_35_fu_1332_p4;
wire   [9:0] add_ln27_4_fu_1342_p3;
wire   [63:0] tmp_16_fu_1357_p33;
wire   [9:0] add_ln27_3_fu_1428_p2;
wire   [5:0] tmp_39_fu_1433_p4;
wire   [9:0] add_ln27_6_fu_1443_p3;
wire   [63:0] tmp_18_fu_1458_p33;
wire   [63:0] tmp_20_fu_1529_p33;
wire   [63:0] tmp_22_fu_1600_p33;
wire   [2:0] lshr_ln8_1_fu_1671_p4;
wire   [9:0] zext_ln26_1_fu_1680_p1;
wire   [9:0] add_ln26_fu_1684_p2;
wire   [63:0] tmp_15_fu_1725_p2;
wire   [63:0] tmp_15_fu_1725_p4;
wire   [63:0] tmp_15_fu_1725_p6;
wire   [63:0] tmp_15_fu_1725_p8;
wire   [63:0] tmp_15_fu_1725_p9;
wire   [63:0] tmp_17_fu_1764_p2;
wire   [63:0] tmp_17_fu_1764_p4;
wire   [63:0] tmp_17_fu_1764_p6;
wire   [63:0] tmp_17_fu_1764_p8;
wire   [63:0] tmp_17_fu_1764_p9;
wire   [9:0] add_ln27_5_fu_1787_p2;
wire   [5:0] tmp_43_fu_1792_p4;
wire   [9:0] add_ln27_8_fu_1802_p3;
wire   [9:0] add_ln27_7_fu_1817_p2;
wire   [5:0] tmp_47_fu_1822_p4;
wire   [9:0] add_ln27_s_fu_1832_p3;
wire   [9:0] add_ln27_9_fu_1847_p2;
wire   [63:0] tmp_26_fu_1862_p33;
wire   [63:0] tmp_19_fu_1949_p2;
wire   [63:0] tmp_19_fu_1949_p4;
wire   [63:0] tmp_19_fu_1949_p6;
wire   [63:0] tmp_19_fu_1949_p8;
wire   [63:0] tmp_19_fu_1949_p9;
wire   [63:0] tmp_21_fu_1988_p2;
wire   [63:0] tmp_21_fu_1988_p4;
wire   [63:0] tmp_21_fu_1988_p6;
wire   [63:0] tmp_21_fu_1988_p8;
wire   [63:0] tmp_21_fu_1988_p9;
wire   [9:0] add_ln27_10_fu_2011_p3;
wire   [5:0] trunc_ln27_fu_2025_p1;
wire   [9:0] add_ln27_11_fu_2028_p3;
wire   [63:0] tmp_23_fu_2059_p2;
wire   [63:0] tmp_23_fu_2059_p4;
wire   [63:0] tmp_23_fu_2059_p6;
wire   [63:0] tmp_23_fu_2059_p8;
wire   [63:0] tmp_23_fu_2059_p9;
wire   [63:0] tmp_27_fu_2098_p2;
wire   [63:0] tmp_27_fu_2098_p4;
wire   [63:0] tmp_27_fu_2098_p6;
wire   [63:0] tmp_27_fu_2098_p8;
wire   [63:0] tmp_27_fu_2098_p9;
wire   [63:0] bitcast_ln29_fu_2135_p1;
wire   [63:0] bitcast_ln29_1_fu_2153_p1;
wire   [10:0] tmp_28_fu_2139_p4;
wire   [51:0] trunc_ln29_fu_2149_p1;
wire   [0:0] icmp_ln29_1_fu_2176_p2;
wire   [0:0] icmp_ln29_fu_2170_p2;
wire   [10:0] tmp_29_fu_2156_p4;
wire   [51:0] trunc_ln29_1_fu_2166_p1;
wire   [0:0] icmp_ln29_3_fu_2194_p2;
wire   [0:0] icmp_ln29_2_fu_2188_p2;
wire   [0:0] or_ln29_fu_2182_p2;
wire   [0:0] and_ln29_fu_2206_p2;
wire   [0:0] or_ln29_1_fu_2200_p2;
wire   [63:0] bitcast_ln29_2_fu_2225_p1;
wire   [63:0] bitcast_ln29_3_fu_2243_p1;
wire   [10:0] tmp_32_fu_2229_p4;
wire   [51:0] trunc_ln29_2_fu_2239_p1;
wire   [0:0] icmp_ln29_5_fu_2266_p2;
wire   [0:0] icmp_ln29_4_fu_2260_p2;
wire   [10:0] tmp_33_fu_2246_p4;
wire   [51:0] trunc_ln29_3_fu_2256_p1;
wire   [0:0] icmp_ln29_7_fu_2284_p2;
wire   [0:0] icmp_ln29_6_fu_2278_p2;
wire   [0:0] or_ln29_3_fu_2290_p2;
wire   [0:0] or_ln29_2_fu_2272_p2;
wire   [0:0] and_ln29_2_fu_2296_p2;
wire   [63:0] bitcast_ln29_4_fu_2315_p1;
wire   [63:0] bitcast_ln29_5_fu_2333_p1;
wire   [10:0] tmp_36_fu_2319_p4;
wire   [51:0] trunc_ln29_4_fu_2329_p1;
wire   [0:0] icmp_ln29_9_fu_2356_p2;
wire   [0:0] icmp_ln29_8_fu_2350_p2;
wire   [10:0] tmp_37_fu_2336_p4;
wire   [51:0] trunc_ln29_5_fu_2346_p1;
wire   [0:0] icmp_ln29_11_fu_2374_p2;
wire   [0:0] icmp_ln29_10_fu_2368_p2;
wire   [0:0] or_ln29_5_fu_2380_p2;
wire   [0:0] or_ln29_4_fu_2362_p2;
wire   [0:0] and_ln29_4_fu_2386_p2;
wire   [63:0] bitcast_ln29_7_fu_2405_p1;
wire   [10:0] tmp_41_fu_2409_p4;
wire   [51:0] trunc_ln29_7_fu_2419_p1;
wire   [63:0] bitcast_ln29_6_fu_2435_p1;
wire   [10:0] tmp_40_fu_2439_p4;
wire   [51:0] trunc_ln29_6_fu_2449_p1;
wire   [0:0] icmp_ln29_13_fu_2459_p2;
wire   [0:0] icmp_ln29_12_fu_2453_p2;
wire   [0:0] or_ln29_7_fu_2471_p2;
wire   [0:0] or_ln29_6_fu_2465_p2;
wire   [0:0] and_ln29_6_fu_2475_p2;
wire   [63:0] bitcast_ln29_8_fu_2494_p1;
wire   [63:0] bitcast_ln29_9_fu_2512_p1;
wire   [10:0] tmp_44_fu_2498_p4;
wire   [51:0] trunc_ln29_8_fu_2508_p1;
wire   [0:0] icmp_ln29_17_fu_2535_p2;
wire   [0:0] icmp_ln29_16_fu_2529_p2;
wire   [10:0] tmp_45_fu_2515_p4;
wire   [51:0] trunc_ln29_9_fu_2525_p1;
wire   [0:0] icmp_ln29_19_fu_2553_p2;
wire   [0:0] icmp_ln29_18_fu_2547_p2;
wire   [0:0] or_ln29_9_fu_2559_p2;
wire   [0:0] or_ln29_8_fu_2541_p2;
wire   [0:0] and_ln29_8_fu_2565_p2;
wire   [63:0] bitcast_ln29_10_fu_2584_p1;
wire   [63:0] bitcast_ln29_11_fu_2602_p1;
wire   [10:0] tmp_48_fu_2588_p4;
wire   [51:0] trunc_ln29_10_fu_2598_p1;
wire   [0:0] icmp_ln29_21_fu_2625_p2;
wire   [0:0] icmp_ln29_20_fu_2619_p2;
wire   [10:0] tmp_49_fu_2605_p4;
wire   [51:0] trunc_ln29_11_fu_2615_p1;
wire   [0:0] icmp_ln29_23_fu_2643_p2;
wire   [0:0] icmp_ln29_22_fu_2637_p2;
wire   [0:0] or_ln29_11_fu_2649_p2;
wire   [0:0] or_ln29_10_fu_2631_p2;
wire   [0:0] and_ln29_10_fu_2655_p2;
wire   [63:0] bitcast_ln29_12_fu_2674_p1;
wire   [63:0] bitcast_ln29_13_fu_2692_p1;
wire   [10:0] tmp_52_fu_2678_p4;
wire   [51:0] trunc_ln29_12_fu_2688_p1;
wire   [0:0] icmp_ln29_25_fu_2715_p2;
wire   [0:0] icmp_ln29_24_fu_2709_p2;
wire   [10:0] tmp_53_fu_2695_p4;
wire   [51:0] trunc_ln29_13_fu_2705_p1;
wire   [0:0] icmp_ln29_27_fu_2733_p2;
wire   [0:0] icmp_ln29_26_fu_2727_p2;
wire   [0:0] or_ln29_13_fu_2739_p2;
wire   [0:0] or_ln29_12_fu_2721_p2;
wire   [0:0] and_ln29_12_fu_2745_p2;
wire   [63:0] bitcast_ln29_14_fu_2765_p1;
wire   [63:0] bitcast_ln29_15_fu_2782_p1;
wire   [10:0] tmp_56_fu_2768_p4;
wire   [51:0] trunc_ln29_14_fu_2778_p1;
wire   [0:0] icmp_ln29_29_fu_2805_p2;
wire   [0:0] icmp_ln29_28_fu_2799_p2;
wire   [10:0] tmp_57_fu_2785_p4;
wire   [51:0] trunc_ln29_15_fu_2795_p1;
wire   [0:0] icmp_ln29_31_fu_2823_p2;
wire   [0:0] icmp_ln29_30_fu_2817_p2;
wire   [0:0] or_ln29_15_fu_2829_p2;
wire   [0:0] or_ln29_14_fu_2811_p2;
wire   [0:0] and_ln29_14_fu_2835_p2;
wire   [0:0] and_ln29_15_fu_2841_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage0_00001;
wire   [3:0] tmp_10_fu_1036_p1;
wire   [3:0] tmp_10_fu_1036_p3;
wire   [3:0] tmp_10_fu_1036_p5;
wire   [3:0] tmp_10_fu_1036_p7;
wire   [3:0] tmp_10_fu_1036_p9;
wire   [3:0] tmp_10_fu_1036_p11;
wire   [3:0] tmp_10_fu_1036_p13;
wire   [3:0] tmp_10_fu_1036_p15;
wire  signed [3:0] tmp_10_fu_1036_p17;
wire  signed [3:0] tmp_10_fu_1036_p19;
wire  signed [3:0] tmp_10_fu_1036_p21;
wire  signed [3:0] tmp_10_fu_1036_p23;
wire  signed [3:0] tmp_10_fu_1036_p25;
wire  signed [3:0] tmp_10_fu_1036_p27;
wire  signed [3:0] tmp_10_fu_1036_p29;
wire  signed [3:0] tmp_10_fu_1036_p31;
wire   [1:0] tmp_11_fu_1123_p1;
wire   [1:0] tmp_11_fu_1123_p3;
wire  signed [1:0] tmp_11_fu_1123_p5;
wire  signed [1:0] tmp_11_fu_1123_p7;
wire  signed [3:0] tmp_12_fu_1146_p1;
wire   [3:0] tmp_12_fu_1146_p3;
wire   [3:0] tmp_12_fu_1146_p5;
wire   [3:0] tmp_12_fu_1146_p7;
wire   [3:0] tmp_12_fu_1146_p9;
wire   [3:0] tmp_12_fu_1146_p11;
wire   [3:0] tmp_12_fu_1146_p13;
wire   [3:0] tmp_12_fu_1146_p15;
wire   [3:0] tmp_12_fu_1146_p17;
wire  signed [3:0] tmp_12_fu_1146_p19;
wire  signed [3:0] tmp_12_fu_1146_p21;
wire  signed [3:0] tmp_12_fu_1146_p23;
wire  signed [3:0] tmp_12_fu_1146_p25;
wire  signed [3:0] tmp_12_fu_1146_p27;
wire  signed [3:0] tmp_12_fu_1146_p29;
wire  signed [3:0] tmp_12_fu_1146_p31;
wire   [1:0] tmp_13_fu_1233_p1;
wire   [1:0] tmp_13_fu_1233_p3;
wire  signed [1:0] tmp_13_fu_1233_p5;
wire  signed [1:0] tmp_13_fu_1233_p7;
wire  signed [3:0] tmp_14_fu_1256_p1;
wire  signed [3:0] tmp_14_fu_1256_p3;
wire   [3:0] tmp_14_fu_1256_p5;
wire   [3:0] tmp_14_fu_1256_p7;
wire   [3:0] tmp_14_fu_1256_p9;
wire   [3:0] tmp_14_fu_1256_p11;
wire   [3:0] tmp_14_fu_1256_p13;
wire   [3:0] tmp_14_fu_1256_p15;
wire   [3:0] tmp_14_fu_1256_p17;
wire   [3:0] tmp_14_fu_1256_p19;
wire  signed [3:0] tmp_14_fu_1256_p21;
wire  signed [3:0] tmp_14_fu_1256_p23;
wire  signed [3:0] tmp_14_fu_1256_p25;
wire  signed [3:0] tmp_14_fu_1256_p27;
wire  signed [3:0] tmp_14_fu_1256_p29;
wire  signed [3:0] tmp_14_fu_1256_p31;
wire  signed [3:0] tmp_16_fu_1357_p1;
wire  signed [3:0] tmp_16_fu_1357_p3;
wire  signed [3:0] tmp_16_fu_1357_p5;
wire   [3:0] tmp_16_fu_1357_p7;
wire   [3:0] tmp_16_fu_1357_p9;
wire   [3:0] tmp_16_fu_1357_p11;
wire   [3:0] tmp_16_fu_1357_p13;
wire   [3:0] tmp_16_fu_1357_p15;
wire   [3:0] tmp_16_fu_1357_p17;
wire   [3:0] tmp_16_fu_1357_p19;
wire   [3:0] tmp_16_fu_1357_p21;
wire  signed [3:0] tmp_16_fu_1357_p23;
wire  signed [3:0] tmp_16_fu_1357_p25;
wire  signed [3:0] tmp_16_fu_1357_p27;
wire  signed [3:0] tmp_16_fu_1357_p29;
wire  signed [3:0] tmp_16_fu_1357_p31;
wire  signed [3:0] tmp_18_fu_1458_p1;
wire  signed [3:0] tmp_18_fu_1458_p3;
wire  signed [3:0] tmp_18_fu_1458_p5;
wire  signed [3:0] tmp_18_fu_1458_p7;
wire   [3:0] tmp_18_fu_1458_p9;
wire   [3:0] tmp_18_fu_1458_p11;
wire   [3:0] tmp_18_fu_1458_p13;
wire   [3:0] tmp_18_fu_1458_p15;
wire   [3:0] tmp_18_fu_1458_p17;
wire   [3:0] tmp_18_fu_1458_p19;
wire   [3:0] tmp_18_fu_1458_p21;
wire   [3:0] tmp_18_fu_1458_p23;
wire  signed [3:0] tmp_18_fu_1458_p25;
wire  signed [3:0] tmp_18_fu_1458_p27;
wire  signed [3:0] tmp_18_fu_1458_p29;
wire  signed [3:0] tmp_18_fu_1458_p31;
wire  signed [3:0] tmp_20_fu_1529_p1;
wire  signed [3:0] tmp_20_fu_1529_p3;
wire  signed [3:0] tmp_20_fu_1529_p5;
wire  signed [3:0] tmp_20_fu_1529_p7;
wire  signed [3:0] tmp_20_fu_1529_p9;
wire   [3:0] tmp_20_fu_1529_p11;
wire   [3:0] tmp_20_fu_1529_p13;
wire   [3:0] tmp_20_fu_1529_p15;
wire   [3:0] tmp_20_fu_1529_p17;
wire   [3:0] tmp_20_fu_1529_p19;
wire   [3:0] tmp_20_fu_1529_p21;
wire   [3:0] tmp_20_fu_1529_p23;
wire   [3:0] tmp_20_fu_1529_p25;
wire  signed [3:0] tmp_20_fu_1529_p27;
wire  signed [3:0] tmp_20_fu_1529_p29;
wire  signed [3:0] tmp_20_fu_1529_p31;
wire  signed [3:0] tmp_22_fu_1600_p1;
wire  signed [3:0] tmp_22_fu_1600_p3;
wire  signed [3:0] tmp_22_fu_1600_p5;
wire  signed [3:0] tmp_22_fu_1600_p7;
wire  signed [3:0] tmp_22_fu_1600_p9;
wire  signed [3:0] tmp_22_fu_1600_p11;
wire   [3:0] tmp_22_fu_1600_p13;
wire   [3:0] tmp_22_fu_1600_p15;
wire   [3:0] tmp_22_fu_1600_p17;
wire   [3:0] tmp_22_fu_1600_p19;
wire   [3:0] tmp_22_fu_1600_p21;
wire   [3:0] tmp_22_fu_1600_p23;
wire   [3:0] tmp_22_fu_1600_p25;
wire   [3:0] tmp_22_fu_1600_p27;
wire  signed [3:0] tmp_22_fu_1600_p29;
wire  signed [3:0] tmp_22_fu_1600_p31;
wire   [1:0] tmp_15_fu_1725_p1;
wire   [1:0] tmp_15_fu_1725_p3;
wire  signed [1:0] tmp_15_fu_1725_p5;
wire  signed [1:0] tmp_15_fu_1725_p7;
wire   [1:0] tmp_17_fu_1764_p1;
wire   [1:0] tmp_17_fu_1764_p3;
wire  signed [1:0] tmp_17_fu_1764_p5;
wire  signed [1:0] tmp_17_fu_1764_p7;
wire  signed [3:0] tmp_26_fu_1862_p1;
wire  signed [3:0] tmp_26_fu_1862_p3;
wire  signed [3:0] tmp_26_fu_1862_p5;
wire  signed [3:0] tmp_26_fu_1862_p7;
wire  signed [3:0] tmp_26_fu_1862_p9;
wire  signed [3:0] tmp_26_fu_1862_p11;
wire  signed [3:0] tmp_26_fu_1862_p13;
wire   [3:0] tmp_26_fu_1862_p15;
wire   [3:0] tmp_26_fu_1862_p17;
wire   [3:0] tmp_26_fu_1862_p19;
wire   [3:0] tmp_26_fu_1862_p21;
wire   [3:0] tmp_26_fu_1862_p23;
wire   [3:0] tmp_26_fu_1862_p25;
wire   [3:0] tmp_26_fu_1862_p27;
wire   [3:0] tmp_26_fu_1862_p29;
wire  signed [3:0] tmp_26_fu_1862_p31;
wire   [1:0] tmp_19_fu_1949_p1;
wire   [1:0] tmp_19_fu_1949_p3;
wire  signed [1:0] tmp_19_fu_1949_p5;
wire  signed [1:0] tmp_19_fu_1949_p7;
wire   [1:0] tmp_21_fu_1988_p1;
wire   [1:0] tmp_21_fu_1988_p3;
wire  signed [1:0] tmp_21_fu_1988_p5;
wire  signed [1:0] tmp_21_fu_1988_p7;
wire   [1:0] tmp_23_fu_2059_p1;
wire   [1:0] tmp_23_fu_2059_p3;
wire  signed [1:0] tmp_23_fu_2059_p5;
wire  signed [1:0] tmp_23_fu_2059_p7;
wire   [1:0] tmp_27_fu_2098_p1;
wire   [1:0] tmp_27_fu_2098_p3;
wire  signed [1:0] tmp_27_fu_2098_p5;
wire  signed [1:0] tmp_27_fu_2098_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_184 = 64'd0;
#0 prev_fu_188 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U42(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_10_fu_1036_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_10_fu_1036_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U43(.din0(tmp_11_fu_1123_p2),.din1(tmp_11_fu_1123_p4),.din2(tmp_11_fu_1123_p6),.din3(tmp_11_fu_1123_p8),.def(tmp_11_fu_1123_p9),.sel(empty_10),.dout(tmp_11_fu_1123_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U44(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_12_fu_1146_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_12_fu_1146_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U45(.din0(tmp_13_fu_1233_p2),.din1(tmp_13_fu_1233_p4),.din2(tmp_13_fu_1233_p6),.din3(tmp_13_fu_1233_p8),.def(tmp_13_fu_1233_p9),.sel(empty_10),.dout(tmp_13_fu_1233_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U46(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_14_fu_1256_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_14_fu_1256_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U47(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_16_fu_1357_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_16_fu_1357_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U48(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_18_fu_1458_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_18_fu_1458_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U49(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_20_fu_1529_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_20_fu_1529_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U50(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_22_fu_1600_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_22_fu_1600_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U51(.din0(tmp_15_fu_1725_p2),.din1(tmp_15_fu_1725_p4),.din2(tmp_15_fu_1725_p6),.din3(tmp_15_fu_1725_p8),.def(tmp_15_fu_1725_p9),.sel(empty_10),.dout(tmp_15_fu_1725_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U52(.din0(tmp_17_fu_1764_p2),.din1(tmp_17_fu_1764_p4),.din2(tmp_17_fu_1764_p6),.din3(tmp_17_fu_1764_p8),.def(tmp_17_fu_1764_p9),.sel(empty_10),.dout(tmp_17_fu_1764_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U53(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_26_fu_1862_p33),.sel(trunc_ln16_reg_2908),.dout(tmp_26_fu_1862_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U54(.din0(tmp_19_fu_1949_p2),.din1(tmp_19_fu_1949_p4),.din2(tmp_19_fu_1949_p6),.din3(tmp_19_fu_1949_p8),.def(tmp_19_fu_1949_p9),.sel(empty_10),.dout(tmp_19_fu_1949_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U55(.din0(tmp_21_fu_1988_p2),.din1(tmp_21_fu_1988_p4),.din2(tmp_21_fu_1988_p6),.din3(tmp_21_fu_1988_p8),.def(tmp_21_fu_1988_p9),.sel(empty_10),.dout(tmp_21_fu_1988_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U56(.din0(tmp_23_fu_2059_p2),.din1(tmp_23_fu_2059_p4),.din2(tmp_23_fu_2059_p6),.din3(tmp_23_fu_2059_p8),.def(tmp_23_fu_2059_p9),.sel(empty_10),.dout(tmp_23_fu_2059_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U57(.din0(tmp_27_fu_2098_p2),.din1(tmp_27_fu_2098_p4),.din2(tmp_27_fu_2098_p6),.din3(tmp_27_fu_2098_p8),.def(tmp_27_fu_2098_p9),.sel(empty_10),.dout(tmp_27_fu_2098_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_184 <= min_p_10;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_184 <= min_p_27_fu_2846_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_188 <= 6'd1;
    end else if (((tmp_55_reg_3055 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_188 <= add_ln25_1_fu_2121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_3344 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_3349 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_3049 <= add_ln25_fu_1022_p2;
        prev_1_reg_2903 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_3000[9 : 4] <= shl_ln1_fu_966_p3[9 : 4];
        tmp_55_reg_3055 <= add_ln25_fu_1022_p2[32'd6];
        tmp_55_reg_3055_pp0_iter1_reg <= tmp_55_reg_3055;
        trunc_ln16_reg_2908 <= trunc_ln16_fu_924_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_3437 <= and_ln29_11_fu_2661_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_3449 <= and_ln29_13_fu_2751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_3361 <= and_ln29_1_fu_2212_p2;
        tmp_15_reg_3224 <= tmp_15_fu_1725_p11;
        tmp_17_reg_3229 <= tmp_17_fu_1764_p11;
        tmp_26_reg_3279 <= tmp_26_fu_1862_p35;
        tmp_51_reg_3274 <= {{add_ln27_9_fu_1847_p2[9:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_3373 <= and_ln29_3_fu_2302_p2;
        tmp_23_reg_3334 <= tmp_23_fu_2059_p11;
        tmp_27_reg_3339 <= tmp_27_fu_2098_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_3385 <= and_ln29_5_fu_2392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_3413 <= and_ln29_7_fu_2481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_3425 <= and_ln29_9_fu_2571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_3396 <= icmp_ln29_14_fu_2423_p2;
        icmp_ln29_15_reg_3401 <= icmp_ln29_15_fu_2429_p2;
        min_p_17_reg_3390 <= min_p_17_fu_2398_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_11_reg_3354 <= min_p_fu_184;
        tmp_10_reg_3059 <= tmp_10_fu_1036_p35;
        tmp_11_reg_3064 <= tmp_11_fu_1123_p11;
        tmp_12_reg_3069 <= tmp_12_fu_1146_p35;
        tmp_13_reg_3074 <= tmp_13_fu_1233_p11;
        tmp_14_reg_3079 <= tmp_14_fu_1256_p35;
        tmp_16_reg_3104 <= tmp_16_fu_1357_p35;
        tmp_18_reg_3129 <= tmp_18_fu_1458_p35;
        tmp_20_reg_3134 <= tmp_20_fu_1529_p35;
        tmp_22_reg_3139 <= tmp_22_fu_1600_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_13_reg_3366 <= min_p_13_fu_2218_p3;
        tmp_19_reg_3284 <= tmp_19_fu_1949_p11;
        tmp_21_reg_3289 <= tmp_21_fu_1988_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_15_reg_3378 <= min_p_15_fu_2308_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_19_reg_3418 <= min_p_19_fu_2487_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_21_reg_3430 <= min_p_21_fu_2577_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_23_reg_3442 <= min_p_23_fu_2667_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_25_reg_3454 <= min_p_25_fu_2757_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_10_reg_3406 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_871 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_877 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_883 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_889 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_895 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_901 <= grp_fu_902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_58_reg_3461 <= grp_fu_1687_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_55_reg_3055 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (tmp_55_reg_3055_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_863_p0 = add52_7_reg_3349;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_863_p0 = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_863_p0 = add52_5_reg_3344;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_863_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_863_p0 = reg_889;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_863_p0 = reg_883;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_863_p0 = reg_877;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_863_p0 = reg_871;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_863_p0 = tmp_26_reg_3279;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_863_p0 = tmp_22_reg_3139;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_863_p0 = tmp_20_reg_3134;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_863_p0 = tmp_18_reg_3129;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_863_p0 = tmp_16_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_863_p0 = tmp_14_reg_3079;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_863_p0 = tmp_12_reg_3069;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_863_p0 = tmp_10_reg_3059;
    end else begin
        grp_fu_863_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_863_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_863_p1 = tmp_27_reg_3339;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_863_p1 = tmp_23_reg_3334;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_863_p1 = tmp_21_reg_3289;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_863_p1 = tmp_19_reg_3284;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_863_p1 = tmp_17_reg_3229;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_863_p1 = tmp_15_reg_3224;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_863_p1 = tmp_13_reg_3074;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_863_p1 = tmp_11_reg_3064;
    end else begin
        grp_fu_863_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_867_p0 = p_10_reg_3406;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_867_p0 = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_867_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_867_p0 = reg_889;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_867_p0 = reg_883;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_867_p0 = reg_877;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_867_p0 = reg_871;
    end else begin
        grp_fu_867_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_867_p1 = min_p_25_fu_2757_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_867_p1 = min_p_23_fu_2667_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_867_p1 = min_p_21_fu_2577_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_867_p1 = min_p_19_fu_2487_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_867_p1 = min_p_17_fu_2398_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_867_p1 = min_p_15_fu_2308_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_867_p1 = min_p_13_fu_2218_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_867_p1 = min_p_fu_184;
        end else begin
            grp_fu_867_p1 = 'bx;
        end
    end else begin
        grp_fu_867_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln26_fu_946_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_2_fu_1689_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_946_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_55_reg_3055_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_26_out_ap_vld = 1'b1;
    end else begin
        min_p_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_1014_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1349_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_982_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_1014_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1349_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_982_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address0_local = zext_ln27_7_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_1014_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln27_6_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1349_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_982_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address0_local = zext_ln27_7_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_1014_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln27_6_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1349_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_982_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
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
assign add_ln25_1_fu_2121_p2 = (prev_1_reg_2903 + 6'd8);
assign add_ln25_fu_1022_p2 = (zext_ln16_fu_920_p1 + 7'd7);
assign add_ln26_fu_1684_p2 = (empty + zext_ln26_1_fu_1680_p1);
assign add_ln27_10_fu_2011_p3 = {{tmp_51_reg_3274}, {lshr_ln}};
assign add_ln27_11_fu_2028_p3 = {{trunc_ln27_fu_2025_p1}, {lshr_ln}};
assign add_ln27_1_fu_1327_p2 = (shl_ln1_reg_3000 + 10'd32);
assign add_ln27_2_fu_1006_p3 = {{tmp_31_fu_996_p4}, {lshr_ln}};
assign add_ln27_3_fu_1428_p2 = (shl_ln1_reg_3000 + 10'd48);
assign add_ln27_4_fu_1342_p3 = {{tmp_35_fu_1332_p4}, {lshr_ln}};
assign add_ln27_5_fu_1787_p2 = (shl_ln1_reg_3000 + 10'd64);
assign add_ln27_6_fu_1443_p3 = {{tmp_39_fu_1433_p4}, {lshr_ln}};
assign add_ln27_7_fu_1817_p2 = (shl_ln1_reg_3000 + 10'd80);
assign add_ln27_8_fu_1802_p3 = {{tmp_43_fu_1792_p4}, {lshr_ln}};
assign add_ln27_9_fu_1847_p2 = (shl_ln1_reg_3000 + 10'd96);
assign add_ln27_fu_990_p2 = (shl_ln1_fu_966_p3 + 10'd16);
assign add_ln27_s_fu_1832_p3 = {{tmp_47_fu_1822_p4}, {lshr_ln}};
assign add_ln_fu_974_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_2655_p2 = (or_ln29_11_fu_2649_p2 & or_ln29_10_fu_2631_p2);
assign and_ln29_11_fu_2661_p2 = (grp_fu_1687_p_dout0 & and_ln29_10_fu_2655_p2);
assign and_ln29_12_fu_2745_p2 = (or_ln29_13_fu_2739_p2 & or_ln29_12_fu_2721_p2);
assign and_ln29_13_fu_2751_p2 = (grp_fu_1687_p_dout0 & and_ln29_12_fu_2745_p2);
assign and_ln29_14_fu_2835_p2 = (or_ln29_15_fu_2829_p2 & or_ln29_14_fu_2811_p2);
assign and_ln29_15_fu_2841_p2 = (tmp_58_reg_3461 & and_ln29_14_fu_2835_p2);
assign and_ln29_1_fu_2212_p2 = (or_ln29_1_fu_2200_p2 & and_ln29_fu_2206_p2);
assign and_ln29_2_fu_2296_p2 = (or_ln29_3_fu_2290_p2 & or_ln29_2_fu_2272_p2);
assign and_ln29_3_fu_2302_p2 = (grp_fu_1687_p_dout0 & and_ln29_2_fu_2296_p2);
assign and_ln29_4_fu_2386_p2 = (or_ln29_5_fu_2380_p2 & or_ln29_4_fu_2362_p2);
assign and_ln29_5_fu_2392_p2 = (grp_fu_1687_p_dout0 & and_ln29_4_fu_2386_p2);
assign and_ln29_6_fu_2475_p2 = (or_ln29_7_fu_2471_p2 & or_ln29_6_fu_2465_p2);
assign and_ln29_7_fu_2481_p2 = (grp_fu_1687_p_dout0 & and_ln29_6_fu_2475_p2);
assign and_ln29_8_fu_2565_p2 = (or_ln29_9_fu_2559_p2 & or_ln29_8_fu_2541_p2);
assign and_ln29_9_fu_2571_p2 = (grp_fu_1687_p_dout0 & and_ln29_8_fu_2565_p2);
assign and_ln29_fu_2206_p2 = (or_ln29_fu_2182_p2 & grp_fu_1687_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
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
assign bitcast_ln29_10_fu_2584_p1 = reg_895;
assign bitcast_ln29_11_fu_2602_p1 = min_p_21_reg_3430;
assign bitcast_ln29_12_fu_2674_p1 = reg_901;
assign bitcast_ln29_13_fu_2692_p1 = min_p_23_reg_3442;
assign bitcast_ln29_14_fu_2765_p1 = p_10_reg_3406;
assign bitcast_ln29_15_fu_2782_p1 = min_p_25_reg_3454;
assign bitcast_ln29_1_fu_2153_p1 = min_p_11_reg_3354;
assign bitcast_ln29_2_fu_2225_p1 = reg_877;
assign bitcast_ln29_3_fu_2243_p1 = min_p_13_reg_3366;
assign bitcast_ln29_4_fu_2315_p1 = reg_883;
assign bitcast_ln29_5_fu_2333_p1 = min_p_15_reg_3378;
assign bitcast_ln29_6_fu_2435_p1 = reg_871;
assign bitcast_ln29_7_fu_2405_p1 = min_p_17_fu_2398_p3;
assign bitcast_ln29_8_fu_2494_p1 = reg_889;
assign bitcast_ln29_9_fu_2512_p1 = min_p_19_reg_3418;
assign bitcast_ln29_fu_2135_p1 = reg_871;
assign grp_fu_1687_p_ce = 1'b1;
assign grp_fu_1687_p_din0 = grp_fu_867_p0;
assign grp_fu_1687_p_din1 = grp_fu_867_p1;
assign grp_fu_1687_p_opcode = 5'd4;
assign grp_fu_902_p_ce = 1'b1;
assign grp_fu_902_p_din0 = grp_fu_863_p0;
assign grp_fu_902_p_din1 = grp_fu_863_p1;
assign grp_fu_902_p_opcode = 2'd0;
assign icmp_ln29_10_fu_2368_p2 = ((tmp_37_fu_2336_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2374_p2 = ((trunc_ln29_5_fu_2346_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2453_p2 = ((tmp_40_fu_2439_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2459_p2 = ((trunc_ln29_6_fu_2449_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2423_p2 = ((tmp_41_fu_2409_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2429_p2 = ((trunc_ln29_7_fu_2419_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2529_p2 = ((tmp_44_fu_2498_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2535_p2 = ((trunc_ln29_8_fu_2508_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2547_p2 = ((tmp_45_fu_2515_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2553_p2 = ((trunc_ln29_9_fu_2525_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_2176_p2 = ((trunc_ln29_fu_2149_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2619_p2 = ((tmp_48_fu_2588_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2625_p2 = ((trunc_ln29_10_fu_2598_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2637_p2 = ((tmp_49_fu_2605_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2643_p2 = ((trunc_ln29_11_fu_2615_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2709_p2 = ((tmp_52_fu_2678_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2715_p2 = ((trunc_ln29_12_fu_2688_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2727_p2 = ((tmp_53_fu_2695_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2733_p2 = ((trunc_ln29_13_fu_2705_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2799_p2 = ((tmp_56_fu_2768_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2805_p2 = ((trunc_ln29_14_fu_2778_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_2188_p2 = ((tmp_29_fu_2156_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2817_p2 = ((tmp_57_fu_2785_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2823_p2 = ((trunc_ln29_15_fu_2795_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_2194_p2 = ((trunc_ln29_1_fu_2166_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_2260_p2 = ((tmp_32_fu_2229_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_2266_p2 = ((trunc_ln29_2_fu_2239_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_2278_p2 = ((tmp_33_fu_2246_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2284_p2 = ((trunc_ln29_3_fu_2256_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2350_p2 = ((tmp_36_fu_2319_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2356_p2 = ((trunc_ln29_4_fu_2329_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_2170_p2 = ((tmp_28_fu_2139_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = llike_10_address0_local;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = llike_11_address0_local;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = llike_12_address0_local;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = llike_13_address0_local;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = llike_14_address0_local;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = llike_15_address0_local;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = llike_8_address0_local;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = llike_9_address0_local;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_928_p4 = {{ap_sig_allocacmp_prev_1[5:4]}};
assign lshr_ln8_1_fu_1671_p4 = {{add_ln25_reg_3049[6:4]}};
assign min_p_13_fu_2218_p3 = ((and_ln29_1_reg_3361[0:0] == 1'b1) ? reg_871 : min_p_11_reg_3354);
assign min_p_15_fu_2308_p3 = ((and_ln29_3_reg_3373[0:0] == 1'b1) ? reg_877 : min_p_13_reg_3366);
assign min_p_17_fu_2398_p3 = ((and_ln29_5_reg_3385[0:0] == 1'b1) ? reg_883 : min_p_15_reg_3378);
assign min_p_19_fu_2487_p3 = ((and_ln29_7_reg_3413[0:0] == 1'b1) ? reg_871 : min_p_17_reg_3390);
assign min_p_21_fu_2577_p3 = ((and_ln29_9_reg_3425[0:0] == 1'b1) ? reg_889 : min_p_19_reg_3418);
assign min_p_23_fu_2667_p3 = ((and_ln29_11_reg_3437[0:0] == 1'b1) ? reg_895 : min_p_21_reg_3430);
assign min_p_25_fu_2757_p3 = ((and_ln29_13_reg_3449[0:0] == 1'b1) ? reg_901 : min_p_23_reg_3442);
assign min_p_26_out = ((and_ln29_13_reg_3449[0:0] == 1'b1) ? reg_901 : min_p_23_reg_3442);
assign min_p_27_fu_2846_p3 = ((and_ln29_15_fu_2841_p2[0:0] == 1'b1) ? p_10_reg_3406 : min_p_25_reg_3454);
assign or_ln29_10_fu_2631_p2 = (icmp_ln29_21_fu_2625_p2 | icmp_ln29_20_fu_2619_p2);
assign or_ln29_11_fu_2649_p2 = (icmp_ln29_23_fu_2643_p2 | icmp_ln29_22_fu_2637_p2);
assign or_ln29_12_fu_2721_p2 = (icmp_ln29_25_fu_2715_p2 | icmp_ln29_24_fu_2709_p2);
assign or_ln29_13_fu_2739_p2 = (icmp_ln29_27_fu_2733_p2 | icmp_ln29_26_fu_2727_p2);
assign or_ln29_14_fu_2811_p2 = (icmp_ln29_29_fu_2805_p2 | icmp_ln29_28_fu_2799_p2);
assign or_ln29_15_fu_2829_p2 = (icmp_ln29_31_fu_2823_p2 | icmp_ln29_30_fu_2817_p2);
assign or_ln29_1_fu_2200_p2 = (icmp_ln29_3_fu_2194_p2 | icmp_ln29_2_fu_2188_p2);
assign or_ln29_2_fu_2272_p2 = (icmp_ln29_5_fu_2266_p2 | icmp_ln29_4_fu_2260_p2);
assign or_ln29_3_fu_2290_p2 = (icmp_ln29_7_fu_2284_p2 | icmp_ln29_6_fu_2278_p2);
assign or_ln29_4_fu_2362_p2 = (icmp_ln29_9_fu_2356_p2 | icmp_ln29_8_fu_2350_p2);
assign or_ln29_5_fu_2380_p2 = (icmp_ln29_11_fu_2374_p2 | icmp_ln29_10_fu_2368_p2);
assign or_ln29_6_fu_2465_p2 = (icmp_ln29_13_fu_2459_p2 | icmp_ln29_12_fu_2453_p2);
assign or_ln29_7_fu_2471_p2 = (icmp_ln29_15_reg_3401 | icmp_ln29_14_reg_3396);
assign or_ln29_8_fu_2541_p2 = (icmp_ln29_17_fu_2535_p2 | icmp_ln29_16_fu_2529_p2);
assign or_ln29_9_fu_2559_p2 = (icmp_ln29_19_fu_2553_p2 | icmp_ln29_18_fu_2547_p2);
assign or_ln29_fu_2182_p2 = (icmp_ln29_fu_2170_p2 | icmp_ln29_1_fu_2176_p2);
assign shl_ln1_fu_966_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_10_fu_1036_p33 = 'bx;
assign tmp_11_fu_1123_p2 = transition_0_q1;
assign tmp_11_fu_1123_p4 = transition_1_q1;
assign tmp_11_fu_1123_p6 = transition_2_q1;
assign tmp_11_fu_1123_p8 = transition_3_q1;
assign tmp_11_fu_1123_p9 = 'bx;
assign tmp_12_fu_1146_p33 = 'bx;
assign tmp_13_fu_1233_p2 = transition_0_q0;
assign tmp_13_fu_1233_p4 = transition_1_q0;
assign tmp_13_fu_1233_p6 = transition_2_q0;
assign tmp_13_fu_1233_p8 = transition_3_q0;
assign tmp_13_fu_1233_p9 = 'bx;
assign tmp_14_fu_1256_p33 = 'bx;
assign tmp_15_fu_1725_p2 = transition_0_q1;
assign tmp_15_fu_1725_p4 = transition_1_q1;
assign tmp_15_fu_1725_p6 = transition_2_q1;
assign tmp_15_fu_1725_p8 = transition_3_q1;
assign tmp_15_fu_1725_p9 = 'bx;
assign tmp_16_fu_1357_p33 = 'bx;
assign tmp_17_fu_1764_p2 = transition_0_q0;
assign tmp_17_fu_1764_p4 = transition_1_q0;
assign tmp_17_fu_1764_p6 = transition_2_q0;
assign tmp_17_fu_1764_p8 = transition_3_q0;
assign tmp_17_fu_1764_p9 = 'bx;
assign tmp_18_fu_1458_p33 = 'bx;
assign tmp_19_fu_1949_p2 = transition_0_q1;
assign tmp_19_fu_1949_p4 = transition_1_q1;
assign tmp_19_fu_1949_p6 = transition_2_q1;
assign tmp_19_fu_1949_p8 = transition_3_q1;
assign tmp_19_fu_1949_p9 = 'bx;
assign tmp_20_fu_1529_p33 = 'bx;
assign tmp_21_fu_1988_p2 = transition_0_q0;
assign tmp_21_fu_1988_p4 = transition_1_q0;
assign tmp_21_fu_1988_p6 = transition_2_q0;
assign tmp_21_fu_1988_p8 = transition_3_q0;
assign tmp_21_fu_1988_p9 = 'bx;
assign tmp_22_fu_1600_p33 = 'bx;
assign tmp_23_fu_2059_p2 = transition_0_q1;
assign tmp_23_fu_2059_p4 = transition_1_q1;
assign tmp_23_fu_2059_p6 = transition_2_q1;
assign tmp_23_fu_2059_p8 = transition_3_q1;
assign tmp_23_fu_2059_p9 = 'bx;
assign tmp_26_fu_1862_p33 = 'bx;
assign tmp_27_fu_2098_p2 = transition_0_q0;
assign tmp_27_fu_2098_p4 = transition_1_q0;
assign tmp_27_fu_2098_p6 = transition_2_q0;
assign tmp_27_fu_2098_p8 = transition_3_q0;
assign tmp_27_fu_2098_p9 = 'bx;
assign tmp_28_fu_2139_p4 = {{bitcast_ln29_fu_2135_p1[62:52]}};
assign tmp_29_fu_2156_p4 = {{bitcast_ln29_1_fu_2153_p1[62:52]}};
assign tmp_31_fu_996_p4 = {{add_ln27_fu_990_p2[9:4]}};
assign tmp_32_fu_2229_p4 = {{bitcast_ln29_2_fu_2225_p1[62:52]}};
assign tmp_33_fu_2246_p4 = {{bitcast_ln29_3_fu_2243_p1[62:52]}};
assign tmp_35_fu_1332_p4 = {{add_ln27_1_fu_1327_p2[9:4]}};
assign tmp_36_fu_2319_p4 = {{bitcast_ln29_4_fu_2315_p1[62:52]}};
assign tmp_37_fu_2336_p4 = {{bitcast_ln29_5_fu_2333_p1[62:52]}};
assign tmp_39_fu_1433_p4 = {{add_ln27_3_fu_1428_p2[9:4]}};
assign tmp_40_fu_2439_p4 = {{bitcast_ln29_6_fu_2435_p1[62:52]}};
assign tmp_41_fu_2409_p4 = {{bitcast_ln29_7_fu_2405_p1[62:52]}};
assign tmp_43_fu_1792_p4 = {{add_ln27_5_fu_1787_p2[9:4]}};
assign tmp_44_fu_2498_p4 = {{bitcast_ln29_8_fu_2494_p1[62:52]}};
assign tmp_45_fu_2515_p4 = {{bitcast_ln29_9_fu_2512_p1[62:52]}};
assign tmp_47_fu_1822_p4 = {{add_ln27_7_fu_1817_p2[9:4]}};
assign tmp_48_fu_2588_p4 = {{bitcast_ln29_10_fu_2584_p1[62:52]}};
assign tmp_49_fu_2605_p4 = {{bitcast_ln29_11_fu_2602_p1[62:52]}};
assign tmp_52_fu_2678_p4 = {{bitcast_ln29_12_fu_2674_p1[62:52]}};
assign tmp_53_fu_2695_p4 = {{bitcast_ln29_13_fu_2692_p1[62:52]}};
assign tmp_56_fu_2768_p4 = {{bitcast_ln29_14_fu_2765_p1[62:52]}};
assign tmp_57_fu_2785_p4 = {{bitcast_ln29_15_fu_2782_p1[62:52]}};
assign tmp_s_fu_938_p3 = {{empty_9}, {lshr_ln7_1_fu_928_p4}};
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
assign trunc_ln16_fu_924_p1 = ap_sig_allocacmp_prev_1[3:0];
assign trunc_ln27_fu_2025_p1 = add_ln25_reg_3049[5:0];
assign trunc_ln29_10_fu_2598_p1 = bitcast_ln29_10_fu_2584_p1[51:0];
assign trunc_ln29_11_fu_2615_p1 = bitcast_ln29_11_fu_2602_p1[51:0];
assign trunc_ln29_12_fu_2688_p1 = bitcast_ln29_12_fu_2674_p1[51:0];
assign trunc_ln29_13_fu_2705_p1 = bitcast_ln29_13_fu_2692_p1[51:0];
assign trunc_ln29_14_fu_2778_p1 = bitcast_ln29_14_fu_2765_p1[51:0];
assign trunc_ln29_15_fu_2795_p1 = bitcast_ln29_15_fu_2782_p1[51:0];
assign trunc_ln29_1_fu_2166_p1 = bitcast_ln29_1_fu_2153_p1[51:0];
assign trunc_ln29_2_fu_2239_p1 = bitcast_ln29_2_fu_2225_p1[51:0];
assign trunc_ln29_3_fu_2256_p1 = bitcast_ln29_3_fu_2243_p1[51:0];
assign trunc_ln29_4_fu_2329_p1 = bitcast_ln29_4_fu_2315_p1[51:0];
assign trunc_ln29_5_fu_2346_p1 = bitcast_ln29_5_fu_2333_p1[51:0];
assign trunc_ln29_6_fu_2449_p1 = bitcast_ln29_6_fu_2435_p1[51:0];
assign trunc_ln29_7_fu_2419_p1 = bitcast_ln29_7_fu_2405_p1[51:0];
assign trunc_ln29_8_fu_2508_p1 = bitcast_ln29_8_fu_2494_p1[51:0];
assign trunc_ln29_9_fu_2525_p1 = bitcast_ln29_9_fu_2512_p1[51:0];
assign trunc_ln29_fu_2149_p1 = bitcast_ln29_fu_2135_p1[51:0];
assign zext_ln16_fu_920_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1680_p1 = lshr_ln8_1_fu_1671_p4;
assign zext_ln26_2_fu_1689_p1 = add_ln26_fu_1684_p2;
assign zext_ln26_fu_946_p1 = tmp_s_fu_938_p3;
assign zext_ln27_1_fu_1014_p1 = add_ln27_2_fu_1006_p3;
assign zext_ln27_2_fu_1349_p1 = add_ln27_4_fu_1342_p3;
assign zext_ln27_3_fu_1450_p1 = add_ln27_6_fu_1443_p3;
assign zext_ln27_4_fu_1809_p1 = add_ln27_8_fu_1802_p3;
assign zext_ln27_5_fu_1839_p1 = add_ln27_s_fu_1832_p3;
assign zext_ln27_6_fu_2017_p1 = add_ln27_10_fu_2011_p3;
assign zext_ln27_7_fu_2035_p1 = add_ln27_11_fu_2028_p3;
assign zext_ln27_fu_982_p1 = add_ln_fu_974_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_3000[3:0] <= 4'b0000;
end
endmodule 