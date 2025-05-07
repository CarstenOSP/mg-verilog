module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_901_p_din0,grp_fu_901_p_din1,grp_fu_901_p_opcode,grp_fu_901_p_dout0,grp_fu_901_p_ce,grp_fu_1685_p_din0,grp_fu_1685_p_din1,grp_fu_1685_p_opcode,grp_fu_1685_p_dout0,grp_fu_1685_p_ce); 
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
input  [5:0] zext_ln52_2;
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
input  [1:0] empty;
input  [9:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_901_p_din0;
output  [63:0] grp_fu_901_p_din1;
output  [1:0] grp_fu_901_p_opcode;
input  [63:0] grp_fu_901_p_dout0;
output   grp_fu_901_p_ce;
output  [63:0] grp_fu_1685_p_din0;
output  [63:0] grp_fu_1685_p_din1;
output  [4:0] grp_fu_1685_p_opcode;
input  [0:0] grp_fu_1685_p_dout0;
output   grp_fu_1685_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_38_reg_3085;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_863;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_868;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_873;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_878_p1;
reg   [9:0] zext_ln52_2_cast_reg_2934;
reg   [5:0] s_reg_2945;
wire   [3:0] trunc_ln21_fu_904_p1;
reg   [3:0] trunc_ln21_reg_2955;
wire   [5:0] add_ln53_fu_968_p2;
reg   [5:0] add_ln53_reg_3067;
wire   [5:0] add_ln53_1_fu_974_p2;
reg   [5:0] add_ln53_1_reg_3073;
reg   [5:0] add_ln53_1_reg_3073_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_980_p2;
reg   [6:0] add_ln53_6_reg_3079;
reg   [0:0] tmp_38_reg_3085_pp0_iter1_reg;
wire   [63:0] tmp_1_fu_994_p35;
reg   [63:0] tmp_1_reg_3089;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_2_fu_1081_p11;
reg   [63:0] tmp_2_reg_3094;
wire   [63:0] tmp_6_fu_1104_p35;
reg   [63:0] tmp_6_reg_3099;
wire   [63:0] tmp_11_fu_1195_p35;
reg   [63:0] tmp_11_reg_3124;
wire   [5:0] add_ln53_2_fu_1286_p2;
reg   [5:0] add_ln53_2_reg_3149;
wire   [63:0] tmp_16_fu_1291_p35;
reg   [63:0] tmp_16_reg_3155;
wire   [5:0] add_ln53_3_fu_1362_p2;
reg   [5:0] add_ln53_3_reg_3160;
reg   [5:0] add_ln53_3_reg_3160_pp0_iter1_reg;
wire   [63:0] tmp_19_fu_1367_p35;
reg   [63:0] tmp_19_reg_3166;
wire   [63:0] tmp_21_fu_1438_p35;
reg   [63:0] tmp_21_reg_3171;
wire   [63:0] tmp_23_fu_1509_p35;
reg   [63:0] tmp_23_reg_3176;
wire   [63:0] tmp_7_fu_1634_p11;
reg   [63:0] tmp_7_reg_3261;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_12_fu_1673_p11;
reg   [63:0] tmp_12_reg_3266;
wire   [5:0] add_ln53_4_fu_1736_p2;
reg   [5:0] add_ln53_4_reg_3311;
reg   [5:0] add_ln53_4_reg_3311_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_1741_p2;
reg   [5:0] add_ln53_5_reg_3317;
reg   [5:0] add_ln53_5_reg_3317_pp0_iter1_reg;
wire   [63:0] tmp_25_fu_1746_p35;
reg   [63:0] tmp_25_reg_3323;
wire   [63:0] tmp_17_fu_1833_p11;
reg   [63:0] tmp_17_reg_3328;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_20_fu_1872_p11;
reg   [63:0] tmp_20_reg_3333;
wire   [63:0] tmp_22_fu_1951_p11;
reg   [63:0] tmp_22_reg_3378;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_24_fu_1990_p11;
reg   [63:0] tmp_24_reg_3383;
wire   [5:0] trunc_ln54_fu_2013_p1;
reg   [5:0] trunc_ln54_reg_3388;
reg   [5:0] trunc_ln54_reg_3388_pp0_iter1_reg;
wire   [63:0] tmp_26_fu_2053_p11;
reg   [63:0] tmp_26_reg_3413;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_3418;
wire   [0:0] and_ln55_1_fu_2157_p2;
reg   [0:0] and_ln55_1_reg_3425;
wire   [63:0] min_p_3_fu_2163_p3;
reg   [63:0] min_p_3_reg_3431;
wire   [0:0] and_ln55_3_fu_2247_p2;
reg   [0:0] and_ln55_3_reg_3438;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_3444;
wire   [63:0] min_p_5_fu_2266_p3;
reg   [63:0] min_p_5_reg_3451;
wire   [7:0] min_s_5_fu_2276_p3;
reg   [7:0] min_s_5_reg_3458;
wire   [0:0] and_ln55_5_fu_2360_p2;
reg   [0:0] and_ln55_5_reg_3463;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_3469;
wire   [63:0] min_p_7_fu_2366_p3;
reg   [63:0] min_p_7_reg_3476;
wire   [0:0] icmp_ln55_14_fu_2391_p2;
reg   [0:0] icmp_ln55_14_reg_3482;
wire   [0:0] icmp_ln55_15_fu_2397_p2;
reg   [0:0] icmp_ln55_15_reg_3487;
wire   [0:0] and_ln55_7_fu_2459_p2;
reg   [0:0] and_ln55_7_reg_3492;
wire   [63:0] min_p_9_fu_2474_p3;
reg   [63:0] min_p_9_reg_3498;
wire   [7:0] min_s_7_fu_2484_p3;
reg   [7:0] min_s_7_reg_3505;
wire   [0:0] and_ln55_9_fu_2567_p2;
reg   [0:0] and_ln55_9_reg_3510;
wire   [63:0] min_p_11_fu_2573_p3;
reg   [63:0] min_p_11_reg_3516;
wire   [0:0] and_ln55_11_fu_2656_p2;
reg   [0:0] and_ln55_11_reg_3523;
wire   [63:0] min_p_13_fu_2662_p3;
reg   [63:0] min_p_13_reg_3529;
wire   [0:0] and_ln55_13_fu_2745_p2;
reg   [0:0] and_ln55_13_reg_3536;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_2773_p3;
reg   [7:0] min_s_10_reg_3542;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_2781_p3;
reg   [63:0] min_p_15_reg_3547;
reg   [0:0] tmp_41_reg_3554;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_926_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_960_p1;
wire   [63:0] zext_ln54_1_fu_1187_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1278_p1;
wire   [63:0] zext_ln54_10_fu_1598_p1;
wire   [63:0] zext_ln54_3_fu_1708_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1728_p1;
wire   [63:0] zext_ln54_5_fu_1907_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1927_p1;
wire   [63:0] zext_ln54_7_fu_2029_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_178;
wire   [63:0] min_p_17_fu_2869_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_182;
wire   [7:0] min_s_11_fu_2879_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_186;
wire   [5:0] add_ln53_7_fu_2403_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg   [63:0] grp_fu_855_p0;
reg   [63:0] grp_fu_855_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_859_p0;
reg   [63:0] grp_fu_859_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [1:0] lshr_ln8_2_fu_908_p4;
wire   [9:0] tmp_s_fu_918_p3;
wire   [9:0] shl_ln2_fu_946_p3;
wire   [9:0] add_ln54_fu_954_p2;
wire   [6:0] zext_ln21_fu_900_p1;
wire   [63:0] tmp_1_fu_994_p33;
wire   [63:0] tmp_2_fu_1081_p2;
wire   [63:0] tmp_2_fu_1081_p4;
wire   [63:0] tmp_2_fu_1081_p6;
wire   [63:0] tmp_2_fu_1081_p8;
wire   [63:0] tmp_2_fu_1081_p9;
wire   [63:0] tmp_6_fu_1104_p33;
wire   [9:0] shl_ln54_1_fu_1175_p3;
wire   [9:0] add_ln54_1_fu_1182_p2;
wire   [63:0] tmp_11_fu_1195_p33;
wire   [9:0] shl_ln54_2_fu_1266_p3;
wire   [9:0] add_ln54_2_fu_1273_p2;
wire   [63:0] tmp_16_fu_1291_p33;
wire   [63:0] tmp_19_fu_1367_p33;
wire   [63:0] tmp_21_fu_1438_p33;
wire   [63:0] tmp_23_fu_1509_p33;
wire   [2:0] lshr_ln9_3_fu_1580_p4;
wire   [9:0] zext_ln54_9_fu_1589_p1;
wire   [9:0] add_ln54_8_fu_1593_p2;
wire   [63:0] tmp_7_fu_1634_p2;
wire   [63:0] tmp_7_fu_1634_p4;
wire   [63:0] tmp_7_fu_1634_p6;
wire   [63:0] tmp_7_fu_1634_p8;
wire   [63:0] tmp_7_fu_1634_p9;
wire   [63:0] tmp_12_fu_1673_p2;
wire   [63:0] tmp_12_fu_1673_p4;
wire   [63:0] tmp_12_fu_1673_p6;
wire   [63:0] tmp_12_fu_1673_p8;
wire   [63:0] tmp_12_fu_1673_p9;
wire   [9:0] shl_ln54_3_fu_1696_p3;
wire   [9:0] add_ln54_3_fu_1703_p2;
wire   [9:0] shl_ln54_4_fu_1716_p3;
wire   [9:0] add_ln54_4_fu_1723_p2;
wire   [63:0] tmp_25_fu_1746_p33;
wire   [63:0] tmp_17_fu_1833_p2;
wire   [63:0] tmp_17_fu_1833_p4;
wire   [63:0] tmp_17_fu_1833_p6;
wire   [63:0] tmp_17_fu_1833_p8;
wire   [63:0] tmp_17_fu_1833_p9;
wire   [63:0] tmp_20_fu_1872_p2;
wire   [63:0] tmp_20_fu_1872_p4;
wire   [63:0] tmp_20_fu_1872_p6;
wire   [63:0] tmp_20_fu_1872_p8;
wire   [63:0] tmp_20_fu_1872_p9;
wire   [9:0] shl_ln54_5_fu_1895_p3;
wire   [9:0] add_ln54_5_fu_1902_p2;
wire   [9:0] shl_ln54_6_fu_1915_p3;
wire   [9:0] add_ln54_6_fu_1922_p2;
wire   [63:0] tmp_22_fu_1951_p2;
wire   [63:0] tmp_22_fu_1951_p4;
wire   [63:0] tmp_22_fu_1951_p6;
wire   [63:0] tmp_22_fu_1951_p8;
wire   [63:0] tmp_22_fu_1951_p9;
wire   [63:0] tmp_24_fu_1990_p2;
wire   [63:0] tmp_24_fu_1990_p4;
wire   [63:0] tmp_24_fu_1990_p6;
wire   [63:0] tmp_24_fu_1990_p8;
wire   [63:0] tmp_24_fu_1990_p9;
wire   [9:0] shl_ln54_7_fu_2016_p3;
wire   [9:0] add_ln54_7_fu_2024_p2;
wire   [63:0] tmp_26_fu_2053_p2;
wire   [63:0] tmp_26_fu_2053_p4;
wire   [63:0] tmp_26_fu_2053_p6;
wire   [63:0] tmp_26_fu_2053_p8;
wire   [63:0] tmp_26_fu_2053_p9;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_2080_p1;
wire   [63:0] bitcast_ln55_1_fu_2098_p1;
wire   [10:0] tmp_3_fu_2084_p4;
wire   [51:0] trunc_ln55_fu_2094_p1;
wire   [0:0] icmp_ln55_1_fu_2121_p2;
wire   [0:0] icmp_ln55_fu_2115_p2;
wire   [10:0] tmp_4_fu_2101_p4;
wire   [51:0] trunc_ln55_1_fu_2111_p1;
wire   [0:0] icmp_ln55_3_fu_2139_p2;
wire   [0:0] icmp_ln55_2_fu_2133_p2;
wire   [0:0] or_ln55_fu_2127_p2;
wire   [0:0] and_ln55_fu_2151_p2;
wire   [0:0] or_ln55_1_fu_2145_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_2170_p1;
wire   [63:0] bitcast_ln55_3_fu_2188_p1;
wire   [10:0] tmp_8_fu_2174_p4;
wire   [51:0] trunc_ln55_2_fu_2184_p1;
wire   [0:0] icmp_ln55_5_fu_2211_p2;
wire   [0:0] icmp_ln55_4_fu_2205_p2;
wire   [10:0] tmp_9_fu_2191_p4;
wire   [51:0] trunc_ln55_3_fu_2201_p1;
wire   [0:0] icmp_ln55_7_fu_2229_p2;
wire   [0:0] icmp_ln55_6_fu_2223_p2;
wire   [0:0] or_ln55_3_fu_2235_p2;
wire   [0:0] or_ln55_2_fu_2217_p2;
wire   [0:0] and_ln55_2_fu_2241_p2;
wire   [7:0] zext_ln55_fu_2256_p1;
wire   [7:0] zext_ln55_1_fu_2273_p1;
wire   [7:0] min_s_4_fu_2259_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_2283_p1;
wire   [63:0] bitcast_ln55_5_fu_2301_p1;
wire   [10:0] tmp_13_fu_2287_p4;
wire   [51:0] trunc_ln55_4_fu_2297_p1;
wire   [0:0] icmp_ln55_9_fu_2324_p2;
wire   [0:0] icmp_ln55_8_fu_2318_p2;
wire   [10:0] tmp_14_fu_2304_p4;
wire   [51:0] trunc_ln55_5_fu_2314_p1;
wire   [0:0] icmp_ln55_11_fu_2342_p2;
wire   [0:0] icmp_ln55_10_fu_2336_p2;
wire   [0:0] or_ln55_5_fu_2348_p2;
wire   [0:0] or_ln55_4_fu_2330_p2;
wire   [0:0] and_ln55_4_fu_2354_p2;
wire   [63:0] bitcast_ln55_7_fu_2373_p1;
wire   [10:0] tmp_27_fu_2377_p4;
wire   [51:0] trunc_ln55_7_fu_2387_p1;
wire   [63:0] bitcast_ln55_6_fu_2413_p1;
wire   [10:0] tmp_18_fu_2417_p4;
wire   [51:0] trunc_ln55_6_fu_2427_p1;
wire   [0:0] icmp_ln55_13_fu_2437_p2;
wire   [0:0] icmp_ln55_12_fu_2431_p2;
wire   [0:0] or_ln55_7_fu_2449_p2;
wire   [0:0] or_ln55_6_fu_2443_p2;
wire   [0:0] and_ln55_6_fu_2453_p2;
wire   [7:0] zext_ln55_2_fu_2465_p1;
wire   [7:0] zext_ln55_3_fu_2481_p1;
wire   [7:0] min_s_6_fu_2468_p3;
wire   [63:0] bitcast_ln55_8_fu_2491_p1;
wire   [63:0] bitcast_ln55_9_fu_2508_p1;
wire   [10:0] tmp_29_fu_2494_p4;
wire   [51:0] trunc_ln55_8_fu_2504_p1;
wire   [0:0] icmp_ln55_17_fu_2531_p2;
wire   [0:0] icmp_ln55_16_fu_2525_p2;
wire   [10:0] tmp_30_fu_2511_p4;
wire   [51:0] trunc_ln55_9_fu_2521_p1;
wire   [0:0] icmp_ln55_19_fu_2549_p2;
wire   [0:0] icmp_ln55_18_fu_2543_p2;
wire   [0:0] or_ln55_9_fu_2555_p2;
wire   [0:0] or_ln55_8_fu_2537_p2;
wire   [0:0] and_ln55_8_fu_2561_p2;
wire   [63:0] bitcast_ln55_10_fu_2579_p1;
wire   [63:0] bitcast_ln55_11_fu_2597_p1;
wire   [10:0] tmp_32_fu_2583_p4;
wire   [51:0] trunc_ln55_10_fu_2593_p1;
wire   [0:0] icmp_ln55_21_fu_2620_p2;
wire   [0:0] icmp_ln55_20_fu_2614_p2;
wire   [10:0] tmp_33_fu_2600_p4;
wire   [51:0] trunc_ln55_11_fu_2610_p1;
wire   [0:0] icmp_ln55_23_fu_2638_p2;
wire   [0:0] icmp_ln55_22_fu_2632_p2;
wire   [0:0] or_ln55_11_fu_2644_p2;
wire   [0:0] or_ln55_10_fu_2626_p2;
wire   [0:0] and_ln55_10_fu_2650_p2;
wire   [63:0] bitcast_ln55_12_fu_2669_p1;
wire   [63:0] bitcast_ln55_13_fu_2686_p1;
wire   [10:0] tmp_35_fu_2672_p4;
wire   [51:0] trunc_ln55_12_fu_2682_p1;
wire   [0:0] icmp_ln55_25_fu_2709_p2;
wire   [0:0] icmp_ln55_24_fu_2703_p2;
wire   [10:0] tmp_36_fu_2689_p4;
wire   [51:0] trunc_ln55_13_fu_2699_p1;
wire   [0:0] icmp_ln55_27_fu_2727_p2;
wire   [0:0] icmp_ln55_26_fu_2721_p2;
wire   [0:0] or_ln55_13_fu_2733_p2;
wire   [0:0] or_ln55_12_fu_2715_p2;
wire   [0:0] and_ln55_12_fu_2739_p2;
wire   [7:0] zext_ln55_4_fu_2751_p1;
wire   [7:0] zext_ln55_5_fu_2760_p1;
wire   [7:0] min_s_8_fu_2754_p3;
wire   [7:0] zext_ln55_6_fu_2770_p1;
wire   [7:0] min_s_9_fu_2763_p3;
wire   [63:0] bitcast_ln55_14_fu_2787_p1;
wire   [63:0] bitcast_ln55_15_fu_2805_p1;
wire   [10:0] tmp_39_fu_2791_p4;
wire   [51:0] trunc_ln55_14_fu_2801_p1;
wire   [0:0] icmp_ln55_29_fu_2828_p2;
wire   [0:0] icmp_ln55_28_fu_2822_p2;
wire   [10:0] tmp_40_fu_2808_p4;
wire   [51:0] trunc_ln55_15_fu_2818_p1;
wire   [0:0] icmp_ln55_31_fu_2846_p2;
wire   [0:0] icmp_ln55_30_fu_2840_p2;
wire   [0:0] or_ln55_15_fu_2852_p2;
wire   [0:0] or_ln55_14_fu_2834_p2;
wire   [0:0] and_ln55_14_fu_2858_p2;
wire   [0:0] and_ln55_15_fu_2864_p2;
wire   [7:0] zext_ln55_7_fu_2876_p1;
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
wire   [3:0] tmp_1_fu_994_p1;
wire   [3:0] tmp_1_fu_994_p3;
wire   [3:0] tmp_1_fu_994_p5;
wire   [3:0] tmp_1_fu_994_p7;
wire   [3:0] tmp_1_fu_994_p9;
wire   [3:0] tmp_1_fu_994_p11;
wire   [3:0] tmp_1_fu_994_p13;
wire   [3:0] tmp_1_fu_994_p15;
wire  signed [3:0] tmp_1_fu_994_p17;
wire  signed [3:0] tmp_1_fu_994_p19;
wire  signed [3:0] tmp_1_fu_994_p21;
wire  signed [3:0] tmp_1_fu_994_p23;
wire  signed [3:0] tmp_1_fu_994_p25;
wire  signed [3:0] tmp_1_fu_994_p27;
wire  signed [3:0] tmp_1_fu_994_p29;
wire  signed [3:0] tmp_1_fu_994_p31;
wire   [1:0] tmp_2_fu_1081_p1;
wire   [1:0] tmp_2_fu_1081_p3;
wire  signed [1:0] tmp_2_fu_1081_p5;
wire  signed [1:0] tmp_2_fu_1081_p7;
wire  signed [3:0] tmp_6_fu_1104_p1;
wire   [3:0] tmp_6_fu_1104_p3;
wire   [3:0] tmp_6_fu_1104_p5;
wire   [3:0] tmp_6_fu_1104_p7;
wire   [3:0] tmp_6_fu_1104_p9;
wire   [3:0] tmp_6_fu_1104_p11;
wire   [3:0] tmp_6_fu_1104_p13;
wire   [3:0] tmp_6_fu_1104_p15;
wire   [3:0] tmp_6_fu_1104_p17;
wire  signed [3:0] tmp_6_fu_1104_p19;
wire  signed [3:0] tmp_6_fu_1104_p21;
wire  signed [3:0] tmp_6_fu_1104_p23;
wire  signed [3:0] tmp_6_fu_1104_p25;
wire  signed [3:0] tmp_6_fu_1104_p27;
wire  signed [3:0] tmp_6_fu_1104_p29;
wire  signed [3:0] tmp_6_fu_1104_p31;
wire  signed [3:0] tmp_11_fu_1195_p1;
wire  signed [3:0] tmp_11_fu_1195_p3;
wire   [3:0] tmp_11_fu_1195_p5;
wire   [3:0] tmp_11_fu_1195_p7;
wire   [3:0] tmp_11_fu_1195_p9;
wire   [3:0] tmp_11_fu_1195_p11;
wire   [3:0] tmp_11_fu_1195_p13;
wire   [3:0] tmp_11_fu_1195_p15;
wire   [3:0] tmp_11_fu_1195_p17;
wire   [3:0] tmp_11_fu_1195_p19;
wire  signed [3:0] tmp_11_fu_1195_p21;
wire  signed [3:0] tmp_11_fu_1195_p23;
wire  signed [3:0] tmp_11_fu_1195_p25;
wire  signed [3:0] tmp_11_fu_1195_p27;
wire  signed [3:0] tmp_11_fu_1195_p29;
wire  signed [3:0] tmp_11_fu_1195_p31;
wire  signed [3:0] tmp_16_fu_1291_p1;
wire  signed [3:0] tmp_16_fu_1291_p3;
wire  signed [3:0] tmp_16_fu_1291_p5;
wire   [3:0] tmp_16_fu_1291_p7;
wire   [3:0] tmp_16_fu_1291_p9;
wire   [3:0] tmp_16_fu_1291_p11;
wire   [3:0] tmp_16_fu_1291_p13;
wire   [3:0] tmp_16_fu_1291_p15;
wire   [3:0] tmp_16_fu_1291_p17;
wire   [3:0] tmp_16_fu_1291_p19;
wire   [3:0] tmp_16_fu_1291_p21;
wire  signed [3:0] tmp_16_fu_1291_p23;
wire  signed [3:0] tmp_16_fu_1291_p25;
wire  signed [3:0] tmp_16_fu_1291_p27;
wire  signed [3:0] tmp_16_fu_1291_p29;
wire  signed [3:0] tmp_16_fu_1291_p31;
wire  signed [3:0] tmp_19_fu_1367_p1;
wire  signed [3:0] tmp_19_fu_1367_p3;
wire  signed [3:0] tmp_19_fu_1367_p5;
wire  signed [3:0] tmp_19_fu_1367_p7;
wire   [3:0] tmp_19_fu_1367_p9;
wire   [3:0] tmp_19_fu_1367_p11;
wire   [3:0] tmp_19_fu_1367_p13;
wire   [3:0] tmp_19_fu_1367_p15;
wire   [3:0] tmp_19_fu_1367_p17;
wire   [3:0] tmp_19_fu_1367_p19;
wire   [3:0] tmp_19_fu_1367_p21;
wire   [3:0] tmp_19_fu_1367_p23;
wire  signed [3:0] tmp_19_fu_1367_p25;
wire  signed [3:0] tmp_19_fu_1367_p27;
wire  signed [3:0] tmp_19_fu_1367_p29;
wire  signed [3:0] tmp_19_fu_1367_p31;
wire  signed [3:0] tmp_21_fu_1438_p1;
wire  signed [3:0] tmp_21_fu_1438_p3;
wire  signed [3:0] tmp_21_fu_1438_p5;
wire  signed [3:0] tmp_21_fu_1438_p7;
wire  signed [3:0] tmp_21_fu_1438_p9;
wire   [3:0] tmp_21_fu_1438_p11;
wire   [3:0] tmp_21_fu_1438_p13;
wire   [3:0] tmp_21_fu_1438_p15;
wire   [3:0] tmp_21_fu_1438_p17;
wire   [3:0] tmp_21_fu_1438_p19;
wire   [3:0] tmp_21_fu_1438_p21;
wire   [3:0] tmp_21_fu_1438_p23;
wire   [3:0] tmp_21_fu_1438_p25;
wire  signed [3:0] tmp_21_fu_1438_p27;
wire  signed [3:0] tmp_21_fu_1438_p29;
wire  signed [3:0] tmp_21_fu_1438_p31;
wire  signed [3:0] tmp_23_fu_1509_p1;
wire  signed [3:0] tmp_23_fu_1509_p3;
wire  signed [3:0] tmp_23_fu_1509_p5;
wire  signed [3:0] tmp_23_fu_1509_p7;
wire  signed [3:0] tmp_23_fu_1509_p9;
wire  signed [3:0] tmp_23_fu_1509_p11;
wire   [3:0] tmp_23_fu_1509_p13;
wire   [3:0] tmp_23_fu_1509_p15;
wire   [3:0] tmp_23_fu_1509_p17;
wire   [3:0] tmp_23_fu_1509_p19;
wire   [3:0] tmp_23_fu_1509_p21;
wire   [3:0] tmp_23_fu_1509_p23;
wire   [3:0] tmp_23_fu_1509_p25;
wire   [3:0] tmp_23_fu_1509_p27;
wire  signed [3:0] tmp_23_fu_1509_p29;
wire  signed [3:0] tmp_23_fu_1509_p31;
wire   [1:0] tmp_7_fu_1634_p1;
wire   [1:0] tmp_7_fu_1634_p3;
wire  signed [1:0] tmp_7_fu_1634_p5;
wire  signed [1:0] tmp_7_fu_1634_p7;
wire   [1:0] tmp_12_fu_1673_p1;
wire   [1:0] tmp_12_fu_1673_p3;
wire  signed [1:0] tmp_12_fu_1673_p5;
wire  signed [1:0] tmp_12_fu_1673_p7;
wire  signed [3:0] tmp_25_fu_1746_p1;
wire  signed [3:0] tmp_25_fu_1746_p3;
wire  signed [3:0] tmp_25_fu_1746_p5;
wire  signed [3:0] tmp_25_fu_1746_p7;
wire  signed [3:0] tmp_25_fu_1746_p9;
wire  signed [3:0] tmp_25_fu_1746_p11;
wire  signed [3:0] tmp_25_fu_1746_p13;
wire   [3:0] tmp_25_fu_1746_p15;
wire   [3:0] tmp_25_fu_1746_p17;
wire   [3:0] tmp_25_fu_1746_p19;
wire   [3:0] tmp_25_fu_1746_p21;
wire   [3:0] tmp_25_fu_1746_p23;
wire   [3:0] tmp_25_fu_1746_p25;
wire   [3:0] tmp_25_fu_1746_p27;
wire   [3:0] tmp_25_fu_1746_p29;
wire  signed [3:0] tmp_25_fu_1746_p31;
wire   [1:0] tmp_17_fu_1833_p1;
wire   [1:0] tmp_17_fu_1833_p3;
wire  signed [1:0] tmp_17_fu_1833_p5;
wire  signed [1:0] tmp_17_fu_1833_p7;
wire   [1:0] tmp_20_fu_1872_p1;
wire   [1:0] tmp_20_fu_1872_p3;
wire  signed [1:0] tmp_20_fu_1872_p5;
wire  signed [1:0] tmp_20_fu_1872_p7;
wire   [1:0] tmp_22_fu_1951_p1;
wire   [1:0] tmp_22_fu_1951_p3;
wire  signed [1:0] tmp_22_fu_1951_p5;
wire  signed [1:0] tmp_22_fu_1951_p7;
wire   [1:0] tmp_24_fu_1990_p1;
wire   [1:0] tmp_24_fu_1990_p3;
wire  signed [1:0] tmp_24_fu_1990_p5;
wire  signed [1:0] tmp_24_fu_1990_p7;
wire   [1:0] tmp_26_fu_2053_p1;
wire   [1:0] tmp_26_fu_2053_p3;
wire  signed [1:0] tmp_26_fu_2053_p5;
wire  signed [1:0] tmp_26_fu_2053_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_178 = 64'd0;
#0 min_s_fu_182 = 8'd0;
#0 min_s_1_fu_186 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U103(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_1_fu_994_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_1_fu_994_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U104(.din0(tmp_2_fu_1081_p2),.din1(tmp_2_fu_1081_p4),.din2(tmp_2_fu_1081_p6),.din3(tmp_2_fu_1081_p8),.def(tmp_2_fu_1081_p9),.sel(empty),.dout(tmp_2_fu_1081_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U105(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_6_fu_1104_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_6_fu_1104_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U106(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_11_fu_1195_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_11_fu_1195_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U107(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_16_fu_1291_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_16_fu_1291_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U108(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_19_fu_1367_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_19_fu_1367_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U109(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_21_fu_1438_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_21_fu_1438_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U110(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_23_fu_1509_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_23_fu_1509_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U111(.din0(tmp_7_fu_1634_p2),.din1(tmp_7_fu_1634_p4),.din2(tmp_7_fu_1634_p6),.din3(tmp_7_fu_1634_p8),.def(tmp_7_fu_1634_p9),.sel(empty),.dout(tmp_7_fu_1634_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U112(.din0(tmp_12_fu_1673_p2),.din1(tmp_12_fu_1673_p4),.din2(tmp_12_fu_1673_p6),.din3(tmp_12_fu_1673_p8),.def(tmp_12_fu_1673_p9),.sel(empty),.dout(tmp_12_fu_1673_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U113(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_25_fu_1746_p33),.sel(trunc_ln21_reg_2955),.dout(tmp_25_fu_1746_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U114(.din0(tmp_17_fu_1833_p2),.din1(tmp_17_fu_1833_p4),.din2(tmp_17_fu_1833_p6),.din3(tmp_17_fu_1833_p8),.def(tmp_17_fu_1833_p9),.sel(empty),.dout(tmp_17_fu_1833_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U115(.din0(tmp_20_fu_1872_p2),.din1(tmp_20_fu_1872_p4),.din2(tmp_20_fu_1872_p6),.din3(tmp_20_fu_1872_p8),.def(tmp_20_fu_1872_p9),.sel(empty),.dout(tmp_20_fu_1872_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U116(.din0(tmp_22_fu_1951_p2),.din1(tmp_22_fu_1951_p4),.din2(tmp_22_fu_1951_p6),.din3(tmp_22_fu_1951_p8),.def(tmp_22_fu_1951_p9),.sel(empty),.dout(tmp_22_fu_1951_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U117(.din0(tmp_24_fu_1990_p2),.din1(tmp_24_fu_1990_p4),.din2(tmp_24_fu_1990_p6),.din3(tmp_24_fu_1990_p8),.def(tmp_24_fu_1990_p9),.sel(empty),.dout(tmp_24_fu_1990_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U118(.din0(tmp_26_fu_2053_p2),.din1(tmp_26_fu_2053_p4),.din2(tmp_26_fu_2053_p6),.din3(tmp_26_fu_2053_p8),.def(tmp_26_fu_2053_p9),.sel(empty),.dout(tmp_26_fu_2053_p11));
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
        min_p_fu_178 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_38_reg_3085_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_178 <= min_p_17_fu_2869_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_186 <= 6'd1;
    end else if (((tmp_38_reg_3085 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_186 <= add_ln53_7_fu_2403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_182 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_38_reg_3085_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_182 <= min_s_11_fu_2879_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_3073 <= add_ln53_1_fu_974_p2;
        add_ln53_1_reg_3073_pp0_iter1_reg <= add_ln53_1_reg_3073;
        add_ln53_6_reg_3079 <= add_ln53_6_fu_980_p2;
        add_ln53_reg_3067 <= add_ln53_fu_968_p2;
        and_ln55_7_reg_3492 <= and_ln55_7_fu_2459_p2;
        s_reg_2945 <= ap_sig_allocacmp_s;
        tmp_38_reg_3085 <= add_ln53_6_fu_980_p2[32'd6];
        tmp_38_reg_3085_pp0_iter1_reg <= tmp_38_reg_3085;
        trunc_ln21_reg_2955 <= trunc_ln21_fu_904_p1;
        zext_ln52_2_cast_reg_2934[5 : 0] <= zext_ln52_2_cast_fu_878_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_3149 <= add_ln53_2_fu_1286_p2;
        add_ln53_3_reg_3160 <= add_ln53_3_fu_1362_p2;
        add_ln53_3_reg_3160_pp0_iter1_reg <= add_ln53_3_reg_3160;
        min_p_9_reg_3498 <= min_p_9_fu_2474_p3;
        min_s_7_reg_3505 <= min_s_7_fu_2484_p3;
        tmp_11_reg_3124 <= tmp_11_fu_1195_p35;
        tmp_16_reg_3155 <= tmp_16_fu_1291_p35;
        tmp_19_reg_3166 <= tmp_19_fu_1367_p35;
        tmp_1_reg_3089 <= tmp_1_fu_994_p35;
        tmp_21_reg_3171 <= tmp_21_fu_1438_p35;
        tmp_23_reg_3176 <= tmp_23_fu_1509_p35;
        tmp_2_reg_3094 <= tmp_2_fu_1081_p11;
        tmp_6_reg_3099 <= tmp_6_fu_1104_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_3311 <= add_ln53_4_fu_1736_p2;
        add_ln53_4_reg_3311_pp0_iter1_reg <= add_ln53_4_reg_3311;
        add_ln53_5_reg_3317 <= add_ln53_5_fu_1741_p2;
        add_ln53_5_reg_3317_pp0_iter1_reg <= add_ln53_5_reg_3317;
        and_ln55_9_reg_3510 <= and_ln55_9_fu_2567_p2;
        tmp_12_reg_3266 <= tmp_12_fu_1673_p11;
        tmp_25_reg_3323 <= tmp_25_fu_1746_p35;
        tmp_7_reg_3261 <= tmp_7_fu_1634_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_3523 <= and_ln55_11_fu_2656_p2;
        tmp_22_reg_3378 <= tmp_22_fu_1951_p11;
        tmp_24_reg_3383 <= tmp_24_fu_1990_p11;
        trunc_ln54_reg_3388 <= trunc_ln54_fu_2013_p1;
        trunc_ln54_reg_3388_pp0_iter1_reg <= trunc_ln54_reg_3388;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_3536 <= and_ln55_13_fu_2745_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3425 <= and_ln55_1_fu_2157_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3438 <= and_ln55_3_fu_2247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3463 <= and_ln55_5_fu_2360_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_3482 <= icmp_ln55_14_fu_2391_p2;
        icmp_ln55_15_reg_3487 <= icmp_ln55_15_fu_2397_p2;
        min_p_7_reg_3476 <= min_p_7_fu_2366_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_3516 <= min_p_11_fu_2573_p3;
        tmp_17_reg_3328 <= tmp_17_fu_1833_p11;
        tmp_20_reg_3333 <= tmp_20_fu_1872_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_3529 <= min_p_13_fu_2662_p3;
        tmp_26_reg_3413 <= tmp_26_fu_2053_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_3547 <= min_p_15_fu_2781_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3418 <= min_p_fu_178;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3431 <= min_p_3_fu_2163_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3451 <= min_p_5_fu_2266_p3;
        min_s_5_reg_3458 <= min_s_5_fu_2276_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_3542 <= min_s_10_fu_2773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_3444 <= grp_fu_901_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_3469 <= grp_fu_901_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_863 <= grp_fu_901_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_868 <= grp_fu_901_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_873 <= grp_fu_901_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_41_reg_3554 <= grp_fu_1685_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_38_reg_3085 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_38_reg_3085_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_186;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_855_p0 = tmp_25_reg_3323;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_855_p0 = tmp_23_reg_3176;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_855_p0 = tmp_21_reg_3171;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_855_p0 = tmp_19_reg_3166;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_855_p0 = tmp_16_reg_3155;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_855_p0 = tmp_11_reg_3124;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_855_p0 = tmp_6_reg_3099;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_855_p0 = tmp_1_reg_3089;
        end else begin
            grp_fu_855_p0 = 'bx;
        end
    end else begin
        grp_fu_855_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_855_p1 = tmp_26_reg_3413;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_855_p1 = tmp_24_reg_3383;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_855_p1 = tmp_22_reg_3378;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_855_p1 = tmp_20_reg_3333;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_855_p1 = tmp_17_reg_3328;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_855_p1 = tmp_12_reg_3266;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_855_p1 = tmp_7_reg_3261;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_855_p1 = tmp_2_reg_3094;
        end else begin
            grp_fu_855_p1 = 'bx;
        end
    end else begin
        grp_fu_855_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_859_p0 = p_6_reg_3469;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_859_p0 = p_4_reg_3444;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_859_p0 = reg_873;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_859_p0 = reg_868;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_859_p0 = reg_863;
    end else begin
        grp_fu_859_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_859_p1 = min_p_15_fu_2781_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_859_p1 = min_p_13_fu_2662_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_859_p1 = min_p_11_fu_2573_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_859_p1 = min_p_9_fu_2474_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_859_p1 = min_p_7_fu_2366_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_859_p1 = min_p_5_fu_2266_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_859_p1 = min_p_3_fu_2163_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_859_p1 = min_p_fu_178;
    end else begin
        grp_fu_859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_11_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_12_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_13_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_14_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_15_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_1_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_2_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_3_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_4_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_5_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_6_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_7_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_8_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_9_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_8_fu_926_p1;
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
            llike_address0_local = zext_ln54_10_fu_1598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_8_fu_926_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_38_reg_3085_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1907_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_960_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1187_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_1907_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_960_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1187_p1;
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
            transition_2_address0_local = zext_ln54_5_fu_1907_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_960_p1;
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
            transition_2_address1_local = zext_ln54_7_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1187_p1;
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
            transition_3_address0_local = zext_ln54_5_fu_1907_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_960_p1;
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
            transition_3_address1_local = zext_ln54_7_fu_2029_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1927_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1187_p1;
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
assign add_ln53_1_fu_974_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1286_p2 = (s_reg_2945 + 6'd3);
assign add_ln53_3_fu_1362_p2 = (s_reg_2945 + 6'd4);
assign add_ln53_4_fu_1736_p2 = (s_reg_2945 + 6'd5);
assign add_ln53_5_fu_1741_p2 = (s_reg_2945 + 6'd6);
assign add_ln53_6_fu_980_p2 = (zext_ln21_fu_900_p1 + 7'd7);
assign add_ln53_7_fu_2403_p2 = (s_reg_2945 + 6'd8);
assign add_ln53_fu_968_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1182_p2 = (shl_ln54_1_fu_1175_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_2_fu_1273_p2 = (shl_ln54_2_fu_1266_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_3_fu_1703_p2 = (shl_ln54_3_fu_1696_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_4_fu_1723_p2 = (shl_ln54_4_fu_1716_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_5_fu_1902_p2 = (shl_ln54_5_fu_1895_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_6_fu_1922_p2 = (shl_ln54_6_fu_1915_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_7_fu_2024_p2 = (shl_ln54_7_fu_2016_p3 + zext_ln52_2_cast_reg_2934);
assign add_ln54_8_fu_1593_p2 = (zext_ln52_3 + zext_ln54_9_fu_1589_p1);
assign add_ln54_fu_954_p2 = (shl_ln2_fu_946_p3 + zext_ln52_2_cast_fu_878_p1);
assign and_ln55_10_fu_2650_p2 = (or_ln55_11_fu_2644_p2 & or_ln55_10_fu_2626_p2);
assign and_ln55_11_fu_2656_p2 = (grp_fu_1685_p_dout0 & and_ln55_10_fu_2650_p2);
assign and_ln55_12_fu_2739_p2 = (or_ln55_13_fu_2733_p2 & or_ln55_12_fu_2715_p2);
assign and_ln55_13_fu_2745_p2 = (grp_fu_1685_p_dout0 & and_ln55_12_fu_2739_p2);
assign and_ln55_14_fu_2858_p2 = (or_ln55_15_fu_2852_p2 & or_ln55_14_fu_2834_p2);
assign and_ln55_15_fu_2864_p2 = (tmp_41_reg_3554 & and_ln55_14_fu_2858_p2);
assign and_ln55_1_fu_2157_p2 = (or_ln55_1_fu_2145_p2 & and_ln55_fu_2151_p2);
assign and_ln55_2_fu_2241_p2 = (or_ln55_3_fu_2235_p2 & or_ln55_2_fu_2217_p2);
assign and_ln55_3_fu_2247_p2 = (grp_fu_1685_p_dout0 & and_ln55_2_fu_2241_p2);
assign and_ln55_4_fu_2354_p2 = (or_ln55_5_fu_2348_p2 & or_ln55_4_fu_2330_p2);
assign and_ln55_5_fu_2360_p2 = (grp_fu_1685_p_dout0 & and_ln55_4_fu_2354_p2);
assign and_ln55_6_fu_2453_p2 = (or_ln55_7_fu_2449_p2 & or_ln55_6_fu_2443_p2);
assign and_ln55_7_fu_2459_p2 = (grp_fu_1685_p_dout0 & and_ln55_6_fu_2453_p2);
assign and_ln55_8_fu_2561_p2 = (or_ln55_9_fu_2555_p2 & or_ln55_8_fu_2537_p2);
assign and_ln55_9_fu_2567_p2 = (grp_fu_1685_p_dout0 & and_ln55_8_fu_2561_p2);
assign and_ln55_fu_2151_p2 = (or_ln55_fu_2127_p2 & grp_fu_1685_p_dout0);
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
assign bitcast_ln55_10_fu_2579_p1 = reg_868;
assign bitcast_ln55_11_fu_2597_p1 = min_p_11_reg_3516;
assign bitcast_ln55_12_fu_2669_p1 = p_6_reg_3469;
assign bitcast_ln55_13_fu_2686_p1 = min_p_13_reg_3529;
assign bitcast_ln55_14_fu_2787_p1 = reg_873;
assign bitcast_ln55_15_fu_2805_p1 = min_p_15_reg_3547;
assign bitcast_ln55_1_fu_2098_p1 = min_p_1_reg_3418;
assign bitcast_ln55_2_fu_2170_p1 = reg_868;
assign bitcast_ln55_3_fu_2188_p1 = min_p_3_reg_3431;
assign bitcast_ln55_4_fu_2283_p1 = reg_873;
assign bitcast_ln55_5_fu_2301_p1 = min_p_5_reg_3451;
assign bitcast_ln55_6_fu_2413_p1 = reg_863;
assign bitcast_ln55_7_fu_2373_p1 = min_p_7_fu_2366_p3;
assign bitcast_ln55_8_fu_2491_p1 = p_4_reg_3444;
assign bitcast_ln55_9_fu_2508_p1 = min_p_9_reg_3498;
assign bitcast_ln55_fu_2080_p1 = reg_863;
assign grp_fu_1685_p_ce = 1'b1;
assign grp_fu_1685_p_din0 = grp_fu_859_p0;
assign grp_fu_1685_p_din1 = grp_fu_859_p1;
assign grp_fu_1685_p_opcode = 5'd4;
assign grp_fu_901_p_ce = 1'b1;
assign grp_fu_901_p_din0 = grp_fu_855_p0;
assign grp_fu_901_p_din1 = grp_fu_855_p1;
assign grp_fu_901_p_opcode = 2'd0;
assign icmp_ln55_10_fu_2336_p2 = ((tmp_14_fu_2304_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2342_p2 = ((trunc_ln55_5_fu_2314_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2431_p2 = ((tmp_18_fu_2417_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2437_p2 = ((trunc_ln55_6_fu_2427_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2391_p2 = ((tmp_27_fu_2377_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2397_p2 = ((trunc_ln55_7_fu_2387_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2525_p2 = ((tmp_29_fu_2494_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2531_p2 = ((trunc_ln55_8_fu_2504_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2543_p2 = ((tmp_30_fu_2511_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2549_p2 = ((trunc_ln55_9_fu_2521_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_2121_p2 = ((trunc_ln55_fu_2094_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2614_p2 = ((tmp_32_fu_2583_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2620_p2 = ((trunc_ln55_10_fu_2593_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2632_p2 = ((tmp_33_fu_2600_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2638_p2 = ((trunc_ln55_11_fu_2610_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2703_p2 = ((tmp_35_fu_2672_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2709_p2 = ((trunc_ln55_12_fu_2682_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2721_p2 = ((tmp_36_fu_2689_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2727_p2 = ((trunc_ln55_13_fu_2699_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2822_p2 = ((tmp_39_fu_2791_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2828_p2 = ((trunc_ln55_14_fu_2801_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_2133_p2 = ((tmp_4_fu_2101_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2840_p2 = ((tmp_40_fu_2808_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2846_p2 = ((trunc_ln55_15_fu_2818_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_2139_p2 = ((trunc_ln55_1_fu_2111_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_2205_p2 = ((tmp_8_fu_2174_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_2211_p2 = ((trunc_ln55_2_fu_2184_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_2223_p2 = ((tmp_9_fu_2191_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_2229_p2 = ((trunc_ln55_3_fu_2201_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2318_p2 = ((tmp_13_fu_2287_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2324_p2 = ((trunc_ln55_4_fu_2297_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_2115_p2 = ((tmp_3_fu_2084_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_908_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1580_p4 = {{add_ln53_6_reg_3079[6:4]}};
assign min_p_11_fu_2573_p3 = ((and_ln55_9_reg_3510[0:0] == 1'b1) ? p_4_reg_3444 : min_p_9_reg_3498);
assign min_p_13_fu_2662_p3 = ((and_ln55_11_reg_3523[0:0] == 1'b1) ? reg_868 : min_p_11_reg_3516);
assign min_p_15_fu_2781_p3 = ((and_ln55_13_reg_3536[0:0] == 1'b1) ? p_6_reg_3469 : min_p_13_reg_3529);
assign min_p_17_fu_2869_p3 = ((and_ln55_15_fu_2864_p2[0:0] == 1'b1) ? reg_873 : min_p_15_reg_3547);
assign min_p_3_fu_2163_p3 = ((and_ln55_1_reg_3425[0:0] == 1'b1) ? reg_863 : min_p_1_reg_3418);
assign min_p_5_fu_2266_p3 = ((and_ln55_3_reg_3438[0:0] == 1'b1) ? reg_868 : min_p_3_reg_3431);
assign min_p_7_fu_2366_p3 = ((and_ln55_5_reg_3463[0:0] == 1'b1) ? reg_873 : min_p_5_reg_3451);
assign min_p_9_fu_2474_p3 = ((and_ln55_7_reg_3492[0:0] == 1'b1) ? reg_863 : min_p_7_reg_3476);
assign min_s_10_fu_2773_p3 = ((and_ln55_13_reg_3536[0:0] == 1'b1) ? zext_ln55_6_fu_2770_p1 : min_s_9_fu_2763_p3);
assign min_s_11_fu_2879_p3 = ((and_ln55_15_fu_2864_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2876_p1 : min_s_10_reg_3542);
assign min_s_18_out = ((and_ln55_13_reg_3536[0:0] == 1'b1) ? zext_ln55_6_fu_2770_p1 : min_s_9_fu_2763_p3);
assign min_s_4_fu_2259_p3 = ((and_ln55_1_reg_3425[0:0] == 1'b1) ? zext_ln55_fu_2256_p1 : min_s_fu_182);
assign min_s_5_fu_2276_p3 = ((and_ln55_3_reg_3438[0:0] == 1'b1) ? zext_ln55_1_fu_2273_p1 : min_s_4_fu_2259_p3);
assign min_s_6_fu_2468_p3 = ((and_ln55_5_reg_3463[0:0] == 1'b1) ? zext_ln55_2_fu_2465_p1 : min_s_5_reg_3458);
assign min_s_7_fu_2484_p3 = ((and_ln55_7_reg_3492[0:0] == 1'b1) ? zext_ln55_3_fu_2481_p1 : min_s_6_fu_2468_p3);
assign min_s_8_fu_2754_p3 = ((and_ln55_9_reg_3510[0:0] == 1'b1) ? zext_ln55_4_fu_2751_p1 : min_s_7_reg_3505);
assign min_s_9_fu_2763_p3 = ((and_ln55_11_reg_3523[0:0] == 1'b1) ? zext_ln55_5_fu_2760_p1 : min_s_8_fu_2754_p3);
assign or_ln55_10_fu_2626_p2 = (icmp_ln55_21_fu_2620_p2 | icmp_ln55_20_fu_2614_p2);
assign or_ln55_11_fu_2644_p2 = (icmp_ln55_23_fu_2638_p2 | icmp_ln55_22_fu_2632_p2);
assign or_ln55_12_fu_2715_p2 = (icmp_ln55_25_fu_2709_p2 | icmp_ln55_24_fu_2703_p2);
assign or_ln55_13_fu_2733_p2 = (icmp_ln55_27_fu_2727_p2 | icmp_ln55_26_fu_2721_p2);
assign or_ln55_14_fu_2834_p2 = (icmp_ln55_29_fu_2828_p2 | icmp_ln55_28_fu_2822_p2);
assign or_ln55_15_fu_2852_p2 = (icmp_ln55_31_fu_2846_p2 | icmp_ln55_30_fu_2840_p2);
assign or_ln55_1_fu_2145_p2 = (icmp_ln55_3_fu_2139_p2 | icmp_ln55_2_fu_2133_p2);
assign or_ln55_2_fu_2217_p2 = (icmp_ln55_5_fu_2211_p2 | icmp_ln55_4_fu_2205_p2);
assign or_ln55_3_fu_2235_p2 = (icmp_ln55_7_fu_2229_p2 | icmp_ln55_6_fu_2223_p2);
assign or_ln55_4_fu_2330_p2 = (icmp_ln55_9_fu_2324_p2 | icmp_ln55_8_fu_2318_p2);
assign or_ln55_5_fu_2348_p2 = (icmp_ln55_11_fu_2342_p2 | icmp_ln55_10_fu_2336_p2);
assign or_ln55_6_fu_2443_p2 = (icmp_ln55_13_fu_2437_p2 | icmp_ln55_12_fu_2431_p2);
assign or_ln55_7_fu_2449_p2 = (icmp_ln55_15_reg_3487 | icmp_ln55_14_reg_3482);
assign or_ln55_8_fu_2537_p2 = (icmp_ln55_17_fu_2531_p2 | icmp_ln55_16_fu_2525_p2);
assign or_ln55_9_fu_2555_p2 = (icmp_ln55_19_fu_2549_p2 | icmp_ln55_18_fu_2543_p2);
assign or_ln55_fu_2127_p2 = (icmp_ln55_fu_2115_p2 | icmp_ln55_1_fu_2121_p2);
assign shl_ln2_fu_946_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_1175_p3 = {{add_ln53_reg_3067}, {4'd0}};
assign shl_ln54_2_fu_1266_p3 = {{add_ln53_1_reg_3073}, {4'd0}};
assign shl_ln54_3_fu_1696_p3 = {{add_ln53_2_reg_3149}, {4'd0}};
assign shl_ln54_4_fu_1716_p3 = {{add_ln53_3_reg_3160}, {4'd0}};
assign shl_ln54_5_fu_1895_p3 = {{add_ln53_4_reg_3311}, {4'd0}};
assign shl_ln54_6_fu_1915_p3 = {{add_ln53_5_reg_3317}, {4'd0}};
assign shl_ln54_7_fu_2016_p3 = {{trunc_ln54_fu_2013_p1}, {4'd0}};
assign tmp_11_fu_1195_p33 = 'bx;
assign tmp_12_fu_1673_p2 = transition_0_q0;
assign tmp_12_fu_1673_p4 = transition_1_q0;
assign tmp_12_fu_1673_p6 = transition_2_q0;
assign tmp_12_fu_1673_p8 = transition_3_q0;
assign tmp_12_fu_1673_p9 = 'bx;
assign tmp_13_fu_2287_p4 = {{bitcast_ln55_4_fu_2283_p1[62:52]}};
assign tmp_14_fu_2304_p4 = {{bitcast_ln55_5_fu_2301_p1[62:52]}};
assign tmp_16_fu_1291_p33 = 'bx;
assign tmp_17_fu_1833_p2 = transition_0_q0;
assign tmp_17_fu_1833_p4 = transition_1_q0;
assign tmp_17_fu_1833_p6 = transition_2_q0;
assign tmp_17_fu_1833_p8 = transition_3_q0;
assign tmp_17_fu_1833_p9 = 'bx;
assign tmp_18_fu_2417_p4 = {{bitcast_ln55_6_fu_2413_p1[62:52]}};
assign tmp_19_fu_1367_p33 = 'bx;
assign tmp_1_fu_994_p33 = 'bx;
assign tmp_20_fu_1872_p2 = transition_0_q1;
assign tmp_20_fu_1872_p4 = transition_1_q1;
assign tmp_20_fu_1872_p6 = transition_2_q1;
assign tmp_20_fu_1872_p8 = transition_3_q1;
assign tmp_20_fu_1872_p9 = 'bx;
assign tmp_21_fu_1438_p33 = 'bx;
assign tmp_22_fu_1951_p2 = transition_0_q0;
assign tmp_22_fu_1951_p4 = transition_1_q0;
assign tmp_22_fu_1951_p6 = transition_2_q0;
assign tmp_22_fu_1951_p8 = transition_3_q0;
assign tmp_22_fu_1951_p9 = 'bx;
assign tmp_23_fu_1509_p33 = 'bx;
assign tmp_24_fu_1990_p2 = transition_0_q1;
assign tmp_24_fu_1990_p4 = transition_1_q1;
assign tmp_24_fu_1990_p6 = transition_2_q1;
assign tmp_24_fu_1990_p8 = transition_3_q1;
assign tmp_24_fu_1990_p9 = 'bx;
assign tmp_25_fu_1746_p33 = 'bx;
assign tmp_26_fu_2053_p2 = transition_0_q1;
assign tmp_26_fu_2053_p4 = transition_1_q1;
assign tmp_26_fu_2053_p6 = transition_2_q1;
assign tmp_26_fu_2053_p8 = transition_3_q1;
assign tmp_26_fu_2053_p9 = 'bx;
assign tmp_27_fu_2377_p4 = {{bitcast_ln55_7_fu_2373_p1[62:52]}};
assign tmp_29_fu_2494_p4 = {{bitcast_ln55_8_fu_2491_p1[62:52]}};
assign tmp_2_fu_1081_p2 = transition_0_q0;
assign tmp_2_fu_1081_p4 = transition_1_q0;
assign tmp_2_fu_1081_p6 = transition_2_q0;
assign tmp_2_fu_1081_p8 = transition_3_q0;
assign tmp_2_fu_1081_p9 = 'bx;
assign tmp_30_fu_2511_p4 = {{bitcast_ln55_9_fu_2508_p1[62:52]}};
assign tmp_32_fu_2583_p4 = {{bitcast_ln55_10_fu_2579_p1[62:52]}};
assign tmp_33_fu_2600_p4 = {{bitcast_ln55_11_fu_2597_p1[62:52]}};
assign tmp_35_fu_2672_p4 = {{bitcast_ln55_12_fu_2669_p1[62:52]}};
assign tmp_36_fu_2689_p4 = {{bitcast_ln55_13_fu_2686_p1[62:52]}};
assign tmp_39_fu_2791_p4 = {{bitcast_ln55_14_fu_2787_p1[62:52]}};
assign tmp_3_fu_2084_p4 = {{bitcast_ln55_fu_2080_p1[62:52]}};
assign tmp_40_fu_2808_p4 = {{bitcast_ln55_15_fu_2805_p1[62:52]}};
assign tmp_4_fu_2101_p4 = {{bitcast_ln55_1_fu_2098_p1[62:52]}};
assign tmp_6_fu_1104_p33 = 'bx;
assign tmp_7_fu_1634_p2 = transition_0_q1;
assign tmp_7_fu_1634_p4 = transition_1_q1;
assign tmp_7_fu_1634_p6 = transition_2_q1;
assign tmp_7_fu_1634_p8 = transition_3_q1;
assign tmp_7_fu_1634_p9 = 'bx;
assign tmp_8_fu_2174_p4 = {{bitcast_ln55_2_fu_2170_p1[62:52]}};
assign tmp_9_fu_2191_p4 = {{bitcast_ln55_3_fu_2188_p1[62:52]}};
assign tmp_s_fu_918_p3 = {{t_1}, {lshr_ln8_2_fu_908_p4}};
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
assign trunc_ln21_fu_904_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_2013_p1 = add_ln53_6_reg_3079[5:0];
assign trunc_ln55_10_fu_2593_p1 = bitcast_ln55_10_fu_2579_p1[51:0];
assign trunc_ln55_11_fu_2610_p1 = bitcast_ln55_11_fu_2597_p1[51:0];
assign trunc_ln55_12_fu_2682_p1 = bitcast_ln55_12_fu_2669_p1[51:0];
assign trunc_ln55_13_fu_2699_p1 = bitcast_ln55_13_fu_2686_p1[51:0];
assign trunc_ln55_14_fu_2801_p1 = bitcast_ln55_14_fu_2787_p1[51:0];
assign trunc_ln55_15_fu_2818_p1 = bitcast_ln55_15_fu_2805_p1[51:0];
assign trunc_ln55_1_fu_2111_p1 = bitcast_ln55_1_fu_2098_p1[51:0];
assign trunc_ln55_2_fu_2184_p1 = bitcast_ln55_2_fu_2170_p1[51:0];
assign trunc_ln55_3_fu_2201_p1 = bitcast_ln55_3_fu_2188_p1[51:0];
assign trunc_ln55_4_fu_2297_p1 = bitcast_ln55_4_fu_2283_p1[51:0];
assign trunc_ln55_5_fu_2314_p1 = bitcast_ln55_5_fu_2301_p1[51:0];
assign trunc_ln55_6_fu_2427_p1 = bitcast_ln55_6_fu_2413_p1[51:0];
assign trunc_ln55_7_fu_2387_p1 = bitcast_ln55_7_fu_2373_p1[51:0];
assign trunc_ln55_8_fu_2504_p1 = bitcast_ln55_8_fu_2491_p1[51:0];
assign trunc_ln55_9_fu_2521_p1 = bitcast_ln55_9_fu_2508_p1[51:0];
assign trunc_ln55_fu_2094_p1 = bitcast_ln55_fu_2080_p1[51:0];
assign zext_ln21_fu_900_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_878_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1598_p1 = add_ln54_8_fu_1593_p2;
assign zext_ln54_1_fu_1187_p1 = add_ln54_1_fu_1182_p2;
assign zext_ln54_2_fu_1278_p1 = add_ln54_2_fu_1273_p2;
assign zext_ln54_3_fu_1708_p1 = add_ln54_3_fu_1703_p2;
assign zext_ln54_4_fu_1728_p1 = add_ln54_4_fu_1723_p2;
assign zext_ln54_5_fu_1907_p1 = add_ln54_5_fu_1902_p2;
assign zext_ln54_6_fu_1927_p1 = add_ln54_6_fu_1922_p2;
assign zext_ln54_7_fu_2029_p1 = add_ln54_7_fu_2024_p2;
assign zext_ln54_8_fu_926_p1 = tmp_s_fu_918_p3;
assign zext_ln54_9_fu_1589_p1 = lshr_ln9_3_fu_1580_p4;
assign zext_ln54_fu_960_p1 = add_ln54_fu_954_p2;
assign zext_ln55_1_fu_2273_p1 = add_ln53_reg_3067;
assign zext_ln55_2_fu_2465_p1 = add_ln53_1_reg_3073_pp0_iter1_reg;
assign zext_ln55_3_fu_2481_p1 = add_ln53_2_reg_3149;
assign zext_ln55_4_fu_2751_p1 = add_ln53_3_reg_3160_pp0_iter1_reg;
assign zext_ln55_5_fu_2760_p1 = add_ln53_4_reg_3311_pp0_iter1_reg;
assign zext_ln55_6_fu_2770_p1 = add_ln53_5_reg_3317_pp0_iter1_reg;
assign zext_ln55_7_fu_2876_p1 = trunc_ln54_reg_3388_pp0_iter1_reg;
assign zext_ln55_fu_2256_p1 = s_reg_2945;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2934[9:6] <= 4'b0000;
end
endmodule 