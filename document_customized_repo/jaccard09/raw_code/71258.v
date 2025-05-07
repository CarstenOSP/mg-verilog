module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_9,tmp_s,empty,min_p_145_out,min_p_145_out_ap_vld,grp_fu_435_p_din0,grp_fu_435_p_din1,grp_fu_435_p_opcode,grp_fu_435_p_dout0,grp_fu_435_p_ce,grp_fu_910_p_din0,grp_fu_910_p_din1,grp_fu_910_p_opcode,grp_fu_910_p_dout0,grp_fu_910_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
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
input  [1:0] empty_9;
input  [63:0] tmp_s;
input  [13:0] empty;
output  [63:0] min_p_145_out;
output   min_p_145_out_ap_vld;
output  [63:0] grp_fu_435_p_din0;
output  [63:0] grp_fu_435_p_din1;
output  [1:0] grp_fu_435_p_opcode;
input  [63:0] grp_fu_435_p_dout0;
output   grp_fu_435_p_ce;
output  [63:0] grp_fu_910_p_din0;
output  [63:0] grp_fu_910_p_din1;
output  [4:0] grp_fu_910_p_opcode;
input  [0:0] grp_fu_910_p_dout0;
output   grp_fu_910_p_ce;
reg ap_idle;
reg min_p_145_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_38_reg_2161;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_530;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_536;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_542;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_548;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_554;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_560;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1954;
reg   [63:0] llike_load_reg_2015;
wire   [63:0] tmp_4_fu_659_p11;
reg   [63:0] tmp_4_reg_2020;
reg   [63:0] llike_load_1_reg_2025;
wire   [63:0] tmp_9_fu_698_p11;
reg   [63:0] tmp_9_reg_2030;
reg   [63:0] llike_load_2_reg_2085;
wire   [63:0] tmp_12_fu_804_p11;
reg   [63:0] tmp_12_reg_2090;
reg   [63:0] llike_load_3_reg_2095;
wire   [63:0] tmp_13_fu_843_p11;
reg   [63:0] tmp_13_reg_2100;
wire   [6:0] add_ln25_6_fu_930_p2;
reg   [6:0] add_ln25_6_reg_2155;
reg   [0:0] tmp_38_reg_2161_pp0_iter1_reg;
reg   [63:0] llike_load_4_reg_2165;
wire   [63:0] tmp_14_fu_960_p11;
reg   [63:0] tmp_14_reg_2170;
reg   [63:0] llike_load_5_reg_2175;
wire   [63:0] tmp_15_fu_999_p11;
reg   [63:0] tmp_15_reg_2180;
reg   [63:0] llike_load_6_reg_2235;
wire   [63:0] tmp_16_fu_1101_p11;
reg   [63:0] tmp_16_reg_2240;
reg   [63:0] llike_load_7_reg_2245;
wire   [63:0] tmp_39_fu_1140_p11;
reg   [63:0] tmp_39_reg_2250;
reg   [63:0] add52_5_reg_2255;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2260;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_1_reg_2265;
wire   [0:0] and_ln29_1_fu_1254_p2;
reg   [0:0] and_ln29_1_reg_2272;
wire   [63:0] min_p_3_fu_1260_p3;
reg   [63:0] min_p_3_reg_2277;
wire   [0:0] and_ln29_3_fu_1344_p2;
reg   [0:0] and_ln29_3_reg_2284;
wire   [63:0] min_p_6_fu_1350_p3;
reg   [63:0] min_p_6_reg_2289;
wire   [0:0] and_ln29_5_fu_1434_p2;
reg   [0:0] and_ln29_5_reg_2296;
wire   [63:0] min_p_8_fu_1440_p3;
reg   [63:0] min_p_8_reg_2301;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_1465_p2;
reg   [0:0] icmp_ln29_14_reg_2307;
wire   [0:0] icmp_ln29_15_fu_1471_p2;
reg   [0:0] icmp_ln29_15_reg_2312;
reg   [63:0] p_7_reg_2317;
wire   [0:0] and_ln29_7_fu_1523_p2;
reg   [0:0] and_ln29_7_reg_2324;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_10_fu_1529_p3;
reg   [63:0] min_p_10_reg_2329;
wire   [0:0] and_ln29_9_fu_1613_p2;
reg   [0:0] and_ln29_9_reg_2336;
wire   [63:0] min_p_12_fu_1619_p3;
reg   [63:0] min_p_12_reg_2341;
wire   [0:0] and_ln29_11_fu_1703_p2;
reg   [0:0] and_ln29_11_reg_2348;
wire   [63:0] min_p_14_fu_1709_p3;
reg   [63:0] min_p_14_reg_2353;
wire   [0:0] and_ln29_13_fu_1793_p2;
reg   [0:0] and_ln29_13_reg_2360;
wire   [63:0] min_p_16_fu_1799_p3;
reg   [63:0] min_p_16_reg_2365;
reg   [0:0] tmp_42_reg_2372;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_587_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_600_p1;
wire   [63:0] zext_ln26_1_fu_622_p1;
wire   [63:0] zext_ln27_1_fu_635_p1;
wire   [63:0] zext_ln26_2_fu_733_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_745_p1;
wire   [63:0] zext_ln26_3_fu_765_p1;
wire   [63:0] zext_ln27_3_fu_777_p1;
wire   [63:0] zext_ln26_4_fu_878_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_4_fu_890_p1;
wire   [63:0] zext_ln26_5_fu_910_p1;
wire   [63:0] zext_ln27_5_fu_922_p1;
wire   [63:0] zext_ln26_6_fu_1034_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_6_fu_1046_p1;
wire   [63:0] zext_ln26_8_fu_1062_p1;
wire   [63:0] zext_ln27_7_fu_1077_p1;
reg   [63:0] min_p_fu_106;
wire   [63:0] min_p_18_fu_1888_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_110;
wire   [5:0] add_ln25_7_fu_1163_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
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
reg   [63:0] grp_fu_522_p0;
reg   [63:0] grp_fu_522_p1;
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
reg   [63:0] grp_fu_526_p0;
reg   [63:0] grp_fu_526_p1;
wire   [13:0] tmp_3_fu_579_p3;
wire   [9:0] add_ln_fu_592_p3;
wire   [5:0] add_ln25_fu_608_p2;
wire   [13:0] tmp_8_fu_614_p3;
wire   [9:0] add_ln27_1_fu_627_p3;
wire   [63:0] tmp_4_fu_659_p2;
wire   [63:0] tmp_4_fu_659_p4;
wire   [63:0] tmp_4_fu_659_p6;
wire   [63:0] tmp_4_fu_659_p8;
wire   [63:0] tmp_4_fu_659_p9;
wire   [63:0] tmp_9_fu_698_p2;
wire   [63:0] tmp_9_fu_698_p4;
wire   [63:0] tmp_9_fu_698_p6;
wire   [63:0] tmp_9_fu_698_p8;
wire   [63:0] tmp_9_fu_698_p9;
wire   [5:0] add_ln25_1_fu_721_p2;
wire   [13:0] tmp_18_fu_726_p3;
wire   [9:0] add_ln27_2_fu_738_p3;
wire   [5:0] add_ln25_2_fu_753_p2;
wire   [13:0] tmp_22_fu_758_p3;
wire   [9:0] add_ln27_3_fu_770_p3;
wire   [63:0] tmp_12_fu_804_p2;
wire   [63:0] tmp_12_fu_804_p4;
wire   [63:0] tmp_12_fu_804_p6;
wire   [63:0] tmp_12_fu_804_p8;
wire   [63:0] tmp_12_fu_804_p9;
wire   [63:0] tmp_13_fu_843_p2;
wire   [63:0] tmp_13_fu_843_p4;
wire   [63:0] tmp_13_fu_843_p6;
wire   [63:0] tmp_13_fu_843_p8;
wire   [63:0] tmp_13_fu_843_p9;
wire   [5:0] add_ln25_3_fu_866_p2;
wire   [13:0] tmp_26_fu_871_p3;
wire   [9:0] add_ln27_4_fu_883_p3;
wire   [5:0] add_ln25_4_fu_898_p2;
wire   [13:0] tmp_30_fu_903_p3;
wire   [9:0] add_ln27_5_fu_915_p3;
wire   [6:0] zext_ln15_fu_785_p1;
wire   [63:0] tmp_14_fu_960_p2;
wire   [63:0] tmp_14_fu_960_p4;
wire   [63:0] tmp_14_fu_960_p6;
wire   [63:0] tmp_14_fu_960_p8;
wire   [63:0] tmp_14_fu_960_p9;
wire   [63:0] tmp_15_fu_999_p2;
wire   [63:0] tmp_15_fu_999_p4;
wire   [63:0] tmp_15_fu_999_p6;
wire   [63:0] tmp_15_fu_999_p8;
wire   [63:0] tmp_15_fu_999_p9;
wire   [5:0] add_ln25_5_fu_1022_p2;
wire   [13:0] tmp_34_fu_1027_p3;
wire   [9:0] add_ln27_6_fu_1039_p3;
wire   [13:0] zext_ln26_7_fu_1054_p1;
wire   [13:0] add_ln26_fu_1057_p2;
wire   [5:0] trunc_ln27_fu_1067_p1;
wire   [9:0] add_ln27_7_fu_1070_p3;
wire   [63:0] tmp_16_fu_1101_p2;
wire   [63:0] tmp_16_fu_1101_p4;
wire   [63:0] tmp_16_fu_1101_p6;
wire   [63:0] tmp_16_fu_1101_p8;
wire   [63:0] tmp_16_fu_1101_p9;
wire   [63:0] tmp_39_fu_1140_p2;
wire   [63:0] tmp_39_fu_1140_p4;
wire   [63:0] tmp_39_fu_1140_p6;
wire   [63:0] tmp_39_fu_1140_p8;
wire   [63:0] tmp_39_fu_1140_p9;
wire   [63:0] bitcast_ln29_fu_1177_p1;
wire   [63:0] bitcast_ln29_1_fu_1195_p1;
wire   [10:0] tmp_5_fu_1181_p4;
wire   [51:0] trunc_ln29_fu_1191_p1;
wire   [0:0] icmp_ln29_1_fu_1218_p2;
wire   [0:0] icmp_ln29_fu_1212_p2;
wire   [10:0] tmp_6_fu_1198_p4;
wire   [51:0] trunc_ln29_1_fu_1208_p1;
wire   [0:0] icmp_ln29_3_fu_1236_p2;
wire   [0:0] icmp_ln29_2_fu_1230_p2;
wire   [0:0] or_ln29_fu_1224_p2;
wire   [0:0] and_ln29_fu_1248_p2;
wire   [0:0] or_ln29_1_fu_1242_p2;
wire   [63:0] bitcast_ln29_2_fu_1267_p1;
wire   [63:0] bitcast_ln29_3_fu_1285_p1;
wire   [10:0] tmp_10_fu_1271_p4;
wire   [51:0] trunc_ln29_2_fu_1281_p1;
wire   [0:0] icmp_ln29_5_fu_1308_p2;
wire   [0:0] icmp_ln29_4_fu_1302_p2;
wire   [10:0] tmp_11_fu_1288_p4;
wire   [51:0] trunc_ln29_3_fu_1298_p1;
wire   [0:0] icmp_ln29_7_fu_1326_p2;
wire   [0:0] icmp_ln29_6_fu_1320_p2;
wire   [0:0] or_ln29_3_fu_1332_p2;
wire   [0:0] or_ln29_2_fu_1314_p2;
wire   [0:0] and_ln29_2_fu_1338_p2;
wire   [63:0] bitcast_ln29_4_fu_1357_p1;
wire   [63:0] bitcast_ln29_5_fu_1375_p1;
wire   [10:0] tmp_19_fu_1361_p4;
wire   [51:0] trunc_ln29_4_fu_1371_p1;
wire   [0:0] icmp_ln29_9_fu_1398_p2;
wire   [0:0] icmp_ln29_8_fu_1392_p2;
wire   [10:0] tmp_20_fu_1378_p4;
wire   [51:0] trunc_ln29_5_fu_1388_p1;
wire   [0:0] icmp_ln29_11_fu_1416_p2;
wire   [0:0] icmp_ln29_10_fu_1410_p2;
wire   [0:0] or_ln29_5_fu_1422_p2;
wire   [0:0] or_ln29_4_fu_1404_p2;
wire   [0:0] and_ln29_4_fu_1428_p2;
wire   [63:0] bitcast_ln29_7_fu_1447_p1;
wire   [10:0] tmp_24_fu_1451_p4;
wire   [51:0] trunc_ln29_7_fu_1461_p1;
wire   [63:0] bitcast_ln29_6_fu_1477_p1;
wire   [10:0] tmp_23_fu_1481_p4;
wire   [51:0] trunc_ln29_6_fu_1491_p1;
wire   [0:0] icmp_ln29_13_fu_1501_p2;
wire   [0:0] icmp_ln29_12_fu_1495_p2;
wire   [0:0] or_ln29_7_fu_1513_p2;
wire   [0:0] or_ln29_6_fu_1507_p2;
wire   [0:0] and_ln29_6_fu_1517_p2;
wire   [63:0] bitcast_ln29_8_fu_1536_p1;
wire   [63:0] bitcast_ln29_9_fu_1554_p1;
wire   [10:0] tmp_27_fu_1540_p4;
wire   [51:0] trunc_ln29_8_fu_1550_p1;
wire   [0:0] icmp_ln29_17_fu_1577_p2;
wire   [0:0] icmp_ln29_16_fu_1571_p2;
wire   [10:0] tmp_28_fu_1557_p4;
wire   [51:0] trunc_ln29_9_fu_1567_p1;
wire   [0:0] icmp_ln29_19_fu_1595_p2;
wire   [0:0] icmp_ln29_18_fu_1589_p2;
wire   [0:0] or_ln29_9_fu_1601_p2;
wire   [0:0] or_ln29_8_fu_1583_p2;
wire   [0:0] and_ln29_8_fu_1607_p2;
wire   [63:0] bitcast_ln29_10_fu_1626_p1;
wire   [63:0] bitcast_ln29_11_fu_1644_p1;
wire   [10:0] tmp_31_fu_1630_p4;
wire   [51:0] trunc_ln29_10_fu_1640_p1;
wire   [0:0] icmp_ln29_21_fu_1667_p2;
wire   [0:0] icmp_ln29_20_fu_1661_p2;
wire   [10:0] tmp_32_fu_1647_p4;
wire   [51:0] trunc_ln29_11_fu_1657_p1;
wire   [0:0] icmp_ln29_23_fu_1685_p2;
wire   [0:0] icmp_ln29_22_fu_1679_p2;
wire   [0:0] or_ln29_11_fu_1691_p2;
wire   [0:0] or_ln29_10_fu_1673_p2;
wire   [0:0] and_ln29_10_fu_1697_p2;
wire   [63:0] bitcast_ln29_12_fu_1716_p1;
wire   [63:0] bitcast_ln29_13_fu_1734_p1;
wire   [10:0] tmp_35_fu_1720_p4;
wire   [51:0] trunc_ln29_12_fu_1730_p1;
wire   [0:0] icmp_ln29_25_fu_1757_p2;
wire   [0:0] icmp_ln29_24_fu_1751_p2;
wire   [10:0] tmp_36_fu_1737_p4;
wire   [51:0] trunc_ln29_13_fu_1747_p1;
wire   [0:0] icmp_ln29_27_fu_1775_p2;
wire   [0:0] icmp_ln29_26_fu_1769_p2;
wire   [0:0] or_ln29_13_fu_1781_p2;
wire   [0:0] or_ln29_12_fu_1763_p2;
wire   [0:0] and_ln29_12_fu_1787_p2;
wire   [63:0] bitcast_ln29_14_fu_1807_p1;
wire   [63:0] bitcast_ln29_15_fu_1824_p1;
wire   [10:0] tmp_40_fu_1810_p4;
wire   [51:0] trunc_ln29_14_fu_1820_p1;
wire   [0:0] icmp_ln29_29_fu_1847_p2;
wire   [0:0] icmp_ln29_28_fu_1841_p2;
wire   [10:0] tmp_41_fu_1827_p4;
wire   [51:0] trunc_ln29_15_fu_1837_p1;
wire   [0:0] icmp_ln29_31_fu_1865_p2;
wire   [0:0] icmp_ln29_30_fu_1859_p2;
wire   [0:0] or_ln29_15_fu_1871_p2;
wire   [0:0] or_ln29_14_fu_1853_p2;
wire   [0:0] and_ln29_14_fu_1877_p2;
wire   [0:0] and_ln29_15_fu_1883_p2;
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
wire   [1:0] tmp_4_fu_659_p1;
wire   [1:0] tmp_4_fu_659_p3;
wire  signed [1:0] tmp_4_fu_659_p5;
wire  signed [1:0] tmp_4_fu_659_p7;
wire   [1:0] tmp_9_fu_698_p1;
wire   [1:0] tmp_9_fu_698_p3;
wire  signed [1:0] tmp_9_fu_698_p5;
wire  signed [1:0] tmp_9_fu_698_p7;
wire   [1:0] tmp_12_fu_804_p1;
wire   [1:0] tmp_12_fu_804_p3;
wire  signed [1:0] tmp_12_fu_804_p5;
wire  signed [1:0] tmp_12_fu_804_p7;
wire   [1:0] tmp_13_fu_843_p1;
wire   [1:0] tmp_13_fu_843_p3;
wire  signed [1:0] tmp_13_fu_843_p5;
wire  signed [1:0] tmp_13_fu_843_p7;
wire   [1:0] tmp_14_fu_960_p1;
wire   [1:0] tmp_14_fu_960_p3;
wire  signed [1:0] tmp_14_fu_960_p5;
wire  signed [1:0] tmp_14_fu_960_p7;
wire   [1:0] tmp_15_fu_999_p1;
wire   [1:0] tmp_15_fu_999_p3;
wire  signed [1:0] tmp_15_fu_999_p5;
wire  signed [1:0] tmp_15_fu_999_p7;
wire   [1:0] tmp_16_fu_1101_p1;
wire   [1:0] tmp_16_fu_1101_p3;
wire  signed [1:0] tmp_16_fu_1101_p5;
wire  signed [1:0] tmp_16_fu_1101_p7;
wire   [1:0] tmp_39_fu_1140_p1;
wire   [1:0] tmp_39_fu_1140_p3;
wire  signed [1:0] tmp_39_fu_1140_p5;
wire  signed [1:0] tmp_39_fu_1140_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_106 = 64'd0;
#0 prev_fu_110 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U27(.din0(tmp_4_fu_659_p2),.din1(tmp_4_fu_659_p4),.din2(tmp_4_fu_659_p6),.din3(tmp_4_fu_659_p8),.def(tmp_4_fu_659_p9),.sel(empty_9),.dout(tmp_4_fu_659_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U28(.din0(tmp_9_fu_698_p2),.din1(tmp_9_fu_698_p4),.din2(tmp_9_fu_698_p6),.din3(tmp_9_fu_698_p8),.def(tmp_9_fu_698_p9),.sel(empty_9),.dout(tmp_9_fu_698_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U29(.din0(tmp_12_fu_804_p2),.din1(tmp_12_fu_804_p4),.din2(tmp_12_fu_804_p6),.din3(tmp_12_fu_804_p8),.def(tmp_12_fu_804_p9),.sel(empty_9),.dout(tmp_12_fu_804_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U30(.din0(tmp_13_fu_843_p2),.din1(tmp_13_fu_843_p4),.din2(tmp_13_fu_843_p6),.din3(tmp_13_fu_843_p8),.def(tmp_13_fu_843_p9),.sel(empty_9),.dout(tmp_13_fu_843_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U31(.din0(tmp_14_fu_960_p2),.din1(tmp_14_fu_960_p4),.din2(tmp_14_fu_960_p6),.din3(tmp_14_fu_960_p8),.def(tmp_14_fu_960_p9),.sel(empty_9),.dout(tmp_14_fu_960_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U32(.din0(tmp_15_fu_999_p2),.din1(tmp_15_fu_999_p4),.din2(tmp_15_fu_999_p6),.din3(tmp_15_fu_999_p8),.def(tmp_15_fu_999_p9),.sel(empty_9),.dout(tmp_15_fu_999_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(tmp_16_fu_1101_p2),.din1(tmp_16_fu_1101_p4),.din2(tmp_16_fu_1101_p6),.din3(tmp_16_fu_1101_p8),.def(tmp_16_fu_1101_p9),.sel(empty_9),.dout(tmp_16_fu_1101_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U34(.din0(tmp_39_fu_1140_p2),.din1(tmp_39_fu_1140_p4),.din2(tmp_39_fu_1140_p6),.din3(tmp_39_fu_1140_p8),.def(tmp_39_fu_1140_p9),.sel(empty_9),.dout(tmp_39_fu_1140_p11));
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
            min_p_fu_106 <= min_p_4;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_106 <= min_p_18_fu_1888_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_110 <= 6'd1;
    end else if (((tmp_38_reg_2161 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_110 <= add_ln25_7_fu_1163_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2255 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2260 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln25_6_reg_2155 <= add_ln25_6_fu_930_p2;
        and_ln29_1_reg_2272 <= and_ln29_1_fu_1254_p2;
        tmp_12_reg_2090 <= tmp_12_fu_804_p11;
        tmp_13_reg_2100 <= tmp_13_fu_843_p11;
        tmp_38_reg_2161 <= add_ln25_6_fu_930_p2[32'd6];
        tmp_38_reg_2161_pp0_iter1_reg <= tmp_38_reg_2161;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2348 <= and_ln29_11_fu_1703_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2360 <= and_ln29_13_fu_1793_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2284 <= and_ln29_3_fu_1344_p2;
        tmp_16_reg_2240 <= tmp_16_fu_1101_p11;
        tmp_39_reg_2250 <= tmp_39_fu_1140_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2296 <= and_ln29_5_fu_1434_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2324 <= and_ln29_7_fu_1523_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2336 <= and_ln29_9_fu_1613_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2307 <= icmp_ln29_14_fu_1465_p2;
        icmp_ln29_15_reg_2312 <= icmp_ln29_15_fu_1471_p2;
        min_p_8_reg_2301 <= min_p_8_fu_1440_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_2025 <= llike_q0;
        llike_load_reg_2015 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_2085 <= llike_q1;
        llike_load_3_reg_2095 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_load_4_reg_2165 <= llike_q1;
        llike_load_5_reg_2175 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_load_6_reg_2235 <= llike_q1;
        llike_load_7_reg_2245 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_10_reg_2329 <= min_p_10_fu_1529_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_12_reg_2341 <= min_p_12_fu_1619_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_14_reg_2353 <= min_p_14_fu_1709_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_16_reg_2365 <= min_p_16_fu_1799_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_2265 <= min_p_fu_106;
        tmp_4_reg_2020 <= tmp_4_fu_659_p11;
        tmp_9_reg_2030 <= tmp_9_fu_698_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_2277 <= min_p_3_fu_1260_p3;
        tmp_14_reg_2170 <= tmp_14_fu_960_p11;
        tmp_15_reg_2180 <= tmp_15_fu_999_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_6_reg_2289 <= min_p_6_fu_1350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_7_reg_2317 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_1_reg_1954 <= ap_sig_allocacmp_prev_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_530 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_536 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_542 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_548 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_554 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_560 <= grp_fu_435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_42_reg_2372 <= grp_fu_910_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_38_reg_2161 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_38_reg_2161_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_522_p0 = add52_7_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_522_p0 = reg_560;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_522_p0 = add52_5_reg_2255;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_522_p0 = reg_554;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_522_p0 = reg_548;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_522_p0 = reg_542;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_522_p0 = reg_536;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_522_p0 = reg_530;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_522_p0 = llike_load_7_reg_2245;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_522_p0 = llike_load_6_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_522_p0 = llike_load_5_reg_2175;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_522_p0 = llike_load_4_reg_2165;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_522_p0 = llike_load_3_reg_2095;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p0 = llike_load_2_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p0 = llike_load_1_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p0 = llike_load_reg_2015;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_522_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_522_p1 = tmp_39_reg_2250;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_522_p1 = tmp_16_reg_2240;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_522_p1 = tmp_15_reg_2180;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_522_p1 = tmp_14_reg_2170;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_522_p1 = tmp_13_reg_2100;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p1 = tmp_12_reg_2090;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p1 = tmp_9_reg_2030;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p1 = tmp_4_reg_2020;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_526_p0 = p_7_reg_2317;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_526_p0 = reg_560;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_526_p0 = reg_554;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_526_p0 = reg_548;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_526_p0 = reg_542;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p0 = reg_536;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_526_p0 = reg_530;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_526_p1 = min_p_16_fu_1799_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_526_p1 = min_p_14_fu_1709_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_526_p1 = min_p_12_fu_1619_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_526_p1 = min_p_10_fu_1529_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_526_p1 = min_p_8_fu_1440_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_526_p1 = min_p_6_fu_1350_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_526_p1 = min_p_3_fu_1260_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_526_p1 = min_p_fu_106;
        end else begin
            grp_fu_526_p1 = 'bx;
        end
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address0_local = zext_ln26_8_fu_1062_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln26_5_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_3_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_622_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address1_local = zext_ln26_6_fu_1034_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address1_local = zext_ln26_4_fu_878_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_2_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_587_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_38_reg_2161_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_145_out_ap_vld = 1'b1;
    end else begin
        min_p_145_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_635_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_745_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_600_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_635_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_745_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_600_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_635_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_745_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_600_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_777_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_635_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_745_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_600_p1;
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
assign add_ln25_1_fu_721_p2 = (prev_1_reg_1954 + 6'd2);
assign add_ln25_2_fu_753_p2 = (prev_1_reg_1954 + 6'd3);
assign add_ln25_3_fu_866_p2 = (prev_1_reg_1954 + 6'd4);
assign add_ln25_4_fu_898_p2 = (prev_1_reg_1954 + 6'd5);
assign add_ln25_5_fu_1022_p2 = (prev_1_reg_1954 + 6'd6);
assign add_ln25_6_fu_930_p2 = (zext_ln15_fu_785_p1 + 7'd7);
assign add_ln25_7_fu_1163_p2 = (prev_1_reg_1954 + 6'd8);
assign add_ln25_fu_608_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_1057_p2 = (empty + zext_ln26_7_fu_1054_p1);
assign add_ln27_1_fu_627_p3 = {{add_ln25_fu_608_p2}, {lshr_ln}};
assign add_ln27_2_fu_738_p3 = {{add_ln25_1_fu_721_p2}, {lshr_ln}};
assign add_ln27_3_fu_770_p3 = {{add_ln25_2_fu_753_p2}, {lshr_ln}};
assign add_ln27_4_fu_883_p3 = {{add_ln25_3_fu_866_p2}, {lshr_ln}};
assign add_ln27_5_fu_915_p3 = {{add_ln25_4_fu_898_p2}, {lshr_ln}};
assign add_ln27_6_fu_1039_p3 = {{add_ln25_5_fu_1022_p2}, {lshr_ln}};
assign add_ln27_7_fu_1070_p3 = {{trunc_ln27_fu_1067_p1}, {lshr_ln}};
assign add_ln_fu_592_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1697_p2 = (or_ln29_11_fu_1691_p2 & or_ln29_10_fu_1673_p2);
assign and_ln29_11_fu_1703_p2 = (grp_fu_910_p_dout0 & and_ln29_10_fu_1697_p2);
assign and_ln29_12_fu_1787_p2 = (or_ln29_13_fu_1781_p2 & or_ln29_12_fu_1763_p2);
assign and_ln29_13_fu_1793_p2 = (grp_fu_910_p_dout0 & and_ln29_12_fu_1787_p2);
assign and_ln29_14_fu_1877_p2 = (or_ln29_15_fu_1871_p2 & or_ln29_14_fu_1853_p2);
assign and_ln29_15_fu_1883_p2 = (tmp_42_reg_2372 & and_ln29_14_fu_1877_p2);
assign and_ln29_1_fu_1254_p2 = (or_ln29_1_fu_1242_p2 & and_ln29_fu_1248_p2);
assign and_ln29_2_fu_1338_p2 = (or_ln29_3_fu_1332_p2 & or_ln29_2_fu_1314_p2);
assign and_ln29_3_fu_1344_p2 = (grp_fu_910_p_dout0 & and_ln29_2_fu_1338_p2);
assign and_ln29_4_fu_1428_p2 = (or_ln29_5_fu_1422_p2 & or_ln29_4_fu_1404_p2);
assign and_ln29_5_fu_1434_p2 = (grp_fu_910_p_dout0 & and_ln29_4_fu_1428_p2);
assign and_ln29_6_fu_1517_p2 = (or_ln29_7_fu_1513_p2 & or_ln29_6_fu_1507_p2);
assign and_ln29_7_fu_1523_p2 = (grp_fu_910_p_dout0 & and_ln29_6_fu_1517_p2);
assign and_ln29_8_fu_1607_p2 = (or_ln29_9_fu_1601_p2 & or_ln29_8_fu_1583_p2);
assign and_ln29_9_fu_1613_p2 = (grp_fu_910_p_dout0 & and_ln29_8_fu_1607_p2);
assign and_ln29_fu_1248_p2 = (or_ln29_fu_1224_p2 & grp_fu_910_p_dout0);
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
assign bitcast_ln29_10_fu_1626_p1 = reg_554;
assign bitcast_ln29_11_fu_1644_p1 = min_p_12_reg_2341;
assign bitcast_ln29_12_fu_1716_p1 = reg_560;
assign bitcast_ln29_13_fu_1734_p1 = min_p_14_reg_2353;
assign bitcast_ln29_14_fu_1807_p1 = p_7_reg_2317;
assign bitcast_ln29_15_fu_1824_p1 = min_p_16_reg_2365;
assign bitcast_ln29_1_fu_1195_p1 = min_p_1_reg_2265;
assign bitcast_ln29_2_fu_1267_p1 = reg_536;
assign bitcast_ln29_3_fu_1285_p1 = min_p_3_reg_2277;
assign bitcast_ln29_4_fu_1357_p1 = reg_542;
assign bitcast_ln29_5_fu_1375_p1 = min_p_6_reg_2289;
assign bitcast_ln29_6_fu_1477_p1 = reg_530;
assign bitcast_ln29_7_fu_1447_p1 = min_p_8_fu_1440_p3;
assign bitcast_ln29_8_fu_1536_p1 = reg_548;
assign bitcast_ln29_9_fu_1554_p1 = min_p_10_reg_2329;
assign bitcast_ln29_fu_1177_p1 = reg_530;
assign grp_fu_435_p_ce = 1'b1;
assign grp_fu_435_p_din0 = grp_fu_522_p0;
assign grp_fu_435_p_din1 = grp_fu_522_p1;
assign grp_fu_435_p_opcode = 2'd0;
assign grp_fu_910_p_ce = 1'b1;
assign grp_fu_910_p_din0 = grp_fu_526_p0;
assign grp_fu_910_p_din1 = grp_fu_526_p1;
assign grp_fu_910_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1410_p2 = ((tmp_20_fu_1378_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1416_p2 = ((trunc_ln29_5_fu_1388_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1495_p2 = ((tmp_23_fu_1481_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1501_p2 = ((trunc_ln29_6_fu_1491_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1465_p2 = ((tmp_24_fu_1451_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1471_p2 = ((trunc_ln29_7_fu_1461_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1571_p2 = ((tmp_27_fu_1540_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1577_p2 = ((trunc_ln29_8_fu_1550_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1589_p2 = ((tmp_28_fu_1557_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1595_p2 = ((trunc_ln29_9_fu_1567_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1218_p2 = ((trunc_ln29_fu_1191_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1661_p2 = ((tmp_31_fu_1630_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1667_p2 = ((trunc_ln29_10_fu_1640_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1679_p2 = ((tmp_32_fu_1647_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1685_p2 = ((trunc_ln29_11_fu_1657_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1751_p2 = ((tmp_35_fu_1720_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1757_p2 = ((trunc_ln29_12_fu_1730_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1769_p2 = ((tmp_36_fu_1737_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1775_p2 = ((trunc_ln29_13_fu_1747_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1841_p2 = ((tmp_40_fu_1810_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1847_p2 = ((trunc_ln29_14_fu_1820_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1230_p2 = ((tmp_6_fu_1198_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1859_p2 = ((tmp_41_fu_1827_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1865_p2 = ((trunc_ln29_15_fu_1837_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1236_p2 = ((trunc_ln29_1_fu_1208_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1302_p2 = ((tmp_10_fu_1271_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1308_p2 = ((trunc_ln29_2_fu_1281_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1320_p2 = ((tmp_11_fu_1288_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1326_p2 = ((trunc_ln29_3_fu_1298_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1392_p2 = ((tmp_19_fu_1361_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1398_p2 = ((trunc_ln29_4_fu_1371_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1212_p2 = ((tmp_5_fu_1181_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_10_fu_1529_p3 = ((and_ln29_7_reg_2324[0:0] == 1'b1) ? reg_530 : min_p_8_reg_2301);
assign min_p_12_fu_1619_p3 = ((and_ln29_9_reg_2336[0:0] == 1'b1) ? reg_548 : min_p_10_reg_2329);
assign min_p_145_out = ((and_ln29_13_reg_2360[0:0] == 1'b1) ? reg_560 : min_p_14_reg_2353);
assign min_p_14_fu_1709_p3 = ((and_ln29_11_reg_2348[0:0] == 1'b1) ? reg_554 : min_p_12_reg_2341);
assign min_p_16_fu_1799_p3 = ((and_ln29_13_reg_2360[0:0] == 1'b1) ? reg_560 : min_p_14_reg_2353);
assign min_p_18_fu_1888_p3 = ((and_ln29_15_fu_1883_p2[0:0] == 1'b1) ? p_7_reg_2317 : min_p_16_reg_2365);
assign min_p_3_fu_1260_p3 = ((and_ln29_1_reg_2272[0:0] == 1'b1) ? reg_530 : min_p_1_reg_2265);
assign min_p_6_fu_1350_p3 = ((and_ln29_3_reg_2284[0:0] == 1'b1) ? reg_536 : min_p_3_reg_2277);
assign min_p_8_fu_1440_p3 = ((and_ln29_5_reg_2296[0:0] == 1'b1) ? reg_542 : min_p_6_reg_2289);
assign or_ln29_10_fu_1673_p2 = (icmp_ln29_21_fu_1667_p2 | icmp_ln29_20_fu_1661_p2);
assign or_ln29_11_fu_1691_p2 = (icmp_ln29_23_fu_1685_p2 | icmp_ln29_22_fu_1679_p2);
assign or_ln29_12_fu_1763_p2 = (icmp_ln29_25_fu_1757_p2 | icmp_ln29_24_fu_1751_p2);
assign or_ln29_13_fu_1781_p2 = (icmp_ln29_27_fu_1775_p2 | icmp_ln29_26_fu_1769_p2);
assign or_ln29_14_fu_1853_p2 = (icmp_ln29_29_fu_1847_p2 | icmp_ln29_28_fu_1841_p2);
assign or_ln29_15_fu_1871_p2 = (icmp_ln29_31_fu_1865_p2 | icmp_ln29_30_fu_1859_p2);
assign or_ln29_1_fu_1242_p2 = (icmp_ln29_3_fu_1236_p2 | icmp_ln29_2_fu_1230_p2);
assign or_ln29_2_fu_1314_p2 = (icmp_ln29_5_fu_1308_p2 | icmp_ln29_4_fu_1302_p2);
assign or_ln29_3_fu_1332_p2 = (icmp_ln29_7_fu_1326_p2 | icmp_ln29_6_fu_1320_p2);
assign or_ln29_4_fu_1404_p2 = (icmp_ln29_9_fu_1398_p2 | icmp_ln29_8_fu_1392_p2);
assign or_ln29_5_fu_1422_p2 = (icmp_ln29_11_fu_1416_p2 | icmp_ln29_10_fu_1410_p2);
assign or_ln29_6_fu_1507_p2 = (icmp_ln29_13_fu_1501_p2 | icmp_ln29_12_fu_1495_p2);
assign or_ln29_7_fu_1513_p2 = (icmp_ln29_15_reg_2312 | icmp_ln29_14_reg_2307);
assign or_ln29_8_fu_1583_p2 = (icmp_ln29_17_fu_1577_p2 | icmp_ln29_16_fu_1571_p2);
assign or_ln29_9_fu_1601_p2 = (icmp_ln29_19_fu_1595_p2 | icmp_ln29_18_fu_1589_p2);
assign or_ln29_fu_1224_p2 = (icmp_ln29_fu_1212_p2 | icmp_ln29_1_fu_1218_p2);
assign tmp_10_fu_1271_p4 = {{bitcast_ln29_2_fu_1267_p1[62:52]}};
assign tmp_11_fu_1288_p4 = {{bitcast_ln29_3_fu_1285_p1[62:52]}};
assign tmp_12_fu_804_p2 = transition_0_q1;
assign tmp_12_fu_804_p4 = transition_1_q1;
assign tmp_12_fu_804_p6 = transition_2_q1;
assign tmp_12_fu_804_p8 = transition_3_q1;
assign tmp_12_fu_804_p9 = 'bx;
assign tmp_13_fu_843_p2 = transition_0_q0;
assign tmp_13_fu_843_p4 = transition_1_q0;
assign tmp_13_fu_843_p6 = transition_2_q0;
assign tmp_13_fu_843_p8 = transition_3_q0;
assign tmp_13_fu_843_p9 = 'bx;
assign tmp_14_fu_960_p2 = transition_0_q1;
assign tmp_14_fu_960_p4 = transition_1_q1;
assign tmp_14_fu_960_p6 = transition_2_q1;
assign tmp_14_fu_960_p8 = transition_3_q1;
assign tmp_14_fu_960_p9 = 'bx;
assign tmp_15_fu_999_p2 = transition_0_q0;
assign tmp_15_fu_999_p4 = transition_1_q0;
assign tmp_15_fu_999_p6 = transition_2_q0;
assign tmp_15_fu_999_p8 = transition_3_q0;
assign tmp_15_fu_999_p9 = 'bx;
assign tmp_16_fu_1101_p2 = transition_0_q1;
assign tmp_16_fu_1101_p4 = transition_1_q1;
assign tmp_16_fu_1101_p6 = transition_2_q1;
assign tmp_16_fu_1101_p8 = transition_3_q1;
assign tmp_16_fu_1101_p9 = 'bx;
assign tmp_18_fu_726_p3 = {{empty_8}, {add_ln25_1_fu_721_p2}};
assign tmp_19_fu_1361_p4 = {{bitcast_ln29_4_fu_1357_p1[62:52]}};
assign tmp_20_fu_1378_p4 = {{bitcast_ln29_5_fu_1375_p1[62:52]}};
assign tmp_22_fu_758_p3 = {{empty_8}, {add_ln25_2_fu_753_p2}};
assign tmp_23_fu_1481_p4 = {{bitcast_ln29_6_fu_1477_p1[62:52]}};
assign tmp_24_fu_1451_p4 = {{bitcast_ln29_7_fu_1447_p1[62:52]}};
assign tmp_26_fu_871_p3 = {{empty_8}, {add_ln25_3_fu_866_p2}};
assign tmp_27_fu_1540_p4 = {{bitcast_ln29_8_fu_1536_p1[62:52]}};
assign tmp_28_fu_1557_p4 = {{bitcast_ln29_9_fu_1554_p1[62:52]}};
assign tmp_30_fu_903_p3 = {{empty_8}, {add_ln25_4_fu_898_p2}};
assign tmp_31_fu_1630_p4 = {{bitcast_ln29_10_fu_1626_p1[62:52]}};
assign tmp_32_fu_1647_p4 = {{bitcast_ln29_11_fu_1644_p1[62:52]}};
assign tmp_34_fu_1027_p3 = {{empty_8}, {add_ln25_5_fu_1022_p2}};
assign tmp_35_fu_1720_p4 = {{bitcast_ln29_12_fu_1716_p1[62:52]}};
assign tmp_36_fu_1737_p4 = {{bitcast_ln29_13_fu_1734_p1[62:52]}};
assign tmp_39_fu_1140_p2 = transition_0_q0;
assign tmp_39_fu_1140_p4 = transition_1_q0;
assign tmp_39_fu_1140_p6 = transition_2_q0;
assign tmp_39_fu_1140_p8 = transition_3_q0;
assign tmp_39_fu_1140_p9 = 'bx;
assign tmp_3_fu_579_p3 = {{empty_8}, {ap_sig_allocacmp_prev_1}};
assign tmp_40_fu_1810_p4 = {{bitcast_ln29_14_fu_1807_p1[62:52]}};
assign tmp_41_fu_1827_p4 = {{bitcast_ln29_15_fu_1824_p1[62:52]}};
assign tmp_4_fu_659_p2 = transition_0_q1;
assign tmp_4_fu_659_p4 = transition_1_q1;
assign tmp_4_fu_659_p6 = transition_2_q1;
assign tmp_4_fu_659_p8 = transition_3_q1;
assign tmp_4_fu_659_p9 = 'bx;
assign tmp_5_fu_1181_p4 = {{bitcast_ln29_fu_1177_p1[62:52]}};
assign tmp_6_fu_1198_p4 = {{bitcast_ln29_1_fu_1195_p1[62:52]}};
assign tmp_8_fu_614_p3 = {{empty_8}, {add_ln25_fu_608_p2}};
assign tmp_9_fu_698_p2 = transition_0_q0;
assign tmp_9_fu_698_p4 = transition_1_q0;
assign tmp_9_fu_698_p6 = transition_2_q0;
assign tmp_9_fu_698_p8 = transition_3_q0;
assign tmp_9_fu_698_p9 = 'bx;
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
assign trunc_ln27_fu_1067_p1 = add_ln25_6_reg_2155[5:0];
assign trunc_ln29_10_fu_1640_p1 = bitcast_ln29_10_fu_1626_p1[51:0];
assign trunc_ln29_11_fu_1657_p1 = bitcast_ln29_11_fu_1644_p1[51:0];
assign trunc_ln29_12_fu_1730_p1 = bitcast_ln29_12_fu_1716_p1[51:0];
assign trunc_ln29_13_fu_1747_p1 = bitcast_ln29_13_fu_1734_p1[51:0];
assign trunc_ln29_14_fu_1820_p1 = bitcast_ln29_14_fu_1807_p1[51:0];
assign trunc_ln29_15_fu_1837_p1 = bitcast_ln29_15_fu_1824_p1[51:0];
assign trunc_ln29_1_fu_1208_p1 = bitcast_ln29_1_fu_1195_p1[51:0];
assign trunc_ln29_2_fu_1281_p1 = bitcast_ln29_2_fu_1267_p1[51:0];
assign trunc_ln29_3_fu_1298_p1 = bitcast_ln29_3_fu_1285_p1[51:0];
assign trunc_ln29_4_fu_1371_p1 = bitcast_ln29_4_fu_1357_p1[51:0];
assign trunc_ln29_5_fu_1388_p1 = bitcast_ln29_5_fu_1375_p1[51:0];
assign trunc_ln29_6_fu_1491_p1 = bitcast_ln29_6_fu_1477_p1[51:0];
assign trunc_ln29_7_fu_1461_p1 = bitcast_ln29_7_fu_1447_p1[51:0];
assign trunc_ln29_8_fu_1550_p1 = bitcast_ln29_8_fu_1536_p1[51:0];
assign trunc_ln29_9_fu_1567_p1 = bitcast_ln29_9_fu_1554_p1[51:0];
assign trunc_ln29_fu_1191_p1 = bitcast_ln29_fu_1177_p1[51:0];
assign zext_ln15_fu_785_p1 = prev_1_reg_1954;
assign zext_ln26_1_fu_622_p1 = tmp_8_fu_614_p3;
assign zext_ln26_2_fu_733_p1 = tmp_18_fu_726_p3;
assign zext_ln26_3_fu_765_p1 = tmp_22_fu_758_p3;
assign zext_ln26_4_fu_878_p1 = tmp_26_fu_871_p3;
assign zext_ln26_5_fu_910_p1 = tmp_30_fu_903_p3;
assign zext_ln26_6_fu_1034_p1 = tmp_34_fu_1027_p3;
assign zext_ln26_7_fu_1054_p1 = add_ln25_6_reg_2155;
assign zext_ln26_8_fu_1062_p1 = add_ln26_fu_1057_p2;
assign zext_ln26_fu_587_p1 = tmp_3_fu_579_p3;
assign zext_ln27_1_fu_635_p1 = add_ln27_1_fu_627_p3;
assign zext_ln27_2_fu_745_p1 = add_ln27_2_fu_738_p3;
assign zext_ln27_3_fu_777_p1 = add_ln27_3_fu_770_p3;
assign zext_ln27_4_fu_890_p1 = add_ln27_4_fu_883_p3;
assign zext_ln27_5_fu_922_p1 = add_ln27_5_fu_915_p3;
assign zext_ln27_6_fu_1046_p1 = add_ln27_6_fu_1039_p3;
assign zext_ln27_7_fu_1077_p1 = add_ln27_7_fu_1070_p3;
assign zext_ln27_fu_600_p1 = add_ln_fu_592_p3;
endmodule 