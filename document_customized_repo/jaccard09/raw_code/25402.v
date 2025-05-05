module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_9,llike_address0,llike_ce0,llike_q0,empty,min_p_82_out,min_p_82_out_ap_vld,grp_fu_629_p_din0,grp_fu_629_p_din1,grp_fu_629_p_opcode,grp_fu_629_p_dout0,grp_fu_629_p_ce,grp_fu_1368_p_din0,grp_fu_1368_p_din1,grp_fu_1368_p_opcode,grp_fu_1368_p_dout0,grp_fu_1368_p_ce); 
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
input  [3:0] lshr_ln7;
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
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] empty;
output  [63:0] min_p_82_out;
output   min_p_82_out_ap_vld;
output  [63:0] grp_fu_629_p_din0;
output  [63:0] grp_fu_629_p_din1;
output  [1:0] grp_fu_629_p_opcode;
input  [63:0] grp_fu_629_p_dout0;
output   grp_fu_629_p_ce;
output  [63:0] grp_fu_1368_p_din0;
output  [63:0] grp_fu_1368_p_din1;
output  [4:0] grp_fu_1368_p_opcode;
input  [0:0] grp_fu_1368_p_dout0;
output   grp_fu_1368_p_ce;
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
reg   [0:0] tmp_184_reg_2176;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_579;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_585;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_591;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_597;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_603;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_609;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2069;
wire   [9:0] shl_ln1_fu_657_p3;
reg   [9:0] shl_ln1_reg_2089;
wire   [5:0] add_ln25_fu_713_p2;
reg   [5:0] add_ln25_reg_2135;
wire   [5:0] add_ln25_1_fu_761_p2;
reg   [5:0] add_ln25_1_reg_2150;
wire   [5:0] add_ln25_2_fu_790_p2;
reg   [5:0] add_ln25_2_reg_2160;
wire   [6:0] add_ln25_3_fu_819_p2;
reg   [6:0] add_ln25_3_reg_2170;
reg   [0:0] tmp_184_reg_2176_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2180;
wire   [63:0] tmp_10_fu_849_p11;
reg   [63:0] tmp_10_reg_2185;
reg   [63:0] llike_2_load_reg_2190;
wire   [63:0] tmp_11_fu_888_p11;
reg   [63:0] tmp_11_reg_2195;
reg   [63:0] llike_3_load_reg_2200;
reg   [63:0] llike_load_1_reg_2225;
reg   [63:0] llike_1_load_1_reg_2250;
reg   [5:0] tmp_181_reg_2255;
reg   [63:0] llike_2_load_1_reg_2260;
reg   [63:0] llike_3_load_1_reg_2265;
wire   [63:0] tmp_12_fu_1009_p11;
reg   [63:0] tmp_12_reg_2275;
wire   [63:0] tmp_13_fu_1048_p11;
reg   [63:0] tmp_13_reg_2280;
reg   [63:0] llike_load_3_reg_2325;
wire   [63:0] tmp_14_fu_1115_p11;
reg   [63:0] tmp_14_reg_2330;
wire   [63:0] tmp_15_fu_1154_p11;
reg   [63:0] tmp_15_reg_2335;
wire   [63:0] tmp_16_fu_1225_p11;
reg   [63:0] tmp_16_reg_2380;
wire   [63:0] tmp_19_fu_1264_p11;
reg   [63:0] tmp_19_reg_2385;
reg   [63:0] add52_5_reg_2390;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2395;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_67_reg_2400;
wire   [0:0] and_ln29_1_fu_1378_p2;
reg   [0:0] and_ln29_1_reg_2407;
wire   [63:0] min_p_69_fu_1384_p3;
reg   [63:0] min_p_69_reg_2412;
wire   [0:0] and_ln29_3_fu_1468_p2;
reg   [0:0] and_ln29_3_reg_2419;
wire   [63:0] min_p_71_fu_1474_p3;
reg   [63:0] min_p_71_reg_2424;
wire   [0:0] and_ln29_5_fu_1558_p2;
reg   [0:0] and_ln29_5_reg_2431;
wire   [63:0] min_p_73_fu_1564_p3;
reg   [63:0] min_p_73_reg_2436;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_1589_p2;
reg   [0:0] icmp_ln29_14_reg_2442;
wire   [0:0] icmp_ln29_15_fu_1595_p2;
reg   [0:0] icmp_ln29_15_reg_2447;
reg   [63:0] p_38_reg_2452;
wire   [0:0] and_ln29_7_fu_1647_p2;
reg   [0:0] and_ln29_7_reg_2459;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_75_fu_1653_p3;
reg   [63:0] min_p_75_reg_2464;
wire   [0:0] and_ln29_9_fu_1737_p2;
reg   [0:0] and_ln29_9_reg_2471;
wire   [63:0] min_p_77_fu_1743_p3;
reg   [63:0] min_p_77_reg_2476;
wire   [0:0] and_ln29_11_fu_1827_p2;
reg   [0:0] and_ln29_11_reg_2483;
wire   [63:0] min_p_79_fu_1833_p3;
reg   [63:0] min_p_79_reg_2488;
wire   [0:0] and_ln29_13_fu_1917_p2;
reg   [0:0] and_ln29_13_reg_2495;
wire   [63:0] min_p_81_fu_1923_p3;
reg   [63:0] min_p_81_reg_2500;
reg   [0:0] tmp_180_reg_2507;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_650_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_673_p1;
wire   [63:0] zext_ln27_1_fu_705_p1;
wire   [63:0] zext_ln26_1_fu_737_p1;
wire   [63:0] zext_ln26_2_fu_756_p1;
wire   [63:0] zext_ln26_3_fu_785_p1;
wire   [63:0] zext_ln26_4_fu_814_p1;
wire   [63:0] zext_ln27_2_fu_933_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_947_p1;
wire   [63:0] zext_ln26_6_fu_988_p1;
wire   [63:0] zext_ln27_4_fu_1077_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1091_p1;
wire   [63:0] zext_ln27_6_fu_1183_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1201_p1;
reg   [63:0] min_p_fu_132;
wire   [63:0] min_p_83_fu_2012_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_136;
wire   [5:0] add_ln25_4_fu_1287_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
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
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_571_p0;
reg   [63:0] grp_fu_571_p1;
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
reg   [63:0] grp_fu_575_p0;
reg   [63:0] grp_fu_575_p1;
wire   [3:0] lshr_ln7_1_fu_632_p4;
wire   [11:0] tmp_s_fu_642_p3;
wire   [9:0] add_ln_fu_665_p3;
wire   [9:0] add_ln27_fu_681_p2;
wire   [5:0] tmp_165_fu_687_p4;
wire   [9:0] add_ln27_2_fu_697_p3;
wire   [3:0] lshr_ln8_s_fu_719_p4;
wire   [11:0] tmp_173_fu_729_p3;
wire   [3:0] add_ln8_fu_742_p2;
wire   [11:0] tmp_177_fu_748_p3;
wire   [3:0] lshr_ln8_1_fu_767_p4;
wire   [11:0] tmp_182_fu_777_p3;
wire   [3:0] lshr_ln8_2_fu_796_p4;
wire   [11:0] tmp_183_fu_806_p3;
wire   [6:0] zext_ln16_fu_628_p1;
wire   [63:0] tmp_10_fu_849_p2;
wire   [63:0] tmp_10_fu_849_p4;
wire   [63:0] tmp_10_fu_849_p6;
wire   [63:0] tmp_10_fu_849_p8;
wire   [63:0] tmp_10_fu_849_p9;
wire   [63:0] tmp_11_fu_888_p2;
wire   [63:0] tmp_11_fu_888_p4;
wire   [63:0] tmp_11_fu_888_p6;
wire   [63:0] tmp_11_fu_888_p8;
wire   [63:0] tmp_11_fu_888_p9;
wire   [9:0] add_ln27_1_fu_911_p2;
wire   [5:0] tmp_169_fu_916_p4;
wire   [9:0] add_ln27_4_fu_926_p3;
wire   [9:0] add_ln27_5_fu_941_p3;
wire   [9:0] add_ln27_3_fu_955_p2;
wire   [4:0] lshr_ln8_3_fu_970_p4;
wire   [11:0] zext_ln26_5_fu_979_p1;
wire   [11:0] add_ln26_fu_983_p2;
wire   [63:0] tmp_12_fu_1009_p2;
wire   [63:0] tmp_12_fu_1009_p4;
wire   [63:0] tmp_12_fu_1009_p6;
wire   [63:0] tmp_12_fu_1009_p8;
wire   [63:0] tmp_12_fu_1009_p9;
wire   [63:0] tmp_13_fu_1048_p2;
wire   [63:0] tmp_13_fu_1048_p4;
wire   [63:0] tmp_13_fu_1048_p6;
wire   [63:0] tmp_13_fu_1048_p8;
wire   [63:0] tmp_13_fu_1048_p9;
wire   [9:0] add_ln27_7_fu_1071_p3;
wire   [9:0] add_ln27_8_fu_1085_p3;
wire   [63:0] tmp_14_fu_1115_p2;
wire   [63:0] tmp_14_fu_1115_p4;
wire   [63:0] tmp_14_fu_1115_p6;
wire   [63:0] tmp_14_fu_1115_p8;
wire   [63:0] tmp_14_fu_1115_p9;
wire   [63:0] tmp_15_fu_1154_p2;
wire   [63:0] tmp_15_fu_1154_p4;
wire   [63:0] tmp_15_fu_1154_p6;
wire   [63:0] tmp_15_fu_1154_p8;
wire   [63:0] tmp_15_fu_1154_p9;
wire   [9:0] add_ln27_9_fu_1177_p3;
wire   [5:0] trunc_ln27_fu_1191_p1;
wire   [9:0] add_ln27_s_fu_1194_p3;
wire   [63:0] tmp_16_fu_1225_p2;
wire   [63:0] tmp_16_fu_1225_p4;
wire   [63:0] tmp_16_fu_1225_p6;
wire   [63:0] tmp_16_fu_1225_p8;
wire   [63:0] tmp_16_fu_1225_p9;
wire   [63:0] tmp_19_fu_1264_p2;
wire   [63:0] tmp_19_fu_1264_p4;
wire   [63:0] tmp_19_fu_1264_p6;
wire   [63:0] tmp_19_fu_1264_p8;
wire   [63:0] tmp_19_fu_1264_p9;
wire   [63:0] bitcast_ln29_fu_1301_p1;
wire   [63:0] bitcast_ln29_1_fu_1319_p1;
wire   [10:0] tmp_150_fu_1305_p4;
wire   [51:0] trunc_ln29_fu_1315_p1;
wire   [0:0] icmp_ln29_1_fu_1342_p2;
wire   [0:0] icmp_ln29_fu_1336_p2;
wire   [10:0] tmp_151_fu_1322_p4;
wire   [51:0] trunc_ln29_1_fu_1332_p1;
wire   [0:0] icmp_ln29_3_fu_1360_p2;
wire   [0:0] icmp_ln29_2_fu_1354_p2;
wire   [0:0] or_ln29_fu_1348_p2;
wire   [0:0] and_ln29_fu_1372_p2;
wire   [0:0] or_ln29_1_fu_1366_p2;
wire   [63:0] bitcast_ln29_2_fu_1391_p1;
wire   [63:0] bitcast_ln29_3_fu_1409_p1;
wire   [10:0] tmp_154_fu_1395_p4;
wire   [51:0] trunc_ln29_2_fu_1405_p1;
wire   [0:0] icmp_ln29_5_fu_1432_p2;
wire   [0:0] icmp_ln29_4_fu_1426_p2;
wire   [10:0] tmp_155_fu_1412_p4;
wire   [51:0] trunc_ln29_3_fu_1422_p1;
wire   [0:0] icmp_ln29_7_fu_1450_p2;
wire   [0:0] icmp_ln29_6_fu_1444_p2;
wire   [0:0] or_ln29_3_fu_1456_p2;
wire   [0:0] or_ln29_2_fu_1438_p2;
wire   [0:0] and_ln29_2_fu_1462_p2;
wire   [63:0] bitcast_ln29_4_fu_1481_p1;
wire   [63:0] bitcast_ln29_5_fu_1499_p1;
wire   [10:0] tmp_158_fu_1485_p4;
wire   [51:0] trunc_ln29_4_fu_1495_p1;
wire   [0:0] icmp_ln29_9_fu_1522_p2;
wire   [0:0] icmp_ln29_8_fu_1516_p2;
wire   [10:0] tmp_159_fu_1502_p4;
wire   [51:0] trunc_ln29_5_fu_1512_p1;
wire   [0:0] icmp_ln29_11_fu_1540_p2;
wire   [0:0] icmp_ln29_10_fu_1534_p2;
wire   [0:0] or_ln29_5_fu_1546_p2;
wire   [0:0] or_ln29_4_fu_1528_p2;
wire   [0:0] and_ln29_4_fu_1552_p2;
wire   [63:0] bitcast_ln29_7_fu_1571_p1;
wire   [10:0] tmp_163_fu_1575_p4;
wire   [51:0] trunc_ln29_7_fu_1585_p1;
wire   [63:0] bitcast_ln29_6_fu_1601_p1;
wire   [10:0] tmp_162_fu_1605_p4;
wire   [51:0] trunc_ln29_6_fu_1615_p1;
wire   [0:0] icmp_ln29_13_fu_1625_p2;
wire   [0:0] icmp_ln29_12_fu_1619_p2;
wire   [0:0] or_ln29_7_fu_1637_p2;
wire   [0:0] or_ln29_6_fu_1631_p2;
wire   [0:0] and_ln29_6_fu_1641_p2;
wire   [63:0] bitcast_ln29_8_fu_1660_p1;
wire   [63:0] bitcast_ln29_9_fu_1678_p1;
wire   [10:0] tmp_166_fu_1664_p4;
wire   [51:0] trunc_ln29_8_fu_1674_p1;
wire   [0:0] icmp_ln29_17_fu_1701_p2;
wire   [0:0] icmp_ln29_16_fu_1695_p2;
wire   [10:0] tmp_167_fu_1681_p4;
wire   [51:0] trunc_ln29_9_fu_1691_p1;
wire   [0:0] icmp_ln29_19_fu_1719_p2;
wire   [0:0] icmp_ln29_18_fu_1713_p2;
wire   [0:0] or_ln29_9_fu_1725_p2;
wire   [0:0] or_ln29_8_fu_1707_p2;
wire   [0:0] and_ln29_8_fu_1731_p2;
wire   [63:0] bitcast_ln29_10_fu_1750_p1;
wire   [63:0] bitcast_ln29_11_fu_1768_p1;
wire   [10:0] tmp_170_fu_1754_p4;
wire   [51:0] trunc_ln29_10_fu_1764_p1;
wire   [0:0] icmp_ln29_21_fu_1791_p2;
wire   [0:0] icmp_ln29_20_fu_1785_p2;
wire   [10:0] tmp_171_fu_1771_p4;
wire   [51:0] trunc_ln29_11_fu_1781_p1;
wire   [0:0] icmp_ln29_23_fu_1809_p2;
wire   [0:0] icmp_ln29_22_fu_1803_p2;
wire   [0:0] or_ln29_11_fu_1815_p2;
wire   [0:0] or_ln29_10_fu_1797_p2;
wire   [0:0] and_ln29_10_fu_1821_p2;
wire   [63:0] bitcast_ln29_12_fu_1840_p1;
wire   [63:0] bitcast_ln29_13_fu_1858_p1;
wire   [10:0] tmp_174_fu_1844_p4;
wire   [51:0] trunc_ln29_12_fu_1854_p1;
wire   [0:0] icmp_ln29_25_fu_1881_p2;
wire   [0:0] icmp_ln29_24_fu_1875_p2;
wire   [10:0] tmp_175_fu_1861_p4;
wire   [51:0] trunc_ln29_13_fu_1871_p1;
wire   [0:0] icmp_ln29_27_fu_1899_p2;
wire   [0:0] icmp_ln29_26_fu_1893_p2;
wire   [0:0] or_ln29_13_fu_1905_p2;
wire   [0:0] or_ln29_12_fu_1887_p2;
wire   [0:0] and_ln29_12_fu_1911_p2;
wire   [63:0] bitcast_ln29_14_fu_1931_p1;
wire   [63:0] bitcast_ln29_15_fu_1948_p1;
wire   [10:0] tmp_178_fu_1934_p4;
wire   [51:0] trunc_ln29_14_fu_1944_p1;
wire   [0:0] icmp_ln29_29_fu_1971_p2;
wire   [0:0] icmp_ln29_28_fu_1965_p2;
wire   [10:0] tmp_179_fu_1951_p4;
wire   [51:0] trunc_ln29_15_fu_1961_p1;
wire   [0:0] icmp_ln29_31_fu_1989_p2;
wire   [0:0] icmp_ln29_30_fu_1983_p2;
wire   [0:0] or_ln29_15_fu_1995_p2;
wire   [0:0] or_ln29_14_fu_1977_p2;
wire   [0:0] and_ln29_14_fu_2001_p2;
wire   [0:0] and_ln29_15_fu_2007_p2;
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
wire   [1:0] tmp_10_fu_849_p1;
wire   [1:0] tmp_10_fu_849_p3;
wire  signed [1:0] tmp_10_fu_849_p5;
wire  signed [1:0] tmp_10_fu_849_p7;
wire   [1:0] tmp_11_fu_888_p1;
wire   [1:0] tmp_11_fu_888_p3;
wire  signed [1:0] tmp_11_fu_888_p5;
wire  signed [1:0] tmp_11_fu_888_p7;
wire   [1:0] tmp_12_fu_1009_p1;
wire   [1:0] tmp_12_fu_1009_p3;
wire  signed [1:0] tmp_12_fu_1009_p5;
wire  signed [1:0] tmp_12_fu_1009_p7;
wire   [1:0] tmp_13_fu_1048_p1;
wire   [1:0] tmp_13_fu_1048_p3;
wire  signed [1:0] tmp_13_fu_1048_p5;
wire  signed [1:0] tmp_13_fu_1048_p7;
wire   [1:0] tmp_14_fu_1115_p1;
wire   [1:0] tmp_14_fu_1115_p3;
wire  signed [1:0] tmp_14_fu_1115_p5;
wire  signed [1:0] tmp_14_fu_1115_p7;
wire   [1:0] tmp_15_fu_1154_p1;
wire   [1:0] tmp_15_fu_1154_p3;
wire  signed [1:0] tmp_15_fu_1154_p5;
wire  signed [1:0] tmp_15_fu_1154_p7;
wire   [1:0] tmp_16_fu_1225_p1;
wire   [1:0] tmp_16_fu_1225_p3;
wire  signed [1:0] tmp_16_fu_1225_p5;
wire  signed [1:0] tmp_16_fu_1225_p7;
wire   [1:0] tmp_19_fu_1264_p1;
wire   [1:0] tmp_19_fu_1264_p3;
wire  signed [1:0] tmp_19_fu_1264_p5;
wire  signed [1:0] tmp_19_fu_1264_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_132 = 64'd0;
#0 prev_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U30(.din0(tmp_10_fu_849_p2),.din1(tmp_10_fu_849_p4),.din2(tmp_10_fu_849_p6),.din3(tmp_10_fu_849_p8),.def(tmp_10_fu_849_p9),.sel(empty_10),.dout(tmp_10_fu_849_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U31(.din0(tmp_11_fu_888_p2),.din1(tmp_11_fu_888_p4),.din2(tmp_11_fu_888_p6),.din3(tmp_11_fu_888_p8),.def(tmp_11_fu_888_p9),.sel(empty_10),.dout(tmp_11_fu_888_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U32(.din0(tmp_12_fu_1009_p2),.din1(tmp_12_fu_1009_p4),.din2(tmp_12_fu_1009_p6),.din3(tmp_12_fu_1009_p8),.def(tmp_12_fu_1009_p9),.sel(empty_10),.dout(tmp_12_fu_1009_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(tmp_13_fu_1048_p2),.din1(tmp_13_fu_1048_p4),.din2(tmp_13_fu_1048_p6),.din3(tmp_13_fu_1048_p8),.def(tmp_13_fu_1048_p9),.sel(empty_10),.dout(tmp_13_fu_1048_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U34(.din0(tmp_14_fu_1115_p2),.din1(tmp_14_fu_1115_p4),.din2(tmp_14_fu_1115_p6),.din3(tmp_14_fu_1115_p8),.def(tmp_14_fu_1115_p9),.sel(empty_10),.dout(tmp_14_fu_1115_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U35(.din0(tmp_15_fu_1154_p2),.din1(tmp_15_fu_1154_p4),.din2(tmp_15_fu_1154_p6),.din3(tmp_15_fu_1154_p8),.def(tmp_15_fu_1154_p9),.sel(empty_10),.dout(tmp_15_fu_1154_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U36(.din0(tmp_16_fu_1225_p2),.din1(tmp_16_fu_1225_p4),.din2(tmp_16_fu_1225_p6),.din3(tmp_16_fu_1225_p8),.def(tmp_16_fu_1225_p9),.sel(empty_10),.dout(tmp_16_fu_1225_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U37(.din0(tmp_19_fu_1264_p2),.din1(tmp_19_fu_1264_p4),.din2(tmp_19_fu_1264_p6),.din3(tmp_19_fu_1264_p8),.def(tmp_19_fu_1264_p9),.sel(empty_10),.dout(tmp_19_fu_1264_p11));
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
            min_p_fu_132 <= min_p_66;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_132 <= min_p_83_fu_2012_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_136 <= 6'd1;
    end else if (((tmp_184_reg_2176 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_136 <= add_ln25_4_fu_1287_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2390 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2395 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2150 <= add_ln25_1_fu_761_p2;
        add_ln25_2_reg_2160 <= add_ln25_2_fu_790_p2;
        add_ln25_3_reg_2170 <= add_ln25_3_fu_819_p2;
        add_ln25_reg_2135 <= add_ln25_fu_713_p2;
        prev_1_reg_2069 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2089[9 : 4] <= shl_ln1_fu_657_p3[9 : 4];
        tmp_184_reg_2176 <= add_ln25_3_fu_819_p2[32'd6];
        tmp_184_reg_2176_pp0_iter1_reg <= tmp_184_reg_2176;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2483 <= and_ln29_11_fu_1827_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2495 <= and_ln29_13_fu_1917_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_2407 <= and_ln29_1_fu_1378_p2;
        tmp_12_reg_2275 <= tmp_12_fu_1009_p11;
        tmp_13_reg_2280 <= tmp_13_fu_1048_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2419 <= and_ln29_3_fu_1468_p2;
        tmp_16_reg_2380 <= tmp_16_fu_1225_p11;
        tmp_19_reg_2385 <= tmp_19_fu_1264_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2431 <= and_ln29_5_fu_1558_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2459 <= and_ln29_7_fu_1647_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2471 <= and_ln29_9_fu_1737_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2442 <= icmp_ln29_14_fu_1589_p2;
        icmp_ln29_15_reg_2447 <= icmp_ln29_15_fu_1595_p2;
        min_p_73_reg_2436 <= min_p_73_fu_1564_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2250 <= llike_1_q0;
        llike_1_load_reg_2180 <= llike_1_q1;
        llike_2_load_1_reg_2260 <= llike_2_q0;
        llike_2_load_reg_2190 <= llike_2_q1;
        llike_3_load_1_reg_2265 <= llike_3_q0;
        llike_3_load_reg_2200 <= llike_3_q1;
        llike_load_1_reg_2225 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_3_reg_2325 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_67_reg_2400 <= min_p_fu_132;
        tmp_10_reg_2185 <= tmp_10_fu_849_p11;
        tmp_11_reg_2195 <= tmp_11_fu_888_p11;
        tmp_181_reg_2255 <= {{add_ln27_3_fu_955_p2[9:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_69_reg_2412 <= min_p_69_fu_1384_p3;
        tmp_14_reg_2330 <= tmp_14_fu_1115_p11;
        tmp_15_reg_2335 <= tmp_15_fu_1154_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_71_reg_2424 <= min_p_71_fu_1474_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_75_reg_2464 <= min_p_75_fu_1653_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_77_reg_2476 <= min_p_77_fu_1743_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_79_reg_2488 <= min_p_79_fu_1833_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_81_reg_2500 <= min_p_81_fu_1923_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_38_reg_2452 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_579 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_585 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_591 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_597 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_603 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_609 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_180_reg_2507 <= grp_fu_1368_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_184_reg_2176 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_184_reg_2176_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_571_p0 = add52_7_reg_2395;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_571_p0 = reg_609;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_571_p0 = add52_5_reg_2390;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_571_p0 = reg_603;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_571_p0 = reg_597;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_571_p0 = reg_591;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_571_p0 = reg_585;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_571_p0 = reg_579;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_571_p0 = llike_load_3_reg_2325;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_571_p0 = llike_3_load_1_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_571_p0 = llike_2_load_1_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_571_p0 = llike_1_load_1_reg_2250;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_571_p0 = llike_load_1_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_571_p0 = llike_3_load_reg_2200;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_571_p0 = llike_2_load_reg_2190;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_571_p0 = llike_1_load_reg_2180;
    end else begin
        grp_fu_571_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_571_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_571_p1 = tmp_19_reg_2385;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_571_p1 = tmp_16_reg_2380;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_571_p1 = tmp_15_reg_2335;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_571_p1 = tmp_14_reg_2330;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_571_p1 = tmp_13_reg_2280;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_571_p1 = tmp_12_reg_2275;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_571_p1 = tmp_11_reg_2195;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_571_p1 = tmp_10_reg_2185;
    end else begin
        grp_fu_571_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_575_p0 = p_38_reg_2452;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_575_p0 = reg_609;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_575_p0 = reg_603;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_575_p0 = reg_597;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_575_p0 = reg_591;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_575_p0 = reg_585;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_575_p0 = reg_579;
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_575_p1 = min_p_81_fu_1923_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_575_p1 = min_p_79_fu_1833_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_575_p1 = min_p_77_fu_1743_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_575_p1 = min_p_75_fu_1653_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_575_p1 = min_p_73_fu_1564_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_575_p1 = min_p_71_fu_1474_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p1 = min_p_69_fu_1384_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_575_p1 = min_p_fu_132;
        end else begin
            grp_fu_575_p1 = 'bx;
        end
    end else begin
        grp_fu_575_p1 = 'bx;
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
            llike_address0_local = zext_ln26_6_fu_988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_737_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_184_reg_2176_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_82_out_ap_vld = 1'b1;
    end else begin
        min_p_82_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_705_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_933_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_673_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_705_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_933_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_673_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_705_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_933_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_673_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1201_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_705_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1183_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_933_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_673_p1;
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
assign add_ln25_1_fu_761_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_790_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_819_p2 = (zext_ln16_fu_628_p1 + 7'd7);
assign add_ln25_4_fu_1287_p2 = (prev_1_reg_2069 + 6'd8);
assign add_ln25_fu_713_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_983_p2 = (empty + zext_ln26_5_fu_979_p1);
assign add_ln27_1_fu_911_p2 = (shl_ln1_reg_2089 + 10'd32);
assign add_ln27_2_fu_697_p3 = {{tmp_165_fu_687_p4}, {lshr_ln7}};
assign add_ln27_3_fu_955_p2 = (shl_ln1_reg_2089 + 10'd64);
assign add_ln27_4_fu_926_p3 = {{tmp_169_fu_916_p4}, {lshr_ln7}};
assign add_ln27_5_fu_941_p3 = {{add_ln25_reg_2135}, {lshr_ln7}};
assign add_ln27_7_fu_1071_p3 = {{tmp_181_reg_2255}, {lshr_ln7}};
assign add_ln27_8_fu_1085_p3 = {{add_ln25_1_reg_2150}, {lshr_ln7}};
assign add_ln27_9_fu_1177_p3 = {{add_ln25_2_reg_2160}, {lshr_ln7}};
assign add_ln27_fu_681_p2 = (shl_ln1_fu_657_p3 + 10'd16);
assign add_ln27_s_fu_1194_p3 = {{trunc_ln27_fu_1191_p1}, {lshr_ln7}};
assign add_ln8_fu_742_p2 = (lshr_ln7_1_fu_632_p4 + 4'd1);
assign add_ln_fu_665_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_10_fu_1821_p2 = (or_ln29_11_fu_1815_p2 & or_ln29_10_fu_1797_p2);
assign and_ln29_11_fu_1827_p2 = (grp_fu_1368_p_dout0 & and_ln29_10_fu_1821_p2);
assign and_ln29_12_fu_1911_p2 = (or_ln29_13_fu_1905_p2 & or_ln29_12_fu_1887_p2);
assign and_ln29_13_fu_1917_p2 = (grp_fu_1368_p_dout0 & and_ln29_12_fu_1911_p2);
assign and_ln29_14_fu_2001_p2 = (or_ln29_15_fu_1995_p2 & or_ln29_14_fu_1977_p2);
assign and_ln29_15_fu_2007_p2 = (tmp_180_reg_2507 & and_ln29_14_fu_2001_p2);
assign and_ln29_1_fu_1378_p2 = (or_ln29_1_fu_1366_p2 & and_ln29_fu_1372_p2);
assign and_ln29_2_fu_1462_p2 = (or_ln29_3_fu_1456_p2 & or_ln29_2_fu_1438_p2);
assign and_ln29_3_fu_1468_p2 = (grp_fu_1368_p_dout0 & and_ln29_2_fu_1462_p2);
assign and_ln29_4_fu_1552_p2 = (or_ln29_5_fu_1546_p2 & or_ln29_4_fu_1528_p2);
assign and_ln29_5_fu_1558_p2 = (grp_fu_1368_p_dout0 & and_ln29_4_fu_1552_p2);
assign and_ln29_6_fu_1641_p2 = (or_ln29_7_fu_1637_p2 & or_ln29_6_fu_1631_p2);
assign and_ln29_7_fu_1647_p2 = (grp_fu_1368_p_dout0 & and_ln29_6_fu_1641_p2);
assign and_ln29_8_fu_1731_p2 = (or_ln29_9_fu_1725_p2 & or_ln29_8_fu_1707_p2);
assign and_ln29_9_fu_1737_p2 = (grp_fu_1368_p_dout0 & and_ln29_8_fu_1731_p2);
assign and_ln29_fu_1372_p2 = (or_ln29_fu_1348_p2 & grp_fu_1368_p_dout0);
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
assign bitcast_ln29_10_fu_1750_p1 = reg_603;
assign bitcast_ln29_11_fu_1768_p1 = min_p_77_reg_2476;
assign bitcast_ln29_12_fu_1840_p1 = reg_609;
assign bitcast_ln29_13_fu_1858_p1 = min_p_79_reg_2488;
assign bitcast_ln29_14_fu_1931_p1 = p_38_reg_2452;
assign bitcast_ln29_15_fu_1948_p1 = min_p_81_reg_2500;
assign bitcast_ln29_1_fu_1319_p1 = min_p_67_reg_2400;
assign bitcast_ln29_2_fu_1391_p1 = reg_585;
assign bitcast_ln29_3_fu_1409_p1 = min_p_69_reg_2412;
assign bitcast_ln29_4_fu_1481_p1 = reg_591;
assign bitcast_ln29_5_fu_1499_p1 = min_p_71_reg_2424;
assign bitcast_ln29_6_fu_1601_p1 = reg_579;
assign bitcast_ln29_7_fu_1571_p1 = min_p_73_fu_1564_p3;
assign bitcast_ln29_8_fu_1660_p1 = reg_597;
assign bitcast_ln29_9_fu_1678_p1 = min_p_75_reg_2464;
assign bitcast_ln29_fu_1301_p1 = reg_579;
assign grp_fu_1368_p_ce = 1'b1;
assign grp_fu_1368_p_din0 = grp_fu_575_p0;
assign grp_fu_1368_p_din1 = grp_fu_575_p1;
assign grp_fu_1368_p_opcode = 5'd4;
assign grp_fu_629_p_ce = 1'b1;
assign grp_fu_629_p_din0 = grp_fu_571_p0;
assign grp_fu_629_p_din1 = grp_fu_571_p1;
assign grp_fu_629_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1534_p2 = ((tmp_159_fu_1502_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1540_p2 = ((trunc_ln29_5_fu_1512_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1619_p2 = ((tmp_162_fu_1605_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1625_p2 = ((trunc_ln29_6_fu_1615_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1589_p2 = ((tmp_163_fu_1575_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1595_p2 = ((trunc_ln29_7_fu_1585_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1695_p2 = ((tmp_166_fu_1664_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1701_p2 = ((trunc_ln29_8_fu_1674_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1713_p2 = ((tmp_167_fu_1681_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1719_p2 = ((trunc_ln29_9_fu_1691_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1342_p2 = ((trunc_ln29_fu_1315_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1785_p2 = ((tmp_170_fu_1754_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1791_p2 = ((trunc_ln29_10_fu_1764_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1803_p2 = ((tmp_171_fu_1771_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1809_p2 = ((trunc_ln29_11_fu_1781_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1875_p2 = ((tmp_174_fu_1844_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1881_p2 = ((trunc_ln29_12_fu_1854_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1893_p2 = ((tmp_175_fu_1861_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1899_p2 = ((trunc_ln29_13_fu_1871_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1965_p2 = ((tmp_178_fu_1934_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1971_p2 = ((trunc_ln29_14_fu_1944_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1354_p2 = ((tmp_151_fu_1322_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1983_p2 = ((tmp_179_fu_1951_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1989_p2 = ((trunc_ln29_15_fu_1961_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1360_p2 = ((trunc_ln29_1_fu_1332_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1426_p2 = ((tmp_154_fu_1395_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1432_p2 = ((trunc_ln29_2_fu_1405_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1444_p2 = ((tmp_155_fu_1412_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1450_p2 = ((trunc_ln29_3_fu_1422_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1516_p2 = ((tmp_158_fu_1485_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1522_p2 = ((trunc_ln29_4_fu_1495_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1336_p2 = ((tmp_150_fu_1305_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_756_p1;
assign llike_1_address1 = zext_ln26_fu_650_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln26_3_fu_785_p1;
assign llike_2_address1 = zext_ln26_fu_650_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln26_4_fu_814_p1;
assign llike_3_address1 = zext_ln26_fu_650_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_632_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_767_p4 = {{add_ln25_1_fu_761_p2[5:2]}};
assign lshr_ln8_2_fu_796_p4 = {{add_ln25_2_fu_790_p2[5:2]}};
assign lshr_ln8_3_fu_970_p4 = {{add_ln25_3_reg_2170[6:2]}};
assign lshr_ln8_s_fu_719_p4 = {{add_ln25_fu_713_p2[5:2]}};
assign min_p_69_fu_1384_p3 = ((and_ln29_1_reg_2407[0:0] == 1'b1) ? reg_579 : min_p_67_reg_2400);
assign min_p_71_fu_1474_p3 = ((and_ln29_3_reg_2419[0:0] == 1'b1) ? reg_585 : min_p_69_reg_2412);
assign min_p_73_fu_1564_p3 = ((and_ln29_5_reg_2431[0:0] == 1'b1) ? reg_591 : min_p_71_reg_2424);
assign min_p_75_fu_1653_p3 = ((and_ln29_7_reg_2459[0:0] == 1'b1) ? reg_579 : min_p_73_reg_2436);
assign min_p_77_fu_1743_p3 = ((and_ln29_9_reg_2471[0:0] == 1'b1) ? reg_597 : min_p_75_reg_2464);
assign min_p_79_fu_1833_p3 = ((and_ln29_11_reg_2483[0:0] == 1'b1) ? reg_603 : min_p_77_reg_2476);
assign min_p_81_fu_1923_p3 = ((and_ln29_13_reg_2495[0:0] == 1'b1) ? reg_609 : min_p_79_reg_2488);
assign min_p_82_out = ((and_ln29_13_reg_2495[0:0] == 1'b1) ? reg_609 : min_p_79_reg_2488);
assign min_p_83_fu_2012_p3 = ((and_ln29_15_fu_2007_p2[0:0] == 1'b1) ? p_38_reg_2452 : min_p_81_reg_2500);
assign or_ln29_10_fu_1797_p2 = (icmp_ln29_21_fu_1791_p2 | icmp_ln29_20_fu_1785_p2);
assign or_ln29_11_fu_1815_p2 = (icmp_ln29_23_fu_1809_p2 | icmp_ln29_22_fu_1803_p2);
assign or_ln29_12_fu_1887_p2 = (icmp_ln29_25_fu_1881_p2 | icmp_ln29_24_fu_1875_p2);
assign or_ln29_13_fu_1905_p2 = (icmp_ln29_27_fu_1899_p2 | icmp_ln29_26_fu_1893_p2);
assign or_ln29_14_fu_1977_p2 = (icmp_ln29_29_fu_1971_p2 | icmp_ln29_28_fu_1965_p2);
assign or_ln29_15_fu_1995_p2 = (icmp_ln29_31_fu_1989_p2 | icmp_ln29_30_fu_1983_p2);
assign or_ln29_1_fu_1366_p2 = (icmp_ln29_3_fu_1360_p2 | icmp_ln29_2_fu_1354_p2);
assign or_ln29_2_fu_1438_p2 = (icmp_ln29_5_fu_1432_p2 | icmp_ln29_4_fu_1426_p2);
assign or_ln29_3_fu_1456_p2 = (icmp_ln29_7_fu_1450_p2 | icmp_ln29_6_fu_1444_p2);
assign or_ln29_4_fu_1528_p2 = (icmp_ln29_9_fu_1522_p2 | icmp_ln29_8_fu_1516_p2);
assign or_ln29_5_fu_1546_p2 = (icmp_ln29_11_fu_1540_p2 | icmp_ln29_10_fu_1534_p2);
assign or_ln29_6_fu_1631_p2 = (icmp_ln29_13_fu_1625_p2 | icmp_ln29_12_fu_1619_p2);
assign or_ln29_7_fu_1637_p2 = (icmp_ln29_15_reg_2447 | icmp_ln29_14_reg_2442);
assign or_ln29_8_fu_1707_p2 = (icmp_ln29_17_fu_1701_p2 | icmp_ln29_16_fu_1695_p2);
assign or_ln29_9_fu_1725_p2 = (icmp_ln29_19_fu_1719_p2 | icmp_ln29_18_fu_1713_p2);
assign or_ln29_fu_1348_p2 = (icmp_ln29_fu_1336_p2 | icmp_ln29_1_fu_1342_p2);
assign shl_ln1_fu_657_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_10_fu_849_p2 = transition_0_q1;
assign tmp_10_fu_849_p4 = transition_1_q1;
assign tmp_10_fu_849_p6 = transition_2_q1;
assign tmp_10_fu_849_p8 = transition_3_q1;
assign tmp_10_fu_849_p9 = 'bx;
assign tmp_11_fu_888_p2 = transition_0_q0;
assign tmp_11_fu_888_p4 = transition_1_q0;
assign tmp_11_fu_888_p6 = transition_2_q0;
assign tmp_11_fu_888_p8 = transition_3_q0;
assign tmp_11_fu_888_p9 = 'bx;
assign tmp_12_fu_1009_p2 = transition_0_q1;
assign tmp_12_fu_1009_p4 = transition_1_q1;
assign tmp_12_fu_1009_p6 = transition_2_q1;
assign tmp_12_fu_1009_p8 = transition_3_q1;
assign tmp_12_fu_1009_p9 = 'bx;
assign tmp_13_fu_1048_p2 = transition_0_q0;
assign tmp_13_fu_1048_p4 = transition_1_q0;
assign tmp_13_fu_1048_p6 = transition_2_q0;
assign tmp_13_fu_1048_p8 = transition_3_q0;
assign tmp_13_fu_1048_p9 = 'bx;
assign tmp_14_fu_1115_p2 = transition_0_q1;
assign tmp_14_fu_1115_p4 = transition_1_q1;
assign tmp_14_fu_1115_p6 = transition_2_q1;
assign tmp_14_fu_1115_p8 = transition_3_q1;
assign tmp_14_fu_1115_p9 = 'bx;
assign tmp_150_fu_1305_p4 = {{bitcast_ln29_fu_1301_p1[62:52]}};
assign tmp_151_fu_1322_p4 = {{bitcast_ln29_1_fu_1319_p1[62:52]}};
assign tmp_154_fu_1395_p4 = {{bitcast_ln29_2_fu_1391_p1[62:52]}};
assign tmp_155_fu_1412_p4 = {{bitcast_ln29_3_fu_1409_p1[62:52]}};
assign tmp_158_fu_1485_p4 = {{bitcast_ln29_4_fu_1481_p1[62:52]}};
assign tmp_159_fu_1502_p4 = {{bitcast_ln29_5_fu_1499_p1[62:52]}};
assign tmp_15_fu_1154_p2 = transition_0_q0;
assign tmp_15_fu_1154_p4 = transition_1_q0;
assign tmp_15_fu_1154_p6 = transition_2_q0;
assign tmp_15_fu_1154_p8 = transition_3_q0;
assign tmp_15_fu_1154_p9 = 'bx;
assign tmp_162_fu_1605_p4 = {{bitcast_ln29_6_fu_1601_p1[62:52]}};
assign tmp_163_fu_1575_p4 = {{bitcast_ln29_7_fu_1571_p1[62:52]}};
assign tmp_165_fu_687_p4 = {{add_ln27_fu_681_p2[9:4]}};
assign tmp_166_fu_1664_p4 = {{bitcast_ln29_8_fu_1660_p1[62:52]}};
assign tmp_167_fu_1681_p4 = {{bitcast_ln29_9_fu_1678_p1[62:52]}};
assign tmp_169_fu_916_p4 = {{add_ln27_1_fu_911_p2[9:4]}};
assign tmp_16_fu_1225_p2 = transition_0_q1;
assign tmp_16_fu_1225_p4 = transition_1_q1;
assign tmp_16_fu_1225_p6 = transition_2_q1;
assign tmp_16_fu_1225_p8 = transition_3_q1;
assign tmp_16_fu_1225_p9 = 'bx;
assign tmp_170_fu_1754_p4 = {{bitcast_ln29_10_fu_1750_p1[62:52]}};
assign tmp_171_fu_1771_p4 = {{bitcast_ln29_11_fu_1768_p1[62:52]}};
assign tmp_173_fu_729_p3 = {{empty_9}, {lshr_ln8_s_fu_719_p4}};
assign tmp_174_fu_1844_p4 = {{bitcast_ln29_12_fu_1840_p1[62:52]}};
assign tmp_175_fu_1861_p4 = {{bitcast_ln29_13_fu_1858_p1[62:52]}};
assign tmp_177_fu_748_p3 = {{empty_9}, {add_ln8_fu_742_p2}};
assign tmp_178_fu_1934_p4 = {{bitcast_ln29_14_fu_1931_p1[62:52]}};
assign tmp_179_fu_1951_p4 = {{bitcast_ln29_15_fu_1948_p1[62:52]}};
assign tmp_182_fu_777_p3 = {{empty_9}, {lshr_ln8_1_fu_767_p4}};
assign tmp_183_fu_806_p3 = {{empty_9}, {lshr_ln8_2_fu_796_p4}};
assign tmp_19_fu_1264_p2 = transition_0_q0;
assign tmp_19_fu_1264_p4 = transition_1_q0;
assign tmp_19_fu_1264_p6 = transition_2_q0;
assign tmp_19_fu_1264_p8 = transition_3_q0;
assign tmp_19_fu_1264_p9 = 'bx;
assign tmp_s_fu_642_p3 = {{empty_9}, {lshr_ln7_1_fu_632_p4}};
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
assign trunc_ln27_fu_1191_p1 = add_ln25_3_reg_2170[5:0];
assign trunc_ln29_10_fu_1764_p1 = bitcast_ln29_10_fu_1750_p1[51:0];
assign trunc_ln29_11_fu_1781_p1 = bitcast_ln29_11_fu_1768_p1[51:0];
assign trunc_ln29_12_fu_1854_p1 = bitcast_ln29_12_fu_1840_p1[51:0];
assign trunc_ln29_13_fu_1871_p1 = bitcast_ln29_13_fu_1858_p1[51:0];
assign trunc_ln29_14_fu_1944_p1 = bitcast_ln29_14_fu_1931_p1[51:0];
assign trunc_ln29_15_fu_1961_p1 = bitcast_ln29_15_fu_1948_p1[51:0];
assign trunc_ln29_1_fu_1332_p1 = bitcast_ln29_1_fu_1319_p1[51:0];
assign trunc_ln29_2_fu_1405_p1 = bitcast_ln29_2_fu_1391_p1[51:0];
assign trunc_ln29_3_fu_1422_p1 = bitcast_ln29_3_fu_1409_p1[51:0];
assign trunc_ln29_4_fu_1495_p1 = bitcast_ln29_4_fu_1481_p1[51:0];
assign trunc_ln29_5_fu_1512_p1 = bitcast_ln29_5_fu_1499_p1[51:0];
assign trunc_ln29_6_fu_1615_p1 = bitcast_ln29_6_fu_1601_p1[51:0];
assign trunc_ln29_7_fu_1585_p1 = bitcast_ln29_7_fu_1571_p1[51:0];
assign trunc_ln29_8_fu_1674_p1 = bitcast_ln29_8_fu_1660_p1[51:0];
assign trunc_ln29_9_fu_1691_p1 = bitcast_ln29_9_fu_1678_p1[51:0];
assign trunc_ln29_fu_1315_p1 = bitcast_ln29_fu_1301_p1[51:0];
assign zext_ln16_fu_628_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_737_p1 = tmp_173_fu_729_p3;
assign zext_ln26_2_fu_756_p1 = tmp_177_fu_748_p3;
assign zext_ln26_3_fu_785_p1 = tmp_182_fu_777_p3;
assign zext_ln26_4_fu_814_p1 = tmp_183_fu_806_p3;
assign zext_ln26_5_fu_979_p1 = lshr_ln8_3_fu_970_p4;
assign zext_ln26_6_fu_988_p1 = add_ln26_fu_983_p2;
assign zext_ln26_fu_650_p1 = tmp_s_fu_642_p3;
assign zext_ln27_1_fu_705_p1 = add_ln27_2_fu_697_p3;
assign zext_ln27_2_fu_933_p1 = add_ln27_4_fu_926_p3;
assign zext_ln27_3_fu_947_p1 = add_ln27_5_fu_941_p3;
assign zext_ln27_4_fu_1077_p1 = add_ln27_7_fu_1071_p3;
assign zext_ln27_5_fu_1091_p1 = add_ln27_8_fu_1085_p3;
assign zext_ln27_6_fu_1183_p1 = add_ln27_9_fu_1177_p3;
assign zext_ln27_7_fu_1201_p1 = add_ln27_s_fu_1194_p3;
assign zext_ln27_fu_673_p1 = add_ln_fu_665_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2089[3:0] <= 4'b0000;
end
endmodule 