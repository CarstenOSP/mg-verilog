
module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_163,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_287_p_din0,grp_fu_287_p_din1,grp_fu_287_p_opcode,grp_fu_287_p_dout0,grp_fu_287_p_ce,grp_fu_552_p_din0,grp_fu_552_p_din1,grp_fu_552_p_opcode,grp_fu_552_p_dout0,grp_fu_552_p_ce);  
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
input  [63:0] min_p_163;
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
input  [11:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_287_p_din0;
output  [63:0] grp_fu_287_p_din1;
output  [1:0] grp_fu_287_p_opcode;
input  [63:0] grp_fu_287_p_dout0;
output   grp_fu_287_p_ce;
output  [63:0] grp_fu_552_p_din0;
output  [63:0] grp_fu_552_p_din1;
output  [4:0] grp_fu_552_p_opcode;
input  [0:0] grp_fu_552_p_dout0;
output   grp_fu_552_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_1_reg_1793;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_407_p3;
reg   [63:0] reg_421;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_414_p3;
reg   [63:0] reg_425;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_429;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_434;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_439;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_444_p1;
reg   [10:0] zext_ln52_2_cast_reg_1694;
reg   [5:0] s_reg_1705;
wire   [5:0] add_ln53_fu_515_p2;
reg   [5:0] add_ln53_reg_1737;
wire   [5:0] add_ln53_1_fu_521_p2;
reg   [5:0] add_ln53_1_reg_1743;
reg   [5:0] add_ln53_1_reg_1743_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_527_p2;
reg   [5:0] add_ln53_2_reg_1749;
reg   [5:0] add_ln53_2_reg_1749_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_575_p2;
reg   [5:0] add_ln53_4_reg_1765;
reg   [5:0] add_ln53_4_reg_1765_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_604_p2;
reg   [5:0] add_ln53_5_reg_1776;
reg   [5:0] add_ln53_5_reg_1776_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_633_p2;
reg   [6:0] add_ln53_6_reg_1787;
reg   [0:0] tmp_1_reg_1793_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1797;
reg   [63:0] llike_2_load_reg_1802;
reg   [63:0] llike_3_load_reg_1817;
reg   [63:0] llike_load_reg_1832;
wire   [5:0] add_ln53_3_fu_683_p2;
reg   [5:0] add_ln53_3_reg_1837;
reg   [5:0] add_ln53_3_reg_1837_pp0_iter1_reg;
reg   [63:0] llike_1_load_16_reg_1843;
reg   [63:0] llike_2_load_16_reg_1848;
reg   [63:0] llike_3_load_16_reg_1853;
wire   [63:0] bitcast_ln54_fu_711_p1;
reg   [63:0] llike_load_16_reg_1888;
wire   [63:0] bitcast_ln54_1_fu_752_p1;
reg   [63:0] select_ln54_3_reg_1898;
wire   [63:0] bitcast_ln54_2_fu_793_p1;
reg   [63:0] select_ln54_6_reg_1928;
wire   [5:0] trunc_ln54_fu_798_p1;
reg   [5:0] trunc_ln54_reg_1933;
reg   [5:0] trunc_ln54_reg_1933_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_820_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] select_ln54_7_reg_1953;
wire   [63:0] bitcast_ln54_4_fu_824_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_829_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_834_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_838_p1;
reg   [63:0] min_p_127_reg_1978;
wire   [0:0] and_ln55_1_fu_923_p2;
reg   [0:0] and_ln55_1_reg_1985;
wire   [63:0] min_p_129_fu_929_p3;
reg   [63:0] min_p_129_reg_1991;
wire   [0:0] and_ln55_3_fu_1013_p2;
reg   [0:0] and_ln55_3_reg_1998;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_66_reg_2004;
wire   [63:0] min_p_131_fu_1032_p3;
reg   [63:0] min_p_131_reg_2011;
wire   [7:0] min_s_5_fu_1042_p3;
reg   [7:0] min_s_5_reg_2018;
wire   [0:0] and_ln55_5_fu_1126_p2;
reg   [0:0] and_ln55_5_reg_2023;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_68_reg_2029;
wire   [63:0] min_p_133_fu_1132_p3;
reg   [63:0] min_p_133_reg_2036;
wire   [0:0] icmp_ln55_14_fu_1157_p2;
reg   [0:0] icmp_ln55_14_reg_2042;
wire   [0:0] icmp_ln55_15_fu_1163_p2;
reg   [0:0] icmp_ln55_15_reg_2047;
wire   [0:0] and_ln55_7_fu_1225_p2;
reg   [0:0] and_ln55_7_reg_2052;
wire   [63:0] min_p_135_fu_1240_p3;
reg   [63:0] min_p_135_reg_2058;
wire   [7:0] min_s_7_fu_1250_p3;
reg   [7:0] min_s_7_reg_2065;
wire   [0:0] and_ln55_9_fu_1333_p2;
reg   [0:0] and_ln55_9_reg_2070;
wire   [63:0] min_p_137_fu_1339_p3;
reg   [63:0] min_p_137_reg_2076;
wire   [0:0] and_ln55_11_fu_1422_p2;
reg   [0:0] and_ln55_11_reg_2083;
wire   [63:0] min_p_139_fu_1428_p3;
reg   [63:0] min_p_139_reg_2089;
wire   [0:0] and_ln55_13_fu_1511_p2;
reg   [0:0] and_ln55_13_reg_2096;
wire   [7:0] min_s_10_fu_1539_p3;
reg   [7:0] min_s_10_reg_2102;
wire   [63:0] min_p_141_fu_1547_p3;
reg   [63:0] min_p_141_reg_2107;
reg   [0:0] tmp_234_reg_2114;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_488_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_509_p1;
wire   [63:0] zext_ln54_9_fu_551_p1;
wire   [63:0] zext_ln54_10_fu_570_p1;
wire   [63:0] zext_ln54_11_fu_599_p1;
wire   [63:0] zext_ln54_12_fu_628_p1;
wire   [63:0] zext_ln54_1_fu_659_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_677_p1;
wire   [63:0] zext_ln54_14_fu_706_p1;
wire   [63:0] zext_ln54_3_fu_728_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_746_p1;
wire   [63:0] zext_ln54_5_fu_769_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_787_p1;
wire   [63:0] zext_ln54_7_fu_814_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_108;
wire   [63:0] min_p_143_fu_1635_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_112;
wire   [7:0] min_s_11_fu_1645_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_116;
wire   [5:0] add_ln53_7_fu_1169_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_399_p0;
reg   [63:0] grp_fu_399_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_403_p0;
reg   [63:0] grp_fu_403_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [3:0] lshr_ln8_4_fu_470_p4;
wire   [11:0] tmp_s_fu_480_p3;
wire   [10:0] shl_ln2_fu_495_p3;
wire   [10:0] add_ln54_fu_503_p2;
wire   [3:0] lshr_ln8_5_fu_533_p4;
wire   [11:0] tmp_216_fu_543_p3;
wire   [3:0] add_ln8_fu_556_p2;
wire   [11:0] tmp_220_fu_562_p3;
wire   [3:0] lshr_ln8_6_fu_581_p4;
wire   [11:0] tmp_224_fu_591_p3;
wire   [3:0] lshr_ln8_7_fu_610_p4;
wire   [11:0] tmp_228_fu_620_p3;
wire   [6:0] zext_ln17_fu_466_p1;
wire   [10:0] shl_ln54_1_fu_647_p3;
wire   [10:0] add_ln54_1_fu_654_p2;
wire   [10:0] shl_ln54_2_fu_665_p3;
wire   [10:0] add_ln54_2_fu_672_p2;
wire   [4:0] lshr_ln9_3_fu_688_p4;
wire   [11:0] zext_ln54_13_fu_697_p1;
wire   [11:0] add_ln54_8_fu_701_p2;
wire   [10:0] shl_ln54_3_fu_716_p3;
wire   [10:0] add_ln54_3_fu_723_p2;
wire   [10:0] shl_ln54_4_fu_734_p3;
wire   [10:0] add_ln54_4_fu_741_p2;
wire   [10:0] shl_ln54_5_fu_757_p3;
wire   [10:0] add_ln54_5_fu_764_p2;
wire   [10:0] shl_ln54_6_fu_775_p3;
wire   [10:0] add_ln54_6_fu_782_p2;
wire   [10:0] shl_ln54_7_fu_801_p3;
wire   [10:0] add_ln54_7_fu_809_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_846_p1;
wire   [63:0] bitcast_ln55_1_fu_864_p1;
wire   [10:0] tmp_207_fu_850_p4;
wire   [51:0] trunc_ln55_fu_860_p1;
wire   [0:0] icmp_ln55_1_fu_887_p2;
wire   [0:0] icmp_ln55_fu_881_p2;
wire   [10:0] tmp_208_fu_867_p4;
wire   [51:0] trunc_ln55_1_fu_877_p1;
wire   [0:0] icmp_ln55_3_fu_905_p2;
wire   [0:0] icmp_ln55_2_fu_899_p2;
wire   [0:0] or_ln55_fu_893_p2;
wire   [0:0] and_ln55_fu_917_p2;
wire   [0:0] or_ln55_1_fu_911_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_936_p1;
wire   [63:0] bitcast_ln55_3_fu_954_p1;
wire   [10:0] tmp_210_fu_940_p4;
wire   [51:0] trunc_ln55_2_fu_950_p1;
wire   [0:0] icmp_ln55_5_fu_977_p2;
wire   [0:0] icmp_ln55_4_fu_971_p2;
wire   [10:0] tmp_211_fu_957_p4;
wire   [51:0] trunc_ln55_3_fu_967_p1;
wire   [0:0] icmp_ln55_7_fu_995_p2;
wire   [0:0] icmp_ln55_6_fu_989_p2;
wire   [0:0] or_ln55_3_fu_1001_p2;
wire   [0:0] or_ln55_2_fu_983_p2;
wire   [0:0] and_ln55_2_fu_1007_p2;
wire   [7:0] zext_ln55_fu_1022_p1;
wire   [7:0] zext_ln55_1_fu_1039_p1;
wire   [7:0] min_s_4_fu_1025_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1049_p1;
wire   [63:0] bitcast_ln55_5_fu_1067_p1;
wire   [10:0] tmp_213_fu_1053_p4;
wire   [51:0] trunc_ln55_4_fu_1063_p1;
wire   [0:0] icmp_ln55_9_fu_1090_p2;
wire   [0:0] icmp_ln55_8_fu_1084_p2;
wire   [10:0] tmp_214_fu_1070_p4;
wire   [51:0] trunc_ln55_5_fu_1080_p1;
wire   [0:0] icmp_ln55_11_fu_1108_p2;
wire   [0:0] icmp_ln55_10_fu_1102_p2;
wire   [0:0] or_ln55_5_fu_1114_p2;
wire   [0:0] or_ln55_4_fu_1096_p2;
wire   [0:0] and_ln55_4_fu_1120_p2;
wire   [63:0] bitcast_ln55_7_fu_1139_p1;
wire   [10:0] tmp_218_fu_1143_p4;
wire   [51:0] trunc_ln55_7_fu_1153_p1;
wire   [63:0] bitcast_ln55_6_fu_1179_p1;
wire   [10:0] tmp_217_fu_1183_p4;
wire   [51:0] trunc_ln55_6_fu_1193_p1;
wire   [0:0] icmp_ln55_13_fu_1203_p2;
wire   [0:0] icmp_ln55_12_fu_1197_p2;
wire   [0:0] or_ln55_7_fu_1215_p2;
wire   [0:0] or_ln55_6_fu_1209_p2;
wire   [0:0] and_ln55_6_fu_1219_p2;
wire   [7:0] zext_ln55_2_fu_1231_p1;
wire   [7:0] zext_ln55_3_fu_1247_p1;
wire   [7:0] min_s_6_fu_1234_p3;
wire   [63:0] bitcast_ln55_8_fu_1257_p1;
wire   [63:0] bitcast_ln55_9_fu_1274_p1;
wire   [10:0] tmp_221_fu_1260_p4;
wire   [51:0] trunc_ln55_8_fu_1270_p1;
wire   [0:0] icmp_ln55_17_fu_1297_p2;
wire   [0:0] icmp_ln55_16_fu_1291_p2;
wire   [10:0] tmp_222_fu_1277_p4;
wire   [51:0] trunc_ln55_9_fu_1287_p1;
wire   [0:0] icmp_ln55_19_fu_1315_p2;
wire   [0:0] icmp_ln55_18_fu_1309_p2;
wire   [0:0] or_ln55_9_fu_1321_p2;
wire   [0:0] or_ln55_8_fu_1303_p2;
wire   [0:0] and_ln55_8_fu_1327_p2;
wire   [63:0] bitcast_ln55_10_fu_1345_p1;
wire   [63:0] bitcast_ln55_11_fu_1363_p1;
wire   [10:0] tmp_225_fu_1349_p4;
wire   [51:0] trunc_ln55_10_fu_1359_p1;
wire   [0:0] icmp_ln55_21_fu_1386_p2;
wire   [0:0] icmp_ln55_20_fu_1380_p2;
wire   [10:0] tmp_226_fu_1366_p4;
wire   [51:0] trunc_ln55_11_fu_1376_p1;
wire   [0:0] icmp_ln55_23_fu_1404_p2;
wire   [0:0] icmp_ln55_22_fu_1398_p2;
wire   [0:0] or_ln55_11_fu_1410_p2;
wire   [0:0] or_ln55_10_fu_1392_p2;
wire   [0:0] and_ln55_10_fu_1416_p2;
wire   [63:0] bitcast_ln55_12_fu_1435_p1;
wire   [63:0] bitcast_ln55_13_fu_1452_p1;
wire   [10:0] tmp_229_fu_1438_p4;
wire   [51:0] trunc_ln55_12_fu_1448_p1;
wire   [0:0] icmp_ln55_25_fu_1475_p2;
wire   [0:0] icmp_ln55_24_fu_1469_p2;
wire   [10:0] tmp_230_fu_1455_p4;
wire   [51:0] trunc_ln55_13_fu_1465_p1;
wire   [0:0] icmp_ln55_27_fu_1493_p2;
wire   [0:0] icmp_ln55_26_fu_1487_p2;
wire   [0:0] or_ln55_13_fu_1499_p2;
wire   [0:0] or_ln55_12_fu_1481_p2;
wire   [0:0] and_ln55_12_fu_1505_p2;
wire   [7:0] zext_ln55_4_fu_1517_p1;
wire   [7:0] zext_ln55_5_fu_1526_p1;
wire   [7:0] min_s_8_fu_1520_p3;
wire   [7:0] zext_ln55_6_fu_1536_p1;
wire   [7:0] min_s_9_fu_1529_p3;
wire   [63:0] bitcast_ln55_14_fu_1553_p1;
wire   [63:0] bitcast_ln55_15_fu_1571_p1;
wire   [10:0] tmp_232_fu_1557_p4;
wire   [51:0] trunc_ln55_14_fu_1567_p1;
wire   [0:0] icmp_ln55_29_fu_1594_p2;
wire   [0:0] icmp_ln55_28_fu_1588_p2;
wire   [10:0] tmp_233_fu_1574_p4;
wire   [51:0] trunc_ln55_15_fu_1584_p1;
wire   [0:0] icmp_ln55_31_fu_1612_p2;
wire   [0:0] icmp_ln55_30_fu_1606_p2;
wire   [0:0] or_ln55_15_fu_1618_p2;
wire   [0:0] or_ln55_14_fu_1600_p2;
wire   [0:0] and_ln55_14_fu_1624_p2;
wire   [0:0] and_ln55_15_fu_1630_p2;
wire   [7:0] zext_ln55_7_fu_1642_p1;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_108 = 64'd0;
#0 min_s_fu_112 = 8'd0;
#0 min_s_1_fu_116 = 6'd0;
#0 ap_done_reg = 1'b0;
end
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
        min_p_fu_108 <= min_p_163;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1793_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_108 <= min_p_143_fu_1635_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_116 <= 6'd1;
    end else if (((tmp_1_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_116 <= add_ln53_7_fu_1169_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_112 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1793_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_112 <= min_s_11_fu_1645_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1743 <= add_ln53_1_fu_521_p2;
        add_ln53_1_reg_1743_pp0_iter1_reg <= add_ln53_1_reg_1743;
        add_ln53_2_reg_1749 <= add_ln53_2_fu_527_p2;
        add_ln53_2_reg_1749_pp0_iter1_reg <= add_ln53_2_reg_1749;
        add_ln53_4_reg_1765 <= add_ln53_4_fu_575_p2;
        add_ln53_4_reg_1765_pp0_iter1_reg <= add_ln53_4_reg_1765;
        add_ln53_5_reg_1776 <= add_ln53_5_fu_604_p2;
        add_ln53_5_reg_1776_pp0_iter1_reg <= add_ln53_5_reg_1776;
        add_ln53_6_reg_1787 <= add_ln53_6_fu_633_p2;
        add_ln53_reg_1737 <= add_ln53_fu_515_p2;
        and_ln55_7_reg_2052 <= and_ln55_7_fu_1225_p2;
        s_reg_1705 <= ap_sig_allocacmp_s;
        tmp_1_reg_1793 <= add_ln53_6_fu_633_p2[32'd6];
        tmp_1_reg_1793_pp0_iter1_reg <= tmp_1_reg_1793;
        zext_ln52_2_cast_reg_1694[6 : 0] <= zext_ln52_2_cast_fu_444_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_1837 <= add_ln53_3_fu_683_p2;
        add_ln53_3_reg_1837_pp0_iter1_reg <= add_ln53_3_reg_1837;
        min_p_135_reg_2058 <= min_p_135_fu_1240_p3;
        min_s_7_reg_2065 <= min_s_7_fu_1250_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2083 <= and_ln55_11_fu_1422_p2;
        trunc_ln54_reg_1933 <= trunc_ln54_fu_798_p1;
        trunc_ln54_reg_1933_pp0_iter1_reg <= trunc_ln54_reg_1933;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2096 <= and_ln55_13_fu_1511_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_1985 <= and_ln55_1_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_1998 <= and_ln55_3_fu_1013_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2023 <= and_ln55_5_fu_1126_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_9_reg_2070 <= and_ln55_9_fu_1333_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2042 <= icmp_ln55_14_fu_1157_p2;
        icmp_ln55_15_reg_2047 <= icmp_ln55_15_fu_1163_p2;
        min_p_133_reg_2036 <= min_p_133_fu_1132_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_16_reg_1843 <= llike_1_q0;
        llike_1_load_reg_1797 <= llike_1_q1;
        llike_2_load_16_reg_1848 <= llike_2_q0;
        llike_2_load_reg_1802 <= llike_2_q1;
        llike_3_load_16_reg_1853 <= llike_3_q0;
        llike_3_load_reg_1817 <= llike_3_q1;
        llike_load_reg_1832 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_16_reg_1888 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_1978 <= min_p_fu_108;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_1991 <= min_p_129_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_2011 <= min_p_131_fu_1032_p3;
        min_s_5_reg_2018 <= min_s_5_fu_1042_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_137_reg_2076 <= min_p_137_fu_1339_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_139_reg_2089 <= min_p_139_fu_1428_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_141_reg_2107 <= min_p_141_fu_1547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2102 <= min_s_10_fu_1539_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_66_reg_2004 <= grp_fu_287_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_68_reg_2029 <= grp_fu_287_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_421 <= grp_fu_407_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_425 <= grp_fu_414_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_429 <= grp_fu_287_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_434 <= grp_fu_287_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_439 <= grp_fu_287_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln54_3_reg_1898 <= grp_fu_407_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln54_6_reg_1928 <= grp_fu_414_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_7_reg_1953 <= grp_fu_414_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_234_reg_2114 <= grp_fu_552_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1793_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_116;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_399_p0 = llike_load_16_reg_1888;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_399_p0 = llike_3_load_16_reg_1853;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_399_p0 = llike_2_load_16_reg_1848;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_399_p0 = llike_1_load_16_reg_1843;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_399_p0 = llike_load_reg_1832;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_399_p0 = llike_3_load_reg_1817;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p0 = llike_2_load_reg_1802;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p0 = llike_1_load_reg_1797;
        end else begin
            grp_fu_399_p0 = 'bx;
        end
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_399_p1 = bitcast_ln54_7_fu_838_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_399_p1 = bitcast_ln54_6_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_399_p1 = bitcast_ln54_5_fu_829_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_399_p1 = bitcast_ln54_4_fu_824_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_399_p1 = bitcast_ln54_3_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_399_p1 = bitcast_ln54_2_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p1 = bitcast_ln54_1_fu_752_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p1 = bitcast_ln54_fu_711_p1;
        end else begin
            grp_fu_399_p1 = 'bx;
        end
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_403_p0 = p_68_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = p_66_reg_2004;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_403_p0 = reg_439;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_403_p0 = reg_434;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_403_p0 = reg_429;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_403_p1 = min_p_141_fu_1547_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_403_p1 = min_p_139_fu_1428_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p1 = min_p_137_fu_1339_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = min_p_135_fu_1240_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_403_p1 = min_p_133_fu_1132_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_403_p1 = min_p_131_fu_1032_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_403_p1 = min_p_129_fu_929_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_403_p1 = min_p_fu_108;
    end else begin
        grp_fu_403_p1 = 'bx;
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
            llike_address0_local = zext_ln54_14_fu_706_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_9_fu_551_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_1_reg_1793_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_769_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_509_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_814_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_746_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_659_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_769_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_509_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_814_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_746_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_659_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln53_1_fu_521_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_527_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_683_p2 = (s_reg_1705 + 6'd4);
assign add_ln53_4_fu_575_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_604_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_633_p2 = (zext_ln17_fu_466_p1 + 7'd7);
assign add_ln53_7_fu_1169_p2 = (s_reg_1705 + 6'd8);
assign add_ln53_fu_515_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_654_p2 = (shl_ln54_1_fu_647_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_2_fu_672_p2 = (shl_ln54_2_fu_665_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_3_fu_723_p2 = (shl_ln54_3_fu_716_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_4_fu_741_p2 = (shl_ln54_4_fu_734_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_5_fu_764_p2 = (shl_ln54_5_fu_757_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_6_fu_782_p2 = (shl_ln54_6_fu_775_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_7_fu_809_p2 = (shl_ln54_7_fu_801_p3 + zext_ln52_2_cast_reg_1694);
assign add_ln54_8_fu_701_p2 = (zext_ln52_3 + zext_ln54_13_fu_697_p1);
assign add_ln54_fu_503_p2 = (shl_ln2_fu_495_p3 + zext_ln52_2_cast_fu_444_p1);
assign add_ln8_fu_556_p2 = (lshr_ln8_4_fu_470_p4 + 4'd1);
assign and_ln55_10_fu_1416_p2 = (or_ln55_11_fu_1410_p2 & or_ln55_10_fu_1392_p2);
assign and_ln55_11_fu_1422_p2 = (grp_fu_552_p_dout0 & and_ln55_10_fu_1416_p2);
assign and_ln55_12_fu_1505_p2 = (or_ln55_13_fu_1499_p2 & or_ln55_12_fu_1481_p2);
assign and_ln55_13_fu_1511_p2 = (grp_fu_552_p_dout0 & and_ln55_12_fu_1505_p2);
assign and_ln55_14_fu_1624_p2 = (or_ln55_15_fu_1618_p2 & or_ln55_14_fu_1600_p2);
assign and_ln55_15_fu_1630_p2 = (tmp_234_reg_2114 & and_ln55_14_fu_1624_p2);
assign and_ln55_1_fu_923_p2 = (or_ln55_1_fu_911_p2 & and_ln55_fu_917_p2);
assign and_ln55_2_fu_1007_p2 = (or_ln55_3_fu_1001_p2 & or_ln55_2_fu_983_p2);
assign and_ln55_3_fu_1013_p2 = (grp_fu_552_p_dout0 & and_ln55_2_fu_1007_p2);
assign and_ln55_4_fu_1120_p2 = (or_ln55_5_fu_1114_p2 & or_ln55_4_fu_1096_p2);
assign and_ln55_5_fu_1126_p2 = (grp_fu_552_p_dout0 & and_ln55_4_fu_1120_p2);
assign and_ln55_6_fu_1219_p2 = (or_ln55_7_fu_1215_p2 & or_ln55_6_fu_1209_p2);
assign and_ln55_7_fu_1225_p2 = (grp_fu_552_p_dout0 & and_ln55_6_fu_1219_p2);
assign and_ln55_8_fu_1327_p2 = (or_ln55_9_fu_1321_p2 & or_ln55_8_fu_1303_p2);
assign and_ln55_9_fu_1333_p2 = (grp_fu_552_p_dout0 & and_ln55_8_fu_1327_p2);
assign and_ln55_fu_917_p2 = (or_ln55_fu_893_p2 & grp_fu_552_p_dout0);
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
assign bitcast_ln54_1_fu_752_p1 = reg_425;
assign bitcast_ln54_2_fu_793_p1 = reg_421;
assign bitcast_ln54_3_fu_820_p1 = select_ln54_3_reg_1898;
assign bitcast_ln54_4_fu_824_p1 = reg_425;
assign bitcast_ln54_5_fu_829_p1 = reg_421;
assign bitcast_ln54_6_fu_834_p1 = select_ln54_6_reg_1928;
assign bitcast_ln54_7_fu_838_p1 = select_ln54_7_reg_1953;
assign bitcast_ln54_fu_711_p1 = reg_421;
assign bitcast_ln55_10_fu_1345_p1 = reg_434;
assign bitcast_ln55_11_fu_1363_p1 = min_p_137_reg_2076;
assign bitcast_ln55_12_fu_1435_p1 = p_68_reg_2029;
assign bitcast_ln55_13_fu_1452_p1 = min_p_139_reg_2089;
assign bitcast_ln55_14_fu_1553_p1 = reg_439;
assign bitcast_ln55_15_fu_1571_p1 = min_p_141_reg_2107;
assign bitcast_ln55_1_fu_864_p1 = min_p_127_reg_1978;
assign bitcast_ln55_2_fu_936_p1 = reg_434;
assign bitcast_ln55_3_fu_954_p1 = min_p_129_reg_1991;
assign bitcast_ln55_4_fu_1049_p1 = reg_439;
assign bitcast_ln55_5_fu_1067_p1 = min_p_131_reg_2011;
assign bitcast_ln55_6_fu_1179_p1 = reg_429;
assign bitcast_ln55_7_fu_1139_p1 = min_p_133_fu_1132_p3;
assign bitcast_ln55_8_fu_1257_p1 = p_66_reg_2004;
assign bitcast_ln55_9_fu_1274_p1 = min_p_135_reg_2058;
assign bitcast_ln55_fu_846_p1 = reg_429;
assign grp_fu_287_p_ce = 1'b1;
assign grp_fu_287_p_din0 = grp_fu_399_p0;
assign grp_fu_287_p_din1 = grp_fu_399_p1;
assign grp_fu_287_p_opcode = 2'd0;
assign grp_fu_407_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_414_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_552_p_ce = 1'b1;
assign grp_fu_552_p_din0 = grp_fu_403_p0;
assign grp_fu_552_p_din1 = grp_fu_403_p1;
assign grp_fu_552_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1102_p2 = ((tmp_214_fu_1070_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1108_p2 = ((trunc_ln55_5_fu_1080_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1197_p2 = ((tmp_217_fu_1183_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1203_p2 = ((trunc_ln55_6_fu_1193_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1157_p2 = ((tmp_218_fu_1143_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1163_p2 = ((trunc_ln55_7_fu_1153_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1291_p2 = ((tmp_221_fu_1260_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1297_p2 = ((trunc_ln55_8_fu_1270_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1309_p2 = ((tmp_222_fu_1277_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1315_p2 = ((trunc_ln55_9_fu_1287_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_887_p2 = ((trunc_ln55_fu_860_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1380_p2 = ((tmp_225_fu_1349_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1386_p2 = ((trunc_ln55_10_fu_1359_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1398_p2 = ((tmp_226_fu_1366_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1404_p2 = ((trunc_ln55_11_fu_1376_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1469_p2 = ((tmp_229_fu_1438_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1475_p2 = ((trunc_ln55_12_fu_1448_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1487_p2 = ((tmp_230_fu_1455_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1493_p2 = ((trunc_ln55_13_fu_1465_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1588_p2 = ((tmp_232_fu_1557_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1594_p2 = ((trunc_ln55_14_fu_1567_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_899_p2 = ((tmp_208_fu_867_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1606_p2 = ((tmp_233_fu_1574_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1612_p2 = ((trunc_ln55_15_fu_1584_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_905_p2 = ((trunc_ln55_1_fu_877_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_971_p2 = ((tmp_210_fu_940_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_977_p2 = ((trunc_ln55_2_fu_950_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_989_p2 = ((tmp_211_fu_957_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_995_p2 = ((trunc_ln55_3_fu_967_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1084_p2 = ((tmp_213_fu_1053_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1090_p2 = ((trunc_ln55_4_fu_1063_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_881_p2 = ((tmp_207_fu_850_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_10_fu_570_p1;
assign llike_1_address1 = zext_ln54_8_fu_488_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_11_fu_599_p1;
assign llike_2_address1 = zext_ln54_8_fu_488_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_12_fu_628_p1;
assign llike_3_address1 = zext_ln54_8_fu_488_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_4_fu_470_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln8_5_fu_533_p4 = {{add_ln53_2_fu_527_p2[5:2]}};
assign lshr_ln8_6_fu_581_p4 = {{add_ln53_4_fu_575_p2[5:2]}};
assign lshr_ln8_7_fu_610_p4 = {{add_ln53_5_fu_604_p2[5:2]}};
assign lshr_ln9_3_fu_688_p4 = {{add_ln53_6_reg_1787[6:2]}};
assign min_p_129_fu_929_p3 = ((and_ln55_1_reg_1985[0:0] == 1'b1) ? reg_429 : min_p_127_reg_1978);
assign min_p_131_fu_1032_p3 = ((and_ln55_3_reg_1998[0:0] == 1'b1) ? reg_434 : min_p_129_reg_1991);
assign min_p_133_fu_1132_p3 = ((and_ln55_5_reg_2023[0:0] == 1'b1) ? reg_439 : min_p_131_reg_2011);
assign min_p_135_fu_1240_p3 = ((and_ln55_7_reg_2052[0:0] == 1'b1) ? reg_429 : min_p_133_reg_2036);
assign min_p_137_fu_1339_p3 = ((and_ln55_9_reg_2070[0:0] == 1'b1) ? p_66_reg_2004 : min_p_135_reg_2058);
assign min_p_139_fu_1428_p3 = ((and_ln55_11_reg_2083[0:0] == 1'b1) ? reg_434 : min_p_137_reg_2076);
assign min_p_141_fu_1547_p3 = ((and_ln55_13_reg_2096[0:0] == 1'b1) ? p_68_reg_2029 : min_p_139_reg_2089);
assign min_p_143_fu_1635_p3 = ((and_ln55_15_fu_1630_p2[0:0] == 1'b1) ? reg_439 : min_p_141_reg_2107);
assign min_s_10_fu_1539_p3 = ((and_ln55_13_reg_2096[0:0] == 1'b1) ? zext_ln55_6_fu_1536_p1 : min_s_9_fu_1529_p3);
assign min_s_11_fu_1645_p3 = ((and_ln55_15_fu_1630_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1642_p1 : min_s_10_reg_2102);
assign min_s_18_out = ((and_ln55_13_reg_2096[0:0] == 1'b1) ? zext_ln55_6_fu_1536_p1 : min_s_9_fu_1529_p3);
assign min_s_4_fu_1025_p3 = ((and_ln55_1_reg_1985[0:0] == 1'b1) ? zext_ln55_fu_1022_p1 : min_s_fu_112);
assign min_s_5_fu_1042_p3 = ((and_ln55_3_reg_1998[0:0] == 1'b1) ? zext_ln55_1_fu_1039_p1 : min_s_4_fu_1025_p3);
assign min_s_6_fu_1234_p3 = ((and_ln55_5_reg_2023[0:0] == 1'b1) ? zext_ln55_2_fu_1231_p1 : min_s_5_reg_2018);
assign min_s_7_fu_1250_p3 = ((and_ln55_7_reg_2052[0:0] == 1'b1) ? zext_ln55_3_fu_1247_p1 : min_s_6_fu_1234_p3);
assign min_s_8_fu_1520_p3 = ((and_ln55_9_reg_2070[0:0] == 1'b1) ? zext_ln55_4_fu_1517_p1 : min_s_7_reg_2065);
assign min_s_9_fu_1529_p3 = ((and_ln55_11_reg_2083[0:0] == 1'b1) ? zext_ln55_5_fu_1526_p1 : min_s_8_fu_1520_p3);
assign or_ln55_10_fu_1392_p2 = (icmp_ln55_21_fu_1386_p2 | icmp_ln55_20_fu_1380_p2);
assign or_ln55_11_fu_1410_p2 = (icmp_ln55_23_fu_1404_p2 | icmp_ln55_22_fu_1398_p2);
assign or_ln55_12_fu_1481_p2 = (icmp_ln55_25_fu_1475_p2 | icmp_ln55_24_fu_1469_p2);
assign or_ln55_13_fu_1499_p2 = (icmp_ln55_27_fu_1493_p2 | icmp_ln55_26_fu_1487_p2);
assign or_ln55_14_fu_1600_p2 = (icmp_ln55_29_fu_1594_p2 | icmp_ln55_28_fu_1588_p2);
assign or_ln55_15_fu_1618_p2 = (icmp_ln55_31_fu_1612_p2 | icmp_ln55_30_fu_1606_p2);
assign or_ln55_1_fu_911_p2 = (icmp_ln55_3_fu_905_p2 | icmp_ln55_2_fu_899_p2);
assign or_ln55_2_fu_983_p2 = (icmp_ln55_5_fu_977_p2 | icmp_ln55_4_fu_971_p2);
assign or_ln55_3_fu_1001_p2 = (icmp_ln55_7_fu_995_p2 | icmp_ln55_6_fu_989_p2);
assign or_ln55_4_fu_1096_p2 = (icmp_ln55_9_fu_1090_p2 | icmp_ln55_8_fu_1084_p2);
assign or_ln55_5_fu_1114_p2 = (icmp_ln55_11_fu_1108_p2 | icmp_ln55_10_fu_1102_p2);
assign or_ln55_6_fu_1209_p2 = (icmp_ln55_13_fu_1203_p2 | icmp_ln55_12_fu_1197_p2);
assign or_ln55_7_fu_1215_p2 = (icmp_ln55_15_reg_2047 | icmp_ln55_14_reg_2042);
assign or_ln55_8_fu_1303_p2 = (icmp_ln55_17_fu_1297_p2 | icmp_ln55_16_fu_1291_p2);
assign or_ln55_9_fu_1321_p2 = (icmp_ln55_19_fu_1315_p2 | icmp_ln55_18_fu_1309_p2);
assign or_ln55_fu_893_p2 = (icmp_ln55_fu_881_p2 | icmp_ln55_1_fu_887_p2);
assign shl_ln2_fu_495_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_647_p3 = {{add_ln53_reg_1737}, {5'd0}};
assign shl_ln54_2_fu_665_p3 = {{add_ln53_1_reg_1743}, {5'd0}};
assign shl_ln54_3_fu_716_p3 = {{add_ln53_2_reg_1749}, {5'd0}};
assign shl_ln54_4_fu_734_p3 = {{add_ln53_3_reg_1837}, {5'd0}};
assign shl_ln54_5_fu_757_p3 = {{add_ln53_4_reg_1765}, {5'd0}};
assign shl_ln54_6_fu_775_p3 = {{add_ln53_5_reg_1776}, {5'd0}};
assign shl_ln54_7_fu_801_p3 = {{trunc_ln54_fu_798_p1}, {5'd0}};
assign tmp_207_fu_850_p4 = {{bitcast_ln55_fu_846_p1[62:52]}};
assign tmp_208_fu_867_p4 = {{bitcast_ln55_1_fu_864_p1[62:52]}};
assign tmp_210_fu_940_p4 = {{bitcast_ln55_2_fu_936_p1[62:52]}};
assign tmp_211_fu_957_p4 = {{bitcast_ln55_3_fu_954_p1[62:52]}};
assign tmp_213_fu_1053_p4 = {{bitcast_ln55_4_fu_1049_p1[62:52]}};
assign tmp_214_fu_1070_p4 = {{bitcast_ln55_5_fu_1067_p1[62:52]}};
assign tmp_216_fu_543_p3 = {{t_1}, {lshr_ln8_5_fu_533_p4}};
assign tmp_217_fu_1183_p4 = {{bitcast_ln55_6_fu_1179_p1[62:52]}};
assign tmp_218_fu_1143_p4 = {{bitcast_ln55_7_fu_1139_p1[62:52]}};
assign tmp_220_fu_562_p3 = {{t_1}, {add_ln8_fu_556_p2}};
assign tmp_221_fu_1260_p4 = {{bitcast_ln55_8_fu_1257_p1[62:52]}};
assign tmp_222_fu_1277_p4 = {{bitcast_ln55_9_fu_1274_p1[62:52]}};
assign tmp_224_fu_591_p3 = {{t_1}, {lshr_ln8_6_fu_581_p4}};
assign tmp_225_fu_1349_p4 = {{bitcast_ln55_10_fu_1345_p1[62:52]}};
assign tmp_226_fu_1366_p4 = {{bitcast_ln55_11_fu_1363_p1[62:52]}};
assign tmp_228_fu_620_p3 = {{t_1}, {lshr_ln8_7_fu_610_p4}};
assign tmp_229_fu_1438_p4 = {{bitcast_ln55_12_fu_1435_p1[62:52]}};
assign tmp_230_fu_1455_p4 = {{bitcast_ln55_13_fu_1452_p1[62:52]}};
assign tmp_232_fu_1557_p4 = {{bitcast_ln55_14_fu_1553_p1[62:52]}};
assign tmp_233_fu_1574_p4 = {{bitcast_ln55_15_fu_1571_p1[62:52]}};
assign tmp_s_fu_480_p3 = {{t_1}, {lshr_ln8_4_fu_470_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_798_p1 = add_ln53_6_reg_1787[5:0];
assign trunc_ln55_10_fu_1359_p1 = bitcast_ln55_10_fu_1345_p1[51:0];
assign trunc_ln55_11_fu_1376_p1 = bitcast_ln55_11_fu_1363_p1[51:0];
assign trunc_ln55_12_fu_1448_p1 = bitcast_ln55_12_fu_1435_p1[51:0];
assign trunc_ln55_13_fu_1465_p1 = bitcast_ln55_13_fu_1452_p1[51:0];
assign trunc_ln55_14_fu_1567_p1 = bitcast_ln55_14_fu_1553_p1[51:0];
assign trunc_ln55_15_fu_1584_p1 = bitcast_ln55_15_fu_1571_p1[51:0];
assign trunc_ln55_1_fu_877_p1 = bitcast_ln55_1_fu_864_p1[51:0];
assign trunc_ln55_2_fu_950_p1 = bitcast_ln55_2_fu_936_p1[51:0];
assign trunc_ln55_3_fu_967_p1 = bitcast_ln55_3_fu_954_p1[51:0];
assign trunc_ln55_4_fu_1063_p1 = bitcast_ln55_4_fu_1049_p1[51:0];
assign trunc_ln55_5_fu_1080_p1 = bitcast_ln55_5_fu_1067_p1[51:0];
assign trunc_ln55_6_fu_1193_p1 = bitcast_ln55_6_fu_1179_p1[51:0];
assign trunc_ln55_7_fu_1153_p1 = bitcast_ln55_7_fu_1139_p1[51:0];
assign trunc_ln55_8_fu_1270_p1 = bitcast_ln55_8_fu_1257_p1[51:0];
assign trunc_ln55_9_fu_1287_p1 = bitcast_ln55_9_fu_1274_p1[51:0];
assign trunc_ln55_fu_860_p1 = bitcast_ln55_fu_846_p1[51:0];
assign zext_ln17_fu_466_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_444_p1 = zext_ln52_2;
assign zext_ln54_10_fu_570_p1 = tmp_220_fu_562_p3;
assign zext_ln54_11_fu_599_p1 = tmp_224_fu_591_p3;
assign zext_ln54_12_fu_628_p1 = tmp_228_fu_620_p3;
assign zext_ln54_13_fu_697_p1 = lshr_ln9_3_fu_688_p4;
assign zext_ln54_14_fu_706_p1 = add_ln54_8_fu_701_p2;
assign zext_ln54_1_fu_659_p1 = add_ln54_1_fu_654_p2;
assign zext_ln54_2_fu_677_p1 = add_ln54_2_fu_672_p2;
assign zext_ln54_3_fu_728_p1 = add_ln54_3_fu_723_p2;
assign zext_ln54_4_fu_746_p1 = add_ln54_4_fu_741_p2;
assign zext_ln54_5_fu_769_p1 = add_ln54_5_fu_764_p2;
assign zext_ln54_6_fu_787_p1 = add_ln54_6_fu_782_p2;
assign zext_ln54_7_fu_814_p1 = add_ln54_7_fu_809_p2;
assign zext_ln54_8_fu_488_p1 = tmp_s_fu_480_p3;
assign zext_ln54_9_fu_551_p1 = tmp_216_fu_543_p3;
assign zext_ln54_fu_509_p1 = add_ln54_fu_503_p2;
assign zext_ln55_1_fu_1039_p1 = add_ln53_reg_1737;
assign zext_ln55_2_fu_1231_p1 = add_ln53_1_reg_1743_pp0_iter1_reg;
assign zext_ln55_3_fu_1247_p1 = add_ln53_2_reg_1749_pp0_iter1_reg;
assign zext_ln55_4_fu_1517_p1 = add_ln53_3_reg_1837_pp0_iter1_reg;
assign zext_ln55_5_fu_1526_p1 = add_ln53_4_reg_1765_pp0_iter1_reg;
assign zext_ln55_6_fu_1536_p1 = add_ln53_5_reg_1776_pp0_iter1_reg;
assign zext_ln55_7_fu_1642_p1 = trunc_ln54_reg_1933_pp0_iter1_reg;
assign zext_ln55_fu_1022_p1 = s_reg_1705;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1694[10:7] <= 4'b0000;
end
endmodule 
