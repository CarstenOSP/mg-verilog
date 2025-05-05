module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_2,min_s_18_out,min_s_18_out_ap_vld,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_702_p_din0,grp_fu_702_p_din1,grp_fu_702_p_opcode,grp_fu_702_p_dout0,grp_fu_702_p_ce); 
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
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] zext_ln52_2;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_702_p_din0;
output  [63:0] grp_fu_702_p_din1;
output  [4:0] grp_fu_702_p_opcode;
input  [0:0] grp_fu_702_p_dout0;
output   grp_fu_702_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_1676;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_304;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_309;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_313;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_318;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_323;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_328_p1;
reg   [11:0] zext_ln52_cast_reg_1601;
reg   [5:0] s_reg_1612;
wire   [4:0] lshr_ln8_8_fu_354_p4;
reg   [4:0] lshr_ln8_8_reg_1621;
wire   [5:0] add_ln53_fu_396_p2;
reg   [5:0] add_ln53_reg_1637;
wire   [5:0] add_ln53_1_fu_425_p2;
reg   [5:0] add_ln53_1_reg_1648;
reg   [5:0] add_ln53_1_reg_1648_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_450_p2;
reg   [5:0] add_ln53_2_reg_1659;
reg   [5:0] add_ln53_2_reg_1659_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_479_p2;
reg   [6:0] add_ln53_6_reg_1670;
reg   [0:0] tmp_reg_1676_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1680;
reg   [63:0] llike_load_reg_1685;
reg   [63:0] llike_1_load_1_reg_1695;
reg   [63:0] llike_load_1_reg_1705;
wire   [5:0] add_ln53_3_fu_527_p2;
reg   [5:0] add_ln53_3_reg_1710;
reg   [5:0] add_ln53_3_reg_1710_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_549_p2;
reg   [5:0] add_ln53_4_reg_1721;
reg   [5:0] add_ln53_4_reg_1721_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_fu_616_p1;
reg   [63:0] llike_1_load_2_reg_1752;
reg   [63:0] llike_load_2_reg_1762;
wire   [5:0] add_ln53_5_fu_655_p2;
reg   [5:0] add_ln53_5_reg_1767;
reg   [5:0] add_ln53_5_reg_1767_pp0_iter1_reg;
reg   [63:0] llike_1_load_3_reg_1773;
reg   [63:0] llike_load_3_reg_1778;
wire   [63:0] bitcast_ln54_1_fu_660_p1;
reg   [63:0] transition_load_4_reg_1788;
wire   [63:0] bitcast_ln54_2_fu_699_p1;
reg   [63:0] transition_load_6_reg_1808;
wire   [5:0] trunc_ln54_fu_704_p1;
reg   [5:0] trunc_ln54_reg_1813;
reg   [5:0] trunc_ln54_reg_1813_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_725_p1;
wire   [63:0] bitcast_ln54_4_fu_730_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_734_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_739_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_743_p1;
reg   [63:0] min_p_1_reg_1848;
wire   [0:0] and_ln55_1_fu_829_p2;
reg   [0:0] and_ln55_1_reg_1855;
wire   [63:0] min_p_3_fu_835_p3;
reg   [63:0] min_p_3_reg_1861;
wire   [0:0] and_ln55_3_fu_919_p2;
reg   [0:0] and_ln55_3_reg_1868;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_1874;
wire   [63:0] min_p_5_fu_938_p3;
reg   [63:0] min_p_5_reg_1881;
wire   [7:0] min_s_5_fu_948_p3;
reg   [7:0] min_s_5_reg_1888;
wire   [0:0] and_ln55_5_fu_1032_p2;
reg   [0:0] and_ln55_5_reg_1893;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_1899;
wire   [63:0] min_p_7_fu_1038_p3;
reg   [63:0] min_p_7_reg_1906;
wire   [0:0] icmp_ln55_14_fu_1063_p2;
reg   [0:0] icmp_ln55_14_reg_1912;
wire   [0:0] icmp_ln55_15_fu_1069_p2;
reg   [0:0] icmp_ln55_15_reg_1917;
wire   [0:0] and_ln55_7_fu_1131_p2;
reg   [0:0] and_ln55_7_reg_1922;
wire   [63:0] min_p_9_fu_1146_p3;
reg   [63:0] min_p_9_reg_1928;
wire   [7:0] min_s_7_fu_1156_p3;
reg   [7:0] min_s_7_reg_1935;
wire   [0:0] and_ln55_9_fu_1239_p2;
reg   [0:0] and_ln55_9_reg_1940;
wire   [63:0] min_p_11_fu_1245_p3;
reg   [63:0] min_p_11_reg_1946;
wire   [0:0] and_ln55_11_fu_1328_p2;
reg   [0:0] and_ln55_11_reg_1953;
wire   [63:0] min_p_13_fu_1334_p3;
reg   [63:0] min_p_13_reg_1959;
wire   [0:0] and_ln55_13_fu_1417_p2;
reg   [0:0] and_ln55_13_reg_1966;
wire   [7:0] min_s_10_fu_1445_p3;
reg   [7:0] min_s_10_reg_1972;
wire   [63:0] min_p_15_fu_1453_p3;
reg   [63:0] min_p_15_reg_1977;
reg   [0:0] tmp_30_reg_1984;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_372_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_391_p1;
wire   [63:0] zext_ln54_9_fu_420_p1;
wire   [63:0] zext_ln54_10_fu_445_p1;
wire   [63:0] zext_ln54_11_fu_474_p1;
wire   [63:0] zext_ln54_1_fu_505_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_522_p1;
wire   [63:0] zext_ln54_12_fu_544_p1;
wire   [63:0] zext_ln54_13_fu_571_p1;
wire   [63:0] zext_ln54_14_fu_588_p1;
wire   [63:0] zext_ln54_16_fu_611_p1;
wire   [63:0] zext_ln54_3_fu_633_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_650_p1;
wire   [63:0] zext_ln54_5_fu_677_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_694_p1;
wire   [63:0] zext_ln54_7_fu_720_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_98;
wire   [63:0] min_p_17_fu_1541_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_102;
wire   [7:0] min_s_11_fu_1551_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_106;
wire   [5:0] add_ln53_7_fu_1075_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_296_p0;
reg   [63:0] grp_fu_296_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_300_p0;
reg   [63:0] grp_fu_300_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [12:0] tmp_s_fu_364_p3;
wire   [11:0] shl_ln3_fu_377_p3;
wire   [11:0] add_ln54_fu_385_p2;
wire   [4:0] lshr_ln8_9_fu_402_p4;
wire   [12:0] tmp_4_fu_412_p3;
wire   [4:0] add_ln8_fu_431_p2;
wire   [12:0] tmp_8_fu_437_p3;
wire   [4:0] lshr_ln8_s_fu_456_p4;
wire   [12:0] tmp_12_fu_466_p3;
wire   [6:0] zext_ln16_fu_350_p1;
wire   [11:0] shl_ln54_1_fu_493_p3;
wire   [11:0] add_ln54_1_fu_500_p2;
wire   [11:0] shl_ln54_2_fu_510_p3;
wire   [11:0] add_ln54_2_fu_517_p2;
wire   [4:0] add_ln8_1_fu_532_p2;
wire   [12:0] tmp_16_fu_537_p3;
wire   [4:0] lshr_ln8_1_fu_554_p4;
wire   [12:0] tmp_20_fu_564_p3;
wire   [4:0] add_ln8_2_fu_576_p2;
wire   [12:0] tmp_24_fu_581_p3;
wire   [5:0] lshr_ln9_2_fu_593_p4;
wire   [12:0] zext_ln54_15_fu_602_p1;
wire   [12:0] add_ln54_8_fu_606_p2;
wire   [11:0] shl_ln54_3_fu_621_p3;
wire   [11:0] add_ln54_3_fu_628_p2;
wire   [11:0] shl_ln54_4_fu_638_p3;
wire   [11:0] add_ln54_4_fu_645_p2;
wire   [11:0] shl_ln54_5_fu_665_p3;
wire   [11:0] add_ln54_5_fu_672_p2;
wire   [11:0] shl_ln54_6_fu_682_p3;
wire   [11:0] add_ln54_6_fu_689_p2;
wire   [11:0] shl_ln54_7_fu_707_p3;
wire   [11:0] add_ln54_7_fu_715_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_752_p1;
wire   [63:0] bitcast_ln55_1_fu_770_p1;
wire   [10:0] tmp_1_fu_756_p4;
wire   [51:0] trunc_ln55_fu_766_p1;
wire   [0:0] icmp_ln55_1_fu_793_p2;
wire   [0:0] icmp_ln55_fu_787_p2;
wire   [10:0] tmp_2_fu_773_p4;
wire   [51:0] trunc_ln55_1_fu_783_p1;
wire   [0:0] icmp_ln55_3_fu_811_p2;
wire   [0:0] icmp_ln55_2_fu_805_p2;
wire   [0:0] or_ln55_fu_799_p2;
wire   [0:0] and_ln55_fu_823_p2;
wire   [0:0] or_ln55_1_fu_817_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_842_p1;
wire   [63:0] bitcast_ln55_3_fu_860_p1;
wire   [10:0] tmp_5_fu_846_p4;
wire   [51:0] trunc_ln55_2_fu_856_p1;
wire   [0:0] icmp_ln55_5_fu_883_p2;
wire   [0:0] icmp_ln55_4_fu_877_p2;
wire   [10:0] tmp_6_fu_863_p4;
wire   [51:0] trunc_ln55_3_fu_873_p1;
wire   [0:0] icmp_ln55_7_fu_901_p2;
wire   [0:0] icmp_ln55_6_fu_895_p2;
wire   [0:0] or_ln55_3_fu_907_p2;
wire   [0:0] or_ln55_2_fu_889_p2;
wire   [0:0] and_ln55_2_fu_913_p2;
wire   [7:0] zext_ln55_fu_928_p1;
wire   [7:0] zext_ln55_1_fu_945_p1;
wire   [7:0] min_s_4_fu_931_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_955_p1;
wire   [63:0] bitcast_ln55_5_fu_973_p1;
wire   [10:0] tmp_9_fu_959_p4;
wire   [51:0] trunc_ln55_4_fu_969_p1;
wire   [0:0] icmp_ln55_9_fu_996_p2;
wire   [0:0] icmp_ln55_8_fu_990_p2;
wire   [10:0] tmp_10_fu_976_p4;
wire   [51:0] trunc_ln55_5_fu_986_p1;
wire   [0:0] icmp_ln55_11_fu_1014_p2;
wire   [0:0] icmp_ln55_10_fu_1008_p2;
wire   [0:0] or_ln55_5_fu_1020_p2;
wire   [0:0] or_ln55_4_fu_1002_p2;
wire   [0:0] and_ln55_4_fu_1026_p2;
wire   [63:0] bitcast_ln55_7_fu_1045_p1;
wire   [10:0] tmp_14_fu_1049_p4;
wire   [51:0] trunc_ln55_7_fu_1059_p1;
wire   [63:0] bitcast_ln55_6_fu_1085_p1;
wire   [10:0] tmp_13_fu_1089_p4;
wire   [51:0] trunc_ln55_6_fu_1099_p1;
wire   [0:0] icmp_ln55_13_fu_1109_p2;
wire   [0:0] icmp_ln55_12_fu_1103_p2;
wire   [0:0] or_ln55_7_fu_1121_p2;
wire   [0:0] or_ln55_6_fu_1115_p2;
wire   [0:0] and_ln55_6_fu_1125_p2;
wire   [7:0] zext_ln55_2_fu_1137_p1;
wire   [7:0] zext_ln55_3_fu_1153_p1;
wire   [7:0] min_s_6_fu_1140_p3;
wire   [63:0] bitcast_ln55_8_fu_1163_p1;
wire   [63:0] bitcast_ln55_9_fu_1180_p1;
wire   [10:0] tmp_17_fu_1166_p4;
wire   [51:0] trunc_ln55_8_fu_1176_p1;
wire   [0:0] icmp_ln55_17_fu_1203_p2;
wire   [0:0] icmp_ln55_16_fu_1197_p2;
wire   [10:0] tmp_18_fu_1183_p4;
wire   [51:0] trunc_ln55_9_fu_1193_p1;
wire   [0:0] icmp_ln55_19_fu_1221_p2;
wire   [0:0] icmp_ln55_18_fu_1215_p2;
wire   [0:0] or_ln55_9_fu_1227_p2;
wire   [0:0] or_ln55_8_fu_1209_p2;
wire   [0:0] and_ln55_8_fu_1233_p2;
wire   [63:0] bitcast_ln55_10_fu_1251_p1;
wire   [63:0] bitcast_ln55_11_fu_1269_p1;
wire   [10:0] tmp_21_fu_1255_p4;
wire   [51:0] trunc_ln55_10_fu_1265_p1;
wire   [0:0] icmp_ln55_21_fu_1292_p2;
wire   [0:0] icmp_ln55_20_fu_1286_p2;
wire   [10:0] tmp_22_fu_1272_p4;
wire   [51:0] trunc_ln55_11_fu_1282_p1;
wire   [0:0] icmp_ln55_23_fu_1310_p2;
wire   [0:0] icmp_ln55_22_fu_1304_p2;
wire   [0:0] or_ln55_11_fu_1316_p2;
wire   [0:0] or_ln55_10_fu_1298_p2;
wire   [0:0] and_ln55_10_fu_1322_p2;
wire   [63:0] bitcast_ln55_12_fu_1341_p1;
wire   [63:0] bitcast_ln55_13_fu_1358_p1;
wire   [10:0] tmp_25_fu_1344_p4;
wire   [51:0] trunc_ln55_12_fu_1354_p1;
wire   [0:0] icmp_ln55_25_fu_1381_p2;
wire   [0:0] icmp_ln55_24_fu_1375_p2;
wire   [10:0] tmp_26_fu_1361_p4;
wire   [51:0] trunc_ln55_13_fu_1371_p1;
wire   [0:0] icmp_ln55_27_fu_1399_p2;
wire   [0:0] icmp_ln55_26_fu_1393_p2;
wire   [0:0] or_ln55_13_fu_1405_p2;
wire   [0:0] or_ln55_12_fu_1387_p2;
wire   [0:0] and_ln55_12_fu_1411_p2;
wire   [7:0] zext_ln55_4_fu_1423_p1;
wire   [7:0] zext_ln55_5_fu_1432_p1;
wire   [7:0] min_s_8_fu_1426_p3;
wire   [7:0] zext_ln55_6_fu_1442_p1;
wire   [7:0] min_s_9_fu_1435_p3;
wire   [63:0] bitcast_ln55_14_fu_1459_p1;
wire   [63:0] bitcast_ln55_15_fu_1477_p1;
wire   [10:0] tmp_28_fu_1463_p4;
wire   [51:0] trunc_ln55_14_fu_1473_p1;
wire   [0:0] icmp_ln55_29_fu_1500_p2;
wire   [0:0] icmp_ln55_28_fu_1494_p2;
wire   [10:0] tmp_29_fu_1480_p4;
wire   [51:0] trunc_ln55_15_fu_1490_p1;
wire   [0:0] icmp_ln55_31_fu_1518_p2;
wire   [0:0] icmp_ln55_30_fu_1512_p2;
wire   [0:0] or_ln55_15_fu_1524_p2;
wire   [0:0] or_ln55_14_fu_1506_p2;
wire   [0:0] and_ln55_14_fu_1530_p2;
wire   [0:0] and_ln55_15_fu_1536_p2;
wire   [7:0] zext_ln55_7_fu_1548_p1;
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
#0 min_p_fu_98 = 64'd0;
#0 min_s_fu_102 = 8'd0;
#0 min_s_1_fu_106 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_98 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1676_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_98 <= min_p_17_fu_1541_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_106 <= 6'd1;
    end else if (((tmp_reg_1676 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_106 <= add_ln53_7_fu_1075_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_102 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1676_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_102 <= min_s_11_fu_1551_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_304 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_304 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1648 <= add_ln53_1_fu_425_p2;
        add_ln53_1_reg_1648_pp0_iter1_reg <= add_ln53_1_reg_1648;
        add_ln53_2_reg_1659 <= add_ln53_2_fu_450_p2;
        add_ln53_2_reg_1659_pp0_iter1_reg <= add_ln53_2_reg_1659;
        add_ln53_6_reg_1670 <= add_ln53_6_fu_479_p2;
        add_ln53_reg_1637 <= add_ln53_fu_396_p2;
        and_ln55_7_reg_1922 <= and_ln55_7_fu_1131_p2;
        lshr_ln8_8_reg_1621 <= {{ap_sig_allocacmp_s[5:1]}};
        s_reg_1612 <= ap_sig_allocacmp_s;
        tmp_reg_1676 <= add_ln53_6_fu_479_p2[32'd6];
        tmp_reg_1676_pp0_iter1_reg <= tmp_reg_1676;
        zext_ln52_cast_reg_1601[7 : 0] <= zext_ln52_cast_fu_328_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_1710 <= add_ln53_3_fu_527_p2;
        add_ln53_3_reg_1710_pp0_iter1_reg <= add_ln53_3_reg_1710;
        add_ln53_4_reg_1721 <= add_ln53_4_fu_549_p2;
        add_ln53_4_reg_1721_pp0_iter1_reg <= add_ln53_4_reg_1721;
        min_p_9_reg_1928 <= min_p_9_fu_1146_p3;
        min_s_7_reg_1935 <= min_s_7_fu_1156_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_5_reg_1767 <= add_ln53_5_fu_655_p2;
        add_ln53_5_reg_1767_pp0_iter1_reg <= add_ln53_5_reg_1767;
        and_ln55_9_reg_1940 <= and_ln55_9_fu_1239_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_1953 <= and_ln55_11_fu_1328_p2;
        trunc_ln54_reg_1813 <= trunc_ln54_fu_704_p1;
        trunc_ln54_reg_1813_pp0_iter1_reg <= trunc_ln54_reg_1813;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_1966 <= and_ln55_13_fu_1417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_1855 <= and_ln55_1_fu_829_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_1868 <= and_ln55_3_fu_919_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_1893 <= and_ln55_5_fu_1032_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_1912 <= icmp_ln55_14_fu_1063_p2;
        icmp_ln55_15_reg_1917 <= icmp_ln55_15_fu_1069_p2;
        min_p_7_reg_1906 <= min_p_7_fu_1038_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1695 <= llike_1_q0;
        llike_1_load_reg_1680 <= llike_1_q1;
        llike_load_1_reg_1705 <= llike_q0;
        llike_load_reg_1685 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_1752 <= llike_1_q1;
        llike_1_load_3_reg_1773 <= llike_1_q0;
        llike_load_2_reg_1762 <= llike_q1;
        llike_load_3_reg_1778 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_1946 <= min_p_11_fu_1245_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_1959 <= min_p_13_fu_1334_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_1977 <= min_p_15_fu_1453_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_1848 <= min_p_fu_98;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_1861 <= min_p_3_fu_835_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_1881 <= min_p_5_fu_938_p3;
        min_s_5_reg_1888 <= min_s_5_fu_948_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_1972 <= min_s_10_fu_1445_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_1874 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_1899 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_309 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_313 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_318 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_323 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_30_reg_1984 <= grp_fu_702_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_4_reg_1788 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_6_reg_1808 <= transition_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_1676 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1676_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_296_p0 = llike_load_3_reg_1778;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_296_p0 = llike_1_load_3_reg_1773;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_296_p0 = llike_load_2_reg_1762;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_296_p0 = llike_1_load_2_reg_1752;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_296_p0 = llike_load_1_reg_1705;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_296_p0 = llike_1_load_1_reg_1695;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_296_p0 = llike_load_reg_1685;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_296_p0 = llike_1_load_reg_1680;
        end else begin
            grp_fu_296_p0 = 'bx;
        end
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_296_p1 = bitcast_ln54_7_fu_743_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_296_p1 = bitcast_ln54_6_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_296_p1 = bitcast_ln54_5_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_296_p1 = bitcast_ln54_4_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_296_p1 = bitcast_ln54_3_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_296_p1 = bitcast_ln54_2_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_296_p1 = bitcast_ln54_1_fu_660_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_296_p1 = bitcast_ln54_fu_616_p1;
        end else begin
            grp_fu_296_p1 = 'bx;
        end
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_300_p0 = p_6_reg_1899;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p0 = p_4_reg_1874;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_300_p0 = reg_323;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_300_p0 = reg_318;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_300_p0 = reg_313;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_300_p1 = min_p_15_fu_1453_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_300_p1 = min_p_13_fu_1334_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p1 = min_p_11_fu_1245_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p1 = min_p_9_fu_1146_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_300_p1 = min_p_7_fu_1038_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_300_p1 = min_p_5_fu_938_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_300_p1 = min_p_3_fu_835_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_300_p1 = min_p_fu_98;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_14_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_10_fu_445_p1;
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
            llike_1_address1_local = zext_ln54_12_fu_544_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_8_fu_372_p1;
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
            llike_address0_local = zext_ln54_16_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_11_fu_474_p1;
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
            llike_address1_local = zext_ln54_13_fu_571_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_9_fu_420_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_reg_1676_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_633_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_522_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_391_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_7_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_650_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_505_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln53_1_fu_425_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_450_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_527_p2 = (s_reg_1612 + 6'd4);
assign add_ln53_4_fu_549_p2 = (s_reg_1612 + 6'd5);
assign add_ln53_5_fu_655_p2 = (s_reg_1612 + 6'd6);
assign add_ln53_6_fu_479_p2 = (zext_ln16_fu_350_p1 + 7'd7);
assign add_ln53_7_fu_1075_p2 = (s_reg_1612 + 6'd8);
assign add_ln53_fu_396_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_500_p2 = (shl_ln54_1_fu_493_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_2_fu_517_p2 = (shl_ln54_2_fu_510_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_3_fu_628_p2 = (shl_ln54_3_fu_621_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_4_fu_645_p2 = (shl_ln54_4_fu_638_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_5_fu_672_p2 = (shl_ln54_5_fu_665_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_6_fu_689_p2 = (shl_ln54_6_fu_682_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_7_fu_715_p2 = (shl_ln54_7_fu_707_p3 + zext_ln52_cast_reg_1601);
assign add_ln54_8_fu_606_p2 = (zext_ln52_2 + zext_ln54_15_fu_602_p1);
assign add_ln54_fu_385_p2 = (shl_ln3_fu_377_p3 + zext_ln52_cast_fu_328_p1);
assign add_ln8_1_fu_532_p2 = (lshr_ln8_8_reg_1621 + 5'd2);
assign add_ln8_2_fu_576_p2 = (lshr_ln8_8_reg_1621 + 5'd3);
assign add_ln8_fu_431_p2 = (lshr_ln8_8_fu_354_p4 + 5'd1);
assign and_ln55_10_fu_1322_p2 = (or_ln55_11_fu_1316_p2 & or_ln55_10_fu_1298_p2);
assign and_ln55_11_fu_1328_p2 = (grp_fu_702_p_dout0 & and_ln55_10_fu_1322_p2);
assign and_ln55_12_fu_1411_p2 = (or_ln55_13_fu_1405_p2 & or_ln55_12_fu_1387_p2);
assign and_ln55_13_fu_1417_p2 = (grp_fu_702_p_dout0 & and_ln55_12_fu_1411_p2);
assign and_ln55_14_fu_1530_p2 = (or_ln55_15_fu_1524_p2 & or_ln55_14_fu_1506_p2);
assign and_ln55_15_fu_1536_p2 = (tmp_30_reg_1984 & and_ln55_14_fu_1530_p2);
assign and_ln55_1_fu_829_p2 = (or_ln55_1_fu_817_p2 & and_ln55_fu_823_p2);
assign and_ln55_2_fu_913_p2 = (or_ln55_3_fu_907_p2 & or_ln55_2_fu_889_p2);
assign and_ln55_3_fu_919_p2 = (grp_fu_702_p_dout0 & and_ln55_2_fu_913_p2);
assign and_ln55_4_fu_1026_p2 = (or_ln55_5_fu_1020_p2 & or_ln55_4_fu_1002_p2);
assign and_ln55_5_fu_1032_p2 = (grp_fu_702_p_dout0 & and_ln55_4_fu_1026_p2);
assign and_ln55_6_fu_1125_p2 = (or_ln55_7_fu_1121_p2 & or_ln55_6_fu_1115_p2);
assign and_ln55_7_fu_1131_p2 = (grp_fu_702_p_dout0 & and_ln55_6_fu_1125_p2);
assign and_ln55_8_fu_1233_p2 = (or_ln55_9_fu_1227_p2 & or_ln55_8_fu_1209_p2);
assign and_ln55_9_fu_1239_p2 = (grp_fu_702_p_dout0 & and_ln55_8_fu_1233_p2);
assign and_ln55_fu_823_p2 = (or_ln55_fu_799_p2 & grp_fu_702_p_dout0);
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
assign bitcast_ln54_1_fu_660_p1 = reg_304;
assign bitcast_ln54_2_fu_699_p1 = reg_309;
assign bitcast_ln54_3_fu_725_p1 = reg_304;
assign bitcast_ln54_4_fu_730_p1 = transition_load_4_reg_1788;
assign bitcast_ln54_5_fu_734_p1 = reg_309;
assign bitcast_ln54_6_fu_739_p1 = transition_load_6_reg_1808;
assign bitcast_ln54_7_fu_743_p1 = reg_304;
assign bitcast_ln54_fu_616_p1 = reg_304;
assign bitcast_ln55_10_fu_1251_p1 = reg_318;
assign bitcast_ln55_11_fu_1269_p1 = min_p_11_reg_1946;
assign bitcast_ln55_12_fu_1341_p1 = p_6_reg_1899;
assign bitcast_ln55_13_fu_1358_p1 = min_p_13_reg_1959;
assign bitcast_ln55_14_fu_1459_p1 = reg_323;
assign bitcast_ln55_15_fu_1477_p1 = min_p_15_reg_1977;
assign bitcast_ln55_1_fu_770_p1 = min_p_1_reg_1848;
assign bitcast_ln55_2_fu_842_p1 = reg_318;
assign bitcast_ln55_3_fu_860_p1 = min_p_3_reg_1861;
assign bitcast_ln55_4_fu_955_p1 = reg_323;
assign bitcast_ln55_5_fu_973_p1 = min_p_5_reg_1881;
assign bitcast_ln55_6_fu_1085_p1 = reg_313;
assign bitcast_ln55_7_fu_1045_p1 = min_p_7_fu_1038_p3;
assign bitcast_ln55_8_fu_1163_p1 = p_4_reg_1874;
assign bitcast_ln55_9_fu_1180_p1 = min_p_9_reg_1928;
assign bitcast_ln55_fu_752_p1 = reg_313;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_296_p0;
assign grp_fu_300_p_din1 = grp_fu_296_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_702_p_ce = 1'b1;
assign grp_fu_702_p_din0 = grp_fu_300_p0;
assign grp_fu_702_p_din1 = grp_fu_300_p1;
assign grp_fu_702_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1008_p2 = ((tmp_10_fu_976_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1014_p2 = ((trunc_ln55_5_fu_986_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1103_p2 = ((tmp_13_fu_1089_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1109_p2 = ((trunc_ln55_6_fu_1099_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1063_p2 = ((tmp_14_fu_1049_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1069_p2 = ((trunc_ln55_7_fu_1059_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1197_p2 = ((tmp_17_fu_1166_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1203_p2 = ((trunc_ln55_8_fu_1176_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1215_p2 = ((tmp_18_fu_1183_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1221_p2 = ((trunc_ln55_9_fu_1193_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_793_p2 = ((trunc_ln55_fu_766_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1286_p2 = ((tmp_21_fu_1255_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1292_p2 = ((trunc_ln55_10_fu_1265_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1304_p2 = ((tmp_22_fu_1272_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1310_p2 = ((trunc_ln55_11_fu_1282_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1375_p2 = ((tmp_25_fu_1344_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1381_p2 = ((trunc_ln55_12_fu_1354_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1393_p2 = ((tmp_26_fu_1361_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1399_p2 = ((trunc_ln55_13_fu_1371_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1494_p2 = ((tmp_28_fu_1463_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1500_p2 = ((trunc_ln55_14_fu_1473_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_805_p2 = ((tmp_2_fu_773_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1512_p2 = ((tmp_29_fu_1480_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1518_p2 = ((trunc_ln55_15_fu_1490_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_811_p2 = ((trunc_ln55_1_fu_783_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_877_p2 = ((tmp_5_fu_846_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_883_p2 = ((trunc_ln55_2_fu_856_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_895_p2 = ((tmp_6_fu_863_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_901_p2 = ((trunc_ln55_3_fu_873_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_990_p2 = ((tmp_9_fu_959_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_996_p2 = ((trunc_ln55_4_fu_969_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_787_p2 = ((tmp_1_fu_756_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_1_fu_554_p4 = {{add_ln53_4_fu_549_p2[5:1]}};
assign lshr_ln8_8_fu_354_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_9_fu_402_p4 = {{add_ln53_fu_396_p2[5:1]}};
assign lshr_ln8_s_fu_456_p4 = {{add_ln53_2_fu_450_p2[5:1]}};
assign lshr_ln9_2_fu_593_p4 = {{add_ln53_6_reg_1670[6:1]}};
assign min_p_11_fu_1245_p3 = ((and_ln55_9_reg_1940[0:0] == 1'b1) ? p_4_reg_1874 : min_p_9_reg_1928);
assign min_p_13_fu_1334_p3 = ((and_ln55_11_reg_1953[0:0] == 1'b1) ? reg_318 : min_p_11_reg_1946);
assign min_p_15_fu_1453_p3 = ((and_ln55_13_reg_1966[0:0] == 1'b1) ? p_6_reg_1899 : min_p_13_reg_1959);
assign min_p_17_fu_1541_p3 = ((and_ln55_15_fu_1536_p2[0:0] == 1'b1) ? reg_323 : min_p_15_reg_1977);
assign min_p_3_fu_835_p3 = ((and_ln55_1_reg_1855[0:0] == 1'b1) ? reg_313 : min_p_1_reg_1848);
assign min_p_5_fu_938_p3 = ((and_ln55_3_reg_1868[0:0] == 1'b1) ? reg_318 : min_p_3_reg_1861);
assign min_p_7_fu_1038_p3 = ((and_ln55_5_reg_1893[0:0] == 1'b1) ? reg_323 : min_p_5_reg_1881);
assign min_p_9_fu_1146_p3 = ((and_ln55_7_reg_1922[0:0] == 1'b1) ? reg_313 : min_p_7_reg_1906);
assign min_s_10_fu_1445_p3 = ((and_ln55_13_reg_1966[0:0] == 1'b1) ? zext_ln55_6_fu_1442_p1 : min_s_9_fu_1435_p3);
assign min_s_11_fu_1551_p3 = ((and_ln55_15_fu_1536_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1548_p1 : min_s_10_reg_1972);
assign min_s_18_out = ((and_ln55_13_reg_1966[0:0] == 1'b1) ? zext_ln55_6_fu_1442_p1 : min_s_9_fu_1435_p3);
assign min_s_4_fu_931_p3 = ((and_ln55_1_reg_1855[0:0] == 1'b1) ? zext_ln55_fu_928_p1 : min_s_fu_102);
assign min_s_5_fu_948_p3 = ((and_ln55_3_reg_1868[0:0] == 1'b1) ? zext_ln55_1_fu_945_p1 : min_s_4_fu_931_p3);
assign min_s_6_fu_1140_p3 = ((and_ln55_5_reg_1893[0:0] == 1'b1) ? zext_ln55_2_fu_1137_p1 : min_s_5_reg_1888);
assign min_s_7_fu_1156_p3 = ((and_ln55_7_reg_1922[0:0] == 1'b1) ? zext_ln55_3_fu_1153_p1 : min_s_6_fu_1140_p3);
assign min_s_8_fu_1426_p3 = ((and_ln55_9_reg_1940[0:0] == 1'b1) ? zext_ln55_4_fu_1423_p1 : min_s_7_reg_1935);
assign min_s_9_fu_1435_p3 = ((and_ln55_11_reg_1953[0:0] == 1'b1) ? zext_ln55_5_fu_1432_p1 : min_s_8_fu_1426_p3);
assign or_ln55_10_fu_1298_p2 = (icmp_ln55_21_fu_1292_p2 | icmp_ln55_20_fu_1286_p2);
assign or_ln55_11_fu_1316_p2 = (icmp_ln55_23_fu_1310_p2 | icmp_ln55_22_fu_1304_p2);
assign or_ln55_12_fu_1387_p2 = (icmp_ln55_25_fu_1381_p2 | icmp_ln55_24_fu_1375_p2);
assign or_ln55_13_fu_1405_p2 = (icmp_ln55_27_fu_1399_p2 | icmp_ln55_26_fu_1393_p2);
assign or_ln55_14_fu_1506_p2 = (icmp_ln55_29_fu_1500_p2 | icmp_ln55_28_fu_1494_p2);
assign or_ln55_15_fu_1524_p2 = (icmp_ln55_31_fu_1518_p2 | icmp_ln55_30_fu_1512_p2);
assign or_ln55_1_fu_817_p2 = (icmp_ln55_3_fu_811_p2 | icmp_ln55_2_fu_805_p2);
assign or_ln55_2_fu_889_p2 = (icmp_ln55_5_fu_883_p2 | icmp_ln55_4_fu_877_p2);
assign or_ln55_3_fu_907_p2 = (icmp_ln55_7_fu_901_p2 | icmp_ln55_6_fu_895_p2);
assign or_ln55_4_fu_1002_p2 = (icmp_ln55_9_fu_996_p2 | icmp_ln55_8_fu_990_p2);
assign or_ln55_5_fu_1020_p2 = (icmp_ln55_11_fu_1014_p2 | icmp_ln55_10_fu_1008_p2);
assign or_ln55_6_fu_1115_p2 = (icmp_ln55_13_fu_1109_p2 | icmp_ln55_12_fu_1103_p2);
assign or_ln55_7_fu_1121_p2 = (icmp_ln55_15_reg_1917 | icmp_ln55_14_reg_1912);
assign or_ln55_8_fu_1209_p2 = (icmp_ln55_17_fu_1203_p2 | icmp_ln55_16_fu_1197_p2);
assign or_ln55_9_fu_1227_p2 = (icmp_ln55_19_fu_1221_p2 | icmp_ln55_18_fu_1215_p2);
assign or_ln55_fu_799_p2 = (icmp_ln55_fu_787_p2 | icmp_ln55_1_fu_793_p2);
assign shl_ln3_fu_377_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_493_p3 = {{add_ln53_reg_1637}, {6'd0}};
assign shl_ln54_2_fu_510_p3 = {{add_ln53_1_reg_1648}, {6'd0}};
assign shl_ln54_3_fu_621_p3 = {{add_ln53_2_reg_1659}, {6'd0}};
assign shl_ln54_4_fu_638_p3 = {{add_ln53_3_reg_1710}, {6'd0}};
assign shl_ln54_5_fu_665_p3 = {{add_ln53_4_reg_1721}, {6'd0}};
assign shl_ln54_6_fu_682_p3 = {{add_ln53_5_reg_1767}, {6'd0}};
assign shl_ln54_7_fu_707_p3 = {{trunc_ln54_fu_704_p1}, {6'd0}};
assign tmp_10_fu_976_p4 = {{bitcast_ln55_5_fu_973_p1[62:52]}};
assign tmp_12_fu_466_p3 = {{t_1}, {lshr_ln8_s_fu_456_p4}};
assign tmp_13_fu_1089_p4 = {{bitcast_ln55_6_fu_1085_p1[62:52]}};
assign tmp_14_fu_1049_p4 = {{bitcast_ln55_7_fu_1045_p1[62:52]}};
assign tmp_16_fu_537_p3 = {{t_1}, {add_ln8_1_fu_532_p2}};
assign tmp_17_fu_1166_p4 = {{bitcast_ln55_8_fu_1163_p1[62:52]}};
assign tmp_18_fu_1183_p4 = {{bitcast_ln55_9_fu_1180_p1[62:52]}};
assign tmp_1_fu_756_p4 = {{bitcast_ln55_fu_752_p1[62:52]}};
assign tmp_20_fu_564_p3 = {{t_1}, {lshr_ln8_1_fu_554_p4}};
assign tmp_21_fu_1255_p4 = {{bitcast_ln55_10_fu_1251_p1[62:52]}};
assign tmp_22_fu_1272_p4 = {{bitcast_ln55_11_fu_1269_p1[62:52]}};
assign tmp_24_fu_581_p3 = {{t_1}, {add_ln8_2_fu_576_p2}};
assign tmp_25_fu_1344_p4 = {{bitcast_ln55_12_fu_1341_p1[62:52]}};
assign tmp_26_fu_1361_p4 = {{bitcast_ln55_13_fu_1358_p1[62:52]}};
assign tmp_28_fu_1463_p4 = {{bitcast_ln55_14_fu_1459_p1[62:52]}};
assign tmp_29_fu_1480_p4 = {{bitcast_ln55_15_fu_1477_p1[62:52]}};
assign tmp_2_fu_773_p4 = {{bitcast_ln55_1_fu_770_p1[62:52]}};
assign tmp_4_fu_412_p3 = {{t_1}, {lshr_ln8_9_fu_402_p4}};
assign tmp_5_fu_846_p4 = {{bitcast_ln55_2_fu_842_p1[62:52]}};
assign tmp_6_fu_863_p4 = {{bitcast_ln55_3_fu_860_p1[62:52]}};
assign tmp_8_fu_437_p3 = {{t_1}, {add_ln8_fu_431_p2}};
assign tmp_9_fu_959_p4 = {{bitcast_ln55_4_fu_955_p1[62:52]}};
assign tmp_s_fu_364_p3 = {{t_1}, {lshr_ln8_8_fu_354_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_704_p1 = add_ln53_6_reg_1670[5:0];
assign trunc_ln55_10_fu_1265_p1 = bitcast_ln55_10_fu_1251_p1[51:0];
assign trunc_ln55_11_fu_1282_p1 = bitcast_ln55_11_fu_1269_p1[51:0];
assign trunc_ln55_12_fu_1354_p1 = bitcast_ln55_12_fu_1341_p1[51:0];
assign trunc_ln55_13_fu_1371_p1 = bitcast_ln55_13_fu_1358_p1[51:0];
assign trunc_ln55_14_fu_1473_p1 = bitcast_ln55_14_fu_1459_p1[51:0];
assign trunc_ln55_15_fu_1490_p1 = bitcast_ln55_15_fu_1477_p1[51:0];
assign trunc_ln55_1_fu_783_p1 = bitcast_ln55_1_fu_770_p1[51:0];
assign trunc_ln55_2_fu_856_p1 = bitcast_ln55_2_fu_842_p1[51:0];
assign trunc_ln55_3_fu_873_p1 = bitcast_ln55_3_fu_860_p1[51:0];
assign trunc_ln55_4_fu_969_p1 = bitcast_ln55_4_fu_955_p1[51:0];
assign trunc_ln55_5_fu_986_p1 = bitcast_ln55_5_fu_973_p1[51:0];
assign trunc_ln55_6_fu_1099_p1 = bitcast_ln55_6_fu_1085_p1[51:0];
assign trunc_ln55_7_fu_1059_p1 = bitcast_ln55_7_fu_1045_p1[51:0];
assign trunc_ln55_8_fu_1176_p1 = bitcast_ln55_8_fu_1163_p1[51:0];
assign trunc_ln55_9_fu_1193_p1 = bitcast_ln55_9_fu_1180_p1[51:0];
assign trunc_ln55_fu_766_p1 = bitcast_ln55_fu_752_p1[51:0];
assign zext_ln16_fu_350_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_328_p1 = zext_ln52;
assign zext_ln54_10_fu_445_p1 = tmp_8_fu_437_p3;
assign zext_ln54_11_fu_474_p1 = tmp_12_fu_466_p3;
assign zext_ln54_12_fu_544_p1 = tmp_16_fu_537_p3;
assign zext_ln54_13_fu_571_p1 = tmp_20_fu_564_p3;
assign zext_ln54_14_fu_588_p1 = tmp_24_fu_581_p3;
assign zext_ln54_15_fu_602_p1 = lshr_ln9_2_fu_593_p4;
assign zext_ln54_16_fu_611_p1 = add_ln54_8_fu_606_p2;
assign zext_ln54_1_fu_505_p1 = add_ln54_1_fu_500_p2;
assign zext_ln54_2_fu_522_p1 = add_ln54_2_fu_517_p2;
assign zext_ln54_3_fu_633_p1 = add_ln54_3_fu_628_p2;
assign zext_ln54_4_fu_650_p1 = add_ln54_4_fu_645_p2;
assign zext_ln54_5_fu_677_p1 = add_ln54_5_fu_672_p2;
assign zext_ln54_6_fu_694_p1 = add_ln54_6_fu_689_p2;
assign zext_ln54_7_fu_720_p1 = add_ln54_7_fu_715_p2;
assign zext_ln54_8_fu_372_p1 = tmp_s_fu_364_p3;
assign zext_ln54_9_fu_420_p1 = tmp_4_fu_412_p3;
assign zext_ln54_fu_391_p1 = add_ln54_fu_385_p2;
assign zext_ln55_1_fu_945_p1 = add_ln53_reg_1637;
assign zext_ln55_2_fu_1137_p1 = add_ln53_1_reg_1648_pp0_iter1_reg;
assign zext_ln55_3_fu_1153_p1 = add_ln53_2_reg_1659_pp0_iter1_reg;
assign zext_ln55_4_fu_1423_p1 = add_ln53_3_reg_1710_pp0_iter1_reg;
assign zext_ln55_5_fu_1432_p1 = add_ln53_4_reg_1721_pp0_iter1_reg;
assign zext_ln55_6_fu_1442_p1 = add_ln53_5_reg_1767_pp0_iter1_reg;
assign zext_ln55_7_fu_1548_p1 = trunc_ln54_reg_1813_pp0_iter1_reg;
assign zext_ln55_fu_928_p1 = s_reg_1612;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_1601[11:8] <= 4'b0000;
end
endmodule 