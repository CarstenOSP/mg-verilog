module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_9,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_34_out,min_p_34_out_ap_vld,grp_fu_594_p_din0,grp_fu_594_p_din1,grp_fu_594_p_opcode,grp_fu_594_p_dout0,grp_fu_594_p_ce,grp_fu_1351_p_din0,grp_fu_1351_p_din1,grp_fu_1351_p_opcode,grp_fu_1351_p_dout0,grp_fu_1351_p_ce); 
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
input  [63:0] min_p_18;
input  [7:0] empty_9;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
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
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] empty;
output  [63:0] min_p_34_out;
output   min_p_34_out_ap_vld;
output  [63:0] grp_fu_594_p_din0;
output  [63:0] grp_fu_594_p_din1;
output  [1:0] grp_fu_594_p_opcode;
input  [63:0] grp_fu_594_p_dout0;
output   grp_fu_594_p_ce;
output  [63:0] grp_fu_1351_p_din0;
output  [63:0] grp_fu_1351_p_din1;
output  [4:0] grp_fu_1351_p_opcode;
input  [0:0] grp_fu_1351_p_dout0;
output   grp_fu_1351_p_ce;
reg ap_idle;
reg min_p_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_39_reg_2172;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_561;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_567;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_573;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_579;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_585;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_591;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2088;
wire   [4:0] lshr_ln7_1_fu_614_p4;
reg   [4:0] lshr_ln7_1_reg_2095;
wire   [5:0] add_ln25_1_fu_717_p2;
reg   [5:0] add_ln25_1_reg_2156;
wire   [6:0] add_ln25_3_fu_746_p2;
reg   [6:0] add_ln25_3_reg_2166;
reg   [0:0] tmp_39_reg_2172_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_2176;
wire   [9:0] shl_ln1_fu_760_p3;
reg   [9:0] shl_ln1_reg_2181;
wire   [63:0] tmp_10_fu_783_p11;
reg   [63:0] tmp_10_reg_2187;
reg   [63:0] llike_load_1_reg_2192;
wire   [63:0] tmp_11_fu_822_p11;
reg   [63:0] tmp_11_reg_2197;
reg   [63:0] llike_1_load_1_reg_2202;
reg   [63:0] llike_load_2_reg_2227;
wire   [5:0] add_ln25_2_fu_907_p2;
reg   [5:0] add_ln25_2_reg_2257;
wire   [63:0] tmp_12_fu_990_p11;
reg   [63:0] tmp_12_reg_2277;
wire   [63:0] tmp_13_fu_1029_p11;
reg   [63:0] tmp_13_reg_2282;
reg   [63:0] llike_1_load_2_reg_2287;
reg   [63:0] llike_load_3_reg_2312;
reg   [63:0] llike_1_load_3_reg_2337;
reg   [5:0] tmp_66_reg_2342;
reg   [63:0] llike_load_reg_2347;
wire   [63:0] tmp_14_fu_1127_p11;
reg   [63:0] tmp_14_reg_2352;
wire   [63:0] tmp_15_fu_1166_p11;
reg   [63:0] tmp_15_reg_2357;
wire   [63:0] tmp_16_fu_1237_p11;
reg   [63:0] tmp_16_reg_2402;
wire   [63:0] tmp_19_fu_1276_p11;
reg   [63:0] tmp_19_reg_2407;
reg   [63:0] add52_5_reg_2412;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2417;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_19_reg_2422;
wire   [0:0] and_ln29_1_fu_1390_p2;
reg   [0:0] and_ln29_1_reg_2429;
wire   [63:0] min_p_21_fu_1396_p3;
reg   [63:0] min_p_21_reg_2434;
wire   [0:0] and_ln29_3_fu_1480_p2;
reg   [0:0] and_ln29_3_reg_2441;
wire   [63:0] min_p_23_fu_1486_p3;
reg   [63:0] min_p_23_reg_2446;
wire   [0:0] and_ln29_5_fu_1570_p2;
reg   [0:0] and_ln29_5_reg_2453;
wire   [63:0] min_p_25_fu_1576_p3;
reg   [63:0] min_p_25_reg_2458;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln29_14_fu_1601_p2;
reg   [0:0] icmp_ln29_14_reg_2464;
wire   [0:0] icmp_ln29_15_fu_1607_p2;
reg   [0:0] icmp_ln29_15_reg_2469;
reg   [63:0] p_14_reg_2474;
wire   [0:0] and_ln29_7_fu_1659_p2;
reg   [0:0] and_ln29_7_reg_2481;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_27_fu_1665_p3;
reg   [63:0] min_p_27_reg_2486;
wire   [0:0] and_ln29_9_fu_1749_p2;
reg   [0:0] and_ln29_9_reg_2493;
wire   [63:0] min_p_29_fu_1755_p3;
reg   [63:0] min_p_29_reg_2498;
wire   [0:0] and_ln29_11_fu_1839_p2;
reg   [0:0] and_ln29_11_reg_2505;
wire   [63:0] min_p_31_fu_1845_p3;
reg   [63:0] min_p_31_reg_2510;
wire   [0:0] and_ln29_13_fu_1929_p2;
reg   [0:0] and_ln29_13_reg_2517;
wire   [63:0] min_p_33_fu_1935_p3;
reg   [63:0] min_p_33_reg_2522;
reg   [0:0] tmp_72_reg_2529;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_632_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_645_p1;
wire   [63:0] zext_ln26_1_fu_677_p1;
wire   [63:0] zext_ln27_1_fu_690_p1;
wire   [63:0] zext_ln26_2_fu_712_p1;
wire   [63:0] zext_ln26_3_fu_741_p1;
wire   [63:0] zext_ln27_2_fu_868_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_882_p1;
wire   [63:0] zext_ln26_4_fu_902_p1;
wire   [63:0] zext_ln26_5_fu_929_p1;
wire   [63:0] zext_ln26_6_fu_946_p1;
wire   [63:0] zext_ln26_8_fu_969_p1;
wire   [63:0] zext_ln27_4_fu_1074_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1088_p1;
wire   [63:0] zext_ln27_6_fu_1195_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1213_p1;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_35_fu_2024_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_132;
wire   [5:0] add_ln25_4_fu_1299_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
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
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_553_p0;
reg   [63:0] grp_fu_553_p1;
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
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_557_p1;
wire   [12:0] tmp_s_fu_624_p3;
wire   [9:0] add_ln_fu_637_p3;
wire   [5:0] add_ln25_fu_653_p2;
wire   [4:0] lshr_ln8_4_fu_659_p4;
wire   [12:0] tmp_43_fu_669_p3;
wire   [9:0] add_ln27_1_fu_682_p3;
wire   [4:0] add_ln8_fu_698_p2;
wire   [12:0] tmp_47_fu_704_p3;
wire   [4:0] lshr_ln8_5_fu_723_p4;
wire   [12:0] tmp_52_fu_733_p3;
wire   [6:0] zext_ln16_fu_610_p1;
wire   [63:0] tmp_10_fu_783_p2;
wire   [63:0] tmp_10_fu_783_p4;
wire   [63:0] tmp_10_fu_783_p6;
wire   [63:0] tmp_10_fu_783_p8;
wire   [63:0] tmp_10_fu_783_p9;
wire   [63:0] tmp_11_fu_822_p2;
wire   [63:0] tmp_11_fu_822_p4;
wire   [63:0] tmp_11_fu_822_p6;
wire   [63:0] tmp_11_fu_822_p8;
wire   [63:0] tmp_11_fu_822_p9;
wire   [9:0] add_ln27_fu_845_p2;
wire   [5:0] tmp_48_fu_851_p4;
wire   [9:0] add_ln27_3_fu_861_p3;
wire   [9:0] add_ln27_4_fu_876_p3;
wire   [4:0] add_ln8_3_fu_890_p2;
wire   [12:0] tmp_56_fu_895_p3;
wire   [4:0] lshr_ln8_6_fu_912_p4;
wire   [12:0] tmp_61_fu_922_p3;
wire   [4:0] add_ln8_4_fu_934_p2;
wire   [12:0] tmp_65_fu_939_p3;
wire   [5:0] lshr_ln8_7_fu_951_p4;
wire   [12:0] zext_ln26_7_fu_960_p1;
wire   [12:0] add_ln26_fu_964_p2;
wire   [63:0] tmp_12_fu_990_p2;
wire   [63:0] tmp_12_fu_990_p4;
wire   [63:0] tmp_12_fu_990_p6;
wire   [63:0] tmp_12_fu_990_p8;
wire   [63:0] tmp_12_fu_990_p9;
wire   [63:0] tmp_13_fu_1029_p2;
wire   [63:0] tmp_13_fu_1029_p4;
wire   [63:0] tmp_13_fu_1029_p6;
wire   [63:0] tmp_13_fu_1029_p8;
wire   [63:0] tmp_13_fu_1029_p9;
wire   [9:0] add_ln27_2_fu_1052_p2;
wire   [5:0] tmp_57_fu_1057_p4;
wire   [9:0] add_ln27_6_fu_1067_p3;
wire   [9:0] add_ln27_7_fu_1082_p3;
wire   [9:0] add_ln27_5_fu_1096_p2;
wire   [63:0] tmp_14_fu_1127_p2;
wire   [63:0] tmp_14_fu_1127_p4;
wire   [63:0] tmp_14_fu_1127_p6;
wire   [63:0] tmp_14_fu_1127_p8;
wire   [63:0] tmp_14_fu_1127_p9;
wire   [63:0] tmp_15_fu_1166_p2;
wire   [63:0] tmp_15_fu_1166_p4;
wire   [63:0] tmp_15_fu_1166_p6;
wire   [63:0] tmp_15_fu_1166_p8;
wire   [63:0] tmp_15_fu_1166_p9;
wire   [9:0] add_ln27_9_fu_1189_p3;
wire   [5:0] trunc_ln27_fu_1203_p1;
wire   [9:0] add_ln27_s_fu_1206_p3;
wire   [63:0] tmp_16_fu_1237_p2;
wire   [63:0] tmp_16_fu_1237_p4;
wire   [63:0] tmp_16_fu_1237_p6;
wire   [63:0] tmp_16_fu_1237_p8;
wire   [63:0] tmp_16_fu_1237_p9;
wire   [63:0] tmp_19_fu_1276_p2;
wire   [63:0] tmp_19_fu_1276_p4;
wire   [63:0] tmp_19_fu_1276_p6;
wire   [63:0] tmp_19_fu_1276_p8;
wire   [63:0] tmp_19_fu_1276_p9;
wire   [63:0] bitcast_ln29_fu_1313_p1;
wire   [63:0] bitcast_ln29_1_fu_1331_p1;
wire   [10:0] tmp_40_fu_1317_p4;
wire   [51:0] trunc_ln29_fu_1327_p1;
wire   [0:0] icmp_ln29_1_fu_1354_p2;
wire   [0:0] icmp_ln29_fu_1348_p2;
wire   [10:0] tmp_41_fu_1334_p4;
wire   [51:0] trunc_ln29_1_fu_1344_p1;
wire   [0:0] icmp_ln29_3_fu_1372_p2;
wire   [0:0] icmp_ln29_2_fu_1366_p2;
wire   [0:0] or_ln29_fu_1360_p2;
wire   [0:0] and_ln29_fu_1384_p2;
wire   [0:0] or_ln29_1_fu_1378_p2;
wire   [63:0] bitcast_ln29_2_fu_1403_p1;
wire   [63:0] bitcast_ln29_3_fu_1421_p1;
wire   [10:0] tmp_44_fu_1407_p4;
wire   [51:0] trunc_ln29_2_fu_1417_p1;
wire   [0:0] icmp_ln29_5_fu_1444_p2;
wire   [0:0] icmp_ln29_4_fu_1438_p2;
wire   [10:0] tmp_45_fu_1424_p4;
wire   [51:0] trunc_ln29_3_fu_1434_p1;
wire   [0:0] icmp_ln29_7_fu_1462_p2;
wire   [0:0] icmp_ln29_6_fu_1456_p2;
wire   [0:0] or_ln29_3_fu_1468_p2;
wire   [0:0] or_ln29_2_fu_1450_p2;
wire   [0:0] and_ln29_2_fu_1474_p2;
wire   [63:0] bitcast_ln29_4_fu_1493_p1;
wire   [63:0] bitcast_ln29_5_fu_1511_p1;
wire   [10:0] tmp_49_fu_1497_p4;
wire   [51:0] trunc_ln29_4_fu_1507_p1;
wire   [0:0] icmp_ln29_9_fu_1534_p2;
wire   [0:0] icmp_ln29_8_fu_1528_p2;
wire   [10:0] tmp_50_fu_1514_p4;
wire   [51:0] trunc_ln29_5_fu_1524_p1;
wire   [0:0] icmp_ln29_11_fu_1552_p2;
wire   [0:0] icmp_ln29_10_fu_1546_p2;
wire   [0:0] or_ln29_5_fu_1558_p2;
wire   [0:0] or_ln29_4_fu_1540_p2;
wire   [0:0] and_ln29_4_fu_1564_p2;
wire   [63:0] bitcast_ln29_7_fu_1583_p1;
wire   [10:0] tmp_54_fu_1587_p4;
wire   [51:0] trunc_ln29_7_fu_1597_p1;
wire   [63:0] bitcast_ln29_6_fu_1613_p1;
wire   [10:0] tmp_53_fu_1617_p4;
wire   [51:0] trunc_ln29_6_fu_1627_p1;
wire   [0:0] icmp_ln29_13_fu_1637_p2;
wire   [0:0] icmp_ln29_12_fu_1631_p2;
wire   [0:0] or_ln29_7_fu_1649_p2;
wire   [0:0] or_ln29_6_fu_1643_p2;
wire   [0:0] and_ln29_6_fu_1653_p2;
wire   [63:0] bitcast_ln29_8_fu_1672_p1;
wire   [63:0] bitcast_ln29_9_fu_1690_p1;
wire   [10:0] tmp_58_fu_1676_p4;
wire   [51:0] trunc_ln29_8_fu_1686_p1;
wire   [0:0] icmp_ln29_17_fu_1713_p2;
wire   [0:0] icmp_ln29_16_fu_1707_p2;
wire   [10:0] tmp_59_fu_1693_p4;
wire   [51:0] trunc_ln29_9_fu_1703_p1;
wire   [0:0] icmp_ln29_19_fu_1731_p2;
wire   [0:0] icmp_ln29_18_fu_1725_p2;
wire   [0:0] or_ln29_9_fu_1737_p2;
wire   [0:0] or_ln29_8_fu_1719_p2;
wire   [0:0] and_ln29_8_fu_1743_p2;
wire   [63:0] bitcast_ln29_10_fu_1762_p1;
wire   [63:0] bitcast_ln29_11_fu_1780_p1;
wire   [10:0] tmp_62_fu_1766_p4;
wire   [51:0] trunc_ln29_10_fu_1776_p1;
wire   [0:0] icmp_ln29_21_fu_1803_p2;
wire   [0:0] icmp_ln29_20_fu_1797_p2;
wire   [10:0] tmp_63_fu_1783_p4;
wire   [51:0] trunc_ln29_11_fu_1793_p1;
wire   [0:0] icmp_ln29_23_fu_1821_p2;
wire   [0:0] icmp_ln29_22_fu_1815_p2;
wire   [0:0] or_ln29_11_fu_1827_p2;
wire   [0:0] or_ln29_10_fu_1809_p2;
wire   [0:0] and_ln29_10_fu_1833_p2;
wire   [63:0] bitcast_ln29_12_fu_1852_p1;
wire   [63:0] bitcast_ln29_13_fu_1870_p1;
wire   [10:0] tmp_67_fu_1856_p4;
wire   [51:0] trunc_ln29_12_fu_1866_p1;
wire   [0:0] icmp_ln29_25_fu_1893_p2;
wire   [0:0] icmp_ln29_24_fu_1887_p2;
wire   [10:0] tmp_68_fu_1873_p4;
wire   [51:0] trunc_ln29_13_fu_1883_p1;
wire   [0:0] icmp_ln29_27_fu_1911_p2;
wire   [0:0] icmp_ln29_26_fu_1905_p2;
wire   [0:0] or_ln29_13_fu_1917_p2;
wire   [0:0] or_ln29_12_fu_1899_p2;
wire   [0:0] and_ln29_12_fu_1923_p2;
wire   [63:0] bitcast_ln29_14_fu_1943_p1;
wire   [63:0] bitcast_ln29_15_fu_1960_p1;
wire   [10:0] tmp_70_fu_1946_p4;
wire   [51:0] trunc_ln29_14_fu_1956_p1;
wire   [0:0] icmp_ln29_29_fu_1983_p2;
wire   [0:0] icmp_ln29_28_fu_1977_p2;
wire   [10:0] tmp_71_fu_1963_p4;
wire   [51:0] trunc_ln29_15_fu_1973_p1;
wire   [0:0] icmp_ln29_31_fu_2001_p2;
wire   [0:0] icmp_ln29_30_fu_1995_p2;
wire   [0:0] or_ln29_15_fu_2007_p2;
wire   [0:0] or_ln29_14_fu_1989_p2;
wire   [0:0] and_ln29_14_fu_2013_p2;
wire   [0:0] and_ln29_15_fu_2019_p2;
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
wire   [1:0] tmp_10_fu_783_p1;
wire   [1:0] tmp_10_fu_783_p3;
wire  signed [1:0] tmp_10_fu_783_p5;
wire  signed [1:0] tmp_10_fu_783_p7;
wire   [1:0] tmp_11_fu_822_p1;
wire   [1:0] tmp_11_fu_822_p3;
wire  signed [1:0] tmp_11_fu_822_p5;
wire  signed [1:0] tmp_11_fu_822_p7;
wire   [1:0] tmp_12_fu_990_p1;
wire   [1:0] tmp_12_fu_990_p3;
wire  signed [1:0] tmp_12_fu_990_p5;
wire  signed [1:0] tmp_12_fu_990_p7;
wire   [1:0] tmp_13_fu_1029_p1;
wire   [1:0] tmp_13_fu_1029_p3;
wire  signed [1:0] tmp_13_fu_1029_p5;
wire  signed [1:0] tmp_13_fu_1029_p7;
wire   [1:0] tmp_14_fu_1127_p1;
wire   [1:0] tmp_14_fu_1127_p3;
wire  signed [1:0] tmp_14_fu_1127_p5;
wire  signed [1:0] tmp_14_fu_1127_p7;
wire   [1:0] tmp_15_fu_1166_p1;
wire   [1:0] tmp_15_fu_1166_p3;
wire  signed [1:0] tmp_15_fu_1166_p5;
wire  signed [1:0] tmp_15_fu_1166_p7;
wire   [1:0] tmp_16_fu_1237_p1;
wire   [1:0] tmp_16_fu_1237_p3;
wire  signed [1:0] tmp_16_fu_1237_p5;
wire  signed [1:0] tmp_16_fu_1237_p7;
wire   [1:0] tmp_19_fu_1276_p1;
wire   [1:0] tmp_19_fu_1276_p3;
wire  signed [1:0] tmp_19_fu_1276_p5;
wire  signed [1:0] tmp_19_fu_1276_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_128 = 64'd0;
#0 prev_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U28(.din0(tmp_10_fu_783_p2),.din1(tmp_10_fu_783_p4),.din2(tmp_10_fu_783_p6),.din3(tmp_10_fu_783_p8),.def(tmp_10_fu_783_p9),.sel(empty_10),.dout(tmp_10_fu_783_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U29(.din0(tmp_11_fu_822_p2),.din1(tmp_11_fu_822_p4),.din2(tmp_11_fu_822_p6),.din3(tmp_11_fu_822_p8),.def(tmp_11_fu_822_p9),.sel(empty_10),.dout(tmp_11_fu_822_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U30(.din0(tmp_12_fu_990_p2),.din1(tmp_12_fu_990_p4),.din2(tmp_12_fu_990_p6),.din3(tmp_12_fu_990_p8),.def(tmp_12_fu_990_p9),.sel(empty_10),.dout(tmp_12_fu_990_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U31(.din0(tmp_13_fu_1029_p2),.din1(tmp_13_fu_1029_p4),.din2(tmp_13_fu_1029_p6),.din3(tmp_13_fu_1029_p8),.def(tmp_13_fu_1029_p9),.sel(empty_10),.dout(tmp_13_fu_1029_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U32(.din0(tmp_14_fu_1127_p2),.din1(tmp_14_fu_1127_p4),.din2(tmp_14_fu_1127_p6),.din3(tmp_14_fu_1127_p8),.def(tmp_14_fu_1127_p9),.sel(empty_10),.dout(tmp_14_fu_1127_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(tmp_15_fu_1166_p2),.din1(tmp_15_fu_1166_p4),.din2(tmp_15_fu_1166_p6),.din3(tmp_15_fu_1166_p8),.def(tmp_15_fu_1166_p9),.sel(empty_10),.dout(tmp_15_fu_1166_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U34(.din0(tmp_16_fu_1237_p2),.din1(tmp_16_fu_1237_p4),.din2(tmp_16_fu_1237_p6),.din3(tmp_16_fu_1237_p8),.def(tmp_16_fu_1237_p9),.sel(empty_10),.dout(tmp_16_fu_1237_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U35(.din0(tmp_19_fu_1276_p2),.din1(tmp_19_fu_1276_p4),.din2(tmp_19_fu_1276_p6),.din3(tmp_19_fu_1276_p8),.def(tmp_19_fu_1276_p9),.sel(empty_10),.dout(tmp_19_fu_1276_p11));
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
            min_p_fu_128 <= min_p_18;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_128 <= min_p_35_fu_2024_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_132 <= 6'd1;
    end else if (((tmp_39_reg_2172 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_132 <= add_ln25_4_fu_1299_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2412 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2417 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_2156 <= add_ln25_1_fu_717_p2;
        add_ln25_3_reg_2166 <= add_ln25_3_fu_746_p2;
        lshr_ln7_1_reg_2095 <= {{ap_sig_allocacmp_prev_1[5:1]}};
        prev_1_reg_2088 <= ap_sig_allocacmp_prev_1;
        tmp_39_reg_2172 <= add_ln25_3_fu_746_p2[32'd6];
        tmp_39_reg_2172_pp0_iter1_reg <= tmp_39_reg_2172;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_2_reg_2257 <= add_ln25_2_fu_907_p2;
        min_p_19_reg_2422 <= min_p_fu_128;
        shl_ln1_reg_2181[9 : 4] <= shl_ln1_fu_760_p3[9 : 4];
        tmp_10_reg_2187 <= tmp_10_fu_783_p11;
        tmp_11_reg_2197 <= tmp_11_fu_822_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2505 <= and_ln29_11_fu_1839_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2517 <= and_ln29_13_fu_1929_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_2429 <= and_ln29_1_fu_1390_p2;
        tmp_12_reg_2277 <= tmp_12_fu_990_p11;
        tmp_13_reg_2282 <= tmp_13_fu_1029_p11;
        tmp_66_reg_2342 <= {{add_ln27_5_fu_1096_p2[9:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2441 <= and_ln29_3_fu_1480_p2;
        tmp_16_reg_2402 <= tmp_16_fu_1237_p11;
        tmp_19_reg_2407 <= tmp_19_fu_1276_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2453 <= and_ln29_5_fu_1570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2481 <= and_ln29_7_fu_1659_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2493 <= and_ln29_9_fu_1749_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2464 <= icmp_ln29_14_fu_1601_p2;
        icmp_ln29_15_reg_2469 <= icmp_ln29_15_fu_1607_p2;
        min_p_25_reg_2458 <= min_p_25_fu_1576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_2202 <= llike_1_q0;
        llike_1_load_reg_2176 <= llike_1_q1;
        llike_load_1_reg_2192 <= llike_q1;
        llike_load_2_reg_2227 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_2287 <= llike_1_q1;
        llike_1_load_3_reg_2337 <= llike_1_q0;
        llike_load_3_reg_2312 <= llike_q1;
        llike_load_reg_2347 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_21_reg_2434 <= min_p_21_fu_1396_p3;
        tmp_14_reg_2352 <= tmp_14_fu_1127_p11;
        tmp_15_reg_2357 <= tmp_15_fu_1166_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_23_reg_2446 <= min_p_23_fu_1486_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_27_reg_2486 <= min_p_27_fu_1665_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_29_reg_2498 <= min_p_29_fu_1755_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_31_reg_2510 <= min_p_31_fu_1845_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_33_reg_2522 <= min_p_33_fu_1935_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_14_reg_2474 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_561 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_567 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_573 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_579 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_585 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_591 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_72_reg_2529 <= grp_fu_1351_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_39_reg_2172 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_39_reg_2172_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_553_p0 = add52_7_reg_2417;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_553_p0 = reg_591;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_553_p0 = add52_5_reg_2412;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_553_p0 = reg_585;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_553_p0 = reg_579;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_553_p0 = reg_573;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_553_p0 = reg_567;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_553_p0 = reg_561;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_553_p0 = llike_load_reg_2347;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_553_p0 = llike_1_load_3_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_553_p0 = llike_load_3_reg_2312;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_553_p0 = llike_1_load_2_reg_2287;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_553_p0 = llike_load_2_reg_2227;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_553_p0 = llike_1_load_1_reg_2202;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_553_p0 = llike_load_1_reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_553_p0 = llike_1_load_reg_2176;
    end else begin
        grp_fu_553_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_553_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_553_p1 = tmp_19_reg_2407;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_553_p1 = tmp_16_reg_2402;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_553_p1 = tmp_15_reg_2357;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_553_p1 = tmp_14_reg_2352;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_553_p1 = tmp_13_reg_2282;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_553_p1 = tmp_12_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_553_p1 = tmp_11_reg_2197;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_553_p1 = tmp_10_reg_2187;
    end else begin
        grp_fu_553_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_557_p0 = p_14_reg_2474;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_557_p0 = reg_591;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_557_p0 = reg_585;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_557_p0 = reg_579;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p0 = reg_573;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p0 = reg_567;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_557_p0 = reg_561;
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_557_p1 = min_p_33_fu_1935_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_557_p1 = min_p_31_fu_1845_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_557_p1 = min_p_29_fu_1755_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_557_p1 = min_p_27_fu_1665_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_557_p1 = min_p_25_fu_1576_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_557_p1 = min_p_23_fu_1486_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_557_p1 = min_p_21_fu_1396_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_557_p1 = min_p_fu_128;
        end else begin
            grp_fu_557_p1 = 'bx;
        end
    end else begin
        grp_fu_557_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_6_fu_946_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_712_p1;
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
            llike_1_address1_local = zext_ln26_4_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_632_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_8_fu_969_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_3_fu_741_p1;
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
            llike_address1_local = zext_ln26_5_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_677_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_39_reg_2172_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_34_out_ap_vld = 1'b1;
    end else begin
        min_p_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_690_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_645_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_690_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_645_p1;
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
            transition_2_address0_local = zext_ln27_7_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address0_local = zext_ln27_5_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_690_p1;
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
            transition_2_address1_local = zext_ln27_6_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln27_4_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_645_p1;
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
            transition_3_address0_local = zext_ln27_7_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address0_local = zext_ln27_5_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_690_p1;
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
            transition_3_address1_local = zext_ln27_6_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln27_4_fu_1074_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_645_p1;
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
assign add_ln25_1_fu_717_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln25_2_fu_907_p2 = (prev_1_reg_2088 + 6'd5);
assign add_ln25_3_fu_746_p2 = (zext_ln16_fu_610_p1 + 7'd7);
assign add_ln25_4_fu_1299_p2 = (prev_1_reg_2088 + 6'd8);
assign add_ln25_fu_653_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_964_p2 = (empty + zext_ln26_7_fu_960_p1);
assign add_ln27_1_fu_682_p3 = {{add_ln25_fu_653_p2}, {lshr_ln}};
assign add_ln27_2_fu_1052_p2 = (shl_ln1_reg_2181 + 10'd64);
assign add_ln27_3_fu_861_p3 = {{tmp_48_fu_851_p4}, {lshr_ln}};
assign add_ln27_4_fu_876_p3 = {{add_ln25_1_reg_2156}, {lshr_ln}};
assign add_ln27_5_fu_1096_p2 = (shl_ln1_reg_2181 + 10'd96);
assign add_ln27_6_fu_1067_p3 = {{tmp_57_fu_1057_p4}, {lshr_ln}};
assign add_ln27_7_fu_1082_p3 = {{add_ln25_2_reg_2257}, {lshr_ln}};
assign add_ln27_9_fu_1189_p3 = {{tmp_66_reg_2342}, {lshr_ln}};
assign add_ln27_fu_845_p2 = (shl_ln1_fu_760_p3 + 10'd32);
assign add_ln27_s_fu_1206_p3 = {{trunc_ln27_fu_1203_p1}, {lshr_ln}};
assign add_ln8_3_fu_890_p2 = (lshr_ln7_1_reg_2095 + 5'd2);
assign add_ln8_4_fu_934_p2 = (lshr_ln7_1_reg_2095 + 5'd3);
assign add_ln8_fu_698_p2 = (lshr_ln7_1_fu_614_p4 + 5'd1);
assign add_ln_fu_637_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1833_p2 = (or_ln29_11_fu_1827_p2 & or_ln29_10_fu_1809_p2);
assign and_ln29_11_fu_1839_p2 = (grp_fu_1351_p_dout0 & and_ln29_10_fu_1833_p2);
assign and_ln29_12_fu_1923_p2 = (or_ln29_13_fu_1917_p2 & or_ln29_12_fu_1899_p2);
assign and_ln29_13_fu_1929_p2 = (grp_fu_1351_p_dout0 & and_ln29_12_fu_1923_p2);
assign and_ln29_14_fu_2013_p2 = (or_ln29_15_fu_2007_p2 & or_ln29_14_fu_1989_p2);
assign and_ln29_15_fu_2019_p2 = (tmp_72_reg_2529 & and_ln29_14_fu_2013_p2);
assign and_ln29_1_fu_1390_p2 = (or_ln29_1_fu_1378_p2 & and_ln29_fu_1384_p2);
assign and_ln29_2_fu_1474_p2 = (or_ln29_3_fu_1468_p2 & or_ln29_2_fu_1450_p2);
assign and_ln29_3_fu_1480_p2 = (grp_fu_1351_p_dout0 & and_ln29_2_fu_1474_p2);
assign and_ln29_4_fu_1564_p2 = (or_ln29_5_fu_1558_p2 & or_ln29_4_fu_1540_p2);
assign and_ln29_5_fu_1570_p2 = (grp_fu_1351_p_dout0 & and_ln29_4_fu_1564_p2);
assign and_ln29_6_fu_1653_p2 = (or_ln29_7_fu_1649_p2 & or_ln29_6_fu_1643_p2);
assign and_ln29_7_fu_1659_p2 = (grp_fu_1351_p_dout0 & and_ln29_6_fu_1653_p2);
assign and_ln29_8_fu_1743_p2 = (or_ln29_9_fu_1737_p2 & or_ln29_8_fu_1719_p2);
assign and_ln29_9_fu_1749_p2 = (grp_fu_1351_p_dout0 & and_ln29_8_fu_1743_p2);
assign and_ln29_fu_1384_p2 = (or_ln29_fu_1360_p2 & grp_fu_1351_p_dout0);
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
assign bitcast_ln29_10_fu_1762_p1 = reg_585;
assign bitcast_ln29_11_fu_1780_p1 = min_p_29_reg_2498;
assign bitcast_ln29_12_fu_1852_p1 = reg_591;
assign bitcast_ln29_13_fu_1870_p1 = min_p_31_reg_2510;
assign bitcast_ln29_14_fu_1943_p1 = p_14_reg_2474;
assign bitcast_ln29_15_fu_1960_p1 = min_p_33_reg_2522;
assign bitcast_ln29_1_fu_1331_p1 = min_p_19_reg_2422;
assign bitcast_ln29_2_fu_1403_p1 = reg_567;
assign bitcast_ln29_3_fu_1421_p1 = min_p_21_reg_2434;
assign bitcast_ln29_4_fu_1493_p1 = reg_573;
assign bitcast_ln29_5_fu_1511_p1 = min_p_23_reg_2446;
assign bitcast_ln29_6_fu_1613_p1 = reg_561;
assign bitcast_ln29_7_fu_1583_p1 = min_p_25_fu_1576_p3;
assign bitcast_ln29_8_fu_1672_p1 = reg_579;
assign bitcast_ln29_9_fu_1690_p1 = min_p_27_reg_2486;
assign bitcast_ln29_fu_1313_p1 = reg_561;
assign grp_fu_1351_p_ce = 1'b1;
assign grp_fu_1351_p_din0 = grp_fu_557_p0;
assign grp_fu_1351_p_din1 = grp_fu_557_p1;
assign grp_fu_1351_p_opcode = 5'd4;
assign grp_fu_594_p_ce = 1'b1;
assign grp_fu_594_p_din0 = grp_fu_553_p0;
assign grp_fu_594_p_din1 = grp_fu_553_p1;
assign grp_fu_594_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1546_p2 = ((tmp_50_fu_1514_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1552_p2 = ((trunc_ln29_5_fu_1524_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1631_p2 = ((tmp_53_fu_1617_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1637_p2 = ((trunc_ln29_6_fu_1627_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1601_p2 = ((tmp_54_fu_1587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1607_p2 = ((trunc_ln29_7_fu_1597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1707_p2 = ((tmp_58_fu_1676_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1713_p2 = ((trunc_ln29_8_fu_1686_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1725_p2 = ((tmp_59_fu_1693_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1731_p2 = ((trunc_ln29_9_fu_1703_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1354_p2 = ((trunc_ln29_fu_1327_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1797_p2 = ((tmp_62_fu_1766_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1803_p2 = ((trunc_ln29_10_fu_1776_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1815_p2 = ((tmp_63_fu_1783_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1821_p2 = ((trunc_ln29_11_fu_1793_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1887_p2 = ((tmp_67_fu_1856_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1893_p2 = ((trunc_ln29_12_fu_1866_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1905_p2 = ((tmp_68_fu_1873_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1911_p2 = ((trunc_ln29_13_fu_1883_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1977_p2 = ((tmp_70_fu_1946_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1983_p2 = ((trunc_ln29_14_fu_1956_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1366_p2 = ((tmp_41_fu_1334_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1995_p2 = ((tmp_71_fu_1963_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2001_p2 = ((trunc_ln29_15_fu_1973_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1372_p2 = ((trunc_ln29_1_fu_1344_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1438_p2 = ((tmp_44_fu_1407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1444_p2 = ((trunc_ln29_2_fu_1417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1456_p2 = ((tmp_45_fu_1424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1462_p2 = ((trunc_ln29_3_fu_1434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1528_p2 = ((tmp_49_fu_1497_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1534_p2 = ((trunc_ln29_4_fu_1507_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1348_p2 = ((tmp_40_fu_1317_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_614_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_4_fu_659_p4 = {{add_ln25_fu_653_p2[5:1]}};
assign lshr_ln8_5_fu_723_p4 = {{add_ln25_1_fu_717_p2[5:1]}};
assign lshr_ln8_6_fu_912_p4 = {{add_ln25_2_fu_907_p2[5:1]}};
assign lshr_ln8_7_fu_951_p4 = {{add_ln25_3_reg_2166[6:1]}};
assign min_p_21_fu_1396_p3 = ((and_ln29_1_reg_2429[0:0] == 1'b1) ? reg_561 : min_p_19_reg_2422);
assign min_p_23_fu_1486_p3 = ((and_ln29_3_reg_2441[0:0] == 1'b1) ? reg_567 : min_p_21_reg_2434);
assign min_p_25_fu_1576_p3 = ((and_ln29_5_reg_2453[0:0] == 1'b1) ? reg_573 : min_p_23_reg_2446);
assign min_p_27_fu_1665_p3 = ((and_ln29_7_reg_2481[0:0] == 1'b1) ? reg_561 : min_p_25_reg_2458);
assign min_p_29_fu_1755_p3 = ((and_ln29_9_reg_2493[0:0] == 1'b1) ? reg_579 : min_p_27_reg_2486);
assign min_p_31_fu_1845_p3 = ((and_ln29_11_reg_2505[0:0] == 1'b1) ? reg_585 : min_p_29_reg_2498);
assign min_p_33_fu_1935_p3 = ((and_ln29_13_reg_2517[0:0] == 1'b1) ? reg_591 : min_p_31_reg_2510);
assign min_p_34_out = ((and_ln29_13_reg_2517[0:0] == 1'b1) ? reg_591 : min_p_31_reg_2510);
assign min_p_35_fu_2024_p3 = ((and_ln29_15_fu_2019_p2[0:0] == 1'b1) ? p_14_reg_2474 : min_p_33_reg_2522);
assign or_ln29_10_fu_1809_p2 = (icmp_ln29_21_fu_1803_p2 | icmp_ln29_20_fu_1797_p2);
assign or_ln29_11_fu_1827_p2 = (icmp_ln29_23_fu_1821_p2 | icmp_ln29_22_fu_1815_p2);
assign or_ln29_12_fu_1899_p2 = (icmp_ln29_25_fu_1893_p2 | icmp_ln29_24_fu_1887_p2);
assign or_ln29_13_fu_1917_p2 = (icmp_ln29_27_fu_1911_p2 | icmp_ln29_26_fu_1905_p2);
assign or_ln29_14_fu_1989_p2 = (icmp_ln29_29_fu_1983_p2 | icmp_ln29_28_fu_1977_p2);
assign or_ln29_15_fu_2007_p2 = (icmp_ln29_31_fu_2001_p2 | icmp_ln29_30_fu_1995_p2);
assign or_ln29_1_fu_1378_p2 = (icmp_ln29_3_fu_1372_p2 | icmp_ln29_2_fu_1366_p2);
assign or_ln29_2_fu_1450_p2 = (icmp_ln29_5_fu_1444_p2 | icmp_ln29_4_fu_1438_p2);
assign or_ln29_3_fu_1468_p2 = (icmp_ln29_7_fu_1462_p2 | icmp_ln29_6_fu_1456_p2);
assign or_ln29_4_fu_1540_p2 = (icmp_ln29_9_fu_1534_p2 | icmp_ln29_8_fu_1528_p2);
assign or_ln29_5_fu_1558_p2 = (icmp_ln29_11_fu_1552_p2 | icmp_ln29_10_fu_1546_p2);
assign or_ln29_6_fu_1643_p2 = (icmp_ln29_13_fu_1637_p2 | icmp_ln29_12_fu_1631_p2);
assign or_ln29_7_fu_1649_p2 = (icmp_ln29_15_reg_2469 | icmp_ln29_14_reg_2464);
assign or_ln29_8_fu_1719_p2 = (icmp_ln29_17_fu_1713_p2 | icmp_ln29_16_fu_1707_p2);
assign or_ln29_9_fu_1737_p2 = (icmp_ln29_19_fu_1731_p2 | icmp_ln29_18_fu_1725_p2);
assign or_ln29_fu_1360_p2 = (icmp_ln29_fu_1348_p2 | icmp_ln29_1_fu_1354_p2);
assign shl_ln1_fu_760_p3 = {{prev_1_reg_2088}, {4'd0}};
assign tmp_10_fu_783_p2 = transition_0_q1;
assign tmp_10_fu_783_p4 = transition_1_q1;
assign tmp_10_fu_783_p6 = transition_2_q1;
assign tmp_10_fu_783_p8 = transition_3_q1;
assign tmp_10_fu_783_p9 = 'bx;
assign tmp_11_fu_822_p2 = transition_0_q0;
assign tmp_11_fu_822_p4 = transition_1_q0;
assign tmp_11_fu_822_p6 = transition_2_q0;
assign tmp_11_fu_822_p8 = transition_3_q0;
assign tmp_11_fu_822_p9 = 'bx;
assign tmp_12_fu_990_p2 = transition_0_q1;
assign tmp_12_fu_990_p4 = transition_1_q1;
assign tmp_12_fu_990_p6 = transition_2_q1;
assign tmp_12_fu_990_p8 = transition_3_q1;
assign tmp_12_fu_990_p9 = 'bx;
assign tmp_13_fu_1029_p2 = transition_0_q0;
assign tmp_13_fu_1029_p4 = transition_1_q0;
assign tmp_13_fu_1029_p6 = transition_2_q0;
assign tmp_13_fu_1029_p8 = transition_3_q0;
assign tmp_13_fu_1029_p9 = 'bx;
assign tmp_14_fu_1127_p2 = transition_0_q1;
assign tmp_14_fu_1127_p4 = transition_1_q1;
assign tmp_14_fu_1127_p6 = transition_2_q1;
assign tmp_14_fu_1127_p8 = transition_3_q1;
assign tmp_14_fu_1127_p9 = 'bx;
assign tmp_15_fu_1166_p2 = transition_0_q0;
assign tmp_15_fu_1166_p4 = transition_1_q0;
assign tmp_15_fu_1166_p6 = transition_2_q0;
assign tmp_15_fu_1166_p8 = transition_3_q0;
assign tmp_15_fu_1166_p9 = 'bx;
assign tmp_16_fu_1237_p2 = transition_0_q1;
assign tmp_16_fu_1237_p4 = transition_1_q1;
assign tmp_16_fu_1237_p6 = transition_2_q1;
assign tmp_16_fu_1237_p8 = transition_3_q1;
assign tmp_16_fu_1237_p9 = 'bx;
assign tmp_19_fu_1276_p2 = transition_0_q0;
assign tmp_19_fu_1276_p4 = transition_1_q0;
assign tmp_19_fu_1276_p6 = transition_2_q0;
assign tmp_19_fu_1276_p8 = transition_3_q0;
assign tmp_19_fu_1276_p9 = 'bx;
assign tmp_40_fu_1317_p4 = {{bitcast_ln29_fu_1313_p1[62:52]}};
assign tmp_41_fu_1334_p4 = {{bitcast_ln29_1_fu_1331_p1[62:52]}};
assign tmp_43_fu_669_p3 = {{empty_9}, {lshr_ln8_4_fu_659_p4}};
assign tmp_44_fu_1407_p4 = {{bitcast_ln29_2_fu_1403_p1[62:52]}};
assign tmp_45_fu_1424_p4 = {{bitcast_ln29_3_fu_1421_p1[62:52]}};
assign tmp_47_fu_704_p3 = {{empty_9}, {add_ln8_fu_698_p2}};
assign tmp_48_fu_851_p4 = {{add_ln27_fu_845_p2[9:4]}};
assign tmp_49_fu_1497_p4 = {{bitcast_ln29_4_fu_1493_p1[62:52]}};
assign tmp_50_fu_1514_p4 = {{bitcast_ln29_5_fu_1511_p1[62:52]}};
assign tmp_52_fu_733_p3 = {{empty_9}, {lshr_ln8_5_fu_723_p4}};
assign tmp_53_fu_1617_p4 = {{bitcast_ln29_6_fu_1613_p1[62:52]}};
assign tmp_54_fu_1587_p4 = {{bitcast_ln29_7_fu_1583_p1[62:52]}};
assign tmp_56_fu_895_p3 = {{empty_9}, {add_ln8_3_fu_890_p2}};
assign tmp_57_fu_1057_p4 = {{add_ln27_2_fu_1052_p2[9:4]}};
assign tmp_58_fu_1676_p4 = {{bitcast_ln29_8_fu_1672_p1[62:52]}};
assign tmp_59_fu_1693_p4 = {{bitcast_ln29_9_fu_1690_p1[62:52]}};
assign tmp_61_fu_922_p3 = {{empty_9}, {lshr_ln8_6_fu_912_p4}};
assign tmp_62_fu_1766_p4 = {{bitcast_ln29_10_fu_1762_p1[62:52]}};
assign tmp_63_fu_1783_p4 = {{bitcast_ln29_11_fu_1780_p1[62:52]}};
assign tmp_65_fu_939_p3 = {{empty_9}, {add_ln8_4_fu_934_p2}};
assign tmp_67_fu_1856_p4 = {{bitcast_ln29_12_fu_1852_p1[62:52]}};
assign tmp_68_fu_1873_p4 = {{bitcast_ln29_13_fu_1870_p1[62:52]}};
assign tmp_70_fu_1946_p4 = {{bitcast_ln29_14_fu_1943_p1[62:52]}};
assign tmp_71_fu_1963_p4 = {{bitcast_ln29_15_fu_1960_p1[62:52]}};
assign tmp_s_fu_624_p3 = {{empty_9}, {lshr_ln7_1_fu_614_p4}};
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
assign trunc_ln27_fu_1203_p1 = add_ln25_3_reg_2166[5:0];
assign trunc_ln29_10_fu_1776_p1 = bitcast_ln29_10_fu_1762_p1[51:0];
assign trunc_ln29_11_fu_1793_p1 = bitcast_ln29_11_fu_1780_p1[51:0];
assign trunc_ln29_12_fu_1866_p1 = bitcast_ln29_12_fu_1852_p1[51:0];
assign trunc_ln29_13_fu_1883_p1 = bitcast_ln29_13_fu_1870_p1[51:0];
assign trunc_ln29_14_fu_1956_p1 = bitcast_ln29_14_fu_1943_p1[51:0];
assign trunc_ln29_15_fu_1973_p1 = bitcast_ln29_15_fu_1960_p1[51:0];
assign trunc_ln29_1_fu_1344_p1 = bitcast_ln29_1_fu_1331_p1[51:0];
assign trunc_ln29_2_fu_1417_p1 = bitcast_ln29_2_fu_1403_p1[51:0];
assign trunc_ln29_3_fu_1434_p1 = bitcast_ln29_3_fu_1421_p1[51:0];
assign trunc_ln29_4_fu_1507_p1 = bitcast_ln29_4_fu_1493_p1[51:0];
assign trunc_ln29_5_fu_1524_p1 = bitcast_ln29_5_fu_1511_p1[51:0];
assign trunc_ln29_6_fu_1627_p1 = bitcast_ln29_6_fu_1613_p1[51:0];
assign trunc_ln29_7_fu_1597_p1 = bitcast_ln29_7_fu_1583_p1[51:0];
assign trunc_ln29_8_fu_1686_p1 = bitcast_ln29_8_fu_1672_p1[51:0];
assign trunc_ln29_9_fu_1703_p1 = bitcast_ln29_9_fu_1690_p1[51:0];
assign trunc_ln29_fu_1327_p1 = bitcast_ln29_fu_1313_p1[51:0];
assign zext_ln16_fu_610_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_677_p1 = tmp_43_fu_669_p3;
assign zext_ln26_2_fu_712_p1 = tmp_47_fu_704_p3;
assign zext_ln26_3_fu_741_p1 = tmp_52_fu_733_p3;
assign zext_ln26_4_fu_902_p1 = tmp_56_fu_895_p3;
assign zext_ln26_5_fu_929_p1 = tmp_61_fu_922_p3;
assign zext_ln26_6_fu_946_p1 = tmp_65_fu_939_p3;
assign zext_ln26_7_fu_960_p1 = lshr_ln8_7_fu_951_p4;
assign zext_ln26_8_fu_969_p1 = add_ln26_fu_964_p2;
assign zext_ln26_fu_632_p1 = tmp_s_fu_624_p3;
assign zext_ln27_1_fu_690_p1 = add_ln27_1_fu_682_p3;
assign zext_ln27_2_fu_868_p1 = add_ln27_3_fu_861_p3;
assign zext_ln27_3_fu_882_p1 = add_ln27_4_fu_876_p3;
assign zext_ln27_4_fu_1074_p1 = add_ln27_6_fu_1067_p3;
assign zext_ln27_5_fu_1088_p1 = add_ln27_7_fu_1082_p3;
assign zext_ln27_6_fu_1195_p1 = add_ln27_9_fu_1189_p3;
assign zext_ln27_7_fu_1213_p1 = add_ln27_s_fu_1206_p3;
assign zext_ln27_fu_645_p1 = add_ln_fu_637_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2181[3:0] <= 4'b0000;
end
endmodule 