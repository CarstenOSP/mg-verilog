module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_9,empty,llike_address0,llike_ce0,llike_q0,min_p_50_out,min_p_50_out_ap_vld,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce,grp_fu_1497_p_din0,grp_fu_1497_p_din1,grp_fu_1497_p_opcode,grp_fu_1497_p_dout0,grp_fu_1497_p_ce); 
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
input  [63:0] min_p_34;
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
input  [10:0] empty;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_50_out;
output   min_p_50_out_ap_vld;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [1:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
output  [63:0] grp_fu_1497_p_din0;
output  [63:0] grp_fu_1497_p_din1;
output  [4:0] grp_fu_1497_p_opcode;
input  [0:0] grp_fu_1497_p_dout0;
output   grp_fu_1497_p_ce;
reg ap_idle;
reg min_p_50_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_73_reg_2124;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_593;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_599;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_605;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_611;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_617;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_623;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2029;
wire   [9:0] shl_ln1_fu_675_p3;
reg   [9:0] shl_ln1_reg_2069;
wire   [6:0] add_ln25_fu_731_p2;
reg   [6:0] add_ln25_reg_2118;
reg   [0:0] tmp_73_reg_2124_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2128;
wire   [63:0] tmp_10_fu_761_p11;
reg   [63:0] tmp_10_reg_2133;
reg   [63:0] llike_2_load_reg_2138;
wire   [63:0] tmp_11_fu_800_p11;
reg   [63:0] tmp_11_reg_2143;
reg   [63:0] llike_3_load_reg_2148;
reg   [63:0] llike_4_load_reg_2173;
reg   [63:0] llike_5_load_reg_2198;
reg   [63:0] llike_6_load_reg_2203;
reg   [63:0] llike_7_load_reg_2208;
wire   [63:0] tmp_12_fu_922_p11;
reg   [63:0] tmp_12_reg_2218;
wire   [63:0] tmp_13_fu_961_p11;
reg   [63:0] tmp_13_reg_2223;
reg   [5:0] tmp_97_reg_2268;
reg   [63:0] llike_load_reg_2273;
wire   [63:0] tmp_14_fu_1075_p11;
reg   [63:0] tmp_14_reg_2278;
wire   [63:0] tmp_15_fu_1114_p11;
reg   [63:0] tmp_15_reg_2283;
wire   [63:0] tmp_16_fu_1185_p11;
reg   [63:0] tmp_16_reg_2328;
wire   [63:0] tmp_19_fu_1224_p11;
reg   [63:0] tmp_19_reg_2333;
reg   [63:0] add52_5_reg_2338;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2343;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_35_reg_2348;
wire   [0:0] and_ln29_1_fu_1338_p2;
reg   [0:0] and_ln29_1_reg_2355;
wire   [63:0] min_p_37_fu_1344_p3;
reg   [63:0] min_p_37_reg_2360;
wire   [0:0] and_ln29_3_fu_1428_p2;
reg   [0:0] and_ln29_3_reg_2367;
wire   [63:0] min_p_39_fu_1434_p3;
reg   [63:0] min_p_39_reg_2372;
wire   [0:0] and_ln29_5_fu_1518_p2;
reg   [0:0] and_ln29_5_reg_2379;
wire   [63:0] min_p_41_fu_1524_p3;
reg   [63:0] min_p_41_reg_2384;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_1549_p2;
reg   [0:0] icmp_ln29_14_reg_2390;
wire   [0:0] icmp_ln29_15_fu_1555_p2;
reg   [0:0] icmp_ln29_15_reg_2395;
reg   [63:0] p_22_reg_2400;
wire   [0:0] and_ln29_7_fu_1607_p2;
reg   [0:0] and_ln29_7_reg_2407;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_43_fu_1613_p3;
reg   [63:0] min_p_43_reg_2412;
wire   [0:0] and_ln29_9_fu_1697_p2;
reg   [0:0] and_ln29_9_reg_2419;
wire   [63:0] min_p_45_fu_1703_p3;
reg   [63:0] min_p_45_reg_2424;
wire   [0:0] and_ln29_11_fu_1787_p2;
reg   [0:0] and_ln29_11_reg_2431;
wire   [63:0] min_p_47_fu_1793_p3;
reg   [63:0] min_p_47_reg_2436;
wire   [0:0] and_ln29_13_fu_1877_p2;
reg   [0:0] and_ln29_13_reg_2443;
wire   [63:0] min_p_49_fu_1883_p3;
reg   [63:0] min_p_49_reg_2448;
reg   [0:0] tmp_103_reg_2455;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_664_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_691_p1;
wire   [63:0] zext_ln27_1_fu_723_p1;
wire   [63:0] zext_ln27_2_fu_845_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_875_p1;
wire   [63:0] zext_ln26_2_fu_901_p1;
wire   [63:0] zext_ln27_4_fu_1006_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1036_p1;
wire   [63:0] zext_ln27_6_fu_1143_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1161_p1;
reg   [63:0] min_p_fu_138;
wire   [63:0] min_p_51_fu_1972_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_142;
wire   [5:0] add_ln25_1_fu_1247_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_585_p0;
reg   [63:0] grp_fu_585_p1;
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
reg   [63:0] grp_fu_589_p0;
reg   [63:0] grp_fu_589_p1;
wire   [2:0] lshr_ln7_1_fu_646_p4;
wire   [10:0] tmp_s_fu_656_p3;
wire   [9:0] add_ln_fu_683_p3;
wire   [9:0] add_ln27_fu_699_p2;
wire   [5:0] tmp_77_fu_705_p4;
wire   [9:0] add_ln27_2_fu_715_p3;
wire   [6:0] zext_ln16_fu_642_p1;
wire   [63:0] tmp_10_fu_761_p2;
wire   [63:0] tmp_10_fu_761_p4;
wire   [63:0] tmp_10_fu_761_p6;
wire   [63:0] tmp_10_fu_761_p8;
wire   [63:0] tmp_10_fu_761_p9;
wire   [63:0] tmp_11_fu_800_p2;
wire   [63:0] tmp_11_fu_800_p4;
wire   [63:0] tmp_11_fu_800_p6;
wire   [63:0] tmp_11_fu_800_p8;
wire   [63:0] tmp_11_fu_800_p9;
wire   [9:0] add_ln27_1_fu_823_p2;
wire   [5:0] tmp_81_fu_828_p4;
wire   [9:0] add_ln27_4_fu_838_p3;
wire   [9:0] add_ln27_3_fu_853_p2;
wire   [5:0] tmp_85_fu_858_p4;
wire   [9:0] add_ln27_6_fu_868_p3;
wire   [3:0] lshr_ln8_8_fu_883_p4;
wire   [10:0] zext_ln26_1_fu_892_p1;
wire   [10:0] add_ln26_fu_896_p2;
wire   [63:0] tmp_12_fu_922_p2;
wire   [63:0] tmp_12_fu_922_p4;
wire   [63:0] tmp_12_fu_922_p6;
wire   [63:0] tmp_12_fu_922_p8;
wire   [63:0] tmp_12_fu_922_p9;
wire   [63:0] tmp_13_fu_961_p2;
wire   [63:0] tmp_13_fu_961_p4;
wire   [63:0] tmp_13_fu_961_p6;
wire   [63:0] tmp_13_fu_961_p8;
wire   [63:0] tmp_13_fu_961_p9;
wire   [9:0] add_ln27_5_fu_984_p2;
wire   [5:0] tmp_89_fu_989_p4;
wire   [9:0] add_ln27_8_fu_999_p3;
wire   [9:0] add_ln27_7_fu_1014_p2;
wire   [5:0] tmp_93_fu_1019_p4;
wire   [9:0] add_ln27_s_fu_1029_p3;
wire   [9:0] add_ln27_9_fu_1044_p2;
wire   [63:0] tmp_14_fu_1075_p2;
wire   [63:0] tmp_14_fu_1075_p4;
wire   [63:0] tmp_14_fu_1075_p6;
wire   [63:0] tmp_14_fu_1075_p8;
wire   [63:0] tmp_14_fu_1075_p9;
wire   [63:0] tmp_15_fu_1114_p2;
wire   [63:0] tmp_15_fu_1114_p4;
wire   [63:0] tmp_15_fu_1114_p6;
wire   [63:0] tmp_15_fu_1114_p8;
wire   [63:0] tmp_15_fu_1114_p9;
wire   [9:0] add_ln27_10_fu_1137_p3;
wire   [5:0] trunc_ln27_fu_1151_p1;
wire   [9:0] add_ln27_11_fu_1154_p3;
wire   [63:0] tmp_16_fu_1185_p2;
wire   [63:0] tmp_16_fu_1185_p4;
wire   [63:0] tmp_16_fu_1185_p6;
wire   [63:0] tmp_16_fu_1185_p8;
wire   [63:0] tmp_16_fu_1185_p9;
wire   [63:0] tmp_19_fu_1224_p2;
wire   [63:0] tmp_19_fu_1224_p4;
wire   [63:0] tmp_19_fu_1224_p6;
wire   [63:0] tmp_19_fu_1224_p8;
wire   [63:0] tmp_19_fu_1224_p9;
wire   [63:0] bitcast_ln29_fu_1261_p1;
wire   [63:0] bitcast_ln29_1_fu_1279_p1;
wire   [10:0] tmp_74_fu_1265_p4;
wire   [51:0] trunc_ln29_fu_1275_p1;
wire   [0:0] icmp_ln29_1_fu_1302_p2;
wire   [0:0] icmp_ln29_fu_1296_p2;
wire   [10:0] tmp_75_fu_1282_p4;
wire   [51:0] trunc_ln29_1_fu_1292_p1;
wire   [0:0] icmp_ln29_3_fu_1320_p2;
wire   [0:0] icmp_ln29_2_fu_1314_p2;
wire   [0:0] or_ln29_fu_1308_p2;
wire   [0:0] and_ln29_fu_1332_p2;
wire   [0:0] or_ln29_1_fu_1326_p2;
wire   [63:0] bitcast_ln29_2_fu_1351_p1;
wire   [63:0] bitcast_ln29_3_fu_1369_p1;
wire   [10:0] tmp_78_fu_1355_p4;
wire   [51:0] trunc_ln29_2_fu_1365_p1;
wire   [0:0] icmp_ln29_5_fu_1392_p2;
wire   [0:0] icmp_ln29_4_fu_1386_p2;
wire   [10:0] tmp_79_fu_1372_p4;
wire   [51:0] trunc_ln29_3_fu_1382_p1;
wire   [0:0] icmp_ln29_7_fu_1410_p2;
wire   [0:0] icmp_ln29_6_fu_1404_p2;
wire   [0:0] or_ln29_3_fu_1416_p2;
wire   [0:0] or_ln29_2_fu_1398_p2;
wire   [0:0] and_ln29_2_fu_1422_p2;
wire   [63:0] bitcast_ln29_4_fu_1441_p1;
wire   [63:0] bitcast_ln29_5_fu_1459_p1;
wire   [10:0] tmp_82_fu_1445_p4;
wire   [51:0] trunc_ln29_4_fu_1455_p1;
wire   [0:0] icmp_ln29_9_fu_1482_p2;
wire   [0:0] icmp_ln29_8_fu_1476_p2;
wire   [10:0] tmp_83_fu_1462_p4;
wire   [51:0] trunc_ln29_5_fu_1472_p1;
wire   [0:0] icmp_ln29_11_fu_1500_p2;
wire   [0:0] icmp_ln29_10_fu_1494_p2;
wire   [0:0] or_ln29_5_fu_1506_p2;
wire   [0:0] or_ln29_4_fu_1488_p2;
wire   [0:0] and_ln29_4_fu_1512_p2;
wire   [63:0] bitcast_ln29_7_fu_1531_p1;
wire   [10:0] tmp_87_fu_1535_p4;
wire   [51:0] trunc_ln29_7_fu_1545_p1;
wire   [63:0] bitcast_ln29_6_fu_1561_p1;
wire   [10:0] tmp_86_fu_1565_p4;
wire   [51:0] trunc_ln29_6_fu_1575_p1;
wire   [0:0] icmp_ln29_13_fu_1585_p2;
wire   [0:0] icmp_ln29_12_fu_1579_p2;
wire   [0:0] or_ln29_7_fu_1597_p2;
wire   [0:0] or_ln29_6_fu_1591_p2;
wire   [0:0] and_ln29_6_fu_1601_p2;
wire   [63:0] bitcast_ln29_8_fu_1620_p1;
wire   [63:0] bitcast_ln29_9_fu_1638_p1;
wire   [10:0] tmp_90_fu_1624_p4;
wire   [51:0] trunc_ln29_8_fu_1634_p1;
wire   [0:0] icmp_ln29_17_fu_1661_p2;
wire   [0:0] icmp_ln29_16_fu_1655_p2;
wire   [10:0] tmp_91_fu_1641_p4;
wire   [51:0] trunc_ln29_9_fu_1651_p1;
wire   [0:0] icmp_ln29_19_fu_1679_p2;
wire   [0:0] icmp_ln29_18_fu_1673_p2;
wire   [0:0] or_ln29_9_fu_1685_p2;
wire   [0:0] or_ln29_8_fu_1667_p2;
wire   [0:0] and_ln29_8_fu_1691_p2;
wire   [63:0] bitcast_ln29_10_fu_1710_p1;
wire   [63:0] bitcast_ln29_11_fu_1728_p1;
wire   [10:0] tmp_94_fu_1714_p4;
wire   [51:0] trunc_ln29_10_fu_1724_p1;
wire   [0:0] icmp_ln29_21_fu_1751_p2;
wire   [0:0] icmp_ln29_20_fu_1745_p2;
wire   [10:0] tmp_95_fu_1731_p4;
wire   [51:0] trunc_ln29_11_fu_1741_p1;
wire   [0:0] icmp_ln29_23_fu_1769_p2;
wire   [0:0] icmp_ln29_22_fu_1763_p2;
wire   [0:0] or_ln29_11_fu_1775_p2;
wire   [0:0] or_ln29_10_fu_1757_p2;
wire   [0:0] and_ln29_10_fu_1781_p2;
wire   [63:0] bitcast_ln29_12_fu_1800_p1;
wire   [63:0] bitcast_ln29_13_fu_1818_p1;
wire   [10:0] tmp_98_fu_1804_p4;
wire   [51:0] trunc_ln29_12_fu_1814_p1;
wire   [0:0] icmp_ln29_25_fu_1841_p2;
wire   [0:0] icmp_ln29_24_fu_1835_p2;
wire   [10:0] tmp_99_fu_1821_p4;
wire   [51:0] trunc_ln29_13_fu_1831_p1;
wire   [0:0] icmp_ln29_27_fu_1859_p2;
wire   [0:0] icmp_ln29_26_fu_1853_p2;
wire   [0:0] or_ln29_13_fu_1865_p2;
wire   [0:0] or_ln29_12_fu_1847_p2;
wire   [0:0] and_ln29_12_fu_1871_p2;
wire   [63:0] bitcast_ln29_14_fu_1891_p1;
wire   [63:0] bitcast_ln29_15_fu_1908_p1;
wire   [10:0] tmp_101_fu_1894_p4;
wire   [51:0] trunc_ln29_14_fu_1904_p1;
wire   [0:0] icmp_ln29_29_fu_1931_p2;
wire   [0:0] icmp_ln29_28_fu_1925_p2;
wire   [10:0] tmp_102_fu_1911_p4;
wire   [51:0] trunc_ln29_15_fu_1921_p1;
wire   [0:0] icmp_ln29_31_fu_1949_p2;
wire   [0:0] icmp_ln29_30_fu_1943_p2;
wire   [0:0] or_ln29_15_fu_1955_p2;
wire   [0:0] or_ln29_14_fu_1937_p2;
wire   [0:0] and_ln29_14_fu_1961_p2;
wire   [0:0] and_ln29_15_fu_1967_p2;
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
wire   [1:0] tmp_10_fu_761_p1;
wire   [1:0] tmp_10_fu_761_p3;
wire  signed [1:0] tmp_10_fu_761_p5;
wire  signed [1:0] tmp_10_fu_761_p7;
wire   [1:0] tmp_11_fu_800_p1;
wire   [1:0] tmp_11_fu_800_p3;
wire  signed [1:0] tmp_11_fu_800_p5;
wire  signed [1:0] tmp_11_fu_800_p7;
wire   [1:0] tmp_12_fu_922_p1;
wire   [1:0] tmp_12_fu_922_p3;
wire  signed [1:0] tmp_12_fu_922_p5;
wire  signed [1:0] tmp_12_fu_922_p7;
wire   [1:0] tmp_13_fu_961_p1;
wire   [1:0] tmp_13_fu_961_p3;
wire  signed [1:0] tmp_13_fu_961_p5;
wire  signed [1:0] tmp_13_fu_961_p7;
wire   [1:0] tmp_14_fu_1075_p1;
wire   [1:0] tmp_14_fu_1075_p3;
wire  signed [1:0] tmp_14_fu_1075_p5;
wire  signed [1:0] tmp_14_fu_1075_p7;
wire   [1:0] tmp_15_fu_1114_p1;
wire   [1:0] tmp_15_fu_1114_p3;
wire  signed [1:0] tmp_15_fu_1114_p5;
wire  signed [1:0] tmp_15_fu_1114_p7;
wire   [1:0] tmp_16_fu_1185_p1;
wire   [1:0] tmp_16_fu_1185_p3;
wire  signed [1:0] tmp_16_fu_1185_p5;
wire  signed [1:0] tmp_16_fu_1185_p7;
wire   [1:0] tmp_19_fu_1224_p1;
wire   [1:0] tmp_19_fu_1224_p3;
wire  signed [1:0] tmp_19_fu_1224_p5;
wire  signed [1:0] tmp_19_fu_1224_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_138 = 64'd0;
#0 prev_fu_142 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U34(.din0(tmp_10_fu_761_p2),.din1(tmp_10_fu_761_p4),.din2(tmp_10_fu_761_p6),.din3(tmp_10_fu_761_p8),.def(tmp_10_fu_761_p9),.sel(empty_10),.dout(tmp_10_fu_761_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U35(.din0(tmp_11_fu_800_p2),.din1(tmp_11_fu_800_p4),.din2(tmp_11_fu_800_p6),.din3(tmp_11_fu_800_p8),.def(tmp_11_fu_800_p9),.sel(empty_10),.dout(tmp_11_fu_800_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U36(.din0(tmp_12_fu_922_p2),.din1(tmp_12_fu_922_p4),.din2(tmp_12_fu_922_p6),.din3(tmp_12_fu_922_p8),.def(tmp_12_fu_922_p9),.sel(empty_10),.dout(tmp_12_fu_922_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U37(.din0(tmp_13_fu_961_p2),.din1(tmp_13_fu_961_p4),.din2(tmp_13_fu_961_p6),.din3(tmp_13_fu_961_p8),.def(tmp_13_fu_961_p9),.sel(empty_10),.dout(tmp_13_fu_961_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U38(.din0(tmp_14_fu_1075_p2),.din1(tmp_14_fu_1075_p4),.din2(tmp_14_fu_1075_p6),.din3(tmp_14_fu_1075_p8),.def(tmp_14_fu_1075_p9),.sel(empty_10),.dout(tmp_14_fu_1075_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U39(.din0(tmp_15_fu_1114_p2),.din1(tmp_15_fu_1114_p4),.din2(tmp_15_fu_1114_p6),.din3(tmp_15_fu_1114_p8),.def(tmp_15_fu_1114_p9),.sel(empty_10),.dout(tmp_15_fu_1114_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U40(.din0(tmp_16_fu_1185_p2),.din1(tmp_16_fu_1185_p4),.din2(tmp_16_fu_1185_p6),.din3(tmp_16_fu_1185_p8),.def(tmp_16_fu_1185_p9),.sel(empty_10),.dout(tmp_16_fu_1185_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(tmp_19_fu_1224_p2),.din1(tmp_19_fu_1224_p4),.din2(tmp_19_fu_1224_p6),.din3(tmp_19_fu_1224_p8),.def(tmp_19_fu_1224_p9),.sel(empty_10),.dout(tmp_19_fu_1224_p11));
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
            min_p_fu_138 <= min_p_34;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_138 <= min_p_51_fu_1972_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_142 <= 6'd1;
    end else if (((tmp_73_reg_2124 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_142 <= add_ln25_1_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2338 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2343 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_2118 <= add_ln25_fu_731_p2;
        prev_1_reg_2029 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2069[9 : 4] <= shl_ln1_fu_675_p3[9 : 4];
        tmp_73_reg_2124 <= add_ln25_fu_731_p2[32'd6];
        tmp_73_reg_2124_pp0_iter1_reg <= tmp_73_reg_2124;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2431 <= and_ln29_11_fu_1787_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2443 <= and_ln29_13_fu_1877_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_2355 <= and_ln29_1_fu_1338_p2;
        llike_load_reg_2273 <= llike_q0;
        tmp_12_reg_2218 <= tmp_12_fu_922_p11;
        tmp_13_reg_2223 <= tmp_13_fu_961_p11;
        tmp_97_reg_2268 <= {{add_ln27_9_fu_1044_p2[9:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2367 <= and_ln29_3_fu_1428_p2;
        tmp_16_reg_2328 <= tmp_16_fu_1185_p11;
        tmp_19_reg_2333 <= tmp_19_fu_1224_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2379 <= and_ln29_5_fu_1518_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2407 <= and_ln29_7_fu_1607_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2419 <= and_ln29_9_fu_1697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2390 <= icmp_ln29_14_fu_1549_p2;
        icmp_ln29_15_reg_2395 <= icmp_ln29_15_fu_1555_p2;
        min_p_41_reg_2384 <= min_p_41_fu_1524_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_2128 <= llike_1_q0;
        llike_2_load_reg_2138 <= llike_2_q0;
        llike_3_load_reg_2148 <= llike_3_q0;
        llike_4_load_reg_2173 <= llike_4_q0;
        llike_5_load_reg_2198 <= llike_5_q0;
        llike_6_load_reg_2203 <= llike_6_q0;
        llike_7_load_reg_2208 <= llike_7_q0;
        min_p_35_reg_2348 <= min_p_fu_138;
        tmp_10_reg_2133 <= tmp_10_fu_761_p11;
        tmp_11_reg_2143 <= tmp_11_fu_800_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_37_reg_2360 <= min_p_37_fu_1344_p3;
        tmp_14_reg_2278 <= tmp_14_fu_1075_p11;
        tmp_15_reg_2283 <= tmp_15_fu_1114_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_39_reg_2372 <= min_p_39_fu_1434_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_43_reg_2412 <= min_p_43_fu_1613_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_45_reg_2424 <= min_p_45_fu_1703_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_47_reg_2436 <= min_p_47_fu_1793_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_49_reg_2448 <= min_p_49_fu_1883_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_22_reg_2400 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_593 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_599 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_605 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_611 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_617 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_623 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_103_reg_2455 <= grp_fu_1497_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_73_reg_2124 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_73_reg_2124_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_585_p0 = add52_7_reg_2343;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_585_p0 = reg_623;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_585_p0 = add52_5_reg_2338;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_585_p0 = reg_617;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_585_p0 = reg_611;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_585_p0 = reg_605;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_585_p0 = reg_599;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_585_p0 = reg_593;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_585_p0 = llike_load_reg_2273;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_585_p0 = llike_7_load_reg_2208;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_585_p0 = llike_6_load_reg_2203;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_585_p0 = llike_5_load_reg_2198;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_585_p0 = llike_4_load_reg_2173;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_585_p0 = llike_3_load_reg_2148;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_585_p0 = llike_2_load_reg_2138;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_585_p0 = llike_1_load_reg_2128;
    end else begin
        grp_fu_585_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_585_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_585_p1 = tmp_19_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_585_p1 = tmp_16_reg_2328;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_585_p1 = tmp_15_reg_2283;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_585_p1 = tmp_14_reg_2278;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_585_p1 = tmp_13_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_585_p1 = tmp_12_reg_2218;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_585_p1 = tmp_11_reg_2143;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_585_p1 = tmp_10_reg_2133;
    end else begin
        grp_fu_585_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_589_p0 = p_22_reg_2400;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_589_p0 = reg_623;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_589_p0 = reg_617;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_589_p0 = reg_611;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_589_p0 = reg_605;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_589_p0 = reg_599;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_589_p0 = reg_593;
    end else begin
        grp_fu_589_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_589_p1 = min_p_49_fu_1883_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_589_p1 = min_p_47_fu_1793_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_589_p1 = min_p_45_fu_1703_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_589_p1 = min_p_43_fu_1613_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_589_p1 = min_p_41_fu_1524_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_589_p1 = min_p_39_fu_1434_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_589_p1 = min_p_37_fu_1344_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_589_p1 = min_p_fu_138;
        end else begin
            grp_fu_589_p1 = 'bx;
        end
    end else begin
        grp_fu_589_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_73_reg_2124_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_50_out_ap_vld = 1'b1;
    end else begin
        min_p_50_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1161_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_723_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_691_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1161_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_723_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_691_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1161_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_723_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_691_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1161_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_723_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1143_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_691_p1;
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
assign add_ln25_1_fu_1247_p2 = (prev_1_reg_2029 + 6'd8);
assign add_ln25_fu_731_p2 = (zext_ln16_fu_642_p1 + 7'd7);
assign add_ln26_fu_896_p2 = (empty + zext_ln26_1_fu_892_p1);
assign add_ln27_10_fu_1137_p3 = {{tmp_97_reg_2268}, {lshr_ln}};
assign add_ln27_11_fu_1154_p3 = {{trunc_ln27_fu_1151_p1}, {lshr_ln}};
assign add_ln27_1_fu_823_p2 = (shl_ln1_reg_2069 + 10'd32);
assign add_ln27_2_fu_715_p3 = {{tmp_77_fu_705_p4}, {lshr_ln}};
assign add_ln27_3_fu_853_p2 = (shl_ln1_reg_2069 + 10'd48);
assign add_ln27_4_fu_838_p3 = {{tmp_81_fu_828_p4}, {lshr_ln}};
assign add_ln27_5_fu_984_p2 = (shl_ln1_reg_2069 + 10'd64);
assign add_ln27_6_fu_868_p3 = {{tmp_85_fu_858_p4}, {lshr_ln}};
assign add_ln27_7_fu_1014_p2 = (shl_ln1_reg_2069 + 10'd80);
assign add_ln27_8_fu_999_p3 = {{tmp_89_fu_989_p4}, {lshr_ln}};
assign add_ln27_9_fu_1044_p2 = (shl_ln1_reg_2069 + 10'd96);
assign add_ln27_fu_699_p2 = (shl_ln1_fu_675_p3 + 10'd16);
assign add_ln27_s_fu_1029_p3 = {{tmp_93_fu_1019_p4}, {lshr_ln}};
assign add_ln_fu_683_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1781_p2 = (or_ln29_11_fu_1775_p2 & or_ln29_10_fu_1757_p2);
assign and_ln29_11_fu_1787_p2 = (grp_fu_1497_p_dout0 & and_ln29_10_fu_1781_p2);
assign and_ln29_12_fu_1871_p2 = (or_ln29_13_fu_1865_p2 & or_ln29_12_fu_1847_p2);
assign and_ln29_13_fu_1877_p2 = (grp_fu_1497_p_dout0 & and_ln29_12_fu_1871_p2);
assign and_ln29_14_fu_1961_p2 = (or_ln29_15_fu_1955_p2 & or_ln29_14_fu_1937_p2);
assign and_ln29_15_fu_1967_p2 = (tmp_103_reg_2455 & and_ln29_14_fu_1961_p2);
assign and_ln29_1_fu_1338_p2 = (or_ln29_1_fu_1326_p2 & and_ln29_fu_1332_p2);
assign and_ln29_2_fu_1422_p2 = (or_ln29_3_fu_1416_p2 & or_ln29_2_fu_1398_p2);
assign and_ln29_3_fu_1428_p2 = (grp_fu_1497_p_dout0 & and_ln29_2_fu_1422_p2);
assign and_ln29_4_fu_1512_p2 = (or_ln29_5_fu_1506_p2 & or_ln29_4_fu_1488_p2);
assign and_ln29_5_fu_1518_p2 = (grp_fu_1497_p_dout0 & and_ln29_4_fu_1512_p2);
assign and_ln29_6_fu_1601_p2 = (or_ln29_7_fu_1597_p2 & or_ln29_6_fu_1591_p2);
assign and_ln29_7_fu_1607_p2 = (grp_fu_1497_p_dout0 & and_ln29_6_fu_1601_p2);
assign and_ln29_8_fu_1691_p2 = (or_ln29_9_fu_1685_p2 & or_ln29_8_fu_1667_p2);
assign and_ln29_9_fu_1697_p2 = (grp_fu_1497_p_dout0 & and_ln29_8_fu_1691_p2);
assign and_ln29_fu_1332_p2 = (or_ln29_fu_1308_p2 & grp_fu_1497_p_dout0);
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
assign bitcast_ln29_10_fu_1710_p1 = reg_617;
assign bitcast_ln29_11_fu_1728_p1 = min_p_45_reg_2424;
assign bitcast_ln29_12_fu_1800_p1 = reg_623;
assign bitcast_ln29_13_fu_1818_p1 = min_p_47_reg_2436;
assign bitcast_ln29_14_fu_1891_p1 = p_22_reg_2400;
assign bitcast_ln29_15_fu_1908_p1 = min_p_49_reg_2448;
assign bitcast_ln29_1_fu_1279_p1 = min_p_35_reg_2348;
assign bitcast_ln29_2_fu_1351_p1 = reg_599;
assign bitcast_ln29_3_fu_1369_p1 = min_p_37_reg_2360;
assign bitcast_ln29_4_fu_1441_p1 = reg_605;
assign bitcast_ln29_5_fu_1459_p1 = min_p_39_reg_2372;
assign bitcast_ln29_6_fu_1561_p1 = reg_593;
assign bitcast_ln29_7_fu_1531_p1 = min_p_41_fu_1524_p3;
assign bitcast_ln29_8_fu_1620_p1 = reg_611;
assign bitcast_ln29_9_fu_1638_p1 = min_p_43_reg_2412;
assign bitcast_ln29_fu_1261_p1 = reg_593;
assign grp_fu_1497_p_ce = 1'b1;
assign grp_fu_1497_p_din0 = grp_fu_589_p0;
assign grp_fu_1497_p_din1 = grp_fu_589_p1;
assign grp_fu_1497_p_opcode = 5'd4;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_585_p0;
assign grp_fu_728_p_din1 = grp_fu_585_p1;
assign grp_fu_728_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1494_p2 = ((tmp_83_fu_1462_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1500_p2 = ((trunc_ln29_5_fu_1472_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1579_p2 = ((tmp_86_fu_1565_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1585_p2 = ((trunc_ln29_6_fu_1575_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1549_p2 = ((tmp_87_fu_1535_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1555_p2 = ((trunc_ln29_7_fu_1545_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1655_p2 = ((tmp_90_fu_1624_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1661_p2 = ((trunc_ln29_8_fu_1634_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1673_p2 = ((tmp_91_fu_1641_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1679_p2 = ((trunc_ln29_9_fu_1651_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1302_p2 = ((trunc_ln29_fu_1275_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1745_p2 = ((tmp_94_fu_1714_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1751_p2 = ((trunc_ln29_10_fu_1724_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1763_p2 = ((tmp_95_fu_1731_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1769_p2 = ((trunc_ln29_11_fu_1741_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1835_p2 = ((tmp_98_fu_1804_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1841_p2 = ((trunc_ln29_12_fu_1814_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1853_p2 = ((tmp_99_fu_1821_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1859_p2 = ((trunc_ln29_13_fu_1831_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1925_p2 = ((tmp_101_fu_1894_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1931_p2 = ((trunc_ln29_14_fu_1904_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1314_p2 = ((tmp_75_fu_1282_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1943_p2 = ((tmp_102_fu_1911_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1949_p2 = ((trunc_ln29_15_fu_1921_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1320_p2 = ((trunc_ln29_1_fu_1292_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1386_p2 = ((tmp_78_fu_1355_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1392_p2 = ((trunc_ln29_2_fu_1365_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1404_p2 = ((tmp_79_fu_1372_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1410_p2 = ((trunc_ln29_3_fu_1382_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1476_p2 = ((tmp_82_fu_1445_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1482_p2 = ((trunc_ln29_4_fu_1455_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1296_p2 = ((tmp_74_fu_1265_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_664_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_664_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_664_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln26_fu_664_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln26_fu_664_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln26_fu_664_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln26_fu_664_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln26_2_fu_901_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_646_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_8_fu_883_p4 = {{add_ln25_reg_2118[6:3]}};
assign min_p_37_fu_1344_p3 = ((and_ln29_1_reg_2355[0:0] == 1'b1) ? reg_593 : min_p_35_reg_2348);
assign min_p_39_fu_1434_p3 = ((and_ln29_3_reg_2367[0:0] == 1'b1) ? reg_599 : min_p_37_reg_2360);
assign min_p_41_fu_1524_p3 = ((and_ln29_5_reg_2379[0:0] == 1'b1) ? reg_605 : min_p_39_reg_2372);
assign min_p_43_fu_1613_p3 = ((and_ln29_7_reg_2407[0:0] == 1'b1) ? reg_593 : min_p_41_reg_2384);
assign min_p_45_fu_1703_p3 = ((and_ln29_9_reg_2419[0:0] == 1'b1) ? reg_611 : min_p_43_reg_2412);
assign min_p_47_fu_1793_p3 = ((and_ln29_11_reg_2431[0:0] == 1'b1) ? reg_617 : min_p_45_reg_2424);
assign min_p_49_fu_1883_p3 = ((and_ln29_13_reg_2443[0:0] == 1'b1) ? reg_623 : min_p_47_reg_2436);
assign min_p_50_out = ((and_ln29_13_reg_2443[0:0] == 1'b1) ? reg_623 : min_p_47_reg_2436);
assign min_p_51_fu_1972_p3 = ((and_ln29_15_fu_1967_p2[0:0] == 1'b1) ? p_22_reg_2400 : min_p_49_reg_2448);
assign or_ln29_10_fu_1757_p2 = (icmp_ln29_21_fu_1751_p2 | icmp_ln29_20_fu_1745_p2);
assign or_ln29_11_fu_1775_p2 = (icmp_ln29_23_fu_1769_p2 | icmp_ln29_22_fu_1763_p2);
assign or_ln29_12_fu_1847_p2 = (icmp_ln29_25_fu_1841_p2 | icmp_ln29_24_fu_1835_p2);
assign or_ln29_13_fu_1865_p2 = (icmp_ln29_27_fu_1859_p2 | icmp_ln29_26_fu_1853_p2);
assign or_ln29_14_fu_1937_p2 = (icmp_ln29_29_fu_1931_p2 | icmp_ln29_28_fu_1925_p2);
assign or_ln29_15_fu_1955_p2 = (icmp_ln29_31_fu_1949_p2 | icmp_ln29_30_fu_1943_p2);
assign or_ln29_1_fu_1326_p2 = (icmp_ln29_3_fu_1320_p2 | icmp_ln29_2_fu_1314_p2);
assign or_ln29_2_fu_1398_p2 = (icmp_ln29_5_fu_1392_p2 | icmp_ln29_4_fu_1386_p2);
assign or_ln29_3_fu_1416_p2 = (icmp_ln29_7_fu_1410_p2 | icmp_ln29_6_fu_1404_p2);
assign or_ln29_4_fu_1488_p2 = (icmp_ln29_9_fu_1482_p2 | icmp_ln29_8_fu_1476_p2);
assign or_ln29_5_fu_1506_p2 = (icmp_ln29_11_fu_1500_p2 | icmp_ln29_10_fu_1494_p2);
assign or_ln29_6_fu_1591_p2 = (icmp_ln29_13_fu_1585_p2 | icmp_ln29_12_fu_1579_p2);
assign or_ln29_7_fu_1597_p2 = (icmp_ln29_15_reg_2395 | icmp_ln29_14_reg_2390);
assign or_ln29_8_fu_1667_p2 = (icmp_ln29_17_fu_1661_p2 | icmp_ln29_16_fu_1655_p2);
assign or_ln29_9_fu_1685_p2 = (icmp_ln29_19_fu_1679_p2 | icmp_ln29_18_fu_1673_p2);
assign or_ln29_fu_1308_p2 = (icmp_ln29_fu_1296_p2 | icmp_ln29_1_fu_1302_p2);
assign shl_ln1_fu_675_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_101_fu_1894_p4 = {{bitcast_ln29_14_fu_1891_p1[62:52]}};
assign tmp_102_fu_1911_p4 = {{bitcast_ln29_15_fu_1908_p1[62:52]}};
assign tmp_10_fu_761_p2 = transition_0_q1;
assign tmp_10_fu_761_p4 = transition_1_q1;
assign tmp_10_fu_761_p6 = transition_2_q1;
assign tmp_10_fu_761_p8 = transition_3_q1;
assign tmp_10_fu_761_p9 = 'bx;
assign tmp_11_fu_800_p2 = transition_0_q0;
assign tmp_11_fu_800_p4 = transition_1_q0;
assign tmp_11_fu_800_p6 = transition_2_q0;
assign tmp_11_fu_800_p8 = transition_3_q0;
assign tmp_11_fu_800_p9 = 'bx;
assign tmp_12_fu_922_p2 = transition_0_q1;
assign tmp_12_fu_922_p4 = transition_1_q1;
assign tmp_12_fu_922_p6 = transition_2_q1;
assign tmp_12_fu_922_p8 = transition_3_q1;
assign tmp_12_fu_922_p9 = 'bx;
assign tmp_13_fu_961_p2 = transition_0_q0;
assign tmp_13_fu_961_p4 = transition_1_q0;
assign tmp_13_fu_961_p6 = transition_2_q0;
assign tmp_13_fu_961_p8 = transition_3_q0;
assign tmp_13_fu_961_p9 = 'bx;
assign tmp_14_fu_1075_p2 = transition_0_q1;
assign tmp_14_fu_1075_p4 = transition_1_q1;
assign tmp_14_fu_1075_p6 = transition_2_q1;
assign tmp_14_fu_1075_p8 = transition_3_q1;
assign tmp_14_fu_1075_p9 = 'bx;
assign tmp_15_fu_1114_p2 = transition_0_q0;
assign tmp_15_fu_1114_p4 = transition_1_q0;
assign tmp_15_fu_1114_p6 = transition_2_q0;
assign tmp_15_fu_1114_p8 = transition_3_q0;
assign tmp_15_fu_1114_p9 = 'bx;
assign tmp_16_fu_1185_p2 = transition_0_q1;
assign tmp_16_fu_1185_p4 = transition_1_q1;
assign tmp_16_fu_1185_p6 = transition_2_q1;
assign tmp_16_fu_1185_p8 = transition_3_q1;
assign tmp_16_fu_1185_p9 = 'bx;
assign tmp_19_fu_1224_p2 = transition_0_q0;
assign tmp_19_fu_1224_p4 = transition_1_q0;
assign tmp_19_fu_1224_p6 = transition_2_q0;
assign tmp_19_fu_1224_p8 = transition_3_q0;
assign tmp_19_fu_1224_p9 = 'bx;
assign tmp_74_fu_1265_p4 = {{bitcast_ln29_fu_1261_p1[62:52]}};
assign tmp_75_fu_1282_p4 = {{bitcast_ln29_1_fu_1279_p1[62:52]}};
assign tmp_77_fu_705_p4 = {{add_ln27_fu_699_p2[9:4]}};
assign tmp_78_fu_1355_p4 = {{bitcast_ln29_2_fu_1351_p1[62:52]}};
assign tmp_79_fu_1372_p4 = {{bitcast_ln29_3_fu_1369_p1[62:52]}};
assign tmp_81_fu_828_p4 = {{add_ln27_1_fu_823_p2[9:4]}};
assign tmp_82_fu_1445_p4 = {{bitcast_ln29_4_fu_1441_p1[62:52]}};
assign tmp_83_fu_1462_p4 = {{bitcast_ln29_5_fu_1459_p1[62:52]}};
assign tmp_85_fu_858_p4 = {{add_ln27_3_fu_853_p2[9:4]}};
assign tmp_86_fu_1565_p4 = {{bitcast_ln29_6_fu_1561_p1[62:52]}};
assign tmp_87_fu_1535_p4 = {{bitcast_ln29_7_fu_1531_p1[62:52]}};
assign tmp_89_fu_989_p4 = {{add_ln27_5_fu_984_p2[9:4]}};
assign tmp_90_fu_1624_p4 = {{bitcast_ln29_8_fu_1620_p1[62:52]}};
assign tmp_91_fu_1641_p4 = {{bitcast_ln29_9_fu_1638_p1[62:52]}};
assign tmp_93_fu_1019_p4 = {{add_ln27_7_fu_1014_p2[9:4]}};
assign tmp_94_fu_1714_p4 = {{bitcast_ln29_10_fu_1710_p1[62:52]}};
assign tmp_95_fu_1731_p4 = {{bitcast_ln29_11_fu_1728_p1[62:52]}};
assign tmp_98_fu_1804_p4 = {{bitcast_ln29_12_fu_1800_p1[62:52]}};
assign tmp_99_fu_1821_p4 = {{bitcast_ln29_13_fu_1818_p1[62:52]}};
assign tmp_s_fu_656_p3 = {{empty_9}, {lshr_ln7_1_fu_646_p4}};
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
assign trunc_ln27_fu_1151_p1 = add_ln25_reg_2118[5:0];
assign trunc_ln29_10_fu_1724_p1 = bitcast_ln29_10_fu_1710_p1[51:0];
assign trunc_ln29_11_fu_1741_p1 = bitcast_ln29_11_fu_1728_p1[51:0];
assign trunc_ln29_12_fu_1814_p1 = bitcast_ln29_12_fu_1800_p1[51:0];
assign trunc_ln29_13_fu_1831_p1 = bitcast_ln29_13_fu_1818_p1[51:0];
assign trunc_ln29_14_fu_1904_p1 = bitcast_ln29_14_fu_1891_p1[51:0];
assign trunc_ln29_15_fu_1921_p1 = bitcast_ln29_15_fu_1908_p1[51:0];
assign trunc_ln29_1_fu_1292_p1 = bitcast_ln29_1_fu_1279_p1[51:0];
assign trunc_ln29_2_fu_1365_p1 = bitcast_ln29_2_fu_1351_p1[51:0];
assign trunc_ln29_3_fu_1382_p1 = bitcast_ln29_3_fu_1369_p1[51:0];
assign trunc_ln29_4_fu_1455_p1 = bitcast_ln29_4_fu_1441_p1[51:0];
assign trunc_ln29_5_fu_1472_p1 = bitcast_ln29_5_fu_1459_p1[51:0];
assign trunc_ln29_6_fu_1575_p1 = bitcast_ln29_6_fu_1561_p1[51:0];
assign trunc_ln29_7_fu_1545_p1 = bitcast_ln29_7_fu_1531_p1[51:0];
assign trunc_ln29_8_fu_1634_p1 = bitcast_ln29_8_fu_1620_p1[51:0];
assign trunc_ln29_9_fu_1651_p1 = bitcast_ln29_9_fu_1638_p1[51:0];
assign trunc_ln29_fu_1275_p1 = bitcast_ln29_fu_1261_p1[51:0];
assign zext_ln16_fu_642_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_892_p1 = lshr_ln8_8_fu_883_p4;
assign zext_ln26_2_fu_901_p1 = add_ln26_fu_896_p2;
assign zext_ln26_fu_664_p1 = tmp_s_fu_656_p3;
assign zext_ln27_1_fu_723_p1 = add_ln27_2_fu_715_p3;
assign zext_ln27_2_fu_845_p1 = add_ln27_4_fu_838_p3;
assign zext_ln27_3_fu_875_p1 = add_ln27_6_fu_868_p3;
assign zext_ln27_4_fu_1006_p1 = add_ln27_8_fu_999_p3;
assign zext_ln27_5_fu_1036_p1 = add_ln27_s_fu_1029_p3;
assign zext_ln27_6_fu_1143_p1 = add_ln27_10_fu_1137_p3;
assign zext_ln27_7_fu_1161_p1 = add_ln27_11_fu_1154_p3;
assign zext_ln27_fu_691_p1 = add_ln_fu_683_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2069[3:0] <= 4'b0000;
end
endmodule 