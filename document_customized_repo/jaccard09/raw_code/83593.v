module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_18_out,min_s_18_out_ap_vld,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce,grp_fu_2062_p_din0,grp_fu_2062_p_din1,grp_fu_2062_p_opcode,grp_fu_2062_p_dout0,grp_fu_2062_p_ce); 
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
input  [10:0] zext_ln52_3;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
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
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_30_reg_2766;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_889;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_894;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_899;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_904_p1;
reg   [8:0] zext_ln52_2_cast_reg_2652;
reg   [5:0] s_reg_2663;
wire   [5:0] add_ln53_fu_985_p2;
reg   [5:0] add_ln53_reg_2748;
wire   [5:0] add_ln53_1_fu_991_p2;
reg   [5:0] add_ln53_1_reg_2754;
reg   [5:0] add_ln53_1_reg_2754_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_997_p2;
reg   [6:0] add_ln53_6_reg_2760;
reg   [0:0] tmp_30_reg_2766_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2770;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1043_p19;
reg   [63:0] tmp_1_reg_2775;
reg   [63:0] llike_2_load_reg_2780;
reg   [63:0] llike_3_load_reg_2825;
wire   [5:0] add_ln53_2_fu_1130_p2;
reg   [5:0] add_ln53_2_reg_2870;
reg   [63:0] llike_4_load_reg_2876;
wire   [5:0] add_ln53_3_fu_1135_p2;
reg   [5:0] add_ln53_3_reg_2881;
reg   [5:0] add_ln53_3_reg_2881_pp0_iter1_reg;
reg   [63:0] llike_5_load_reg_2887;
reg   [63:0] llike_6_load_reg_2892;
reg   [63:0] llike_7_load_reg_2897;
wire   [63:0] tmp_5_fu_1195_p19;
reg   [63:0] tmp_5_reg_2907;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_1266_p19;
reg   [63:0] tmp_9_reg_2912;
wire   [5:0] add_ln53_4_fu_1353_p2;
reg   [5:0] add_ln53_4_reg_2997;
reg   [5:0] add_ln53_4_reg_2997_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_1358_p2;
reg   [5:0] add_ln53_5_reg_3003;
reg   [5:0] add_ln53_5_reg_3003_pp0_iter1_reg;
reg   [63:0] llike_load_reg_3009;
wire   [63:0] tmp_13_fu_1395_p19;
reg   [63:0] tmp_13_reg_3014;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_17_fu_1466_p19;
reg   [63:0] tmp_17_reg_3019;
wire   [63:0] tmp_21_fu_1585_p19;
reg   [63:0] tmp_21_reg_3104;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_23_fu_1656_p19;
reg   [63:0] tmp_23_reg_3109;
wire   [5:0] trunc_ln54_fu_1695_p1;
reg   [5:0] trunc_ln54_reg_3114;
reg   [5:0] trunc_ln54_reg_3114_pp0_iter1_reg;
wire   [63:0] tmp_24_fu_1755_p19;
reg   [63:0] tmp_24_reg_3159;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_3164;
wire   [0:0] and_ln55_1_fu_1875_p2;
reg   [0:0] and_ln55_1_reg_3171;
wire   [63:0] min_p_3_fu_1881_p3;
reg   [63:0] min_p_3_reg_3177;
wire   [0:0] and_ln55_3_fu_1965_p2;
reg   [0:0] and_ln55_3_reg_3184;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_3190;
wire   [63:0] min_p_5_fu_1984_p3;
reg   [63:0] min_p_5_reg_3197;
wire   [7:0] min_s_5_fu_1994_p3;
reg   [7:0] min_s_5_reg_3204;
wire   [0:0] and_ln55_5_fu_2078_p2;
reg   [0:0] and_ln55_5_reg_3209;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_3215;
wire   [63:0] min_p_7_fu_2084_p3;
reg   [63:0] min_p_7_reg_3222;
wire   [0:0] icmp_ln55_14_fu_2109_p2;
reg   [0:0] icmp_ln55_14_reg_3228;
wire   [0:0] icmp_ln55_15_fu_2115_p2;
reg   [0:0] icmp_ln55_15_reg_3233;
wire   [0:0] and_ln55_7_fu_2177_p2;
reg   [0:0] and_ln55_7_reg_3238;
wire   [63:0] min_p_9_fu_2192_p3;
reg   [63:0] min_p_9_reg_3244;
wire   [7:0] min_s_7_fu_2202_p3;
reg   [7:0] min_s_7_reg_3251;
wire   [0:0] and_ln55_9_fu_2285_p2;
reg   [0:0] and_ln55_9_reg_3256;
wire   [63:0] min_p_11_fu_2291_p3;
reg   [63:0] min_p_11_reg_3262;
wire   [0:0] and_ln55_11_fu_2374_p2;
reg   [0:0] and_ln55_11_reg_3269;
wire   [63:0] min_p_13_fu_2380_p3;
reg   [63:0] min_p_13_reg_3275;
wire   [0:0] and_ln55_13_fu_2463_p2;
reg   [0:0] and_ln55_13_reg_3282;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_10_fu_2491_p3;
reg   [7:0] min_s_10_reg_3288;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_15_fu_2499_p3;
reg   [63:0] min_p_15_reg_3293;
reg   [0:0] tmp_33_reg_3300;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_948_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_973_p1;
wire   [63:0] zext_ln54_1_fu_1094_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1118_p1;
wire   [63:0] zext_ln54_10_fu_1158_p1;
wire   [63:0] zext_ln54_3_fu_1317_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1341_p1;
wire   [63:0] zext_ln54_5_fu_1517_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1541_p1;
wire   [63:0] zext_ln54_7_fu_1711_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_144;
wire   [63:0] min_p_17_fu_2587_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_148;
wire   [7:0] min_s_11_fu_2597_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_152;
wire   [5:0] add_ln53_7_fu_2121_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_881_p0;
reg   [63:0] grp_fu_881_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_885_p0;
reg   [63:0] grp_fu_885_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [2:0] lshr_ln8_2_fu_930_p4;
wire   [10:0] tmp_s_fu_940_p3;
wire   [8:0] shl_ln2_fu_959_p3;
wire   [8:0] add_ln54_fu_967_p2;
wire   [6:0] zext_ln21_fu_926_p1;
wire   [63:0] tmp_1_fu_1043_p2;
wire   [63:0] tmp_1_fu_1043_p4;
wire   [63:0] tmp_1_fu_1043_p6;
wire   [63:0] tmp_1_fu_1043_p8;
wire   [63:0] tmp_1_fu_1043_p10;
wire   [63:0] tmp_1_fu_1043_p12;
wire   [63:0] tmp_1_fu_1043_p14;
wire   [63:0] tmp_1_fu_1043_p16;
wire   [63:0] tmp_1_fu_1043_p17;
wire   [8:0] shl_ln54_1_fu_1082_p3;
wire   [8:0] add_ln54_1_fu_1089_p2;
wire   [8:0] shl_ln54_2_fu_1106_p3;
wire   [8:0] add_ln54_2_fu_1113_p2;
wire   [3:0] lshr_ln9_2_fu_1140_p4;
wire   [10:0] zext_ln54_9_fu_1149_p1;
wire   [10:0] add_ln54_8_fu_1153_p2;
wire   [63:0] tmp_5_fu_1195_p2;
wire   [63:0] tmp_5_fu_1195_p4;
wire   [63:0] tmp_5_fu_1195_p6;
wire   [63:0] tmp_5_fu_1195_p8;
wire   [63:0] tmp_5_fu_1195_p10;
wire   [63:0] tmp_5_fu_1195_p12;
wire   [63:0] tmp_5_fu_1195_p14;
wire   [63:0] tmp_5_fu_1195_p16;
wire   [63:0] tmp_5_fu_1195_p17;
wire   [63:0] tmp_9_fu_1266_p2;
wire   [63:0] tmp_9_fu_1266_p4;
wire   [63:0] tmp_9_fu_1266_p6;
wire   [63:0] tmp_9_fu_1266_p8;
wire   [63:0] tmp_9_fu_1266_p10;
wire   [63:0] tmp_9_fu_1266_p12;
wire   [63:0] tmp_9_fu_1266_p14;
wire   [63:0] tmp_9_fu_1266_p16;
wire   [63:0] tmp_9_fu_1266_p17;
wire   [8:0] shl_ln54_3_fu_1305_p3;
wire   [8:0] add_ln54_3_fu_1312_p2;
wire   [8:0] shl_ln54_4_fu_1329_p3;
wire   [8:0] add_ln54_4_fu_1336_p2;
wire   [63:0] tmp_13_fu_1395_p2;
wire   [63:0] tmp_13_fu_1395_p4;
wire   [63:0] tmp_13_fu_1395_p6;
wire   [63:0] tmp_13_fu_1395_p8;
wire   [63:0] tmp_13_fu_1395_p10;
wire   [63:0] tmp_13_fu_1395_p12;
wire   [63:0] tmp_13_fu_1395_p14;
wire   [63:0] tmp_13_fu_1395_p16;
wire   [63:0] tmp_13_fu_1395_p17;
wire   [63:0] tmp_17_fu_1466_p2;
wire   [63:0] tmp_17_fu_1466_p4;
wire   [63:0] tmp_17_fu_1466_p6;
wire   [63:0] tmp_17_fu_1466_p8;
wire   [63:0] tmp_17_fu_1466_p10;
wire   [63:0] tmp_17_fu_1466_p12;
wire   [63:0] tmp_17_fu_1466_p14;
wire   [63:0] tmp_17_fu_1466_p16;
wire   [63:0] tmp_17_fu_1466_p17;
wire   [8:0] shl_ln54_5_fu_1505_p3;
wire   [8:0] add_ln54_5_fu_1512_p2;
wire   [8:0] shl_ln54_6_fu_1529_p3;
wire   [8:0] add_ln54_6_fu_1536_p2;
wire   [63:0] tmp_21_fu_1585_p2;
wire   [63:0] tmp_21_fu_1585_p4;
wire   [63:0] tmp_21_fu_1585_p6;
wire   [63:0] tmp_21_fu_1585_p8;
wire   [63:0] tmp_21_fu_1585_p10;
wire   [63:0] tmp_21_fu_1585_p12;
wire   [63:0] tmp_21_fu_1585_p14;
wire   [63:0] tmp_21_fu_1585_p16;
wire   [63:0] tmp_21_fu_1585_p17;
wire   [63:0] tmp_23_fu_1656_p2;
wire   [63:0] tmp_23_fu_1656_p4;
wire   [63:0] tmp_23_fu_1656_p6;
wire   [63:0] tmp_23_fu_1656_p8;
wire   [63:0] tmp_23_fu_1656_p10;
wire   [63:0] tmp_23_fu_1656_p12;
wire   [63:0] tmp_23_fu_1656_p14;
wire   [63:0] tmp_23_fu_1656_p16;
wire   [63:0] tmp_23_fu_1656_p17;
wire   [8:0] shl_ln54_7_fu_1698_p3;
wire   [8:0] add_ln54_7_fu_1706_p2;
wire   [63:0] tmp_24_fu_1755_p2;
wire   [63:0] tmp_24_fu_1755_p4;
wire   [63:0] tmp_24_fu_1755_p6;
wire   [63:0] tmp_24_fu_1755_p8;
wire   [63:0] tmp_24_fu_1755_p10;
wire   [63:0] tmp_24_fu_1755_p12;
wire   [63:0] tmp_24_fu_1755_p14;
wire   [63:0] tmp_24_fu_1755_p16;
wire   [63:0] tmp_24_fu_1755_p17;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1798_p1;
wire   [63:0] bitcast_ln55_1_fu_1816_p1;
wire   [10:0] tmp_2_fu_1802_p4;
wire   [51:0] trunc_ln55_fu_1812_p1;
wire   [0:0] icmp_ln55_1_fu_1839_p2;
wire   [0:0] icmp_ln55_fu_1833_p2;
wire   [10:0] tmp_3_fu_1819_p4;
wire   [51:0] trunc_ln55_1_fu_1829_p1;
wire   [0:0] icmp_ln55_3_fu_1857_p2;
wire   [0:0] icmp_ln55_2_fu_1851_p2;
wire   [0:0] or_ln55_fu_1845_p2;
wire   [0:0] and_ln55_fu_1869_p2;
wire   [0:0] or_ln55_1_fu_1863_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1888_p1;
wire   [63:0] bitcast_ln55_3_fu_1906_p1;
wire   [10:0] tmp_6_fu_1892_p4;
wire   [51:0] trunc_ln55_2_fu_1902_p1;
wire   [0:0] icmp_ln55_5_fu_1929_p2;
wire   [0:0] icmp_ln55_4_fu_1923_p2;
wire   [10:0] tmp_7_fu_1909_p4;
wire   [51:0] trunc_ln55_3_fu_1919_p1;
wire   [0:0] icmp_ln55_7_fu_1947_p2;
wire   [0:0] icmp_ln55_6_fu_1941_p2;
wire   [0:0] or_ln55_3_fu_1953_p2;
wire   [0:0] or_ln55_2_fu_1935_p2;
wire   [0:0] and_ln55_2_fu_1959_p2;
wire   [7:0] zext_ln55_fu_1974_p1;
wire   [7:0] zext_ln55_1_fu_1991_p1;
wire   [7:0] min_s_4_fu_1977_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_2001_p1;
wire   [63:0] bitcast_ln55_5_fu_2019_p1;
wire   [10:0] tmp_10_fu_2005_p4;
wire   [51:0] trunc_ln55_4_fu_2015_p1;
wire   [0:0] icmp_ln55_9_fu_2042_p2;
wire   [0:0] icmp_ln55_8_fu_2036_p2;
wire   [10:0] tmp_11_fu_2022_p4;
wire   [51:0] trunc_ln55_5_fu_2032_p1;
wire   [0:0] icmp_ln55_11_fu_2060_p2;
wire   [0:0] icmp_ln55_10_fu_2054_p2;
wire   [0:0] or_ln55_5_fu_2066_p2;
wire   [0:0] or_ln55_4_fu_2048_p2;
wire   [0:0] and_ln55_4_fu_2072_p2;
wire   [63:0] bitcast_ln55_7_fu_2091_p1;
wire   [10:0] tmp_15_fu_2095_p4;
wire   [51:0] trunc_ln55_7_fu_2105_p1;
wire   [63:0] bitcast_ln55_6_fu_2131_p1;
wire   [10:0] tmp_14_fu_2135_p4;
wire   [51:0] trunc_ln55_6_fu_2145_p1;
wire   [0:0] icmp_ln55_13_fu_2155_p2;
wire   [0:0] icmp_ln55_12_fu_2149_p2;
wire   [0:0] or_ln55_7_fu_2167_p2;
wire   [0:0] or_ln55_6_fu_2161_p2;
wire   [0:0] and_ln55_6_fu_2171_p2;
wire   [7:0] zext_ln55_2_fu_2183_p1;
wire   [7:0] zext_ln55_3_fu_2199_p1;
wire   [7:0] min_s_6_fu_2186_p3;
wire   [63:0] bitcast_ln55_8_fu_2209_p1;
wire   [63:0] bitcast_ln55_9_fu_2226_p1;
wire   [10:0] tmp_18_fu_2212_p4;
wire   [51:0] trunc_ln55_8_fu_2222_p1;
wire   [0:0] icmp_ln55_17_fu_2249_p2;
wire   [0:0] icmp_ln55_16_fu_2243_p2;
wire   [10:0] tmp_19_fu_2229_p4;
wire   [51:0] trunc_ln55_9_fu_2239_p1;
wire   [0:0] icmp_ln55_19_fu_2267_p2;
wire   [0:0] icmp_ln55_18_fu_2261_p2;
wire   [0:0] or_ln55_9_fu_2273_p2;
wire   [0:0] or_ln55_8_fu_2255_p2;
wire   [0:0] and_ln55_8_fu_2279_p2;
wire   [63:0] bitcast_ln55_10_fu_2297_p1;
wire   [63:0] bitcast_ln55_11_fu_2315_p1;
wire   [10:0] tmp_22_fu_2301_p4;
wire   [51:0] trunc_ln55_10_fu_2311_p1;
wire   [0:0] icmp_ln55_21_fu_2338_p2;
wire   [0:0] icmp_ln55_20_fu_2332_p2;
wire   [10:0] tmp_25_fu_2318_p4;
wire   [51:0] trunc_ln55_11_fu_2328_p1;
wire   [0:0] icmp_ln55_23_fu_2356_p2;
wire   [0:0] icmp_ln55_22_fu_2350_p2;
wire   [0:0] or_ln55_11_fu_2362_p2;
wire   [0:0] or_ln55_10_fu_2344_p2;
wire   [0:0] and_ln55_10_fu_2368_p2;
wire   [63:0] bitcast_ln55_12_fu_2387_p1;
wire   [63:0] bitcast_ln55_13_fu_2404_p1;
wire   [10:0] tmp_27_fu_2390_p4;
wire   [51:0] trunc_ln55_12_fu_2400_p1;
wire   [0:0] icmp_ln55_25_fu_2427_p2;
wire   [0:0] icmp_ln55_24_fu_2421_p2;
wire   [10:0] tmp_28_fu_2407_p4;
wire   [51:0] trunc_ln55_13_fu_2417_p1;
wire   [0:0] icmp_ln55_27_fu_2445_p2;
wire   [0:0] icmp_ln55_26_fu_2439_p2;
wire   [0:0] or_ln55_13_fu_2451_p2;
wire   [0:0] or_ln55_12_fu_2433_p2;
wire   [0:0] and_ln55_12_fu_2457_p2;
wire   [7:0] zext_ln55_4_fu_2469_p1;
wire   [7:0] zext_ln55_5_fu_2478_p1;
wire   [7:0] min_s_8_fu_2472_p3;
wire   [7:0] zext_ln55_6_fu_2488_p1;
wire   [7:0] min_s_9_fu_2481_p3;
wire   [63:0] bitcast_ln55_14_fu_2505_p1;
wire   [63:0] bitcast_ln55_15_fu_2523_p1;
wire   [10:0] tmp_31_fu_2509_p4;
wire   [51:0] trunc_ln55_14_fu_2519_p1;
wire   [0:0] icmp_ln55_29_fu_2546_p2;
wire   [0:0] icmp_ln55_28_fu_2540_p2;
wire   [10:0] tmp_32_fu_2526_p4;
wire   [51:0] trunc_ln55_15_fu_2536_p1;
wire   [0:0] icmp_ln55_31_fu_2564_p2;
wire   [0:0] icmp_ln55_30_fu_2558_p2;
wire   [0:0] or_ln55_15_fu_2570_p2;
wire   [0:0] or_ln55_14_fu_2552_p2;
wire   [0:0] and_ln55_14_fu_2576_p2;
wire   [0:0] and_ln55_15_fu_2582_p2;
wire   [7:0] zext_ln55_7_fu_2594_p1;
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
wire   [2:0] tmp_1_fu_1043_p1;
wire   [2:0] tmp_1_fu_1043_p3;
wire   [2:0] tmp_1_fu_1043_p5;
wire   [2:0] tmp_1_fu_1043_p7;
wire  signed [2:0] tmp_1_fu_1043_p9;
wire  signed [2:0] tmp_1_fu_1043_p11;
wire  signed [2:0] tmp_1_fu_1043_p13;
wire  signed [2:0] tmp_1_fu_1043_p15;
wire   [2:0] tmp_5_fu_1195_p1;
wire   [2:0] tmp_5_fu_1195_p3;
wire   [2:0] tmp_5_fu_1195_p5;
wire   [2:0] tmp_5_fu_1195_p7;
wire  signed [2:0] tmp_5_fu_1195_p9;
wire  signed [2:0] tmp_5_fu_1195_p11;
wire  signed [2:0] tmp_5_fu_1195_p13;
wire  signed [2:0] tmp_5_fu_1195_p15;
wire   [2:0] tmp_9_fu_1266_p1;
wire   [2:0] tmp_9_fu_1266_p3;
wire   [2:0] tmp_9_fu_1266_p5;
wire   [2:0] tmp_9_fu_1266_p7;
wire  signed [2:0] tmp_9_fu_1266_p9;
wire  signed [2:0] tmp_9_fu_1266_p11;
wire  signed [2:0] tmp_9_fu_1266_p13;
wire  signed [2:0] tmp_9_fu_1266_p15;
wire   [2:0] tmp_13_fu_1395_p1;
wire   [2:0] tmp_13_fu_1395_p3;
wire   [2:0] tmp_13_fu_1395_p5;
wire   [2:0] tmp_13_fu_1395_p7;
wire  signed [2:0] tmp_13_fu_1395_p9;
wire  signed [2:0] tmp_13_fu_1395_p11;
wire  signed [2:0] tmp_13_fu_1395_p13;
wire  signed [2:0] tmp_13_fu_1395_p15;
wire   [2:0] tmp_17_fu_1466_p1;
wire   [2:0] tmp_17_fu_1466_p3;
wire   [2:0] tmp_17_fu_1466_p5;
wire   [2:0] tmp_17_fu_1466_p7;
wire  signed [2:0] tmp_17_fu_1466_p9;
wire  signed [2:0] tmp_17_fu_1466_p11;
wire  signed [2:0] tmp_17_fu_1466_p13;
wire  signed [2:0] tmp_17_fu_1466_p15;
wire   [2:0] tmp_21_fu_1585_p1;
wire   [2:0] tmp_21_fu_1585_p3;
wire   [2:0] tmp_21_fu_1585_p5;
wire   [2:0] tmp_21_fu_1585_p7;
wire  signed [2:0] tmp_21_fu_1585_p9;
wire  signed [2:0] tmp_21_fu_1585_p11;
wire  signed [2:0] tmp_21_fu_1585_p13;
wire  signed [2:0] tmp_21_fu_1585_p15;
wire   [2:0] tmp_23_fu_1656_p1;
wire   [2:0] tmp_23_fu_1656_p3;
wire   [2:0] tmp_23_fu_1656_p5;
wire   [2:0] tmp_23_fu_1656_p7;
wire  signed [2:0] tmp_23_fu_1656_p9;
wire  signed [2:0] tmp_23_fu_1656_p11;
wire  signed [2:0] tmp_23_fu_1656_p13;
wire  signed [2:0] tmp_23_fu_1656_p15;
wire   [2:0] tmp_24_fu_1755_p1;
wire   [2:0] tmp_24_fu_1755_p3;
wire   [2:0] tmp_24_fu_1755_p5;
wire   [2:0] tmp_24_fu_1755_p7;
wire  signed [2:0] tmp_24_fu_1755_p9;
wire  signed [2:0] tmp_24_fu_1755_p11;
wire  signed [2:0] tmp_24_fu_1755_p13;
wire  signed [2:0] tmp_24_fu_1755_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_144 = 64'd0;
#0 min_s_fu_148 = 8'd0;
#0 min_s_1_fu_152 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U85(.din0(tmp_1_fu_1043_p2),.din1(tmp_1_fu_1043_p4),.din2(tmp_1_fu_1043_p6),.din3(tmp_1_fu_1043_p8),.din4(tmp_1_fu_1043_p10),.din5(tmp_1_fu_1043_p12),.din6(tmp_1_fu_1043_p14),.din7(tmp_1_fu_1043_p16),.def(tmp_1_fu_1043_p17),.sel(empty),.dout(tmp_1_fu_1043_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U86(.din0(tmp_5_fu_1195_p2),.din1(tmp_5_fu_1195_p4),.din2(tmp_5_fu_1195_p6),.din3(tmp_5_fu_1195_p8),.din4(tmp_5_fu_1195_p10),.din5(tmp_5_fu_1195_p12),.din6(tmp_5_fu_1195_p14),.din7(tmp_5_fu_1195_p16),.def(tmp_5_fu_1195_p17),.sel(empty),.dout(tmp_5_fu_1195_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U87(.din0(tmp_9_fu_1266_p2),.din1(tmp_9_fu_1266_p4),.din2(tmp_9_fu_1266_p6),.din3(tmp_9_fu_1266_p8),.din4(tmp_9_fu_1266_p10),.din5(tmp_9_fu_1266_p12),.din6(tmp_9_fu_1266_p14),.din7(tmp_9_fu_1266_p16),.def(tmp_9_fu_1266_p17),.sel(empty),.dout(tmp_9_fu_1266_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U88(.din0(tmp_13_fu_1395_p2),.din1(tmp_13_fu_1395_p4),.din2(tmp_13_fu_1395_p6),.din3(tmp_13_fu_1395_p8),.din4(tmp_13_fu_1395_p10),.din5(tmp_13_fu_1395_p12),.din6(tmp_13_fu_1395_p14),.din7(tmp_13_fu_1395_p16),.def(tmp_13_fu_1395_p17),.sel(empty),.dout(tmp_13_fu_1395_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U89(.din0(tmp_17_fu_1466_p2),.din1(tmp_17_fu_1466_p4),.din2(tmp_17_fu_1466_p6),.din3(tmp_17_fu_1466_p8),.din4(tmp_17_fu_1466_p10),.din5(tmp_17_fu_1466_p12),.din6(tmp_17_fu_1466_p14),.din7(tmp_17_fu_1466_p16),.def(tmp_17_fu_1466_p17),.sel(empty),.dout(tmp_17_fu_1466_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U90(.din0(tmp_21_fu_1585_p2),.din1(tmp_21_fu_1585_p4),.din2(tmp_21_fu_1585_p6),.din3(tmp_21_fu_1585_p8),.din4(tmp_21_fu_1585_p10),.din5(tmp_21_fu_1585_p12),.din6(tmp_21_fu_1585_p14),.din7(tmp_21_fu_1585_p16),.def(tmp_21_fu_1585_p17),.sel(empty),.dout(tmp_21_fu_1585_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U91(.din0(tmp_23_fu_1656_p2),.din1(tmp_23_fu_1656_p4),.din2(tmp_23_fu_1656_p6),.din3(tmp_23_fu_1656_p8),.din4(tmp_23_fu_1656_p10),.din5(tmp_23_fu_1656_p12),.din6(tmp_23_fu_1656_p14),.din7(tmp_23_fu_1656_p16),.def(tmp_23_fu_1656_p17),.sel(empty),.dout(tmp_23_fu_1656_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U92(.din0(tmp_24_fu_1755_p2),.din1(tmp_24_fu_1755_p4),.din2(tmp_24_fu_1755_p6),.din3(tmp_24_fu_1755_p8),.din4(tmp_24_fu_1755_p10),.din5(tmp_24_fu_1755_p12),.din6(tmp_24_fu_1755_p14),.din7(tmp_24_fu_1755_p16),.def(tmp_24_fu_1755_p17),.sel(empty),.dout(tmp_24_fu_1755_p19));
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
        min_p_fu_144 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2766_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_144 <= min_p_17_fu_2587_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_152 <= 6'd1;
    end else if (((tmp_30_reg_2766 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_152 <= add_ln53_7_fu_2121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_148 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2766_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_148 <= min_s_11_fu_2597_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2754 <= add_ln53_1_fu_991_p2;
        add_ln53_1_reg_2754_pp0_iter1_reg <= add_ln53_1_reg_2754;
        add_ln53_6_reg_2760 <= add_ln53_6_fu_997_p2;
        add_ln53_reg_2748 <= add_ln53_fu_985_p2;
        and_ln55_7_reg_3238 <= and_ln55_7_fu_2177_p2;
        s_reg_2663 <= ap_sig_allocacmp_s;
        tmp_30_reg_2766 <= add_ln53_6_fu_997_p2[32'd6];
        tmp_30_reg_2766_pp0_iter1_reg <= tmp_30_reg_2766;
        zext_ln52_2_cast_reg_2652[4 : 0] <= zext_ln52_2_cast_fu_904_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_2870 <= add_ln53_2_fu_1130_p2;
        add_ln53_3_reg_2881 <= add_ln53_3_fu_1135_p2;
        add_ln53_3_reg_2881_pp0_iter1_reg <= add_ln53_3_reg_2881;
        llike_1_load_reg_2770 <= llike_1_q0;
        llike_2_load_reg_2780 <= llike_2_q0;
        llike_3_load_reg_2825 <= llike_3_q0;
        llike_4_load_reg_2876 <= llike_4_q0;
        llike_5_load_reg_2887 <= llike_5_q0;
        llike_6_load_reg_2892 <= llike_6_q0;
        llike_7_load_reg_2897 <= llike_7_q0;
        min_p_9_reg_3244 <= min_p_9_fu_2192_p3;
        min_s_7_reg_3251 <= min_s_7_fu_2202_p3;
        tmp_1_reg_2775 <= tmp_1_fu_1043_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_2997 <= add_ln53_4_fu_1353_p2;
        add_ln53_4_reg_2997_pp0_iter1_reg <= add_ln53_4_reg_2997;
        add_ln53_5_reg_3003 <= add_ln53_5_fu_1358_p2;
        add_ln53_5_reg_3003_pp0_iter1_reg <= add_ln53_5_reg_3003;
        and_ln55_9_reg_3256 <= and_ln55_9_fu_2285_p2;
        llike_load_reg_3009 <= llike_q0;
        tmp_5_reg_2907 <= tmp_5_fu_1195_p19;
        tmp_9_reg_2912 <= tmp_9_fu_1266_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_3269 <= and_ln55_11_fu_2374_p2;
        tmp_21_reg_3104 <= tmp_21_fu_1585_p19;
        tmp_23_reg_3109 <= tmp_23_fu_1656_p19;
        trunc_ln54_reg_3114 <= trunc_ln54_fu_1695_p1;
        trunc_ln54_reg_3114_pp0_iter1_reg <= trunc_ln54_reg_3114;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_3282 <= and_ln55_13_fu_2463_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_3171 <= and_ln55_1_fu_1875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_3184 <= and_ln55_3_fu_1965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_3209 <= and_ln55_5_fu_2078_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_3228 <= icmp_ln55_14_fu_2109_p2;
        icmp_ln55_15_reg_3233 <= icmp_ln55_15_fu_2115_p2;
        min_p_7_reg_3222 <= min_p_7_fu_2084_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_3262 <= min_p_11_fu_2291_p3;
        tmp_13_reg_3014 <= tmp_13_fu_1395_p19;
        tmp_17_reg_3019 <= tmp_17_fu_1466_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_3275 <= min_p_13_fu_2380_p3;
        tmp_24_reg_3159 <= tmp_24_fu_1755_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_3293 <= min_p_15_fu_2499_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_3164 <= min_p_fu_144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_3177 <= min_p_3_fu_1881_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_3197 <= min_p_5_fu_1984_p3;
        min_s_5_reg_3204 <= min_s_5_fu_1994_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_3288 <= min_s_10_fu_2491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_3190 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_3215 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_889 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_894 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_899 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_33_reg_3300 <= grp_fu_2062_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_30_reg_2766 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2766_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_152;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_881_p0 = llike_load_reg_3009;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_881_p0 = llike_7_load_reg_2897;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_881_p0 = llike_6_load_reg_2892;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_881_p0 = llike_5_load_reg_2887;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_881_p0 = llike_4_load_reg_2876;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_881_p0 = llike_3_load_reg_2825;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_881_p0 = llike_2_load_reg_2780;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_881_p0 = llike_1_load_reg_2770;
        end else begin
            grp_fu_881_p0 = 'bx;
        end
    end else begin
        grp_fu_881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_881_p1 = tmp_24_reg_3159;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_881_p1 = tmp_23_reg_3109;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_881_p1 = tmp_21_reg_3104;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_881_p1 = tmp_17_reg_3019;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_881_p1 = tmp_13_reg_3014;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_881_p1 = tmp_9_reg_2912;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_881_p1 = tmp_5_reg_2907;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_881_p1 = tmp_1_reg_2775;
        end else begin
            grp_fu_881_p1 = 'bx;
        end
    end else begin
        grp_fu_881_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_885_p0 = p_6_reg_3215;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_885_p0 = p_4_reg_3190;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_885_p0 = reg_899;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_885_p0 = reg_894;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_885_p0 = reg_889;
    end else begin
        grp_fu_885_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_885_p1 = min_p_15_fu_2499_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_885_p1 = min_p_13_fu_2380_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_885_p1 = min_p_11_fu_2291_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_885_p1 = min_p_9_fu_2192_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_885_p1 = min_p_7_fu_2084_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_885_p1 = min_p_5_fu_1984_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_885_p1 = min_p_3_fu_1881_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_885_p1 = min_p_fu_144;
    end else begin
        grp_fu_885_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_30_reg_2766_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_973_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_973_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_2_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_973_p1;
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
            transition_2_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_2_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_3_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_973_p1;
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
            transition_3_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_3_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_4_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_973_p1;
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
            transition_4_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_4_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_5_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_973_p1;
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
            transition_5_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_5_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_6_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_973_p1;
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
            transition_6_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_6_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_1094_p1;
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
            transition_7_address0_local = zext_ln54_5_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address0_local = zext_ln54_3_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_1118_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_973_p1;
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
            transition_7_address1_local = zext_ln54_7_fu_1711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_7_address1_local = zext_ln54_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_4_fu_1341_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_1094_p1;
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
assign add_ln53_1_fu_991_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1130_p2 = (s_reg_2663 + 6'd3);
assign add_ln53_3_fu_1135_p2 = (s_reg_2663 + 6'd4);
assign add_ln53_4_fu_1353_p2 = (s_reg_2663 + 6'd5);
assign add_ln53_5_fu_1358_p2 = (s_reg_2663 + 6'd6);
assign add_ln53_6_fu_997_p2 = (zext_ln21_fu_926_p1 + 7'd7);
assign add_ln53_7_fu_2121_p2 = (s_reg_2663 + 6'd8);
assign add_ln53_fu_985_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1089_p2 = (shl_ln54_1_fu_1082_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_2_fu_1113_p2 = (shl_ln54_2_fu_1106_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_3_fu_1312_p2 = (shl_ln54_3_fu_1305_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_4_fu_1336_p2 = (shl_ln54_4_fu_1329_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_5_fu_1512_p2 = (shl_ln54_5_fu_1505_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_6_fu_1536_p2 = (shl_ln54_6_fu_1529_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_7_fu_1706_p2 = (shl_ln54_7_fu_1698_p3 + zext_ln52_2_cast_reg_2652);
assign add_ln54_8_fu_1153_p2 = (zext_ln52_3 + zext_ln54_9_fu_1149_p1);
assign add_ln54_fu_967_p2 = (shl_ln2_fu_959_p3 + zext_ln52_2_cast_fu_904_p1);
assign and_ln55_10_fu_2368_p2 = (or_ln55_11_fu_2362_p2 & or_ln55_10_fu_2344_p2);
assign and_ln55_11_fu_2374_p2 = (grp_fu_2062_p_dout0 & and_ln55_10_fu_2368_p2);
assign and_ln55_12_fu_2457_p2 = (or_ln55_13_fu_2451_p2 & or_ln55_12_fu_2433_p2);
assign and_ln55_13_fu_2463_p2 = (grp_fu_2062_p_dout0 & and_ln55_12_fu_2457_p2);
assign and_ln55_14_fu_2576_p2 = (or_ln55_15_fu_2570_p2 & or_ln55_14_fu_2552_p2);
assign and_ln55_15_fu_2582_p2 = (tmp_33_reg_3300 & and_ln55_14_fu_2576_p2);
assign and_ln55_1_fu_1875_p2 = (or_ln55_1_fu_1863_p2 & and_ln55_fu_1869_p2);
assign and_ln55_2_fu_1959_p2 = (or_ln55_3_fu_1953_p2 & or_ln55_2_fu_1935_p2);
assign and_ln55_3_fu_1965_p2 = (grp_fu_2062_p_dout0 & and_ln55_2_fu_1959_p2);
assign and_ln55_4_fu_2072_p2 = (or_ln55_5_fu_2066_p2 & or_ln55_4_fu_2048_p2);
assign and_ln55_5_fu_2078_p2 = (grp_fu_2062_p_dout0 & and_ln55_4_fu_2072_p2);
assign and_ln55_6_fu_2171_p2 = (or_ln55_7_fu_2167_p2 & or_ln55_6_fu_2161_p2);
assign and_ln55_7_fu_2177_p2 = (grp_fu_2062_p_dout0 & and_ln55_6_fu_2171_p2);
assign and_ln55_8_fu_2279_p2 = (or_ln55_9_fu_2273_p2 & or_ln55_8_fu_2255_p2);
assign and_ln55_9_fu_2285_p2 = (grp_fu_2062_p_dout0 & and_ln55_8_fu_2279_p2);
assign and_ln55_fu_1869_p2 = (or_ln55_fu_1845_p2 & grp_fu_2062_p_dout0);
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
assign bitcast_ln55_10_fu_2297_p1 = reg_894;
assign bitcast_ln55_11_fu_2315_p1 = min_p_11_reg_3262;
assign bitcast_ln55_12_fu_2387_p1 = p_6_reg_3215;
assign bitcast_ln55_13_fu_2404_p1 = min_p_13_reg_3275;
assign bitcast_ln55_14_fu_2505_p1 = reg_899;
assign bitcast_ln55_15_fu_2523_p1 = min_p_15_reg_3293;
assign bitcast_ln55_1_fu_1816_p1 = min_p_1_reg_3164;
assign bitcast_ln55_2_fu_1888_p1 = reg_894;
assign bitcast_ln55_3_fu_1906_p1 = min_p_3_reg_3177;
assign bitcast_ln55_4_fu_2001_p1 = reg_899;
assign bitcast_ln55_5_fu_2019_p1 = min_p_5_reg_3197;
assign bitcast_ln55_6_fu_2131_p1 = reg_889;
assign bitcast_ln55_7_fu_2091_p1 = min_p_7_fu_2084_p3;
assign bitcast_ln55_8_fu_2209_p1 = p_4_reg_3190;
assign bitcast_ln55_9_fu_2226_p1 = min_p_9_reg_3244;
assign bitcast_ln55_fu_1798_p1 = reg_889;
assign grp_fu_1059_p_ce = 1'b1;
assign grp_fu_1059_p_din0 = grp_fu_881_p0;
assign grp_fu_1059_p_din1 = grp_fu_881_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign grp_fu_2062_p_ce = 1'b1;
assign grp_fu_2062_p_din0 = grp_fu_885_p0;
assign grp_fu_2062_p_din1 = grp_fu_885_p1;
assign grp_fu_2062_p_opcode = 5'd4;
assign icmp_ln55_10_fu_2054_p2 = ((tmp_11_fu_2022_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_2060_p2 = ((trunc_ln55_5_fu_2032_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2149_p2 = ((tmp_14_fu_2135_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2155_p2 = ((trunc_ln55_6_fu_2145_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2109_p2 = ((tmp_15_fu_2095_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2115_p2 = ((trunc_ln55_7_fu_2105_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2243_p2 = ((tmp_18_fu_2212_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2249_p2 = ((trunc_ln55_8_fu_2222_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2261_p2 = ((tmp_19_fu_2229_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2267_p2 = ((trunc_ln55_9_fu_2239_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1839_p2 = ((trunc_ln55_fu_1812_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2332_p2 = ((tmp_22_fu_2301_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2338_p2 = ((trunc_ln55_10_fu_2311_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2350_p2 = ((tmp_25_fu_2318_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2356_p2 = ((trunc_ln55_11_fu_2328_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2421_p2 = ((tmp_27_fu_2390_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2427_p2 = ((trunc_ln55_12_fu_2400_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2439_p2 = ((tmp_28_fu_2407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2445_p2 = ((trunc_ln55_13_fu_2417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2540_p2 = ((tmp_31_fu_2509_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2546_p2 = ((trunc_ln55_14_fu_2519_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1851_p2 = ((tmp_3_fu_1819_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2558_p2 = ((tmp_32_fu_2526_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2564_p2 = ((trunc_ln55_15_fu_2536_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1857_p2 = ((trunc_ln55_1_fu_1829_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1923_p2 = ((tmp_6_fu_1892_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1929_p2 = ((trunc_ln55_2_fu_1902_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1941_p2 = ((tmp_7_fu_1909_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1947_p2 = ((trunc_ln55_3_fu_1919_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_2036_p2 = ((tmp_10_fu_2005_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_2042_p2 = ((trunc_ln55_4_fu_2015_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1833_p2 = ((tmp_2_fu_1802_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_8_fu_948_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_8_fu_948_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_8_fu_948_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_8_fu_948_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_8_fu_948_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_8_fu_948_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_8_fu_948_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln54_10_fu_1158_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_930_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_2_fu_1140_p4 = {{add_ln53_6_reg_2760[6:3]}};
assign min_p_11_fu_2291_p3 = ((and_ln55_9_reg_3256[0:0] == 1'b1) ? p_4_reg_3190 : min_p_9_reg_3244);
assign min_p_13_fu_2380_p3 = ((and_ln55_11_reg_3269[0:0] == 1'b1) ? reg_894 : min_p_11_reg_3262);
assign min_p_15_fu_2499_p3 = ((and_ln55_13_reg_3282[0:0] == 1'b1) ? p_6_reg_3215 : min_p_13_reg_3275);
assign min_p_17_fu_2587_p3 = ((and_ln55_15_fu_2582_p2[0:0] == 1'b1) ? reg_899 : min_p_15_reg_3293);
assign min_p_3_fu_1881_p3 = ((and_ln55_1_reg_3171[0:0] == 1'b1) ? reg_889 : min_p_1_reg_3164);
assign min_p_5_fu_1984_p3 = ((and_ln55_3_reg_3184[0:0] == 1'b1) ? reg_894 : min_p_3_reg_3177);
assign min_p_7_fu_2084_p3 = ((and_ln55_5_reg_3209[0:0] == 1'b1) ? reg_899 : min_p_5_reg_3197);
assign min_p_9_fu_2192_p3 = ((and_ln55_7_reg_3238[0:0] == 1'b1) ? reg_889 : min_p_7_reg_3222);
assign min_s_10_fu_2491_p3 = ((and_ln55_13_reg_3282[0:0] == 1'b1) ? zext_ln55_6_fu_2488_p1 : min_s_9_fu_2481_p3);
assign min_s_11_fu_2597_p3 = ((and_ln55_15_fu_2582_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2594_p1 : min_s_10_reg_3288);
assign min_s_18_out = ((and_ln55_13_reg_3282[0:0] == 1'b1) ? zext_ln55_6_fu_2488_p1 : min_s_9_fu_2481_p3);
assign min_s_4_fu_1977_p3 = ((and_ln55_1_reg_3171[0:0] == 1'b1) ? zext_ln55_fu_1974_p1 : min_s_fu_148);
assign min_s_5_fu_1994_p3 = ((and_ln55_3_reg_3184[0:0] == 1'b1) ? zext_ln55_1_fu_1991_p1 : min_s_4_fu_1977_p3);
assign min_s_6_fu_2186_p3 = ((and_ln55_5_reg_3209[0:0] == 1'b1) ? zext_ln55_2_fu_2183_p1 : min_s_5_reg_3204);
assign min_s_7_fu_2202_p3 = ((and_ln55_7_reg_3238[0:0] == 1'b1) ? zext_ln55_3_fu_2199_p1 : min_s_6_fu_2186_p3);
assign min_s_8_fu_2472_p3 = ((and_ln55_9_reg_3256[0:0] == 1'b1) ? zext_ln55_4_fu_2469_p1 : min_s_7_reg_3251);
assign min_s_9_fu_2481_p3 = ((and_ln55_11_reg_3269[0:0] == 1'b1) ? zext_ln55_5_fu_2478_p1 : min_s_8_fu_2472_p3);
assign or_ln55_10_fu_2344_p2 = (icmp_ln55_21_fu_2338_p2 | icmp_ln55_20_fu_2332_p2);
assign or_ln55_11_fu_2362_p2 = (icmp_ln55_23_fu_2356_p2 | icmp_ln55_22_fu_2350_p2);
assign or_ln55_12_fu_2433_p2 = (icmp_ln55_25_fu_2427_p2 | icmp_ln55_24_fu_2421_p2);
assign or_ln55_13_fu_2451_p2 = (icmp_ln55_27_fu_2445_p2 | icmp_ln55_26_fu_2439_p2);
assign or_ln55_14_fu_2552_p2 = (icmp_ln55_29_fu_2546_p2 | icmp_ln55_28_fu_2540_p2);
assign or_ln55_15_fu_2570_p2 = (icmp_ln55_31_fu_2564_p2 | icmp_ln55_30_fu_2558_p2);
assign or_ln55_1_fu_1863_p2 = (icmp_ln55_3_fu_1857_p2 | icmp_ln55_2_fu_1851_p2);
assign or_ln55_2_fu_1935_p2 = (icmp_ln55_5_fu_1929_p2 | icmp_ln55_4_fu_1923_p2);
assign or_ln55_3_fu_1953_p2 = (icmp_ln55_7_fu_1947_p2 | icmp_ln55_6_fu_1941_p2);
assign or_ln55_4_fu_2048_p2 = (icmp_ln55_9_fu_2042_p2 | icmp_ln55_8_fu_2036_p2);
assign or_ln55_5_fu_2066_p2 = (icmp_ln55_11_fu_2060_p2 | icmp_ln55_10_fu_2054_p2);
assign or_ln55_6_fu_2161_p2 = (icmp_ln55_13_fu_2155_p2 | icmp_ln55_12_fu_2149_p2);
assign or_ln55_7_fu_2167_p2 = (icmp_ln55_15_reg_3233 | icmp_ln55_14_reg_3228);
assign or_ln55_8_fu_2255_p2 = (icmp_ln55_17_fu_2249_p2 | icmp_ln55_16_fu_2243_p2);
assign or_ln55_9_fu_2273_p2 = (icmp_ln55_19_fu_2267_p2 | icmp_ln55_18_fu_2261_p2);
assign or_ln55_fu_1845_p2 = (icmp_ln55_fu_1833_p2 | icmp_ln55_1_fu_1839_p2);
assign shl_ln2_fu_959_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_1082_p3 = {{add_ln53_reg_2748}, {3'd0}};
assign shl_ln54_2_fu_1106_p3 = {{add_ln53_1_reg_2754}, {3'd0}};
assign shl_ln54_3_fu_1305_p3 = {{add_ln53_2_reg_2870}, {3'd0}};
assign shl_ln54_4_fu_1329_p3 = {{add_ln53_3_reg_2881}, {3'd0}};
assign shl_ln54_5_fu_1505_p3 = {{add_ln53_4_reg_2997}, {3'd0}};
assign shl_ln54_6_fu_1529_p3 = {{add_ln53_5_reg_3003}, {3'd0}};
assign shl_ln54_7_fu_1698_p3 = {{trunc_ln54_fu_1695_p1}, {3'd0}};
assign tmp_10_fu_2005_p4 = {{bitcast_ln55_4_fu_2001_p1[62:52]}};
assign tmp_11_fu_2022_p4 = {{bitcast_ln55_5_fu_2019_p1[62:52]}};
assign tmp_13_fu_1395_p10 = transition_4_q0;
assign tmp_13_fu_1395_p12 = transition_5_q0;
assign tmp_13_fu_1395_p14 = transition_6_q0;
assign tmp_13_fu_1395_p16 = transition_7_q0;
assign tmp_13_fu_1395_p17 = 'bx;
assign tmp_13_fu_1395_p2 = transition_0_q0;
assign tmp_13_fu_1395_p4 = transition_1_q0;
assign tmp_13_fu_1395_p6 = transition_2_q0;
assign tmp_13_fu_1395_p8 = transition_3_q0;
assign tmp_14_fu_2135_p4 = {{bitcast_ln55_6_fu_2131_p1[62:52]}};
assign tmp_15_fu_2095_p4 = {{bitcast_ln55_7_fu_2091_p1[62:52]}};
assign tmp_17_fu_1466_p10 = transition_4_q1;
assign tmp_17_fu_1466_p12 = transition_5_q1;
assign tmp_17_fu_1466_p14 = transition_6_q1;
assign tmp_17_fu_1466_p16 = transition_7_q1;
assign tmp_17_fu_1466_p17 = 'bx;
assign tmp_17_fu_1466_p2 = transition_0_q1;
assign tmp_17_fu_1466_p4 = transition_1_q1;
assign tmp_17_fu_1466_p6 = transition_2_q1;
assign tmp_17_fu_1466_p8 = transition_3_q1;
assign tmp_18_fu_2212_p4 = {{bitcast_ln55_8_fu_2209_p1[62:52]}};
assign tmp_19_fu_2229_p4 = {{bitcast_ln55_9_fu_2226_p1[62:52]}};
assign tmp_1_fu_1043_p10 = transition_4_q0;
assign tmp_1_fu_1043_p12 = transition_5_q0;
assign tmp_1_fu_1043_p14 = transition_6_q0;
assign tmp_1_fu_1043_p16 = transition_7_q0;
assign tmp_1_fu_1043_p17 = 'bx;
assign tmp_1_fu_1043_p2 = transition_0_q0;
assign tmp_1_fu_1043_p4 = transition_1_q0;
assign tmp_1_fu_1043_p6 = transition_2_q0;
assign tmp_1_fu_1043_p8 = transition_3_q0;
assign tmp_21_fu_1585_p10 = transition_4_q0;
assign tmp_21_fu_1585_p12 = transition_5_q0;
assign tmp_21_fu_1585_p14 = transition_6_q0;
assign tmp_21_fu_1585_p16 = transition_7_q0;
assign tmp_21_fu_1585_p17 = 'bx;
assign tmp_21_fu_1585_p2 = transition_0_q0;
assign tmp_21_fu_1585_p4 = transition_1_q0;
assign tmp_21_fu_1585_p6 = transition_2_q0;
assign tmp_21_fu_1585_p8 = transition_3_q0;
assign tmp_22_fu_2301_p4 = {{bitcast_ln55_10_fu_2297_p1[62:52]}};
assign tmp_23_fu_1656_p10 = transition_4_q1;
assign tmp_23_fu_1656_p12 = transition_5_q1;
assign tmp_23_fu_1656_p14 = transition_6_q1;
assign tmp_23_fu_1656_p16 = transition_7_q1;
assign tmp_23_fu_1656_p17 = 'bx;
assign tmp_23_fu_1656_p2 = transition_0_q1;
assign tmp_23_fu_1656_p4 = transition_1_q1;
assign tmp_23_fu_1656_p6 = transition_2_q1;
assign tmp_23_fu_1656_p8 = transition_3_q1;
assign tmp_24_fu_1755_p10 = transition_4_q1;
assign tmp_24_fu_1755_p12 = transition_5_q1;
assign tmp_24_fu_1755_p14 = transition_6_q1;
assign tmp_24_fu_1755_p16 = transition_7_q1;
assign tmp_24_fu_1755_p17 = 'bx;
assign tmp_24_fu_1755_p2 = transition_0_q1;
assign tmp_24_fu_1755_p4 = transition_1_q1;
assign tmp_24_fu_1755_p6 = transition_2_q1;
assign tmp_24_fu_1755_p8 = transition_3_q1;
assign tmp_25_fu_2318_p4 = {{bitcast_ln55_11_fu_2315_p1[62:52]}};
assign tmp_27_fu_2390_p4 = {{bitcast_ln55_12_fu_2387_p1[62:52]}};
assign tmp_28_fu_2407_p4 = {{bitcast_ln55_13_fu_2404_p1[62:52]}};
assign tmp_2_fu_1802_p4 = {{bitcast_ln55_fu_1798_p1[62:52]}};
assign tmp_31_fu_2509_p4 = {{bitcast_ln55_14_fu_2505_p1[62:52]}};
assign tmp_32_fu_2526_p4 = {{bitcast_ln55_15_fu_2523_p1[62:52]}};
assign tmp_3_fu_1819_p4 = {{bitcast_ln55_1_fu_1816_p1[62:52]}};
assign tmp_5_fu_1195_p10 = transition_4_q1;
assign tmp_5_fu_1195_p12 = transition_5_q1;
assign tmp_5_fu_1195_p14 = transition_6_q1;
assign tmp_5_fu_1195_p16 = transition_7_q1;
assign tmp_5_fu_1195_p17 = 'bx;
assign tmp_5_fu_1195_p2 = transition_0_q1;
assign tmp_5_fu_1195_p4 = transition_1_q1;
assign tmp_5_fu_1195_p6 = transition_2_q1;
assign tmp_5_fu_1195_p8 = transition_3_q1;
assign tmp_6_fu_1892_p4 = {{bitcast_ln55_2_fu_1888_p1[62:52]}};
assign tmp_7_fu_1909_p4 = {{bitcast_ln55_3_fu_1906_p1[62:52]}};
assign tmp_9_fu_1266_p10 = transition_4_q0;
assign tmp_9_fu_1266_p12 = transition_5_q0;
assign tmp_9_fu_1266_p14 = transition_6_q0;
assign tmp_9_fu_1266_p16 = transition_7_q0;
assign tmp_9_fu_1266_p17 = 'bx;
assign tmp_9_fu_1266_p2 = transition_0_q0;
assign tmp_9_fu_1266_p4 = transition_1_q0;
assign tmp_9_fu_1266_p6 = transition_2_q0;
assign tmp_9_fu_1266_p8 = transition_3_q0;
assign tmp_s_fu_940_p3 = {{t_1}, {lshr_ln8_2_fu_930_p4}};
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
assign trunc_ln54_fu_1695_p1 = add_ln53_6_reg_2760[5:0];
assign trunc_ln55_10_fu_2311_p1 = bitcast_ln55_10_fu_2297_p1[51:0];
assign trunc_ln55_11_fu_2328_p1 = bitcast_ln55_11_fu_2315_p1[51:0];
assign trunc_ln55_12_fu_2400_p1 = bitcast_ln55_12_fu_2387_p1[51:0];
assign trunc_ln55_13_fu_2417_p1 = bitcast_ln55_13_fu_2404_p1[51:0];
assign trunc_ln55_14_fu_2519_p1 = bitcast_ln55_14_fu_2505_p1[51:0];
assign trunc_ln55_15_fu_2536_p1 = bitcast_ln55_15_fu_2523_p1[51:0];
assign trunc_ln55_1_fu_1829_p1 = bitcast_ln55_1_fu_1816_p1[51:0];
assign trunc_ln55_2_fu_1902_p1 = bitcast_ln55_2_fu_1888_p1[51:0];
assign trunc_ln55_3_fu_1919_p1 = bitcast_ln55_3_fu_1906_p1[51:0];
assign trunc_ln55_4_fu_2015_p1 = bitcast_ln55_4_fu_2001_p1[51:0];
assign trunc_ln55_5_fu_2032_p1 = bitcast_ln55_5_fu_2019_p1[51:0];
assign trunc_ln55_6_fu_2145_p1 = bitcast_ln55_6_fu_2131_p1[51:0];
assign trunc_ln55_7_fu_2105_p1 = bitcast_ln55_7_fu_2091_p1[51:0];
assign trunc_ln55_8_fu_2222_p1 = bitcast_ln55_8_fu_2209_p1[51:0];
assign trunc_ln55_9_fu_2239_p1 = bitcast_ln55_9_fu_2226_p1[51:0];
assign trunc_ln55_fu_1812_p1 = bitcast_ln55_fu_1798_p1[51:0];
assign zext_ln21_fu_926_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_904_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1158_p1 = add_ln54_8_fu_1153_p2;
assign zext_ln54_1_fu_1094_p1 = add_ln54_1_fu_1089_p2;
assign zext_ln54_2_fu_1118_p1 = add_ln54_2_fu_1113_p2;
assign zext_ln54_3_fu_1317_p1 = add_ln54_3_fu_1312_p2;
assign zext_ln54_4_fu_1341_p1 = add_ln54_4_fu_1336_p2;
assign zext_ln54_5_fu_1517_p1 = add_ln54_5_fu_1512_p2;
assign zext_ln54_6_fu_1541_p1 = add_ln54_6_fu_1536_p2;
assign zext_ln54_7_fu_1711_p1 = add_ln54_7_fu_1706_p2;
assign zext_ln54_8_fu_948_p1 = tmp_s_fu_940_p3;
assign zext_ln54_9_fu_1149_p1 = lshr_ln9_2_fu_1140_p4;
assign zext_ln54_fu_973_p1 = add_ln54_fu_967_p2;
assign zext_ln55_1_fu_1991_p1 = add_ln53_reg_2748;
assign zext_ln55_2_fu_2183_p1 = add_ln53_1_reg_2754_pp0_iter1_reg;
assign zext_ln55_3_fu_2199_p1 = add_ln53_2_reg_2870;
assign zext_ln55_4_fu_2469_p1 = add_ln53_3_reg_2881_pp0_iter1_reg;
assign zext_ln55_5_fu_2478_p1 = add_ln53_4_reg_2997_pp0_iter1_reg;
assign zext_ln55_6_fu_2488_p1 = add_ln53_5_reg_3003_pp0_iter1_reg;
assign zext_ln55_7_fu_2594_p1 = trunc_ln54_reg_3114_pp0_iter1_reg;
assign zext_ln55_fu_1974_p1 = s_reg_2663;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2652[8:5] <= 4'b0000;
end
endmodule 