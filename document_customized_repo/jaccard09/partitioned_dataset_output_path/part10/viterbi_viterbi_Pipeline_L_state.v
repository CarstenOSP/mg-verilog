
module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,zext_ln52_2,llike_address0,llike_ce0,llike_q0,min_s_18_out,min_s_18_out_ap_vld,grp_fu_434_p_din0,grp_fu_434_p_din1,grp_fu_434_p_opcode,grp_fu_434_p_dout0,grp_fu_434_p_ce,grp_fu_848_p_din0,grp_fu_848_p_din1,grp_fu_848_p_opcode,grp_fu_848_p_dout0,grp_fu_848_p_ce);  
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
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [10:0] zext_ln52_2;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_434_p_din0;
output  [63:0] grp_fu_434_p_din1;
output  [1:0] grp_fu_434_p_opcode;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;
output  [63:0] grp_fu_848_p_din0;
output  [63:0] grp_fu_848_p_din1;
output  [4:0] grp_fu_848_p_opcode;
input  [0:0] grp_fu_848_p_dout0;
output   grp_fu_848_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_1587;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_334;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_339;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_343;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_348;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_353;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_358_p1;
reg   [11:0] zext_ln52_cast_reg_1508;
reg   [5:0] s_reg_1519;
wire   [5:0] add_ln53_fu_432_p2;
reg   [5:0] add_ln53_reg_1569;
wire   [5:0] add_ln53_1_fu_438_p2;
reg   [5:0] add_ln53_1_reg_1575;
reg   [5:0] add_ln53_1_reg_1575_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_444_p2;
reg   [6:0] add_ln53_6_reg_1581;
reg   [0:0] tmp_reg_1587_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1591;
reg   [63:0] llike_2_load_reg_1596;
reg   [63:0] llike_3_load_reg_1606;
wire   [5:0] add_ln53_2_fu_492_p2;
reg   [5:0] add_ln53_2_reg_1616;
reg   [63:0] llike_4_load_reg_1622;
wire   [5:0] add_ln53_3_fu_497_p2;
reg   [5:0] add_ln53_3_reg_1627;
reg   [5:0] add_ln53_3_reg_1627_pp0_iter1_reg;
reg   [63:0] llike_5_load_reg_1633;
reg   [63:0] llike_6_load_reg_1638;
reg   [63:0] llike_7_load_reg_1643;
wire   [63:0] bitcast_ln54_fu_525_p1;
wire   [5:0] add_ln53_4_fu_564_p2;
reg   [5:0] add_ln53_4_reg_1668;
reg   [5:0] add_ln53_4_reg_1668_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_569_p2;
reg   [5:0] add_ln53_5_reg_1674;
reg   [5:0] add_ln53_5_reg_1674_pp0_iter1_reg;
reg   [63:0] llike_load_reg_1680;
wire   [63:0] bitcast_ln54_1_fu_574_p1;
reg   [63:0] transition_load_4_reg_1690;
wire   [63:0] bitcast_ln54_2_fu_613_p1;
reg   [63:0] transition_load_6_reg_1710;
wire   [5:0] trunc_ln54_fu_618_p1;
reg   [5:0] trunc_ln54_reg_1715;
reg   [5:0] trunc_ln54_reg_1715_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_639_p1;
wire   [63:0] bitcast_ln54_4_fu_644_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_648_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_653_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_657_p1;
reg   [63:0] min_p_1_reg_1750;
wire   [0:0] and_ln55_1_fu_743_p2;
reg   [0:0] and_ln55_1_reg_1757;
wire   [63:0] min_p_3_fu_749_p3;
reg   [63:0] min_p_3_reg_1763;
wire   [0:0] and_ln55_3_fu_833_p2;
reg   [0:0] and_ln55_3_reg_1770;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_1776;
wire   [63:0] min_p_5_fu_852_p3;
reg   [63:0] min_p_5_reg_1783;
wire   [7:0] min_s_5_fu_862_p3;
reg   [7:0] min_s_5_reg_1790;
wire   [0:0] and_ln55_5_fu_946_p2;
reg   [0:0] and_ln55_5_reg_1795;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_1801;
wire   [63:0] min_p_7_fu_952_p3;
reg   [63:0] min_p_7_reg_1808;
wire   [0:0] icmp_ln55_14_fu_977_p2;
reg   [0:0] icmp_ln55_14_reg_1814;
wire   [0:0] icmp_ln55_15_fu_983_p2;
reg   [0:0] icmp_ln55_15_reg_1819;
wire   [0:0] and_ln55_7_fu_1045_p2;
reg   [0:0] and_ln55_7_reg_1824;
wire   [63:0] min_p_9_fu_1060_p3;
reg   [63:0] min_p_9_reg_1830;
wire   [7:0] min_s_7_fu_1070_p3;
reg   [7:0] min_s_7_reg_1837;
wire   [0:0] and_ln55_9_fu_1153_p2;
reg   [0:0] and_ln55_9_reg_1842;
wire   [63:0] min_p_11_fu_1159_p3;
reg   [63:0] min_p_11_reg_1848;
wire   [0:0] and_ln55_11_fu_1242_p2;
reg   [0:0] and_ln55_11_reg_1855;
wire   [63:0] min_p_13_fu_1248_p3;
reg   [63:0] min_p_13_reg_1861;
wire   [0:0] and_ln55_13_fu_1331_p2;
reg   [0:0] and_ln55_13_reg_1868;
wire   [7:0] min_s_10_fu_1359_p3;
reg   [7:0] min_s_10_reg_1874;
wire   [63:0] min_p_15_fu_1367_p3;
reg   [63:0] min_p_15_reg_1879;
reg   [0:0] tmp_24_reg_1886;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_402_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_427_p1;
wire   [63:0] zext_ln54_1_fu_470_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_487_p1;
wire   [63:0] zext_ln54_10_fu_520_p1;
wire   [63:0] zext_ln54_3_fu_542_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_559_p1;
wire   [63:0] zext_ln54_5_fu_591_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_608_p1;
wire   [63:0] zext_ln54_7_fu_634_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_106;
wire   [63:0] min_p_17_fu_1455_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_110;
wire   [7:0] min_s_11_fu_1465_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_114;
wire   [5:0] add_ln53_7_fu_989_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    llike_ce0_local;
reg   [63:0] grp_fu_326_p0;
reg   [63:0] grp_fu_326_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_330_p0;
reg   [63:0] grp_fu_330_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [2:0] lshr_ln8_2_fu_384_p4;
wire   [10:0] tmp_s_fu_394_p3;
wire   [11:0] shl_ln3_fu_413_p3;
wire   [11:0] add_ln54_fu_421_p2;
wire   [6:0] zext_ln16_fu_380_p1;
wire   [11:0] shl_ln54_1_fu_458_p3;
wire   [11:0] add_ln54_1_fu_465_p2;
wire   [11:0] shl_ln54_2_fu_475_p3;
wire   [11:0] add_ln54_2_fu_482_p2;
wire   [3:0] lshr_ln9_2_fu_502_p4;
wire   [10:0] zext_ln54_9_fu_511_p1;
wire   [10:0] add_ln54_8_fu_515_p2;
wire   [11:0] shl_ln54_3_fu_530_p3;
wire   [11:0] add_ln54_3_fu_537_p2;
wire   [11:0] shl_ln54_4_fu_547_p3;
wire   [11:0] add_ln54_4_fu_554_p2;
wire   [11:0] shl_ln54_5_fu_579_p3;
wire   [11:0] add_ln54_5_fu_586_p2;
wire   [11:0] shl_ln54_6_fu_596_p3;
wire   [11:0] add_ln54_6_fu_603_p2;
wire   [11:0] shl_ln54_7_fu_621_p3;
wire   [11:0] add_ln54_7_fu_629_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_666_p1;
wire   [63:0] bitcast_ln55_1_fu_684_p1;
wire   [10:0] tmp_1_fu_670_p4;
wire   [51:0] trunc_ln55_fu_680_p1;
wire   [0:0] icmp_ln55_1_fu_707_p2;
wire   [0:0] icmp_ln55_fu_701_p2;
wire   [10:0] tmp_2_fu_687_p4;
wire   [51:0] trunc_ln55_1_fu_697_p1;
wire   [0:0] icmp_ln55_3_fu_725_p2;
wire   [0:0] icmp_ln55_2_fu_719_p2;
wire   [0:0] or_ln55_fu_713_p2;
wire   [0:0] and_ln55_fu_737_p2;
wire   [0:0] or_ln55_1_fu_731_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_756_p1;
wire   [63:0] bitcast_ln55_3_fu_774_p1;
wire   [10:0] tmp_4_fu_760_p4;
wire   [51:0] trunc_ln55_2_fu_770_p1;
wire   [0:0] icmp_ln55_5_fu_797_p2;
wire   [0:0] icmp_ln55_4_fu_791_p2;
wire   [10:0] tmp_5_fu_777_p4;
wire   [51:0] trunc_ln55_3_fu_787_p1;
wire   [0:0] icmp_ln55_7_fu_815_p2;
wire   [0:0] icmp_ln55_6_fu_809_p2;
wire   [0:0] or_ln55_3_fu_821_p2;
wire   [0:0] or_ln55_2_fu_803_p2;
wire   [0:0] and_ln55_2_fu_827_p2;
wire   [7:0] zext_ln55_fu_842_p1;
wire   [7:0] zext_ln55_1_fu_859_p1;
wire   [7:0] min_s_4_fu_845_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_869_p1;
wire   [63:0] bitcast_ln55_5_fu_887_p1;
wire   [10:0] tmp_7_fu_873_p4;
wire   [51:0] trunc_ln55_4_fu_883_p1;
wire   [0:0] icmp_ln55_9_fu_910_p2;
wire   [0:0] icmp_ln55_8_fu_904_p2;
wire   [10:0] tmp_8_fu_890_p4;
wire   [51:0] trunc_ln55_5_fu_900_p1;
wire   [0:0] icmp_ln55_11_fu_928_p2;
wire   [0:0] icmp_ln55_10_fu_922_p2;
wire   [0:0] or_ln55_5_fu_934_p2;
wire   [0:0] or_ln55_4_fu_916_p2;
wire   [0:0] and_ln55_4_fu_940_p2;
wire   [63:0] bitcast_ln55_7_fu_959_p1;
wire   [10:0] tmp_11_fu_963_p4;
wire   [51:0] trunc_ln55_7_fu_973_p1;
wire   [63:0] bitcast_ln55_6_fu_999_p1;
wire   [10:0] tmp_10_fu_1003_p4;
wire   [51:0] trunc_ln55_6_fu_1013_p1;
wire   [0:0] icmp_ln55_13_fu_1023_p2;
wire   [0:0] icmp_ln55_12_fu_1017_p2;
wire   [0:0] or_ln55_7_fu_1035_p2;
wire   [0:0] or_ln55_6_fu_1029_p2;
wire   [0:0] and_ln55_6_fu_1039_p2;
wire   [7:0] zext_ln55_2_fu_1051_p1;
wire   [7:0] zext_ln55_3_fu_1067_p1;
wire   [7:0] min_s_6_fu_1054_p3;
wire   [63:0] bitcast_ln55_8_fu_1077_p1;
wire   [63:0] bitcast_ln55_9_fu_1094_p1;
wire   [10:0] tmp_13_fu_1080_p4;
wire   [51:0] trunc_ln55_8_fu_1090_p1;
wire   [0:0] icmp_ln55_17_fu_1117_p2;
wire   [0:0] icmp_ln55_16_fu_1111_p2;
wire   [10:0] tmp_14_fu_1097_p4;
wire   [51:0] trunc_ln55_9_fu_1107_p1;
wire   [0:0] icmp_ln55_19_fu_1135_p2;
wire   [0:0] icmp_ln55_18_fu_1129_p2;
wire   [0:0] or_ln55_9_fu_1141_p2;
wire   [0:0] or_ln55_8_fu_1123_p2;
wire   [0:0] and_ln55_8_fu_1147_p2;
wire   [63:0] bitcast_ln55_10_fu_1165_p1;
wire   [63:0] bitcast_ln55_11_fu_1183_p1;
wire   [10:0] tmp_16_fu_1169_p4;
wire   [51:0] trunc_ln55_10_fu_1179_p1;
wire   [0:0] icmp_ln55_21_fu_1206_p2;
wire   [0:0] icmp_ln55_20_fu_1200_p2;
wire   [10:0] tmp_17_fu_1186_p4;
wire   [51:0] trunc_ln55_11_fu_1196_p1;
wire   [0:0] icmp_ln55_23_fu_1224_p2;
wire   [0:0] icmp_ln55_22_fu_1218_p2;
wire   [0:0] or_ln55_11_fu_1230_p2;
wire   [0:0] or_ln55_10_fu_1212_p2;
wire   [0:0] and_ln55_10_fu_1236_p2;
wire   [63:0] bitcast_ln55_12_fu_1255_p1;
wire   [63:0] bitcast_ln55_13_fu_1272_p1;
wire   [10:0] tmp_19_fu_1258_p4;
wire   [51:0] trunc_ln55_12_fu_1268_p1;
wire   [0:0] icmp_ln55_25_fu_1295_p2;
wire   [0:0] icmp_ln55_24_fu_1289_p2;
wire   [10:0] tmp_20_fu_1275_p4;
wire   [51:0] trunc_ln55_13_fu_1285_p1;
wire   [0:0] icmp_ln55_27_fu_1313_p2;
wire   [0:0] icmp_ln55_26_fu_1307_p2;
wire   [0:0] or_ln55_13_fu_1319_p2;
wire   [0:0] or_ln55_12_fu_1301_p2;
wire   [0:0] and_ln55_12_fu_1325_p2;
wire   [7:0] zext_ln55_4_fu_1337_p1;
wire   [7:0] zext_ln55_5_fu_1346_p1;
wire   [7:0] min_s_8_fu_1340_p3;
wire   [7:0] zext_ln55_6_fu_1356_p1;
wire   [7:0] min_s_9_fu_1349_p3;
wire   [63:0] bitcast_ln55_14_fu_1373_p1;
wire   [63:0] bitcast_ln55_15_fu_1391_p1;
wire   [10:0] tmp_22_fu_1377_p4;
wire   [51:0] trunc_ln55_14_fu_1387_p1;
wire   [0:0] icmp_ln55_29_fu_1414_p2;
wire   [0:0] icmp_ln55_28_fu_1408_p2;
wire   [10:0] tmp_23_fu_1394_p4;
wire   [51:0] trunc_ln55_15_fu_1404_p1;
wire   [0:0] icmp_ln55_31_fu_1432_p2;
wire   [0:0] icmp_ln55_30_fu_1426_p2;
wire   [0:0] or_ln55_15_fu_1438_p2;
wire   [0:0] or_ln55_14_fu_1420_p2;
wire   [0:0] and_ln55_14_fu_1444_p2;
wire   [0:0] and_ln55_15_fu_1450_p2;
wire   [7:0] zext_ln55_7_fu_1462_p1;
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
#0 min_p_fu_106 = 64'd0;
#0 min_s_fu_110 = 8'd0;
#0 min_s_1_fu_114 = 6'd0;
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
        min_p_fu_106 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1587_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_106 <= min_p_17_fu_1455_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_114 <= 6'd1;
    end else if (((tmp_reg_1587 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_114 <= add_ln53_7_fu_989_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_110 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1587_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_110 <= min_s_11_fu_1465_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_334 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_334 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1575 <= add_ln53_1_fu_438_p2;
        add_ln53_1_reg_1575_pp0_iter1_reg <= add_ln53_1_reg_1575;
        add_ln53_6_reg_1581 <= add_ln53_6_fu_444_p2;
        add_ln53_reg_1569 <= add_ln53_fu_432_p2;
        and_ln55_7_reg_1824 <= and_ln55_7_fu_1045_p2;
        s_reg_1519 <= ap_sig_allocacmp_s;
        tmp_reg_1587 <= add_ln53_6_fu_444_p2[32'd6];
        tmp_reg_1587_pp0_iter1_reg <= tmp_reg_1587;
        zext_ln52_cast_reg_1508[7 : 0] <= zext_ln52_cast_fu_358_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_1616 <= add_ln53_2_fu_492_p2;
        add_ln53_3_reg_1627 <= add_ln53_3_fu_497_p2;
        add_ln53_3_reg_1627_pp0_iter1_reg <= add_ln53_3_reg_1627;
        llike_1_load_reg_1591 <= llike_1_q0;
        llike_2_load_reg_1596 <= llike_2_q0;
        llike_3_load_reg_1606 <= llike_3_q0;
        llike_4_load_reg_1622 <= llike_4_q0;
        llike_5_load_reg_1633 <= llike_5_q0;
        llike_6_load_reg_1638 <= llike_6_q0;
        llike_7_load_reg_1643 <= llike_7_q0;
        min_p_9_reg_1830 <= min_p_9_fu_1060_p3;
        min_s_7_reg_1837 <= min_s_7_fu_1070_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_1668 <= add_ln53_4_fu_564_p2;
        add_ln53_4_reg_1668_pp0_iter1_reg <= add_ln53_4_reg_1668;
        add_ln53_5_reg_1674 <= add_ln53_5_fu_569_p2;
        add_ln53_5_reg_1674_pp0_iter1_reg <= add_ln53_5_reg_1674;
        and_ln55_9_reg_1842 <= and_ln55_9_fu_1153_p2;
        llike_load_reg_1680 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_1855 <= and_ln55_11_fu_1242_p2;
        trunc_ln54_reg_1715 <= trunc_ln54_fu_618_p1;
        trunc_ln54_reg_1715_pp0_iter1_reg <= trunc_ln54_reg_1715;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_1868 <= and_ln55_13_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_1757 <= and_ln55_1_fu_743_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_1770 <= and_ln55_3_fu_833_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_1795 <= and_ln55_5_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_1814 <= icmp_ln55_14_fu_977_p2;
        icmp_ln55_15_reg_1819 <= icmp_ln55_15_fu_983_p2;
        min_p_7_reg_1808 <= min_p_7_fu_952_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_1848 <= min_p_11_fu_1159_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_1861 <= min_p_13_fu_1248_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_1879 <= min_p_15_fu_1367_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_1750 <= min_p_fu_106;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_1763 <= min_p_3_fu_749_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_1783 <= min_p_5_fu_852_p3;
        min_s_5_reg_1790 <= min_s_5_fu_862_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_1874 <= min_s_10_fu_1359_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_1776 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_1801 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_339 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_343 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_348 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_353 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_24_reg_1886 <= grp_fu_848_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_4_reg_1690 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_6_reg_1710 <= transition_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_1587 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1587_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_114;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_326_p0 = llike_load_reg_1680;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_326_p0 = llike_7_load_reg_1643;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_326_p0 = llike_6_load_reg_1638;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_326_p0 = llike_5_load_reg_1633;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_326_p0 = llike_4_load_reg_1622;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_326_p0 = llike_3_load_reg_1606;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_326_p0 = llike_2_load_reg_1596;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_326_p0 = llike_1_load_reg_1591;
        end else begin
            grp_fu_326_p0 = 'bx;
        end
    end else begin
        grp_fu_326_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_326_p1 = bitcast_ln54_7_fu_657_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_326_p1 = bitcast_ln54_6_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_326_p1 = bitcast_ln54_5_fu_648_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_326_p1 = bitcast_ln54_4_fu_644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_326_p1 = bitcast_ln54_3_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_326_p1 = bitcast_ln54_2_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_326_p1 = bitcast_ln54_1_fu_574_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_326_p1 = bitcast_ln54_fu_525_p1;
        end else begin
            grp_fu_326_p1 = 'bx;
        end
    end else begin
        grp_fu_326_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_330_p0 = p_6_reg_1801;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_330_p0 = p_4_reg_1776;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_330_p0 = reg_353;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_330_p0 = reg_348;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_330_p0 = reg_343;
    end else begin
        grp_fu_330_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_330_p1 = min_p_15_fu_1367_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_330_p1 = min_p_13_fu_1248_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_330_p1 = min_p_11_fu_1159_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_330_p1 = min_p_9_fu_1060_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_330_p1 = min_p_7_fu_952_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_330_p1 = min_p_5_fu_852_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_330_p1 = min_p_3_fu_749_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_330_p1 = min_p_fu_106;
    end else begin
        grp_fu_330_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_reg_1587_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_591_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_542_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_487_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_427_p1;
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
            transition_address1_local = zext_ln54_7_fu_634_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_608_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_470_p1;
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
assign add_ln53_1_fu_438_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_492_p2 = (s_reg_1519 + 6'd3);
assign add_ln53_3_fu_497_p2 = (s_reg_1519 + 6'd4);
assign add_ln53_4_fu_564_p2 = (s_reg_1519 + 6'd5);
assign add_ln53_5_fu_569_p2 = (s_reg_1519 + 6'd6);
assign add_ln53_6_fu_444_p2 = (zext_ln16_fu_380_p1 + 7'd7);
assign add_ln53_7_fu_989_p2 = (s_reg_1519 + 6'd8);
assign add_ln53_fu_432_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_465_p2 = (shl_ln54_1_fu_458_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_2_fu_482_p2 = (shl_ln54_2_fu_475_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_3_fu_537_p2 = (shl_ln54_3_fu_530_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_4_fu_554_p2 = (shl_ln54_4_fu_547_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_5_fu_586_p2 = (shl_ln54_5_fu_579_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_6_fu_603_p2 = (shl_ln54_6_fu_596_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_7_fu_629_p2 = (shl_ln54_7_fu_621_p3 + zext_ln52_cast_reg_1508);
assign add_ln54_8_fu_515_p2 = (zext_ln52_2 + zext_ln54_9_fu_511_p1);
assign add_ln54_fu_421_p2 = (shl_ln3_fu_413_p3 + zext_ln52_cast_fu_358_p1);
assign and_ln55_10_fu_1236_p2 = (or_ln55_11_fu_1230_p2 & or_ln55_10_fu_1212_p2);
assign and_ln55_11_fu_1242_p2 = (grp_fu_848_p_dout0 & and_ln55_10_fu_1236_p2);
assign and_ln55_12_fu_1325_p2 = (or_ln55_13_fu_1319_p2 & or_ln55_12_fu_1301_p2);
assign and_ln55_13_fu_1331_p2 = (grp_fu_848_p_dout0 & and_ln55_12_fu_1325_p2);
assign and_ln55_14_fu_1444_p2 = (or_ln55_15_fu_1438_p2 & or_ln55_14_fu_1420_p2);
assign and_ln55_15_fu_1450_p2 = (tmp_24_reg_1886 & and_ln55_14_fu_1444_p2);
assign and_ln55_1_fu_743_p2 = (or_ln55_1_fu_731_p2 & and_ln55_fu_737_p2);
assign and_ln55_2_fu_827_p2 = (or_ln55_3_fu_821_p2 & or_ln55_2_fu_803_p2);
assign and_ln55_3_fu_833_p2 = (grp_fu_848_p_dout0 & and_ln55_2_fu_827_p2);
assign and_ln55_4_fu_940_p2 = (or_ln55_5_fu_934_p2 & or_ln55_4_fu_916_p2);
assign and_ln55_5_fu_946_p2 = (grp_fu_848_p_dout0 & and_ln55_4_fu_940_p2);
assign and_ln55_6_fu_1039_p2 = (or_ln55_7_fu_1035_p2 & or_ln55_6_fu_1029_p2);
assign and_ln55_7_fu_1045_p2 = (grp_fu_848_p_dout0 & and_ln55_6_fu_1039_p2);
assign and_ln55_8_fu_1147_p2 = (or_ln55_9_fu_1141_p2 & or_ln55_8_fu_1123_p2);
assign and_ln55_9_fu_1153_p2 = (grp_fu_848_p_dout0 & and_ln55_8_fu_1147_p2);
assign and_ln55_fu_737_p2 = (or_ln55_fu_713_p2 & grp_fu_848_p_dout0);
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
assign bitcast_ln54_1_fu_574_p1 = reg_334;
assign bitcast_ln54_2_fu_613_p1 = reg_339;
assign bitcast_ln54_3_fu_639_p1 = reg_334;
assign bitcast_ln54_4_fu_644_p1 = transition_load_4_reg_1690;
assign bitcast_ln54_5_fu_648_p1 = reg_339;
assign bitcast_ln54_6_fu_653_p1 = transition_load_6_reg_1710;
assign bitcast_ln54_7_fu_657_p1 = reg_334;
assign bitcast_ln54_fu_525_p1 = reg_334;
assign bitcast_ln55_10_fu_1165_p1 = reg_348;
assign bitcast_ln55_11_fu_1183_p1 = min_p_11_reg_1848;
assign bitcast_ln55_12_fu_1255_p1 = p_6_reg_1801;
assign bitcast_ln55_13_fu_1272_p1 = min_p_13_reg_1861;
assign bitcast_ln55_14_fu_1373_p1 = reg_353;
assign bitcast_ln55_15_fu_1391_p1 = min_p_15_reg_1879;
assign bitcast_ln55_1_fu_684_p1 = min_p_1_reg_1750;
assign bitcast_ln55_2_fu_756_p1 = reg_348;
assign bitcast_ln55_3_fu_774_p1 = min_p_3_reg_1763;
assign bitcast_ln55_4_fu_869_p1 = reg_353;
assign bitcast_ln55_5_fu_887_p1 = min_p_5_reg_1783;
assign bitcast_ln55_6_fu_999_p1 = reg_343;
assign bitcast_ln55_7_fu_959_p1 = min_p_7_fu_952_p3;
assign bitcast_ln55_8_fu_1077_p1 = p_4_reg_1776;
assign bitcast_ln55_9_fu_1094_p1 = min_p_9_reg_1830;
assign bitcast_ln55_fu_666_p1 = reg_343;
assign grp_fu_434_p_ce = 1'b1;
assign grp_fu_434_p_din0 = grp_fu_326_p0;
assign grp_fu_434_p_din1 = grp_fu_326_p1;
assign grp_fu_434_p_opcode = 2'd0;
assign grp_fu_848_p_ce = 1'b1;
assign grp_fu_848_p_din0 = grp_fu_330_p0;
assign grp_fu_848_p_din1 = grp_fu_330_p1;
assign grp_fu_848_p_opcode = 5'd4;
assign icmp_ln55_10_fu_922_p2 = ((tmp_8_fu_890_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_928_p2 = ((trunc_ln55_5_fu_900_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1017_p2 = ((tmp_10_fu_1003_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1023_p2 = ((trunc_ln55_6_fu_1013_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_977_p2 = ((tmp_11_fu_963_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_983_p2 = ((trunc_ln55_7_fu_973_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1111_p2 = ((tmp_13_fu_1080_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1117_p2 = ((trunc_ln55_8_fu_1090_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1129_p2 = ((tmp_14_fu_1097_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1135_p2 = ((trunc_ln55_9_fu_1107_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_707_p2 = ((trunc_ln55_fu_680_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1200_p2 = ((tmp_16_fu_1169_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1206_p2 = ((trunc_ln55_10_fu_1179_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1218_p2 = ((tmp_17_fu_1186_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1224_p2 = ((trunc_ln55_11_fu_1196_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1289_p2 = ((tmp_19_fu_1258_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1295_p2 = ((trunc_ln55_12_fu_1268_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1307_p2 = ((tmp_20_fu_1275_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1313_p2 = ((trunc_ln55_13_fu_1285_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1408_p2 = ((tmp_22_fu_1377_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1414_p2 = ((trunc_ln55_14_fu_1387_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_719_p2 = ((tmp_2_fu_687_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1426_p2 = ((tmp_23_fu_1394_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1432_p2 = ((trunc_ln55_15_fu_1404_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_725_p2 = ((trunc_ln55_1_fu_697_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_791_p2 = ((tmp_4_fu_760_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_797_p2 = ((trunc_ln55_2_fu_770_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_809_p2 = ((tmp_5_fu_777_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_815_p2 = ((trunc_ln55_3_fu_787_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_904_p2 = ((tmp_7_fu_873_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_910_p2 = ((trunc_ln55_4_fu_883_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_701_p2 = ((tmp_1_fu_670_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_8_fu_402_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_8_fu_402_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_8_fu_402_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_8_fu_402_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_8_fu_402_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_8_fu_402_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_8_fu_402_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln54_10_fu_520_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_384_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_2_fu_502_p4 = {{add_ln53_6_reg_1581[6:3]}};
assign min_p_11_fu_1159_p3 = ((and_ln55_9_reg_1842[0:0] == 1'b1) ? p_4_reg_1776 : min_p_9_reg_1830);
assign min_p_13_fu_1248_p3 = ((and_ln55_11_reg_1855[0:0] == 1'b1) ? reg_348 : min_p_11_reg_1848);
assign min_p_15_fu_1367_p3 = ((and_ln55_13_reg_1868[0:0] == 1'b1) ? p_6_reg_1801 : min_p_13_reg_1861);
assign min_p_17_fu_1455_p3 = ((and_ln55_15_fu_1450_p2[0:0] == 1'b1) ? reg_353 : min_p_15_reg_1879);
assign min_p_3_fu_749_p3 = ((and_ln55_1_reg_1757[0:0] == 1'b1) ? reg_343 : min_p_1_reg_1750);
assign min_p_5_fu_852_p3 = ((and_ln55_3_reg_1770[0:0] == 1'b1) ? reg_348 : min_p_3_reg_1763);
assign min_p_7_fu_952_p3 = ((and_ln55_5_reg_1795[0:0] == 1'b1) ? reg_353 : min_p_5_reg_1783);
assign min_p_9_fu_1060_p3 = ((and_ln55_7_reg_1824[0:0] == 1'b1) ? reg_343 : min_p_7_reg_1808);
assign min_s_10_fu_1359_p3 = ((and_ln55_13_reg_1868[0:0] == 1'b1) ? zext_ln55_6_fu_1356_p1 : min_s_9_fu_1349_p3);
assign min_s_11_fu_1465_p3 = ((and_ln55_15_fu_1450_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1462_p1 : min_s_10_reg_1874);
assign min_s_18_out = ((and_ln55_13_reg_1868[0:0] == 1'b1) ? zext_ln55_6_fu_1356_p1 : min_s_9_fu_1349_p3);
assign min_s_4_fu_845_p3 = ((and_ln55_1_reg_1757[0:0] == 1'b1) ? zext_ln55_fu_842_p1 : min_s_fu_110);
assign min_s_5_fu_862_p3 = ((and_ln55_3_reg_1770[0:0] == 1'b1) ? zext_ln55_1_fu_859_p1 : min_s_4_fu_845_p3);
assign min_s_6_fu_1054_p3 = ((and_ln55_5_reg_1795[0:0] == 1'b1) ? zext_ln55_2_fu_1051_p1 : min_s_5_reg_1790);
assign min_s_7_fu_1070_p3 = ((and_ln55_7_reg_1824[0:0] == 1'b1) ? zext_ln55_3_fu_1067_p1 : min_s_6_fu_1054_p3);
assign min_s_8_fu_1340_p3 = ((and_ln55_9_reg_1842[0:0] == 1'b1) ? zext_ln55_4_fu_1337_p1 : min_s_7_reg_1837);
assign min_s_9_fu_1349_p3 = ((and_ln55_11_reg_1855[0:0] == 1'b1) ? zext_ln55_5_fu_1346_p1 : min_s_8_fu_1340_p3);
assign or_ln55_10_fu_1212_p2 = (icmp_ln55_21_fu_1206_p2 | icmp_ln55_20_fu_1200_p2);
assign or_ln55_11_fu_1230_p2 = (icmp_ln55_23_fu_1224_p2 | icmp_ln55_22_fu_1218_p2);
assign or_ln55_12_fu_1301_p2 = (icmp_ln55_25_fu_1295_p2 | icmp_ln55_24_fu_1289_p2);
assign or_ln55_13_fu_1319_p2 = (icmp_ln55_27_fu_1313_p2 | icmp_ln55_26_fu_1307_p2);
assign or_ln55_14_fu_1420_p2 = (icmp_ln55_29_fu_1414_p2 | icmp_ln55_28_fu_1408_p2);
assign or_ln55_15_fu_1438_p2 = (icmp_ln55_31_fu_1432_p2 | icmp_ln55_30_fu_1426_p2);
assign or_ln55_1_fu_731_p2 = (icmp_ln55_3_fu_725_p2 | icmp_ln55_2_fu_719_p2);
assign or_ln55_2_fu_803_p2 = (icmp_ln55_5_fu_797_p2 | icmp_ln55_4_fu_791_p2);
assign or_ln55_3_fu_821_p2 = (icmp_ln55_7_fu_815_p2 | icmp_ln55_6_fu_809_p2);
assign or_ln55_4_fu_916_p2 = (icmp_ln55_9_fu_910_p2 | icmp_ln55_8_fu_904_p2);
assign or_ln55_5_fu_934_p2 = (icmp_ln55_11_fu_928_p2 | icmp_ln55_10_fu_922_p2);
assign or_ln55_6_fu_1029_p2 = (icmp_ln55_13_fu_1023_p2 | icmp_ln55_12_fu_1017_p2);
assign or_ln55_7_fu_1035_p2 = (icmp_ln55_15_reg_1819 | icmp_ln55_14_reg_1814);
assign or_ln55_8_fu_1123_p2 = (icmp_ln55_17_fu_1117_p2 | icmp_ln55_16_fu_1111_p2);
assign or_ln55_9_fu_1141_p2 = (icmp_ln55_19_fu_1135_p2 | icmp_ln55_18_fu_1129_p2);
assign or_ln55_fu_713_p2 = (icmp_ln55_fu_701_p2 | icmp_ln55_1_fu_707_p2);
assign shl_ln3_fu_413_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_458_p3 = {{add_ln53_reg_1569}, {6'd0}};
assign shl_ln54_2_fu_475_p3 = {{add_ln53_1_reg_1575}, {6'd0}};
assign shl_ln54_3_fu_530_p3 = {{add_ln53_2_reg_1616}, {6'd0}};
assign shl_ln54_4_fu_547_p3 = {{add_ln53_3_reg_1627}, {6'd0}};
assign shl_ln54_5_fu_579_p3 = {{add_ln53_4_reg_1668}, {6'd0}};
assign shl_ln54_6_fu_596_p3 = {{add_ln53_5_reg_1674}, {6'd0}};
assign shl_ln54_7_fu_621_p3 = {{trunc_ln54_fu_618_p1}, {6'd0}};
assign tmp_10_fu_1003_p4 = {{bitcast_ln55_6_fu_999_p1[62:52]}};
assign tmp_11_fu_963_p4 = {{bitcast_ln55_7_fu_959_p1[62:52]}};
assign tmp_13_fu_1080_p4 = {{bitcast_ln55_8_fu_1077_p1[62:52]}};
assign tmp_14_fu_1097_p4 = {{bitcast_ln55_9_fu_1094_p1[62:52]}};
assign tmp_16_fu_1169_p4 = {{bitcast_ln55_10_fu_1165_p1[62:52]}};
assign tmp_17_fu_1186_p4 = {{bitcast_ln55_11_fu_1183_p1[62:52]}};
assign tmp_19_fu_1258_p4 = {{bitcast_ln55_12_fu_1255_p1[62:52]}};
assign tmp_1_fu_670_p4 = {{bitcast_ln55_fu_666_p1[62:52]}};
assign tmp_20_fu_1275_p4 = {{bitcast_ln55_13_fu_1272_p1[62:52]}};
assign tmp_22_fu_1377_p4 = {{bitcast_ln55_14_fu_1373_p1[62:52]}};
assign tmp_23_fu_1394_p4 = {{bitcast_ln55_15_fu_1391_p1[62:52]}};
assign tmp_2_fu_687_p4 = {{bitcast_ln55_1_fu_684_p1[62:52]}};
assign tmp_4_fu_760_p4 = {{bitcast_ln55_2_fu_756_p1[62:52]}};
assign tmp_5_fu_777_p4 = {{bitcast_ln55_3_fu_774_p1[62:52]}};
assign tmp_7_fu_873_p4 = {{bitcast_ln55_4_fu_869_p1[62:52]}};
assign tmp_8_fu_890_p4 = {{bitcast_ln55_5_fu_887_p1[62:52]}};
assign tmp_s_fu_394_p3 = {{t_1}, {lshr_ln8_2_fu_384_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_618_p1 = add_ln53_6_reg_1581[5:0];
assign trunc_ln55_10_fu_1179_p1 = bitcast_ln55_10_fu_1165_p1[51:0];
assign trunc_ln55_11_fu_1196_p1 = bitcast_ln55_11_fu_1183_p1[51:0];
assign trunc_ln55_12_fu_1268_p1 = bitcast_ln55_12_fu_1255_p1[51:0];
assign trunc_ln55_13_fu_1285_p1 = bitcast_ln55_13_fu_1272_p1[51:0];
assign trunc_ln55_14_fu_1387_p1 = bitcast_ln55_14_fu_1373_p1[51:0];
assign trunc_ln55_15_fu_1404_p1 = bitcast_ln55_15_fu_1391_p1[51:0];
assign trunc_ln55_1_fu_697_p1 = bitcast_ln55_1_fu_684_p1[51:0];
assign trunc_ln55_2_fu_770_p1 = bitcast_ln55_2_fu_756_p1[51:0];
assign trunc_ln55_3_fu_787_p1 = bitcast_ln55_3_fu_774_p1[51:0];
assign trunc_ln55_4_fu_883_p1 = bitcast_ln55_4_fu_869_p1[51:0];
assign trunc_ln55_5_fu_900_p1 = bitcast_ln55_5_fu_887_p1[51:0];
assign trunc_ln55_6_fu_1013_p1 = bitcast_ln55_6_fu_999_p1[51:0];
assign trunc_ln55_7_fu_973_p1 = bitcast_ln55_7_fu_959_p1[51:0];
assign trunc_ln55_8_fu_1090_p1 = bitcast_ln55_8_fu_1077_p1[51:0];
assign trunc_ln55_9_fu_1107_p1 = bitcast_ln55_9_fu_1094_p1[51:0];
assign trunc_ln55_fu_680_p1 = bitcast_ln55_fu_666_p1[51:0];
assign zext_ln16_fu_380_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_358_p1 = zext_ln52;
assign zext_ln54_10_fu_520_p1 = add_ln54_8_fu_515_p2;
assign zext_ln54_1_fu_470_p1 = add_ln54_1_fu_465_p2;
assign zext_ln54_2_fu_487_p1 = add_ln54_2_fu_482_p2;
assign zext_ln54_3_fu_542_p1 = add_ln54_3_fu_537_p2;
assign zext_ln54_4_fu_559_p1 = add_ln54_4_fu_554_p2;
assign zext_ln54_5_fu_591_p1 = add_ln54_5_fu_586_p2;
assign zext_ln54_6_fu_608_p1 = add_ln54_6_fu_603_p2;
assign zext_ln54_7_fu_634_p1 = add_ln54_7_fu_629_p2;
assign zext_ln54_8_fu_402_p1 = tmp_s_fu_394_p3;
assign zext_ln54_9_fu_511_p1 = lshr_ln9_2_fu_502_p4;
assign zext_ln54_fu_427_p1 = add_ln54_fu_421_p2;
assign zext_ln55_1_fu_859_p1 = add_ln53_reg_1569;
assign zext_ln55_2_fu_1051_p1 = add_ln53_1_reg_1575_pp0_iter1_reg;
assign zext_ln55_3_fu_1067_p1 = add_ln53_2_reg_1616;
assign zext_ln55_4_fu_1337_p1 = add_ln53_3_reg_1627_pp0_iter1_reg;
assign zext_ln55_5_fu_1346_p1 = add_ln53_4_reg_1668_pp0_iter1_reg;
assign zext_ln55_6_fu_1356_p1 = add_ln53_5_reg_1674_pp0_iter1_reg;
assign zext_ln55_7_fu_1462_p1 = trunc_ln54_reg_1715_pp0_iter1_reg;
assign zext_ln55_fu_842_p1 = s_reg_1519;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_1508[11:8] <= 4'b0000;
end
endmodule 
