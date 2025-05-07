module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,empty,llike_address0,llike_ce0,llike_q0,min_p_82_out,min_p_82_out_ap_vld,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce,grp_fu_2062_p_din0,grp_fu_2062_p_din1,grp_fu_2062_p_opcode,grp_fu_2062_p_dout0,grp_fu_2062_p_ce); 
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
input  [63:0] min_p_66;
input  [7:0] empty_9;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
input  [2:0] lshr_ln7;
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
input  [2:0] empty_10;
input  [63:0] tmp_9;
input  [10:0] empty;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_82_out;
output   min_p_82_out_ap_vld;
output  [63:0] grp_fu_1059_p_din0;
output  [63:0] grp_fu_1059_p_din1;
output  [1:0] grp_fu_1059_p_opcode;
input  [63:0] grp_fu_1059_p_dout0;
output   grp_fu_1059_p_ce;
output  [63:0] grp_fu_2062_p_din0;
output  [63:0] grp_fu_2062_p_din1;
output  [4:0] grp_fu_2062_p_opcode;
input  [0:0] grp_fu_2062_p_dout0;
output   grp_fu_2062_p_ce;
reg ap_idle;
reg min_p_82_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_182_reg_2754;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_895;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_901;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_907;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_913;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_919;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_925;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2619;
wire   [8:0] shl_ln1_fu_977_p3;
reg   [8:0] shl_ln1_reg_2659;
wire   [6:0] add_ln25_fu_1041_p2;
reg   [6:0] add_ln25_reg_2748;
reg   [0:0] tmp_182_reg_2754_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2758;
wire   [63:0] tmp_10_fu_1087_p19;
reg   [63:0] tmp_10_reg_2763;
reg   [63:0] llike_2_load_reg_2768;
wire   [63:0] tmp_11_fu_1158_p19;
reg   [63:0] tmp_11_reg_2773;
reg   [63:0] llike_3_load_reg_2778;
reg   [63:0] llike_4_load_reg_2823;
reg   [63:0] llike_5_load_reg_2868;
reg   [63:0] llike_6_load_reg_2873;
reg   [63:0] llike_7_load_reg_2878;
wire   [63:0] tmp_12_fu_1320_p19;
reg   [63:0] tmp_12_reg_2888;
wire   [63:0] tmp_13_fu_1391_p19;
reg   [63:0] tmp_13_reg_2893;
reg   [5:0] tmp_181_reg_2978;
reg   [63:0] llike_load_2_reg_2983;
wire   [63:0] tmp_14_fu_1545_p19;
reg   [63:0] tmp_14_reg_2988;
wire   [63:0] tmp_15_fu_1616_p19;
reg   [63:0] tmp_15_reg_2993;
wire   [63:0] tmp_16_fu_1727_p19;
reg   [63:0] tmp_16_reg_3078;
wire   [63:0] tmp_19_fu_1798_p19;
reg   [63:0] tmp_19_reg_3083;
reg   [63:0] add52_5_reg_3088;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_3093;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_67_reg_3098;
wire   [0:0] and_ln29_1_fu_1928_p2;
reg   [0:0] and_ln29_1_reg_3105;
wire   [63:0] min_p_69_fu_1934_p3;
reg   [63:0] min_p_69_reg_3110;
wire   [0:0] and_ln29_3_fu_2018_p2;
reg   [0:0] and_ln29_3_reg_3117;
wire   [63:0] min_p_71_fu_2024_p3;
reg   [63:0] min_p_71_reg_3122;
wire   [0:0] and_ln29_5_fu_2108_p2;
reg   [0:0] and_ln29_5_reg_3129;
wire   [63:0] min_p_73_fu_2114_p3;
reg   [63:0] min_p_73_reg_3134;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_2139_p2;
reg   [0:0] icmp_ln29_14_reg_3140;
wire   [0:0] icmp_ln29_15_fu_2145_p2;
reg   [0:0] icmp_ln29_15_reg_3145;
reg   [63:0] p_38_reg_3150;
wire   [0:0] and_ln29_7_fu_2197_p2;
reg   [0:0] and_ln29_7_reg_3157;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_75_fu_2203_p3;
reg   [63:0] min_p_75_reg_3162;
wire   [0:0] and_ln29_9_fu_2287_p2;
reg   [0:0] and_ln29_9_reg_3169;
wire   [63:0] min_p_77_fu_2293_p3;
reg   [63:0] min_p_77_reg_3174;
wire   [0:0] and_ln29_11_fu_2377_p2;
reg   [0:0] and_ln29_11_reg_3181;
wire   [63:0] min_p_79_fu_2383_p3;
reg   [63:0] min_p_79_reg_3186;
wire   [0:0] and_ln29_13_fu_2467_p2;
reg   [0:0] and_ln29_13_reg_3193;
wire   [63:0] min_p_81_fu_2473_p3;
reg   [63:0] min_p_81_reg_3198;
reg   [0:0] tmp_180_reg_3205;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_966_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_993_p1;
wire   [63:0] zext_ln27_1_fu_1029_p1;
wire   [63:0] zext_ln27_2_fu_1219_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1253_p1;
wire   [63:0] zext_ln26_2_fu_1283_p1;
wire   [63:0] zext_ln27_4_fu_1452_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1486_p1;
wire   [63:0] zext_ln27_6_fu_1661_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1683_p1;
reg   [63:0] min_p_fu_148;
wire   [63:0] min_p_83_fu_2562_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_152;
wire   [5:0] add_ln25_1_fu_1837_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_887_p0;
reg   [63:0] grp_fu_887_p1;
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
reg   [63:0] grp_fu_891_p0;
reg   [63:0] grp_fu_891_p1;
wire   [2:0] lshr_ln7_1_fu_948_p4;
wire   [10:0] tmp_s_fu_958_p3;
wire   [8:0] add_ln_fu_985_p3;
wire   [8:0] add_ln27_fu_1005_p2;
wire   [5:0] tmp_161_fu_1011_p4;
wire   [8:0] add_ln27_2_fu_1021_p3;
wire   [6:0] zext_ln16_fu_944_p1;
wire   [63:0] tmp_10_fu_1087_p2;
wire   [63:0] tmp_10_fu_1087_p4;
wire   [63:0] tmp_10_fu_1087_p6;
wire   [63:0] tmp_10_fu_1087_p8;
wire   [63:0] tmp_10_fu_1087_p10;
wire   [63:0] tmp_10_fu_1087_p12;
wire   [63:0] tmp_10_fu_1087_p14;
wire   [63:0] tmp_10_fu_1087_p16;
wire   [63:0] tmp_10_fu_1087_p17;
wire   [63:0] tmp_11_fu_1158_p2;
wire   [63:0] tmp_11_fu_1158_p4;
wire   [63:0] tmp_11_fu_1158_p6;
wire   [63:0] tmp_11_fu_1158_p8;
wire   [63:0] tmp_11_fu_1158_p10;
wire   [63:0] tmp_11_fu_1158_p12;
wire   [63:0] tmp_11_fu_1158_p14;
wire   [63:0] tmp_11_fu_1158_p16;
wire   [63:0] tmp_11_fu_1158_p17;
wire   [8:0] add_ln27_1_fu_1197_p2;
wire   [5:0] tmp_165_fu_1202_p4;
wire   [8:0] add_ln27_4_fu_1212_p3;
wire   [8:0] add_ln27_3_fu_1231_p2;
wire   [5:0] tmp_169_fu_1236_p4;
wire   [8:0] add_ln27_6_fu_1246_p3;
wire   [3:0] lshr_ln8_s_fu_1265_p4;
wire   [10:0] zext_ln26_1_fu_1274_p1;
wire   [10:0] add_ln26_fu_1278_p2;
wire   [63:0] tmp_12_fu_1320_p2;
wire   [63:0] tmp_12_fu_1320_p4;
wire   [63:0] tmp_12_fu_1320_p6;
wire   [63:0] tmp_12_fu_1320_p8;
wire   [63:0] tmp_12_fu_1320_p10;
wire   [63:0] tmp_12_fu_1320_p12;
wire   [63:0] tmp_12_fu_1320_p14;
wire   [63:0] tmp_12_fu_1320_p16;
wire   [63:0] tmp_12_fu_1320_p17;
wire   [63:0] tmp_13_fu_1391_p2;
wire   [63:0] tmp_13_fu_1391_p4;
wire   [63:0] tmp_13_fu_1391_p6;
wire   [63:0] tmp_13_fu_1391_p8;
wire   [63:0] tmp_13_fu_1391_p10;
wire   [63:0] tmp_13_fu_1391_p12;
wire   [63:0] tmp_13_fu_1391_p14;
wire   [63:0] tmp_13_fu_1391_p16;
wire   [63:0] tmp_13_fu_1391_p17;
wire   [8:0] add_ln27_5_fu_1430_p2;
wire   [5:0] tmp_173_fu_1435_p4;
wire   [8:0] add_ln27_8_fu_1445_p3;
wire   [8:0] add_ln27_7_fu_1464_p2;
wire   [5:0] tmp_177_fu_1469_p4;
wire   [8:0] add_ln27_s_fu_1479_p3;
wire   [8:0] add_ln27_9_fu_1498_p2;
wire   [63:0] tmp_14_fu_1545_p2;
wire   [63:0] tmp_14_fu_1545_p4;
wire   [63:0] tmp_14_fu_1545_p6;
wire   [63:0] tmp_14_fu_1545_p8;
wire   [63:0] tmp_14_fu_1545_p10;
wire   [63:0] tmp_14_fu_1545_p12;
wire   [63:0] tmp_14_fu_1545_p14;
wire   [63:0] tmp_14_fu_1545_p16;
wire   [63:0] tmp_14_fu_1545_p17;
wire   [63:0] tmp_15_fu_1616_p2;
wire   [63:0] tmp_15_fu_1616_p4;
wire   [63:0] tmp_15_fu_1616_p6;
wire   [63:0] tmp_15_fu_1616_p8;
wire   [63:0] tmp_15_fu_1616_p10;
wire   [63:0] tmp_15_fu_1616_p12;
wire   [63:0] tmp_15_fu_1616_p14;
wire   [63:0] tmp_15_fu_1616_p16;
wire   [63:0] tmp_15_fu_1616_p17;
wire   [8:0] add_ln27_10_fu_1655_p3;
wire   [5:0] trunc_ln27_fu_1673_p1;
wire   [8:0] add_ln27_11_fu_1676_p3;
wire   [63:0] tmp_16_fu_1727_p2;
wire   [63:0] tmp_16_fu_1727_p4;
wire   [63:0] tmp_16_fu_1727_p6;
wire   [63:0] tmp_16_fu_1727_p8;
wire   [63:0] tmp_16_fu_1727_p10;
wire   [63:0] tmp_16_fu_1727_p12;
wire   [63:0] tmp_16_fu_1727_p14;
wire   [63:0] tmp_16_fu_1727_p16;
wire   [63:0] tmp_16_fu_1727_p17;
wire   [63:0] tmp_19_fu_1798_p2;
wire   [63:0] tmp_19_fu_1798_p4;
wire   [63:0] tmp_19_fu_1798_p6;
wire   [63:0] tmp_19_fu_1798_p8;
wire   [63:0] tmp_19_fu_1798_p10;
wire   [63:0] tmp_19_fu_1798_p12;
wire   [63:0] tmp_19_fu_1798_p14;
wire   [63:0] tmp_19_fu_1798_p16;
wire   [63:0] tmp_19_fu_1798_p17;
wire   [63:0] bitcast_ln29_fu_1851_p1;
wire   [63:0] bitcast_ln29_1_fu_1869_p1;
wire   [10:0] tmp_150_fu_1855_p4;
wire   [51:0] trunc_ln29_fu_1865_p1;
wire   [0:0] icmp_ln29_1_fu_1892_p2;
wire   [0:0] icmp_ln29_fu_1886_p2;
wire   [10:0] tmp_151_fu_1872_p4;
wire   [51:0] trunc_ln29_1_fu_1882_p1;
wire   [0:0] icmp_ln29_3_fu_1910_p2;
wire   [0:0] icmp_ln29_2_fu_1904_p2;
wire   [0:0] or_ln29_fu_1898_p2;
wire   [0:0] and_ln29_fu_1922_p2;
wire   [0:0] or_ln29_1_fu_1916_p2;
wire   [63:0] bitcast_ln29_2_fu_1941_p1;
wire   [63:0] bitcast_ln29_3_fu_1959_p1;
wire   [10:0] tmp_154_fu_1945_p4;
wire   [51:0] trunc_ln29_2_fu_1955_p1;
wire   [0:0] icmp_ln29_5_fu_1982_p2;
wire   [0:0] icmp_ln29_4_fu_1976_p2;
wire   [10:0] tmp_155_fu_1962_p4;
wire   [51:0] trunc_ln29_3_fu_1972_p1;
wire   [0:0] icmp_ln29_7_fu_2000_p2;
wire   [0:0] icmp_ln29_6_fu_1994_p2;
wire   [0:0] or_ln29_3_fu_2006_p2;
wire   [0:0] or_ln29_2_fu_1988_p2;
wire   [0:0] and_ln29_2_fu_2012_p2;
wire   [63:0] bitcast_ln29_4_fu_2031_p1;
wire   [63:0] bitcast_ln29_5_fu_2049_p1;
wire   [10:0] tmp_158_fu_2035_p4;
wire   [51:0] trunc_ln29_4_fu_2045_p1;
wire   [0:0] icmp_ln29_9_fu_2072_p2;
wire   [0:0] icmp_ln29_8_fu_2066_p2;
wire   [10:0] tmp_159_fu_2052_p4;
wire   [51:0] trunc_ln29_5_fu_2062_p1;
wire   [0:0] icmp_ln29_11_fu_2090_p2;
wire   [0:0] icmp_ln29_10_fu_2084_p2;
wire   [0:0] or_ln29_5_fu_2096_p2;
wire   [0:0] or_ln29_4_fu_2078_p2;
wire   [0:0] and_ln29_4_fu_2102_p2;
wire   [63:0] bitcast_ln29_7_fu_2121_p1;
wire   [10:0] tmp_163_fu_2125_p4;
wire   [51:0] trunc_ln29_7_fu_2135_p1;
wire   [63:0] bitcast_ln29_6_fu_2151_p1;
wire   [10:0] tmp_162_fu_2155_p4;
wire   [51:0] trunc_ln29_6_fu_2165_p1;
wire   [0:0] icmp_ln29_13_fu_2175_p2;
wire   [0:0] icmp_ln29_12_fu_2169_p2;
wire   [0:0] or_ln29_7_fu_2187_p2;
wire   [0:0] or_ln29_6_fu_2181_p2;
wire   [0:0] and_ln29_6_fu_2191_p2;
wire   [63:0] bitcast_ln29_8_fu_2210_p1;
wire   [63:0] bitcast_ln29_9_fu_2228_p1;
wire   [10:0] tmp_166_fu_2214_p4;
wire   [51:0] trunc_ln29_8_fu_2224_p1;
wire   [0:0] icmp_ln29_17_fu_2251_p2;
wire   [0:0] icmp_ln29_16_fu_2245_p2;
wire   [10:0] tmp_167_fu_2231_p4;
wire   [51:0] trunc_ln29_9_fu_2241_p1;
wire   [0:0] icmp_ln29_19_fu_2269_p2;
wire   [0:0] icmp_ln29_18_fu_2263_p2;
wire   [0:0] or_ln29_9_fu_2275_p2;
wire   [0:0] or_ln29_8_fu_2257_p2;
wire   [0:0] and_ln29_8_fu_2281_p2;
wire   [63:0] bitcast_ln29_10_fu_2300_p1;
wire   [63:0] bitcast_ln29_11_fu_2318_p1;
wire   [10:0] tmp_170_fu_2304_p4;
wire   [51:0] trunc_ln29_10_fu_2314_p1;
wire   [0:0] icmp_ln29_21_fu_2341_p2;
wire   [0:0] icmp_ln29_20_fu_2335_p2;
wire   [10:0] tmp_171_fu_2321_p4;
wire   [51:0] trunc_ln29_11_fu_2331_p1;
wire   [0:0] icmp_ln29_23_fu_2359_p2;
wire   [0:0] icmp_ln29_22_fu_2353_p2;
wire   [0:0] or_ln29_11_fu_2365_p2;
wire   [0:0] or_ln29_10_fu_2347_p2;
wire   [0:0] and_ln29_10_fu_2371_p2;
wire   [63:0] bitcast_ln29_12_fu_2390_p1;
wire   [63:0] bitcast_ln29_13_fu_2408_p1;
wire   [10:0] tmp_174_fu_2394_p4;
wire   [51:0] trunc_ln29_12_fu_2404_p1;
wire   [0:0] icmp_ln29_25_fu_2431_p2;
wire   [0:0] icmp_ln29_24_fu_2425_p2;
wire   [10:0] tmp_175_fu_2411_p4;
wire   [51:0] trunc_ln29_13_fu_2421_p1;
wire   [0:0] icmp_ln29_27_fu_2449_p2;
wire   [0:0] icmp_ln29_26_fu_2443_p2;
wire   [0:0] or_ln29_13_fu_2455_p2;
wire   [0:0] or_ln29_12_fu_2437_p2;
wire   [0:0] and_ln29_12_fu_2461_p2;
wire   [63:0] bitcast_ln29_14_fu_2481_p1;
wire   [63:0] bitcast_ln29_15_fu_2498_p1;
wire   [10:0] tmp_178_fu_2484_p4;
wire   [51:0] trunc_ln29_14_fu_2494_p1;
wire   [0:0] icmp_ln29_29_fu_2521_p2;
wire   [0:0] icmp_ln29_28_fu_2515_p2;
wire   [10:0] tmp_179_fu_2501_p4;
wire   [51:0] trunc_ln29_15_fu_2511_p1;
wire   [0:0] icmp_ln29_31_fu_2539_p2;
wire   [0:0] icmp_ln29_30_fu_2533_p2;
wire   [0:0] or_ln29_15_fu_2545_p2;
wire   [0:0] or_ln29_14_fu_2527_p2;
wire   [0:0] and_ln29_14_fu_2551_p2;
wire   [0:0] and_ln29_15_fu_2557_p2;
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
wire   [2:0] tmp_10_fu_1087_p1;
wire   [2:0] tmp_10_fu_1087_p3;
wire   [2:0] tmp_10_fu_1087_p5;
wire   [2:0] tmp_10_fu_1087_p7;
wire  signed [2:0] tmp_10_fu_1087_p9;
wire  signed [2:0] tmp_10_fu_1087_p11;
wire  signed [2:0] tmp_10_fu_1087_p13;
wire  signed [2:0] tmp_10_fu_1087_p15;
wire   [2:0] tmp_11_fu_1158_p1;
wire   [2:0] tmp_11_fu_1158_p3;
wire   [2:0] tmp_11_fu_1158_p5;
wire   [2:0] tmp_11_fu_1158_p7;
wire  signed [2:0] tmp_11_fu_1158_p9;
wire  signed [2:0] tmp_11_fu_1158_p11;
wire  signed [2:0] tmp_11_fu_1158_p13;
wire  signed [2:0] tmp_11_fu_1158_p15;
wire   [2:0] tmp_12_fu_1320_p1;
wire   [2:0] tmp_12_fu_1320_p3;
wire   [2:0] tmp_12_fu_1320_p5;
wire   [2:0] tmp_12_fu_1320_p7;
wire  signed [2:0] tmp_12_fu_1320_p9;
wire  signed [2:0] tmp_12_fu_1320_p11;
wire  signed [2:0] tmp_12_fu_1320_p13;
wire  signed [2:0] tmp_12_fu_1320_p15;
wire   [2:0] tmp_13_fu_1391_p1;
wire   [2:0] tmp_13_fu_1391_p3;
wire   [2:0] tmp_13_fu_1391_p5;
wire   [2:0] tmp_13_fu_1391_p7;
wire  signed [2:0] tmp_13_fu_1391_p9;
wire  signed [2:0] tmp_13_fu_1391_p11;
wire  signed [2:0] tmp_13_fu_1391_p13;
wire  signed [2:0] tmp_13_fu_1391_p15;
wire   [2:0] tmp_14_fu_1545_p1;
wire   [2:0] tmp_14_fu_1545_p3;
wire   [2:0] tmp_14_fu_1545_p5;
wire   [2:0] tmp_14_fu_1545_p7;
wire  signed [2:0] tmp_14_fu_1545_p9;
wire  signed [2:0] tmp_14_fu_1545_p11;
wire  signed [2:0] tmp_14_fu_1545_p13;
wire  signed [2:0] tmp_14_fu_1545_p15;
wire   [2:0] tmp_15_fu_1616_p1;
wire   [2:0] tmp_15_fu_1616_p3;
wire   [2:0] tmp_15_fu_1616_p5;
wire   [2:0] tmp_15_fu_1616_p7;
wire  signed [2:0] tmp_15_fu_1616_p9;
wire  signed [2:0] tmp_15_fu_1616_p11;
wire  signed [2:0] tmp_15_fu_1616_p13;
wire  signed [2:0] tmp_15_fu_1616_p15;
wire   [2:0] tmp_16_fu_1727_p1;
wire   [2:0] tmp_16_fu_1727_p3;
wire   [2:0] tmp_16_fu_1727_p5;
wire   [2:0] tmp_16_fu_1727_p7;
wire  signed [2:0] tmp_16_fu_1727_p9;
wire  signed [2:0] tmp_16_fu_1727_p11;
wire  signed [2:0] tmp_16_fu_1727_p13;
wire  signed [2:0] tmp_16_fu_1727_p15;
wire   [2:0] tmp_19_fu_1798_p1;
wire   [2:0] tmp_19_fu_1798_p3;
wire   [2:0] tmp_19_fu_1798_p5;
wire   [2:0] tmp_19_fu_1798_p7;
wire  signed [2:0] tmp_19_fu_1798_p9;
wire  signed [2:0] tmp_19_fu_1798_p11;
wire  signed [2:0] tmp_19_fu_1798_p13;
wire  signed [2:0] tmp_19_fu_1798_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_148 = 64'd0;
#0 prev_fu_152 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U42(.din0(tmp_10_fu_1087_p2),.din1(tmp_10_fu_1087_p4),.din2(tmp_10_fu_1087_p6),.din3(tmp_10_fu_1087_p8),.din4(tmp_10_fu_1087_p10),.din5(tmp_10_fu_1087_p12),.din6(tmp_10_fu_1087_p14),.din7(tmp_10_fu_1087_p16),.def(tmp_10_fu_1087_p17),.sel(empty_10),.dout(tmp_10_fu_1087_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(tmp_11_fu_1158_p2),.din1(tmp_11_fu_1158_p4),.din2(tmp_11_fu_1158_p6),.din3(tmp_11_fu_1158_p8),.din4(tmp_11_fu_1158_p10),.din5(tmp_11_fu_1158_p12),.din6(tmp_11_fu_1158_p14),.din7(tmp_11_fu_1158_p16),.def(tmp_11_fu_1158_p17),.sel(empty_10),.dout(tmp_11_fu_1158_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U44(.din0(tmp_12_fu_1320_p2),.din1(tmp_12_fu_1320_p4),.din2(tmp_12_fu_1320_p6),.din3(tmp_12_fu_1320_p8),.din4(tmp_12_fu_1320_p10),.din5(tmp_12_fu_1320_p12),.din6(tmp_12_fu_1320_p14),.din7(tmp_12_fu_1320_p16),.def(tmp_12_fu_1320_p17),.sel(empty_10),.dout(tmp_12_fu_1320_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U45(.din0(tmp_13_fu_1391_p2),.din1(tmp_13_fu_1391_p4),.din2(tmp_13_fu_1391_p6),.din3(tmp_13_fu_1391_p8),.din4(tmp_13_fu_1391_p10),.din5(tmp_13_fu_1391_p12),.din6(tmp_13_fu_1391_p14),.din7(tmp_13_fu_1391_p16),.def(tmp_13_fu_1391_p17),.sel(empty_10),.dout(tmp_13_fu_1391_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U46(.din0(tmp_14_fu_1545_p2),.din1(tmp_14_fu_1545_p4),.din2(tmp_14_fu_1545_p6),.din3(tmp_14_fu_1545_p8),.din4(tmp_14_fu_1545_p10),.din5(tmp_14_fu_1545_p12),.din6(tmp_14_fu_1545_p14),.din7(tmp_14_fu_1545_p16),.def(tmp_14_fu_1545_p17),.sel(empty_10),.dout(tmp_14_fu_1545_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U47(.din0(tmp_15_fu_1616_p2),.din1(tmp_15_fu_1616_p4),.din2(tmp_15_fu_1616_p6),.din3(tmp_15_fu_1616_p8),.din4(tmp_15_fu_1616_p10),.din5(tmp_15_fu_1616_p12),.din6(tmp_15_fu_1616_p14),.din7(tmp_15_fu_1616_p16),.def(tmp_15_fu_1616_p17),.sel(empty_10),.dout(tmp_15_fu_1616_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U48(.din0(tmp_16_fu_1727_p2),.din1(tmp_16_fu_1727_p4),.din2(tmp_16_fu_1727_p6),.din3(tmp_16_fu_1727_p8),.din4(tmp_16_fu_1727_p10),.din5(tmp_16_fu_1727_p12),.din6(tmp_16_fu_1727_p14),.din7(tmp_16_fu_1727_p16),.def(tmp_16_fu_1727_p17),.sel(empty_10),.dout(tmp_16_fu_1727_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U49(.din0(tmp_19_fu_1798_p2),.din1(tmp_19_fu_1798_p4),.din2(tmp_19_fu_1798_p6),.din3(tmp_19_fu_1798_p8),.din4(tmp_19_fu_1798_p10),.din5(tmp_19_fu_1798_p12),.din6(tmp_19_fu_1798_p14),.din7(tmp_19_fu_1798_p16),.def(tmp_19_fu_1798_p17),.sel(empty_10),.dout(tmp_19_fu_1798_p19));
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
            min_p_fu_148 <= min_p_66;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_148 <= min_p_83_fu_2562_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_152 <= 6'd1;
    end else if (((tmp_182_reg_2754 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_152 <= add_ln25_1_fu_1837_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_3088 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_3093 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_2748 <= add_ln25_fu_1041_p2;
        prev_1_reg_2619 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2659[8 : 3] <= shl_ln1_fu_977_p3[8 : 3];
        tmp_182_reg_2754 <= add_ln25_fu_1041_p2[32'd6];
        tmp_182_reg_2754_pp0_iter1_reg <= tmp_182_reg_2754;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_3181 <= and_ln29_11_fu_2377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_3193 <= and_ln29_13_fu_2467_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_3105 <= and_ln29_1_fu_1928_p2;
        llike_load_2_reg_2983 <= llike_q0;
        tmp_12_reg_2888 <= tmp_12_fu_1320_p19;
        tmp_13_reg_2893 <= tmp_13_fu_1391_p19;
        tmp_181_reg_2978 <= {{add_ln27_9_fu_1498_p2[8:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_3117 <= and_ln29_3_fu_2018_p2;
        tmp_16_reg_3078 <= tmp_16_fu_1727_p19;
        tmp_19_reg_3083 <= tmp_19_fu_1798_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_3129 <= and_ln29_5_fu_2108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_3157 <= and_ln29_7_fu_2197_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_3169 <= and_ln29_9_fu_2287_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_3140 <= icmp_ln29_14_fu_2139_p2;
        icmp_ln29_15_reg_3145 <= icmp_ln29_15_fu_2145_p2;
        min_p_73_reg_3134 <= min_p_73_fu_2114_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_2758 <= llike_1_q0;
        llike_2_load_reg_2768 <= llike_2_q0;
        llike_3_load_reg_2778 <= llike_3_q0;
        llike_4_load_reg_2823 <= llike_4_q0;
        llike_5_load_reg_2868 <= llike_5_q0;
        llike_6_load_reg_2873 <= llike_6_q0;
        llike_7_load_reg_2878 <= llike_7_q0;
        min_p_67_reg_3098 <= min_p_fu_148;
        tmp_10_reg_2763 <= tmp_10_fu_1087_p19;
        tmp_11_reg_2773 <= tmp_11_fu_1158_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_69_reg_3110 <= min_p_69_fu_1934_p3;
        tmp_14_reg_2988 <= tmp_14_fu_1545_p19;
        tmp_15_reg_2993 <= tmp_15_fu_1616_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_71_reg_3122 <= min_p_71_fu_2024_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_75_reg_3162 <= min_p_75_fu_2203_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_77_reg_3174 <= min_p_77_fu_2293_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_79_reg_3186 <= min_p_79_fu_2383_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_81_reg_3198 <= min_p_81_fu_2473_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_38_reg_3150 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_895 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_901 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_907 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_913 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_919 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_925 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_180_reg_3205 <= grp_fu_2062_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_182_reg_2754 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (tmp_182_reg_2754_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_887_p0 = add52_7_reg_3093;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_887_p0 = reg_925;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_887_p0 = add52_5_reg_3088;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_887_p0 = reg_919;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_887_p0 = reg_913;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_887_p0 = reg_907;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_887_p0 = reg_901;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_887_p0 = reg_895;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_887_p0 = llike_load_2_reg_2983;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_887_p0 = llike_7_load_reg_2878;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_887_p0 = llike_6_load_reg_2873;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_887_p0 = llike_5_load_reg_2868;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_887_p0 = llike_4_load_reg_2823;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_887_p0 = llike_3_load_reg_2778;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_887_p0 = llike_2_load_reg_2768;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_887_p0 = llike_1_load_reg_2758;
    end else begin
        grp_fu_887_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_887_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_887_p1 = tmp_19_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_887_p1 = tmp_16_reg_3078;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_887_p1 = tmp_15_reg_2993;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_887_p1 = tmp_14_reg_2988;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_887_p1 = tmp_13_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_887_p1 = tmp_12_reg_2888;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_887_p1 = tmp_11_reg_2773;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_887_p1 = tmp_10_reg_2763;
    end else begin
        grp_fu_887_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_891_p0 = p_38_reg_3150;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_891_p0 = reg_925;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_891_p0 = reg_919;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_891_p0 = reg_913;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_891_p0 = reg_907;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_891_p0 = reg_901;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_891_p0 = reg_895;
    end else begin
        grp_fu_891_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_891_p1 = min_p_81_fu_2473_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_891_p1 = min_p_79_fu_2383_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_891_p1 = min_p_77_fu_2293_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_891_p1 = min_p_75_fu_2203_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_891_p1 = min_p_73_fu_2114_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_891_p1 = min_p_71_fu_2024_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_891_p1 = min_p_69_fu_1934_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_891_p1 = min_p_fu_148;
        end else begin
            grp_fu_891_p1 = 'bx;
        end
    end else begin
        grp_fu_891_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_182_reg_2754_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_82_out_ap_vld = 1'b1;
    end else begin
        min_p_82_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_1029_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_993_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_1029_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_993_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_1029_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_993_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_1029_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_993_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_1029_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_993_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_1029_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_993_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_1029_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_993_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address0_local = zext_ln27_7_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln27_5_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_1029_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address1_local = zext_ln27_6_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln27_4_fu_1452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_1219_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_993_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
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
assign add_ln25_1_fu_1837_p2 = (prev_1_reg_2619 + 6'd8);
assign add_ln25_fu_1041_p2 = (zext_ln16_fu_944_p1 + 7'd7);
assign add_ln26_fu_1278_p2 = (empty + zext_ln26_1_fu_1274_p1);
assign add_ln27_10_fu_1655_p3 = {{tmp_181_reg_2978}, {lshr_ln7}};
assign add_ln27_11_fu_1676_p3 = {{trunc_ln27_fu_1673_p1}, {lshr_ln7}};
assign add_ln27_1_fu_1197_p2 = (shl_ln1_reg_2659 + 9'd16);
assign add_ln27_2_fu_1021_p3 = {{tmp_161_fu_1011_p4}, {lshr_ln7}};
assign add_ln27_3_fu_1231_p2 = (shl_ln1_reg_2659 + 9'd24);
assign add_ln27_4_fu_1212_p3 = {{tmp_165_fu_1202_p4}, {lshr_ln7}};
assign add_ln27_5_fu_1430_p2 = (shl_ln1_reg_2659 + 9'd32);
assign add_ln27_6_fu_1246_p3 = {{tmp_169_fu_1236_p4}, {lshr_ln7}};
assign add_ln27_7_fu_1464_p2 = (shl_ln1_reg_2659 + 9'd40);
assign add_ln27_8_fu_1445_p3 = {{tmp_173_fu_1435_p4}, {lshr_ln7}};
assign add_ln27_9_fu_1498_p2 = (shl_ln1_reg_2659 + 9'd48);
assign add_ln27_fu_1005_p2 = (shl_ln1_fu_977_p3 + 9'd8);
assign add_ln27_s_fu_1479_p3 = {{tmp_177_fu_1469_p4}, {lshr_ln7}};
assign add_ln_fu_985_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_10_fu_2371_p2 = (or_ln29_11_fu_2365_p2 & or_ln29_10_fu_2347_p2);
assign and_ln29_11_fu_2377_p2 = (grp_fu_2062_p_dout0 & and_ln29_10_fu_2371_p2);
assign and_ln29_12_fu_2461_p2 = (or_ln29_13_fu_2455_p2 & or_ln29_12_fu_2437_p2);
assign and_ln29_13_fu_2467_p2 = (grp_fu_2062_p_dout0 & and_ln29_12_fu_2461_p2);
assign and_ln29_14_fu_2551_p2 = (or_ln29_15_fu_2545_p2 & or_ln29_14_fu_2527_p2);
assign and_ln29_15_fu_2557_p2 = (tmp_180_reg_3205 & and_ln29_14_fu_2551_p2);
assign and_ln29_1_fu_1928_p2 = (or_ln29_1_fu_1916_p2 & and_ln29_fu_1922_p2);
assign and_ln29_2_fu_2012_p2 = (or_ln29_3_fu_2006_p2 & or_ln29_2_fu_1988_p2);
assign and_ln29_3_fu_2018_p2 = (grp_fu_2062_p_dout0 & and_ln29_2_fu_2012_p2);
assign and_ln29_4_fu_2102_p2 = (or_ln29_5_fu_2096_p2 & or_ln29_4_fu_2078_p2);
assign and_ln29_5_fu_2108_p2 = (grp_fu_2062_p_dout0 & and_ln29_4_fu_2102_p2);
assign and_ln29_6_fu_2191_p2 = (or_ln29_7_fu_2187_p2 & or_ln29_6_fu_2181_p2);
assign and_ln29_7_fu_2197_p2 = (grp_fu_2062_p_dout0 & and_ln29_6_fu_2191_p2);
assign and_ln29_8_fu_2281_p2 = (or_ln29_9_fu_2275_p2 & or_ln29_8_fu_2257_p2);
assign and_ln29_9_fu_2287_p2 = (grp_fu_2062_p_dout0 & and_ln29_8_fu_2281_p2);
assign and_ln29_fu_1922_p2 = (or_ln29_fu_1898_p2 & grp_fu_2062_p_dout0);
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
assign bitcast_ln29_10_fu_2300_p1 = reg_919;
assign bitcast_ln29_11_fu_2318_p1 = min_p_77_reg_3174;
assign bitcast_ln29_12_fu_2390_p1 = reg_925;
assign bitcast_ln29_13_fu_2408_p1 = min_p_79_reg_3186;
assign bitcast_ln29_14_fu_2481_p1 = p_38_reg_3150;
assign bitcast_ln29_15_fu_2498_p1 = min_p_81_reg_3198;
assign bitcast_ln29_1_fu_1869_p1 = min_p_67_reg_3098;
assign bitcast_ln29_2_fu_1941_p1 = reg_901;
assign bitcast_ln29_3_fu_1959_p1 = min_p_69_reg_3110;
assign bitcast_ln29_4_fu_2031_p1 = reg_907;
assign bitcast_ln29_5_fu_2049_p1 = min_p_71_reg_3122;
assign bitcast_ln29_6_fu_2151_p1 = reg_895;
assign bitcast_ln29_7_fu_2121_p1 = min_p_73_fu_2114_p3;
assign bitcast_ln29_8_fu_2210_p1 = reg_913;
assign bitcast_ln29_9_fu_2228_p1 = min_p_75_reg_3162;
assign bitcast_ln29_fu_1851_p1 = reg_895;
assign grp_fu_1059_p_ce = 1'b1;
assign grp_fu_1059_p_din0 = grp_fu_887_p0;
assign grp_fu_1059_p_din1 = grp_fu_887_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign grp_fu_2062_p_ce = 1'b1;
assign grp_fu_2062_p_din0 = grp_fu_891_p0;
assign grp_fu_2062_p_din1 = grp_fu_891_p1;
assign grp_fu_2062_p_opcode = 5'd4;
assign icmp_ln29_10_fu_2084_p2 = ((tmp_159_fu_2052_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_2090_p2 = ((trunc_ln29_5_fu_2062_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2169_p2 = ((tmp_162_fu_2155_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2175_p2 = ((trunc_ln29_6_fu_2165_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_2139_p2 = ((tmp_163_fu_2125_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2145_p2 = ((trunc_ln29_7_fu_2135_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2245_p2 = ((tmp_166_fu_2214_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2251_p2 = ((trunc_ln29_8_fu_2224_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2263_p2 = ((tmp_167_fu_2231_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2269_p2 = ((trunc_ln29_9_fu_2241_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1892_p2 = ((trunc_ln29_fu_1865_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2335_p2 = ((tmp_170_fu_2304_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2341_p2 = ((trunc_ln29_10_fu_2314_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2353_p2 = ((tmp_171_fu_2321_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2359_p2 = ((trunc_ln29_11_fu_2331_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2425_p2 = ((tmp_174_fu_2394_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2431_p2 = ((trunc_ln29_12_fu_2404_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2443_p2 = ((tmp_175_fu_2411_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2449_p2 = ((trunc_ln29_13_fu_2421_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2515_p2 = ((tmp_178_fu_2484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2521_p2 = ((trunc_ln29_14_fu_2494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1904_p2 = ((tmp_151_fu_1872_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2533_p2 = ((tmp_179_fu_2501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2539_p2 = ((trunc_ln29_15_fu_2511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1910_p2 = ((trunc_ln29_1_fu_1882_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1976_p2 = ((tmp_154_fu_1945_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1982_p2 = ((trunc_ln29_2_fu_1955_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1994_p2 = ((tmp_155_fu_1962_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_2000_p2 = ((trunc_ln29_3_fu_1972_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_2066_p2 = ((tmp_158_fu_2035_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_2072_p2 = ((trunc_ln29_4_fu_2045_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1886_p2 = ((tmp_150_fu_1855_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_966_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_966_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_966_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln26_fu_966_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln26_fu_966_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln26_fu_966_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln26_fu_966_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln26_2_fu_1283_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_948_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_s_fu_1265_p4 = {{add_ln25_reg_2748[6:3]}};
assign min_p_69_fu_1934_p3 = ((and_ln29_1_reg_3105[0:0] == 1'b1) ? reg_895 : min_p_67_reg_3098);
assign min_p_71_fu_2024_p3 = ((and_ln29_3_reg_3117[0:0] == 1'b1) ? reg_901 : min_p_69_reg_3110);
assign min_p_73_fu_2114_p3 = ((and_ln29_5_reg_3129[0:0] == 1'b1) ? reg_907 : min_p_71_reg_3122);
assign min_p_75_fu_2203_p3 = ((and_ln29_7_reg_3157[0:0] == 1'b1) ? reg_895 : min_p_73_reg_3134);
assign min_p_77_fu_2293_p3 = ((and_ln29_9_reg_3169[0:0] == 1'b1) ? reg_913 : min_p_75_reg_3162);
assign min_p_79_fu_2383_p3 = ((and_ln29_11_reg_3181[0:0] == 1'b1) ? reg_919 : min_p_77_reg_3174);
assign min_p_81_fu_2473_p3 = ((and_ln29_13_reg_3193[0:0] == 1'b1) ? reg_925 : min_p_79_reg_3186);
assign min_p_82_out = ((and_ln29_13_reg_3193[0:0] == 1'b1) ? reg_925 : min_p_79_reg_3186);
assign min_p_83_fu_2562_p3 = ((and_ln29_15_fu_2557_p2[0:0] == 1'b1) ? p_38_reg_3150 : min_p_81_reg_3198);
assign or_ln29_10_fu_2347_p2 = (icmp_ln29_21_fu_2341_p2 | icmp_ln29_20_fu_2335_p2);
assign or_ln29_11_fu_2365_p2 = (icmp_ln29_23_fu_2359_p2 | icmp_ln29_22_fu_2353_p2);
assign or_ln29_12_fu_2437_p2 = (icmp_ln29_25_fu_2431_p2 | icmp_ln29_24_fu_2425_p2);
assign or_ln29_13_fu_2455_p2 = (icmp_ln29_27_fu_2449_p2 | icmp_ln29_26_fu_2443_p2);
assign or_ln29_14_fu_2527_p2 = (icmp_ln29_29_fu_2521_p2 | icmp_ln29_28_fu_2515_p2);
assign or_ln29_15_fu_2545_p2 = (icmp_ln29_31_fu_2539_p2 | icmp_ln29_30_fu_2533_p2);
assign or_ln29_1_fu_1916_p2 = (icmp_ln29_3_fu_1910_p2 | icmp_ln29_2_fu_1904_p2);
assign or_ln29_2_fu_1988_p2 = (icmp_ln29_5_fu_1982_p2 | icmp_ln29_4_fu_1976_p2);
assign or_ln29_3_fu_2006_p2 = (icmp_ln29_7_fu_2000_p2 | icmp_ln29_6_fu_1994_p2);
assign or_ln29_4_fu_2078_p2 = (icmp_ln29_9_fu_2072_p2 | icmp_ln29_8_fu_2066_p2);
assign or_ln29_5_fu_2096_p2 = (icmp_ln29_11_fu_2090_p2 | icmp_ln29_10_fu_2084_p2);
assign or_ln29_6_fu_2181_p2 = (icmp_ln29_13_fu_2175_p2 | icmp_ln29_12_fu_2169_p2);
assign or_ln29_7_fu_2187_p2 = (icmp_ln29_15_reg_3145 | icmp_ln29_14_reg_3140);
assign or_ln29_8_fu_2257_p2 = (icmp_ln29_17_fu_2251_p2 | icmp_ln29_16_fu_2245_p2);
assign or_ln29_9_fu_2275_p2 = (icmp_ln29_19_fu_2269_p2 | icmp_ln29_18_fu_2263_p2);
assign or_ln29_fu_1898_p2 = (icmp_ln29_fu_1886_p2 | icmp_ln29_1_fu_1892_p2);
assign shl_ln1_fu_977_p3 = {{ap_sig_allocacmp_prev_1}, {3'd0}};
assign tmp_10_fu_1087_p10 = transition_4_q1;
assign tmp_10_fu_1087_p12 = transition_5_q1;
assign tmp_10_fu_1087_p14 = transition_6_q1;
assign tmp_10_fu_1087_p16 = transition_7_q1;
assign tmp_10_fu_1087_p17 = 'bx;
assign tmp_10_fu_1087_p2 = transition_0_q1;
assign tmp_10_fu_1087_p4 = transition_1_q1;
assign tmp_10_fu_1087_p6 = transition_2_q1;
assign tmp_10_fu_1087_p8 = transition_3_q1;
assign tmp_11_fu_1158_p10 = transition_4_q0;
assign tmp_11_fu_1158_p12 = transition_5_q0;
assign tmp_11_fu_1158_p14 = transition_6_q0;
assign tmp_11_fu_1158_p16 = transition_7_q0;
assign tmp_11_fu_1158_p17 = 'bx;
assign tmp_11_fu_1158_p2 = transition_0_q0;
assign tmp_11_fu_1158_p4 = transition_1_q0;
assign tmp_11_fu_1158_p6 = transition_2_q0;
assign tmp_11_fu_1158_p8 = transition_3_q0;
assign tmp_12_fu_1320_p10 = transition_4_q1;
assign tmp_12_fu_1320_p12 = transition_5_q1;
assign tmp_12_fu_1320_p14 = transition_6_q1;
assign tmp_12_fu_1320_p16 = transition_7_q1;
assign tmp_12_fu_1320_p17 = 'bx;
assign tmp_12_fu_1320_p2 = transition_0_q1;
assign tmp_12_fu_1320_p4 = transition_1_q1;
assign tmp_12_fu_1320_p6 = transition_2_q1;
assign tmp_12_fu_1320_p8 = transition_3_q1;
assign tmp_13_fu_1391_p10 = transition_4_q0;
assign tmp_13_fu_1391_p12 = transition_5_q0;
assign tmp_13_fu_1391_p14 = transition_6_q0;
assign tmp_13_fu_1391_p16 = transition_7_q0;
assign tmp_13_fu_1391_p17 = 'bx;
assign tmp_13_fu_1391_p2 = transition_0_q0;
assign tmp_13_fu_1391_p4 = transition_1_q0;
assign tmp_13_fu_1391_p6 = transition_2_q0;
assign tmp_13_fu_1391_p8 = transition_3_q0;
assign tmp_14_fu_1545_p10 = transition_4_q1;
assign tmp_14_fu_1545_p12 = transition_5_q1;
assign tmp_14_fu_1545_p14 = transition_6_q1;
assign tmp_14_fu_1545_p16 = transition_7_q1;
assign tmp_14_fu_1545_p17 = 'bx;
assign tmp_14_fu_1545_p2 = transition_0_q1;
assign tmp_14_fu_1545_p4 = transition_1_q1;
assign tmp_14_fu_1545_p6 = transition_2_q1;
assign tmp_14_fu_1545_p8 = transition_3_q1;
assign tmp_150_fu_1855_p4 = {{bitcast_ln29_fu_1851_p1[62:52]}};
assign tmp_151_fu_1872_p4 = {{bitcast_ln29_1_fu_1869_p1[62:52]}};
assign tmp_154_fu_1945_p4 = {{bitcast_ln29_2_fu_1941_p1[62:52]}};
assign tmp_155_fu_1962_p4 = {{bitcast_ln29_3_fu_1959_p1[62:52]}};
assign tmp_158_fu_2035_p4 = {{bitcast_ln29_4_fu_2031_p1[62:52]}};
assign tmp_159_fu_2052_p4 = {{bitcast_ln29_5_fu_2049_p1[62:52]}};
assign tmp_15_fu_1616_p10 = transition_4_q0;
assign tmp_15_fu_1616_p12 = transition_5_q0;
assign tmp_15_fu_1616_p14 = transition_6_q0;
assign tmp_15_fu_1616_p16 = transition_7_q0;
assign tmp_15_fu_1616_p17 = 'bx;
assign tmp_15_fu_1616_p2 = transition_0_q0;
assign tmp_15_fu_1616_p4 = transition_1_q0;
assign tmp_15_fu_1616_p6 = transition_2_q0;
assign tmp_15_fu_1616_p8 = transition_3_q0;
assign tmp_161_fu_1011_p4 = {{add_ln27_fu_1005_p2[8:3]}};
assign tmp_162_fu_2155_p4 = {{bitcast_ln29_6_fu_2151_p1[62:52]}};
assign tmp_163_fu_2125_p4 = {{bitcast_ln29_7_fu_2121_p1[62:52]}};
assign tmp_165_fu_1202_p4 = {{add_ln27_1_fu_1197_p2[8:3]}};
assign tmp_166_fu_2214_p4 = {{bitcast_ln29_8_fu_2210_p1[62:52]}};
assign tmp_167_fu_2231_p4 = {{bitcast_ln29_9_fu_2228_p1[62:52]}};
assign tmp_169_fu_1236_p4 = {{add_ln27_3_fu_1231_p2[8:3]}};
assign tmp_16_fu_1727_p10 = transition_4_q1;
assign tmp_16_fu_1727_p12 = transition_5_q1;
assign tmp_16_fu_1727_p14 = transition_6_q1;
assign tmp_16_fu_1727_p16 = transition_7_q1;
assign tmp_16_fu_1727_p17 = 'bx;
assign tmp_16_fu_1727_p2 = transition_0_q1;
assign tmp_16_fu_1727_p4 = transition_1_q1;
assign tmp_16_fu_1727_p6 = transition_2_q1;
assign tmp_16_fu_1727_p8 = transition_3_q1;
assign tmp_170_fu_2304_p4 = {{bitcast_ln29_10_fu_2300_p1[62:52]}};
assign tmp_171_fu_2321_p4 = {{bitcast_ln29_11_fu_2318_p1[62:52]}};
assign tmp_173_fu_1435_p4 = {{add_ln27_5_fu_1430_p2[8:3]}};
assign tmp_174_fu_2394_p4 = {{bitcast_ln29_12_fu_2390_p1[62:52]}};
assign tmp_175_fu_2411_p4 = {{bitcast_ln29_13_fu_2408_p1[62:52]}};
assign tmp_177_fu_1469_p4 = {{add_ln27_7_fu_1464_p2[8:3]}};
assign tmp_178_fu_2484_p4 = {{bitcast_ln29_14_fu_2481_p1[62:52]}};
assign tmp_179_fu_2501_p4 = {{bitcast_ln29_15_fu_2498_p1[62:52]}};
assign tmp_19_fu_1798_p10 = transition_4_q0;
assign tmp_19_fu_1798_p12 = transition_5_q0;
assign tmp_19_fu_1798_p14 = transition_6_q0;
assign tmp_19_fu_1798_p16 = transition_7_q0;
assign tmp_19_fu_1798_p17 = 'bx;
assign tmp_19_fu_1798_p2 = transition_0_q0;
assign tmp_19_fu_1798_p4 = transition_1_q0;
assign tmp_19_fu_1798_p6 = transition_2_q0;
assign tmp_19_fu_1798_p8 = transition_3_q0;
assign tmp_s_fu_958_p3 = {{empty_9}, {lshr_ln7_1_fu_948_p4}};
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
assign trunc_ln27_fu_1673_p1 = add_ln25_reg_2748[5:0];
assign trunc_ln29_10_fu_2314_p1 = bitcast_ln29_10_fu_2300_p1[51:0];
assign trunc_ln29_11_fu_2331_p1 = bitcast_ln29_11_fu_2318_p1[51:0];
assign trunc_ln29_12_fu_2404_p1 = bitcast_ln29_12_fu_2390_p1[51:0];
assign trunc_ln29_13_fu_2421_p1 = bitcast_ln29_13_fu_2408_p1[51:0];
assign trunc_ln29_14_fu_2494_p1 = bitcast_ln29_14_fu_2481_p1[51:0];
assign trunc_ln29_15_fu_2511_p1 = bitcast_ln29_15_fu_2498_p1[51:0];
assign trunc_ln29_1_fu_1882_p1 = bitcast_ln29_1_fu_1869_p1[51:0];
assign trunc_ln29_2_fu_1955_p1 = bitcast_ln29_2_fu_1941_p1[51:0];
assign trunc_ln29_3_fu_1972_p1 = bitcast_ln29_3_fu_1959_p1[51:0];
assign trunc_ln29_4_fu_2045_p1 = bitcast_ln29_4_fu_2031_p1[51:0];
assign trunc_ln29_5_fu_2062_p1 = bitcast_ln29_5_fu_2049_p1[51:0];
assign trunc_ln29_6_fu_2165_p1 = bitcast_ln29_6_fu_2151_p1[51:0];
assign trunc_ln29_7_fu_2135_p1 = bitcast_ln29_7_fu_2121_p1[51:0];
assign trunc_ln29_8_fu_2224_p1 = bitcast_ln29_8_fu_2210_p1[51:0];
assign trunc_ln29_9_fu_2241_p1 = bitcast_ln29_9_fu_2228_p1[51:0];
assign trunc_ln29_fu_1865_p1 = bitcast_ln29_fu_1851_p1[51:0];
assign zext_ln16_fu_944_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1274_p1 = lshr_ln8_s_fu_1265_p4;
assign zext_ln26_2_fu_1283_p1 = add_ln26_fu_1278_p2;
assign zext_ln26_fu_966_p1 = tmp_s_fu_958_p3;
assign zext_ln27_1_fu_1029_p1 = add_ln27_2_fu_1021_p3;
assign zext_ln27_2_fu_1219_p1 = add_ln27_4_fu_1212_p3;
assign zext_ln27_3_fu_1253_p1 = add_ln27_6_fu_1246_p3;
assign zext_ln27_4_fu_1452_p1 = add_ln27_8_fu_1445_p3;
assign zext_ln27_5_fu_1486_p1 = add_ln27_s_fu_1479_p3;
assign zext_ln27_6_fu_1661_p1 = add_ln27_10_fu_1655_p3;
assign zext_ln27_7_fu_1683_p1 = add_ln27_11_fu_1676_p3;
assign zext_ln27_fu_993_p1 = add_ln_fu_985_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2659[2:0] <= 3'b000;
end
endmodule 