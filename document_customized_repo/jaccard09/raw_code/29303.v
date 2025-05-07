module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,empty_10,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,empty,min_p_34_out,min_p_34_out_ap_vld,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_1042_p_din0,grp_fu_1042_p_din1,grp_fu_1042_p_opcode,grp_fu_1042_p_dout0,grp_fu_1042_p_ce); 
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
input  [5:0] empty_10;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
input  [9:0] empty;
output  [63:0] min_p_34_out;
output   min_p_34_out_ap_vld;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_1042_p_din0;
output  [63:0] grp_fu_1042_p_din1;
output  [4:0] grp_fu_1042_p_opcode;
input  [0:0] grp_fu_1042_p_dout0;
output   grp_fu_1042_p_ce;
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
reg   [0:0] tmp_11_reg_2480;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_628;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_632;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_637;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_643;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_649;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_655;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_661;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_667;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2358;
wire   [3:0] trunc_ln11_fu_690_p1;
reg   [3:0] trunc_ln11_reg_2363;
wire   [11:0] shl_ln2_fu_732_p3;
reg   [11:0] shl_ln2_reg_2455;
wire   [6:0] add_ln25_fu_782_p2;
reg   [6:0] add_ln25_reg_2474;
reg   [0:0] tmp_11_reg_2480_pp0_iter1_reg;
wire   [63:0] tmp_fu_796_p35;
reg   [63:0] tmp_reg_2484;
wire   [63:0] tmp_1_fu_867_p35;
reg   [63:0] tmp_1_reg_2489;
wire   [63:0] tmp_2_fu_938_p35;
reg   [63:0] tmp_2_reg_2494;
wire   [63:0] tmp_3_fu_1036_p35;
reg   [63:0] tmp_3_reg_2504;
wire   [63:0] tmp_4_fu_1134_p35;
reg   [63:0] tmp_4_reg_2514;
wire   [63:0] tmp_5_fu_1205_p35;
reg   [63:0] tmp_5_reg_2519;
wire   [63:0] tmp_6_fu_1276_p35;
reg   [63:0] tmp_6_reg_2524;
wire   [63:0] bitcast_ln27_fu_1385_p1;
reg   [63:0] transition_load_4_reg_2614;
reg   [5:0] tmp_56_reg_2629;
wire   [63:0] tmp_7_fu_1459_p35;
reg   [63:0] tmp_7_reg_2634;
wire   [63:0] bitcast_ln27_1_fu_1530_p1;
reg   [63:0] transition_load_6_reg_2644;
wire   [63:0] bitcast_ln27_2_fu_1561_p1;
reg   [63:0] transition_load_reg_2664;
wire   [63:0] bitcast_ln27_3_fu_1566_p1;
wire   [63:0] bitcast_ln27_4_fu_1570_p1;
wire   [63:0] bitcast_ln27_5_fu_1575_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_1579_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_1584_p1;
reg   [63:0] add52_5_reg_2694;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2699;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_19_reg_2704;
wire   [0:0] and_ln29_1_fu_1679_p2;
reg   [0:0] and_ln29_1_reg_2711;
wire   [63:0] min_p_21_fu_1685_p3;
reg   [63:0] min_p_21_reg_2716;
wire   [0:0] and_ln29_3_fu_1769_p2;
reg   [0:0] and_ln29_3_reg_2723;
wire   [63:0] min_p_23_fu_1775_p3;
reg   [63:0] min_p_23_reg_2728;
wire   [0:0] and_ln29_5_fu_1859_p2;
reg   [0:0] and_ln29_5_reg_2735;
wire   [63:0] min_p_25_fu_1865_p3;
reg   [63:0] min_p_25_reg_2740;
wire   [0:0] icmp_ln29_14_fu_1890_p2;
reg   [0:0] icmp_ln29_14_reg_2746;
wire   [0:0] icmp_ln29_15_fu_1896_p2;
reg   [0:0] icmp_ln29_15_reg_2751;
reg   [63:0] p_14_reg_2756;
wire   [0:0] and_ln29_7_fu_1948_p2;
reg   [0:0] and_ln29_7_reg_2763;
wire   [63:0] min_p_27_fu_1954_p3;
reg   [63:0] min_p_27_reg_2768;
wire   [0:0] and_ln29_9_fu_2038_p2;
reg   [0:0] and_ln29_9_reg_2775;
wire   [63:0] min_p_29_fu_2044_p3;
reg   [63:0] min_p_29_reg_2780;
wire   [0:0] and_ln29_11_fu_2128_p2;
reg   [0:0] and_ln29_11_reg_2787;
wire   [63:0] min_p_31_fu_2134_p3;
reg   [63:0] min_p_31_reg_2792;
wire   [0:0] and_ln29_13_fu_2218_p2;
reg   [0:0] and_ln29_13_reg_2799;
wire   [63:0] min_p_33_fu_2224_p3;
reg   [63:0] min_p_33_reg_2804;
reg   [0:0] tmp_62_reg_2811;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_712_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_748_p1;
wire   [63:0] zext_ln27_1_fu_777_p1;
wire   [63:0] zext_ln27_2_fu_1031_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1129_p1;
wire   [63:0] zext_ln26_2_fu_1365_p1;
wire   [63:0] zext_ln27_4_fu_1412_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1439_p1;
wire   [63:0] zext_ln27_6_fu_1541_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1556_p1;
reg   [63:0] min_p_fu_166;
wire   [63:0] min_p_35_fu_2313_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_170;
wire   [5:0] add_ln25_1_fu_1588_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
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
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg   [63:0] grp_fu_620_p0;
reg   [63:0] grp_fu_620_p1;
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
reg   [63:0] grp_fu_624_p0;
reg   [63:0] grp_fu_624_p1;
wire   [1:0] lshr_ln7_1_fu_694_p4;
wire   [9:0] tmp_s_fu_704_p3;
wire   [11:0] add_ln_fu_740_p3;
wire   [11:0] add_ln27_fu_753_p2;
wire   [5:0] tmp_36_fu_759_p4;
wire   [11:0] add_ln27_2_fu_769_p3;
wire   [6:0] zext_ln11_fu_686_p1;
wire   [63:0] tmp_fu_796_p33;
wire   [63:0] tmp_1_fu_867_p33;
wire   [63:0] tmp_2_fu_938_p33;
wire   [11:0] add_ln27_1_fu_1009_p2;
wire   [5:0] tmp_40_fu_1014_p4;
wire   [11:0] add_ln27_4_fu_1024_p3;
wire   [63:0] tmp_3_fu_1036_p33;
wire   [11:0] add_ln27_3_fu_1107_p2;
wire   [5:0] tmp_44_fu_1112_p4;
wire   [11:0] add_ln27_6_fu_1122_p3;
wire   [63:0] tmp_4_fu_1134_p33;
wire   [63:0] tmp_5_fu_1205_p33;
wire   [63:0] tmp_6_fu_1276_p33;
wire   [2:0] lshr_ln8_1_fu_1347_p4;
wire   [9:0] zext_ln26_1_fu_1356_p1;
wire   [9:0] add_ln26_fu_1360_p2;
wire   [11:0] add_ln27_5_fu_1390_p2;
wire   [5:0] tmp_48_fu_1395_p4;
wire   [11:0] add_ln27_8_fu_1405_p3;
wire   [11:0] add_ln27_7_fu_1417_p2;
wire   [5:0] tmp_52_fu_1422_p4;
wire   [11:0] add_ln27_s_fu_1432_p3;
wire   [11:0] add_ln27_9_fu_1444_p2;
wire   [63:0] tmp_7_fu_1459_p33;
wire   [11:0] add_ln27_10_fu_1535_p3;
wire   [5:0] trunc_ln27_fu_1546_p1;
wire   [11:0] add_ln27_11_fu_1549_p3;
wire   [63:0] bitcast_ln29_fu_1602_p1;
wire   [63:0] bitcast_ln29_1_fu_1620_p1;
wire   [10:0] tmp_33_fu_1606_p4;
wire   [51:0] trunc_ln29_fu_1616_p1;
wire   [0:0] icmp_ln29_1_fu_1643_p2;
wire   [0:0] icmp_ln29_fu_1637_p2;
wire   [10:0] tmp_34_fu_1623_p4;
wire   [51:0] trunc_ln29_1_fu_1633_p1;
wire   [0:0] icmp_ln29_3_fu_1661_p2;
wire   [0:0] icmp_ln29_2_fu_1655_p2;
wire   [0:0] or_ln29_fu_1649_p2;
wire   [0:0] and_ln29_fu_1673_p2;
wire   [0:0] or_ln29_1_fu_1667_p2;
wire   [63:0] bitcast_ln29_2_fu_1692_p1;
wire   [63:0] bitcast_ln29_3_fu_1710_p1;
wire   [10:0] tmp_37_fu_1696_p4;
wire   [51:0] trunc_ln29_2_fu_1706_p1;
wire   [0:0] icmp_ln29_5_fu_1733_p2;
wire   [0:0] icmp_ln29_4_fu_1727_p2;
wire   [10:0] tmp_38_fu_1713_p4;
wire   [51:0] trunc_ln29_3_fu_1723_p1;
wire   [0:0] icmp_ln29_7_fu_1751_p2;
wire   [0:0] icmp_ln29_6_fu_1745_p2;
wire   [0:0] or_ln29_3_fu_1757_p2;
wire   [0:0] or_ln29_2_fu_1739_p2;
wire   [0:0] and_ln29_2_fu_1763_p2;
wire   [63:0] bitcast_ln29_4_fu_1782_p1;
wire   [63:0] bitcast_ln29_5_fu_1800_p1;
wire   [10:0] tmp_41_fu_1786_p4;
wire   [51:0] trunc_ln29_4_fu_1796_p1;
wire   [0:0] icmp_ln29_9_fu_1823_p2;
wire   [0:0] icmp_ln29_8_fu_1817_p2;
wire   [10:0] tmp_42_fu_1803_p4;
wire   [51:0] trunc_ln29_5_fu_1813_p1;
wire   [0:0] icmp_ln29_11_fu_1841_p2;
wire   [0:0] icmp_ln29_10_fu_1835_p2;
wire   [0:0] or_ln29_5_fu_1847_p2;
wire   [0:0] or_ln29_4_fu_1829_p2;
wire   [0:0] and_ln29_4_fu_1853_p2;
wire   [63:0] bitcast_ln29_7_fu_1872_p1;
wire   [10:0] tmp_46_fu_1876_p4;
wire   [51:0] trunc_ln29_7_fu_1886_p1;
wire   [63:0] bitcast_ln29_6_fu_1902_p1;
wire   [10:0] tmp_45_fu_1906_p4;
wire   [51:0] trunc_ln29_6_fu_1916_p1;
wire   [0:0] icmp_ln29_13_fu_1926_p2;
wire   [0:0] icmp_ln29_12_fu_1920_p2;
wire   [0:0] or_ln29_7_fu_1938_p2;
wire   [0:0] or_ln29_6_fu_1932_p2;
wire   [0:0] and_ln29_6_fu_1942_p2;
wire   [63:0] bitcast_ln29_8_fu_1961_p1;
wire   [63:0] bitcast_ln29_9_fu_1979_p1;
wire   [10:0] tmp_49_fu_1965_p4;
wire   [51:0] trunc_ln29_8_fu_1975_p1;
wire   [0:0] icmp_ln29_17_fu_2002_p2;
wire   [0:0] icmp_ln29_16_fu_1996_p2;
wire   [10:0] tmp_50_fu_1982_p4;
wire   [51:0] trunc_ln29_9_fu_1992_p1;
wire   [0:0] icmp_ln29_19_fu_2020_p2;
wire   [0:0] icmp_ln29_18_fu_2014_p2;
wire   [0:0] or_ln29_9_fu_2026_p2;
wire   [0:0] or_ln29_8_fu_2008_p2;
wire   [0:0] and_ln29_8_fu_2032_p2;
wire   [63:0] bitcast_ln29_10_fu_2051_p1;
wire   [63:0] bitcast_ln29_11_fu_2069_p1;
wire   [10:0] tmp_53_fu_2055_p4;
wire   [51:0] trunc_ln29_10_fu_2065_p1;
wire   [0:0] icmp_ln29_21_fu_2092_p2;
wire   [0:0] icmp_ln29_20_fu_2086_p2;
wire   [10:0] tmp_54_fu_2072_p4;
wire   [51:0] trunc_ln29_11_fu_2082_p1;
wire   [0:0] icmp_ln29_23_fu_2110_p2;
wire   [0:0] icmp_ln29_22_fu_2104_p2;
wire   [0:0] or_ln29_11_fu_2116_p2;
wire   [0:0] or_ln29_10_fu_2098_p2;
wire   [0:0] and_ln29_10_fu_2122_p2;
wire   [63:0] bitcast_ln29_12_fu_2141_p1;
wire   [63:0] bitcast_ln29_13_fu_2159_p1;
wire   [10:0] tmp_57_fu_2145_p4;
wire   [51:0] trunc_ln29_12_fu_2155_p1;
wire   [0:0] icmp_ln29_25_fu_2182_p2;
wire   [0:0] icmp_ln29_24_fu_2176_p2;
wire   [10:0] tmp_58_fu_2162_p4;
wire   [51:0] trunc_ln29_13_fu_2172_p1;
wire   [0:0] icmp_ln29_27_fu_2200_p2;
wire   [0:0] icmp_ln29_26_fu_2194_p2;
wire   [0:0] or_ln29_13_fu_2206_p2;
wire   [0:0] or_ln29_12_fu_2188_p2;
wire   [0:0] and_ln29_12_fu_2212_p2;
wire   [63:0] bitcast_ln29_14_fu_2232_p1;
wire   [63:0] bitcast_ln29_15_fu_2249_p1;
wire   [10:0] tmp_60_fu_2235_p4;
wire   [51:0] trunc_ln29_14_fu_2245_p1;
wire   [0:0] icmp_ln29_29_fu_2272_p2;
wire   [0:0] icmp_ln29_28_fu_2266_p2;
wire   [10:0] tmp_61_fu_2252_p4;
wire   [51:0] trunc_ln29_15_fu_2262_p1;
wire   [0:0] icmp_ln29_31_fu_2290_p2;
wire   [0:0] icmp_ln29_30_fu_2284_p2;
wire   [0:0] or_ln29_15_fu_2296_p2;
wire   [0:0] or_ln29_14_fu_2278_p2;
wire   [0:0] and_ln29_14_fu_2302_p2;
wire   [0:0] and_ln29_15_fu_2308_p2;
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
wire   [3:0] tmp_fu_796_p1;
wire   [3:0] tmp_fu_796_p3;
wire   [3:0] tmp_fu_796_p5;
wire   [3:0] tmp_fu_796_p7;
wire   [3:0] tmp_fu_796_p9;
wire   [3:0] tmp_fu_796_p11;
wire   [3:0] tmp_fu_796_p13;
wire   [3:0] tmp_fu_796_p15;
wire  signed [3:0] tmp_fu_796_p17;
wire  signed [3:0] tmp_fu_796_p19;
wire  signed [3:0] tmp_fu_796_p21;
wire  signed [3:0] tmp_fu_796_p23;
wire  signed [3:0] tmp_fu_796_p25;
wire  signed [3:0] tmp_fu_796_p27;
wire  signed [3:0] tmp_fu_796_p29;
wire  signed [3:0] tmp_fu_796_p31;
wire  signed [3:0] tmp_1_fu_867_p1;
wire   [3:0] tmp_1_fu_867_p3;
wire   [3:0] tmp_1_fu_867_p5;
wire   [3:0] tmp_1_fu_867_p7;
wire   [3:0] tmp_1_fu_867_p9;
wire   [3:0] tmp_1_fu_867_p11;
wire   [3:0] tmp_1_fu_867_p13;
wire   [3:0] tmp_1_fu_867_p15;
wire   [3:0] tmp_1_fu_867_p17;
wire  signed [3:0] tmp_1_fu_867_p19;
wire  signed [3:0] tmp_1_fu_867_p21;
wire  signed [3:0] tmp_1_fu_867_p23;
wire  signed [3:0] tmp_1_fu_867_p25;
wire  signed [3:0] tmp_1_fu_867_p27;
wire  signed [3:0] tmp_1_fu_867_p29;
wire  signed [3:0] tmp_1_fu_867_p31;
wire  signed [3:0] tmp_2_fu_938_p1;
wire  signed [3:0] tmp_2_fu_938_p3;
wire   [3:0] tmp_2_fu_938_p5;
wire   [3:0] tmp_2_fu_938_p7;
wire   [3:0] tmp_2_fu_938_p9;
wire   [3:0] tmp_2_fu_938_p11;
wire   [3:0] tmp_2_fu_938_p13;
wire   [3:0] tmp_2_fu_938_p15;
wire   [3:0] tmp_2_fu_938_p17;
wire   [3:0] tmp_2_fu_938_p19;
wire  signed [3:0] tmp_2_fu_938_p21;
wire  signed [3:0] tmp_2_fu_938_p23;
wire  signed [3:0] tmp_2_fu_938_p25;
wire  signed [3:0] tmp_2_fu_938_p27;
wire  signed [3:0] tmp_2_fu_938_p29;
wire  signed [3:0] tmp_2_fu_938_p31;
wire  signed [3:0] tmp_3_fu_1036_p1;
wire  signed [3:0] tmp_3_fu_1036_p3;
wire  signed [3:0] tmp_3_fu_1036_p5;
wire   [3:0] tmp_3_fu_1036_p7;
wire   [3:0] tmp_3_fu_1036_p9;
wire   [3:0] tmp_3_fu_1036_p11;
wire   [3:0] tmp_3_fu_1036_p13;
wire   [3:0] tmp_3_fu_1036_p15;
wire   [3:0] tmp_3_fu_1036_p17;
wire   [3:0] tmp_3_fu_1036_p19;
wire   [3:0] tmp_3_fu_1036_p21;
wire  signed [3:0] tmp_3_fu_1036_p23;
wire  signed [3:0] tmp_3_fu_1036_p25;
wire  signed [3:0] tmp_3_fu_1036_p27;
wire  signed [3:0] tmp_3_fu_1036_p29;
wire  signed [3:0] tmp_3_fu_1036_p31;
wire  signed [3:0] tmp_4_fu_1134_p1;
wire  signed [3:0] tmp_4_fu_1134_p3;
wire  signed [3:0] tmp_4_fu_1134_p5;
wire  signed [3:0] tmp_4_fu_1134_p7;
wire   [3:0] tmp_4_fu_1134_p9;
wire   [3:0] tmp_4_fu_1134_p11;
wire   [3:0] tmp_4_fu_1134_p13;
wire   [3:0] tmp_4_fu_1134_p15;
wire   [3:0] tmp_4_fu_1134_p17;
wire   [3:0] tmp_4_fu_1134_p19;
wire   [3:0] tmp_4_fu_1134_p21;
wire   [3:0] tmp_4_fu_1134_p23;
wire  signed [3:0] tmp_4_fu_1134_p25;
wire  signed [3:0] tmp_4_fu_1134_p27;
wire  signed [3:0] tmp_4_fu_1134_p29;
wire  signed [3:0] tmp_4_fu_1134_p31;
wire  signed [3:0] tmp_5_fu_1205_p1;
wire  signed [3:0] tmp_5_fu_1205_p3;
wire  signed [3:0] tmp_5_fu_1205_p5;
wire  signed [3:0] tmp_5_fu_1205_p7;
wire  signed [3:0] tmp_5_fu_1205_p9;
wire   [3:0] tmp_5_fu_1205_p11;
wire   [3:0] tmp_5_fu_1205_p13;
wire   [3:0] tmp_5_fu_1205_p15;
wire   [3:0] tmp_5_fu_1205_p17;
wire   [3:0] tmp_5_fu_1205_p19;
wire   [3:0] tmp_5_fu_1205_p21;
wire   [3:0] tmp_5_fu_1205_p23;
wire   [3:0] tmp_5_fu_1205_p25;
wire  signed [3:0] tmp_5_fu_1205_p27;
wire  signed [3:0] tmp_5_fu_1205_p29;
wire  signed [3:0] tmp_5_fu_1205_p31;
wire  signed [3:0] tmp_6_fu_1276_p1;
wire  signed [3:0] tmp_6_fu_1276_p3;
wire  signed [3:0] tmp_6_fu_1276_p5;
wire  signed [3:0] tmp_6_fu_1276_p7;
wire  signed [3:0] tmp_6_fu_1276_p9;
wire  signed [3:0] tmp_6_fu_1276_p11;
wire   [3:0] tmp_6_fu_1276_p13;
wire   [3:0] tmp_6_fu_1276_p15;
wire   [3:0] tmp_6_fu_1276_p17;
wire   [3:0] tmp_6_fu_1276_p19;
wire   [3:0] tmp_6_fu_1276_p21;
wire   [3:0] tmp_6_fu_1276_p23;
wire   [3:0] tmp_6_fu_1276_p25;
wire   [3:0] tmp_6_fu_1276_p27;
wire  signed [3:0] tmp_6_fu_1276_p29;
wire  signed [3:0] tmp_6_fu_1276_p31;
wire  signed [3:0] tmp_7_fu_1459_p1;
wire  signed [3:0] tmp_7_fu_1459_p3;
wire  signed [3:0] tmp_7_fu_1459_p5;
wire  signed [3:0] tmp_7_fu_1459_p7;
wire  signed [3:0] tmp_7_fu_1459_p9;
wire  signed [3:0] tmp_7_fu_1459_p11;
wire  signed [3:0] tmp_7_fu_1459_p13;
wire   [3:0] tmp_7_fu_1459_p15;
wire   [3:0] tmp_7_fu_1459_p17;
wire   [3:0] tmp_7_fu_1459_p19;
wire   [3:0] tmp_7_fu_1459_p21;
wire   [3:0] tmp_7_fu_1459_p23;
wire   [3:0] tmp_7_fu_1459_p25;
wire   [3:0] tmp_7_fu_1459_p27;
wire   [3:0] tmp_7_fu_1459_p29;
wire  signed [3:0] tmp_7_fu_1459_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_166 = 64'd0;
#0 prev_fu_170 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U26(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_fu_796_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_fu_796_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U27(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_1_fu_867_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_1_fu_867_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U28(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_2_fu_938_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_2_fu_938_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U29(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_3_fu_1036_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_3_fu_1036_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U30(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_4_fu_1134_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_4_fu_1134_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U31(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_5_fu_1205_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_5_fu_1205_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U32(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_6_fu_1276_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_6_fu_1276_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U33(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_7_fu_1459_p33),.sel(trunc_ln11_reg_2363),.dout(tmp_7_fu_1459_p35));
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
            min_p_fu_166 <= min_p_18;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_166 <= min_p_35_fu_2313_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_170 <= 6'd1;
    end else if (((tmp_11_reg_2480 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_170 <= add_ln25_1_fu_1588_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_632 <= transition_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_632 <= transition_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2694 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2699 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_2474 <= add_ln25_fu_782_p2;
        prev_1_reg_2358 <= ap_sig_allocacmp_prev_1;
        shl_ln2_reg_2455[11 : 6] <= shl_ln2_fu_732_p3[11 : 6];
        tmp_11_reg_2480 <= add_ln25_fu_782_p2[32'd6];
        tmp_11_reg_2480_pp0_iter1_reg <= tmp_11_reg_2480;
        trunc_ln11_reg_2363 <= trunc_ln11_fu_690_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2787 <= and_ln29_11_fu_2128_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2799 <= and_ln29_13_fu_2218_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_2711 <= and_ln29_1_fu_1679_p2;
        tmp_56_reg_2629 <= {{add_ln27_9_fu_1444_p2[11:6]}};
        tmp_7_reg_2634 <= tmp_7_fu_1459_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2723 <= and_ln29_3_fu_1769_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2735 <= and_ln29_5_fu_1859_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2763 <= and_ln29_7_fu_1948_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2775 <= and_ln29_9_fu_2038_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2746 <= icmp_ln29_14_fu_1890_p2;
        icmp_ln29_15_reg_2751 <= icmp_ln29_15_fu_1896_p2;
        min_p_25_reg_2740 <= min_p_25_fu_1865_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_19_reg_2704 <= min_p_fu_166;
        tmp_1_reg_2489 <= tmp_1_fu_867_p35;
        tmp_2_reg_2494 <= tmp_2_fu_938_p35;
        tmp_3_reg_2504 <= tmp_3_fu_1036_p35;
        tmp_4_reg_2514 <= tmp_4_fu_1134_p35;
        tmp_5_reg_2519 <= tmp_5_fu_1205_p35;
        tmp_6_reg_2524 <= tmp_6_fu_1276_p35;
        tmp_reg_2484 <= tmp_fu_796_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_21_reg_2716 <= min_p_21_fu_1685_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_23_reg_2728 <= min_p_23_fu_1775_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_27_reg_2768 <= min_p_27_fu_1954_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_29_reg_2780 <= min_p_29_fu_2044_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_31_reg_2792 <= min_p_31_fu_2134_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_33_reg_2804 <= min_p_33_fu_2224_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_14_reg_2756 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_628 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_637 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_643 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_649 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_655 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_661 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_667 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_62_reg_2811 <= grp_fu_1042_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        transition_load_4_reg_2614 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_6_reg_2644 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_reg_2664 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_11_reg_2480 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (tmp_11_reg_2480_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_170;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = add52_7_reg_2699;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_620_p0 = reg_667;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_620_p0 = add52_5_reg_2694;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_620_p0 = reg_661;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_620_p0 = reg_655;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_620_p0 = reg_649;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_620_p0 = reg_643;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_620_p0 = reg_637;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_620_p0 = tmp_7_reg_2634;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_620_p0 = tmp_6_reg_2524;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_620_p0 = tmp_5_reg_2519;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_620_p0 = tmp_4_reg_2514;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_620_p0 = tmp_3_reg_2504;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_620_p0 = tmp_2_reg_2494;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = tmp_1_reg_2489;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = tmp_reg_2484;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_620_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_620_p1 = bitcast_ln27_7_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_620_p1 = bitcast_ln27_6_fu_1579_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_620_p1 = bitcast_ln27_5_fu_1575_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_620_p1 = bitcast_ln27_4_fu_1570_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_620_p1 = bitcast_ln27_3_fu_1566_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_620_p1 = bitcast_ln27_2_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p1 = bitcast_ln27_1_fu_1530_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p1 = bitcast_ln27_fu_1385_p1;
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_624_p0 = p_14_reg_2756;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_624_p0 = reg_667;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_624_p0 = reg_661;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_624_p0 = reg_655;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_624_p0 = reg_649;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p0 = reg_643;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_624_p0 = reg_637;
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_624_p1 = min_p_33_fu_2224_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_624_p1 = min_p_31_fu_2134_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_624_p1 = min_p_29_fu_2044_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_624_p1 = min_p_27_fu_1954_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_624_p1 = min_p_25_fu_1865_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_624_p1 = min_p_23_fu_1775_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_624_p1 = min_p_21_fu_1685_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_624_p1 = min_p_fu_166;
        end else begin
            grp_fu_624_p1 = 'bx;
        end
    end else begin
        grp_fu_624_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln26_fu_712_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_2_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_712_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_11_reg_2480_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_34_out_ap_vld = 1'b1;
    end else begin
        min_p_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_1556_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_1439_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_777_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln27_6_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_1412_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_748_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln25_1_fu_1588_p2 = (prev_1_reg_2358 + 6'd8);
assign add_ln25_fu_782_p2 = (zext_ln11_fu_686_p1 + 7'd7);
assign add_ln26_fu_1360_p2 = (empty + zext_ln26_1_fu_1356_p1);
assign add_ln27_10_fu_1535_p3 = {{tmp_56_reg_2629}, {empty_10}};
assign add_ln27_11_fu_1549_p3 = {{trunc_ln27_fu_1546_p1}, {empty_10}};
assign add_ln27_1_fu_1009_p2 = (shl_ln2_reg_2455 + 12'd128);
assign add_ln27_2_fu_769_p3 = {{tmp_36_fu_759_p4}, {empty_10}};
assign add_ln27_3_fu_1107_p2 = (shl_ln2_reg_2455 + 12'd192);
assign add_ln27_4_fu_1024_p3 = {{tmp_40_fu_1014_p4}, {empty_10}};
assign add_ln27_5_fu_1390_p2 = (shl_ln2_reg_2455 + 12'd256);
assign add_ln27_6_fu_1122_p3 = {{tmp_44_fu_1112_p4}, {empty_10}};
assign add_ln27_7_fu_1417_p2 = (shl_ln2_reg_2455 + 12'd320);
assign add_ln27_8_fu_1405_p3 = {{tmp_48_fu_1395_p4}, {empty_10}};
assign add_ln27_9_fu_1444_p2 = (shl_ln2_reg_2455 + 12'd384);
assign add_ln27_fu_753_p2 = (shl_ln2_fu_732_p3 + 12'd64);
assign add_ln27_s_fu_1432_p3 = {{tmp_52_fu_1422_p4}, {empty_10}};
assign add_ln_fu_740_p3 = {{ap_sig_allocacmp_prev_1}, {empty_10}};
assign and_ln29_10_fu_2122_p2 = (or_ln29_11_fu_2116_p2 & or_ln29_10_fu_2098_p2);
assign and_ln29_11_fu_2128_p2 = (grp_fu_1042_p_dout0 & and_ln29_10_fu_2122_p2);
assign and_ln29_12_fu_2212_p2 = (or_ln29_13_fu_2206_p2 & or_ln29_12_fu_2188_p2);
assign and_ln29_13_fu_2218_p2 = (grp_fu_1042_p_dout0 & and_ln29_12_fu_2212_p2);
assign and_ln29_14_fu_2302_p2 = (or_ln29_15_fu_2296_p2 & or_ln29_14_fu_2278_p2);
assign and_ln29_15_fu_2308_p2 = (tmp_62_reg_2811 & and_ln29_14_fu_2302_p2);
assign and_ln29_1_fu_1679_p2 = (or_ln29_1_fu_1667_p2 & and_ln29_fu_1673_p2);
assign and_ln29_2_fu_1763_p2 = (or_ln29_3_fu_1757_p2 & or_ln29_2_fu_1739_p2);
assign and_ln29_3_fu_1769_p2 = (grp_fu_1042_p_dout0 & and_ln29_2_fu_1763_p2);
assign and_ln29_4_fu_1853_p2 = (or_ln29_5_fu_1847_p2 & or_ln29_4_fu_1829_p2);
assign and_ln29_5_fu_1859_p2 = (grp_fu_1042_p_dout0 & and_ln29_4_fu_1853_p2);
assign and_ln29_6_fu_1942_p2 = (or_ln29_7_fu_1938_p2 & or_ln29_6_fu_1932_p2);
assign and_ln29_7_fu_1948_p2 = (grp_fu_1042_p_dout0 & and_ln29_6_fu_1942_p2);
assign and_ln29_8_fu_2032_p2 = (or_ln29_9_fu_2026_p2 & or_ln29_8_fu_2008_p2);
assign and_ln29_9_fu_2038_p2 = (grp_fu_1042_p_dout0 & and_ln29_8_fu_2032_p2);
assign and_ln29_fu_1673_p2 = (or_ln29_fu_1649_p2 & grp_fu_1042_p_dout0);
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
assign bitcast_ln27_1_fu_1530_p1 = reg_632;
assign bitcast_ln27_2_fu_1561_p1 = reg_628;
assign bitcast_ln27_3_fu_1566_p1 = transition_load_4_reg_2614;
assign bitcast_ln27_4_fu_1570_p1 = reg_632;
assign bitcast_ln27_5_fu_1575_p1 = transition_load_6_reg_2644;
assign bitcast_ln27_6_fu_1579_p1 = reg_628;
assign bitcast_ln27_7_fu_1584_p1 = transition_load_reg_2664;
assign bitcast_ln27_fu_1385_p1 = reg_628;
assign bitcast_ln29_10_fu_2051_p1 = reg_661;
assign bitcast_ln29_11_fu_2069_p1 = min_p_29_reg_2780;
assign bitcast_ln29_12_fu_2141_p1 = reg_667;
assign bitcast_ln29_13_fu_2159_p1 = min_p_31_reg_2792;
assign bitcast_ln29_14_fu_2232_p1 = p_14_reg_2756;
assign bitcast_ln29_15_fu_2249_p1 = min_p_33_reg_2804;
assign bitcast_ln29_1_fu_1620_p1 = min_p_19_reg_2704;
assign bitcast_ln29_2_fu_1692_p1 = reg_643;
assign bitcast_ln29_3_fu_1710_p1 = min_p_21_reg_2716;
assign bitcast_ln29_4_fu_1782_p1 = reg_649;
assign bitcast_ln29_5_fu_1800_p1 = min_p_23_reg_2728;
assign bitcast_ln29_6_fu_1902_p1 = reg_637;
assign bitcast_ln29_7_fu_1872_p1 = min_p_25_fu_1865_p3;
assign bitcast_ln29_8_fu_1961_p1 = reg_655;
assign bitcast_ln29_9_fu_1979_p1 = min_p_27_reg_2768;
assign bitcast_ln29_fu_1602_p1 = reg_637;
assign grp_fu_1042_p_ce = 1'b1;
assign grp_fu_1042_p_din0 = grp_fu_624_p0;
assign grp_fu_1042_p_din1 = grp_fu_624_p1;
assign grp_fu_1042_p_opcode = 5'd4;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_620_p0;
assign grp_fu_612_p_din1 = grp_fu_620_p1;
assign grp_fu_612_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1835_p2 = ((tmp_42_fu_1803_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1841_p2 = ((trunc_ln29_5_fu_1813_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1920_p2 = ((tmp_45_fu_1906_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1926_p2 = ((trunc_ln29_6_fu_1916_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1890_p2 = ((tmp_46_fu_1876_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1896_p2 = ((trunc_ln29_7_fu_1886_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1996_p2 = ((tmp_49_fu_1965_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2002_p2 = ((trunc_ln29_8_fu_1975_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2014_p2 = ((tmp_50_fu_1982_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2020_p2 = ((trunc_ln29_9_fu_1992_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1643_p2 = ((trunc_ln29_fu_1616_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2086_p2 = ((tmp_53_fu_2055_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2092_p2 = ((trunc_ln29_10_fu_2065_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2104_p2 = ((tmp_54_fu_2072_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2110_p2 = ((trunc_ln29_11_fu_2082_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2176_p2 = ((tmp_57_fu_2145_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2182_p2 = ((trunc_ln29_12_fu_2155_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2194_p2 = ((tmp_58_fu_2162_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2200_p2 = ((trunc_ln29_13_fu_2172_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2266_p2 = ((tmp_60_fu_2235_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2272_p2 = ((trunc_ln29_14_fu_2245_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1655_p2 = ((tmp_34_fu_1623_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2284_p2 = ((tmp_61_fu_2252_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2290_p2 = ((trunc_ln29_15_fu_2262_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1661_p2 = ((trunc_ln29_1_fu_1633_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1727_p2 = ((tmp_37_fu_1696_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1733_p2 = ((trunc_ln29_2_fu_1706_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1745_p2 = ((tmp_38_fu_1713_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1751_p2 = ((trunc_ln29_3_fu_1723_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1817_p2 = ((tmp_41_fu_1786_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1823_p2 = ((trunc_ln29_4_fu_1796_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1637_p2 = ((tmp_33_fu_1606_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_694_p4 = {{ap_sig_allocacmp_prev_1[5:4]}};
assign lshr_ln8_1_fu_1347_p4 = {{add_ln25_reg_2474[6:4]}};
assign min_p_21_fu_1685_p3 = ((and_ln29_1_reg_2711[0:0] == 1'b1) ? reg_637 : min_p_19_reg_2704);
assign min_p_23_fu_1775_p3 = ((and_ln29_3_reg_2723[0:0] == 1'b1) ? reg_643 : min_p_21_reg_2716);
assign min_p_25_fu_1865_p3 = ((and_ln29_5_reg_2735[0:0] == 1'b1) ? reg_649 : min_p_23_reg_2728);
assign min_p_27_fu_1954_p3 = ((and_ln29_7_reg_2763[0:0] == 1'b1) ? reg_637 : min_p_25_reg_2740);
assign min_p_29_fu_2044_p3 = ((and_ln29_9_reg_2775[0:0] == 1'b1) ? reg_655 : min_p_27_reg_2768);
assign min_p_31_fu_2134_p3 = ((and_ln29_11_reg_2787[0:0] == 1'b1) ? reg_661 : min_p_29_reg_2780);
assign min_p_33_fu_2224_p3 = ((and_ln29_13_reg_2799[0:0] == 1'b1) ? reg_667 : min_p_31_reg_2792);
assign min_p_34_out = ((and_ln29_13_reg_2799[0:0] == 1'b1) ? reg_667 : min_p_31_reg_2792);
assign min_p_35_fu_2313_p3 = ((and_ln29_15_fu_2308_p2[0:0] == 1'b1) ? p_14_reg_2756 : min_p_33_reg_2804);
assign or_ln29_10_fu_2098_p2 = (icmp_ln29_21_fu_2092_p2 | icmp_ln29_20_fu_2086_p2);
assign or_ln29_11_fu_2116_p2 = (icmp_ln29_23_fu_2110_p2 | icmp_ln29_22_fu_2104_p2);
assign or_ln29_12_fu_2188_p2 = (icmp_ln29_25_fu_2182_p2 | icmp_ln29_24_fu_2176_p2);
assign or_ln29_13_fu_2206_p2 = (icmp_ln29_27_fu_2200_p2 | icmp_ln29_26_fu_2194_p2);
assign or_ln29_14_fu_2278_p2 = (icmp_ln29_29_fu_2272_p2 | icmp_ln29_28_fu_2266_p2);
assign or_ln29_15_fu_2296_p2 = (icmp_ln29_31_fu_2290_p2 | icmp_ln29_30_fu_2284_p2);
assign or_ln29_1_fu_1667_p2 = (icmp_ln29_3_fu_1661_p2 | icmp_ln29_2_fu_1655_p2);
assign or_ln29_2_fu_1739_p2 = (icmp_ln29_5_fu_1733_p2 | icmp_ln29_4_fu_1727_p2);
assign or_ln29_3_fu_1757_p2 = (icmp_ln29_7_fu_1751_p2 | icmp_ln29_6_fu_1745_p2);
assign or_ln29_4_fu_1829_p2 = (icmp_ln29_9_fu_1823_p2 | icmp_ln29_8_fu_1817_p2);
assign or_ln29_5_fu_1847_p2 = (icmp_ln29_11_fu_1841_p2 | icmp_ln29_10_fu_1835_p2);
assign or_ln29_6_fu_1932_p2 = (icmp_ln29_13_fu_1926_p2 | icmp_ln29_12_fu_1920_p2);
assign or_ln29_7_fu_1938_p2 = (icmp_ln29_15_reg_2751 | icmp_ln29_14_reg_2746);
assign or_ln29_8_fu_2008_p2 = (icmp_ln29_17_fu_2002_p2 | icmp_ln29_16_fu_1996_p2);
assign or_ln29_9_fu_2026_p2 = (icmp_ln29_19_fu_2020_p2 | icmp_ln29_18_fu_2014_p2);
assign or_ln29_fu_1649_p2 = (icmp_ln29_fu_1637_p2 | icmp_ln29_1_fu_1643_p2);
assign shl_ln2_fu_732_p3 = {{ap_sig_allocacmp_prev_1}, {6'd0}};
assign tmp_1_fu_867_p33 = 'bx;
assign tmp_2_fu_938_p33 = 'bx;
assign tmp_33_fu_1606_p4 = {{bitcast_ln29_fu_1602_p1[62:52]}};
assign tmp_34_fu_1623_p4 = {{bitcast_ln29_1_fu_1620_p1[62:52]}};
assign tmp_36_fu_759_p4 = {{add_ln27_fu_753_p2[11:6]}};
assign tmp_37_fu_1696_p4 = {{bitcast_ln29_2_fu_1692_p1[62:52]}};
assign tmp_38_fu_1713_p4 = {{bitcast_ln29_3_fu_1710_p1[62:52]}};
assign tmp_3_fu_1036_p33 = 'bx;
assign tmp_40_fu_1014_p4 = {{add_ln27_1_fu_1009_p2[11:6]}};
assign tmp_41_fu_1786_p4 = {{bitcast_ln29_4_fu_1782_p1[62:52]}};
assign tmp_42_fu_1803_p4 = {{bitcast_ln29_5_fu_1800_p1[62:52]}};
assign tmp_44_fu_1112_p4 = {{add_ln27_3_fu_1107_p2[11:6]}};
assign tmp_45_fu_1906_p4 = {{bitcast_ln29_6_fu_1902_p1[62:52]}};
assign tmp_46_fu_1876_p4 = {{bitcast_ln29_7_fu_1872_p1[62:52]}};
assign tmp_48_fu_1395_p4 = {{add_ln27_5_fu_1390_p2[11:6]}};
assign tmp_49_fu_1965_p4 = {{bitcast_ln29_8_fu_1961_p1[62:52]}};
assign tmp_4_fu_1134_p33 = 'bx;
assign tmp_50_fu_1982_p4 = {{bitcast_ln29_9_fu_1979_p1[62:52]}};
assign tmp_52_fu_1422_p4 = {{add_ln27_7_fu_1417_p2[11:6]}};
assign tmp_53_fu_2055_p4 = {{bitcast_ln29_10_fu_2051_p1[62:52]}};
assign tmp_54_fu_2072_p4 = {{bitcast_ln29_11_fu_2069_p1[62:52]}};
assign tmp_57_fu_2145_p4 = {{bitcast_ln29_12_fu_2141_p1[62:52]}};
assign tmp_58_fu_2162_p4 = {{bitcast_ln29_13_fu_2159_p1[62:52]}};
assign tmp_5_fu_1205_p33 = 'bx;
assign tmp_60_fu_2235_p4 = {{bitcast_ln29_14_fu_2232_p1[62:52]}};
assign tmp_61_fu_2252_p4 = {{bitcast_ln29_15_fu_2249_p1[62:52]}};
assign tmp_6_fu_1276_p33 = 'bx;
assign tmp_7_fu_1459_p33 = 'bx;
assign tmp_fu_796_p33 = 'bx;
assign tmp_s_fu_704_p3 = {{empty_9}, {lshr_ln7_1_fu_694_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln11_fu_690_p1 = ap_sig_allocacmp_prev_1[3:0];
assign trunc_ln27_fu_1546_p1 = add_ln25_reg_2474[5:0];
assign trunc_ln29_10_fu_2065_p1 = bitcast_ln29_10_fu_2051_p1[51:0];
assign trunc_ln29_11_fu_2082_p1 = bitcast_ln29_11_fu_2069_p1[51:0];
assign trunc_ln29_12_fu_2155_p1 = bitcast_ln29_12_fu_2141_p1[51:0];
assign trunc_ln29_13_fu_2172_p1 = bitcast_ln29_13_fu_2159_p1[51:0];
assign trunc_ln29_14_fu_2245_p1 = bitcast_ln29_14_fu_2232_p1[51:0];
assign trunc_ln29_15_fu_2262_p1 = bitcast_ln29_15_fu_2249_p1[51:0];
assign trunc_ln29_1_fu_1633_p1 = bitcast_ln29_1_fu_1620_p1[51:0];
assign trunc_ln29_2_fu_1706_p1 = bitcast_ln29_2_fu_1692_p1[51:0];
assign trunc_ln29_3_fu_1723_p1 = bitcast_ln29_3_fu_1710_p1[51:0];
assign trunc_ln29_4_fu_1796_p1 = bitcast_ln29_4_fu_1782_p1[51:0];
assign trunc_ln29_5_fu_1813_p1 = bitcast_ln29_5_fu_1800_p1[51:0];
assign trunc_ln29_6_fu_1916_p1 = bitcast_ln29_6_fu_1902_p1[51:0];
assign trunc_ln29_7_fu_1886_p1 = bitcast_ln29_7_fu_1872_p1[51:0];
assign trunc_ln29_8_fu_1975_p1 = bitcast_ln29_8_fu_1961_p1[51:0];
assign trunc_ln29_9_fu_1992_p1 = bitcast_ln29_9_fu_1979_p1[51:0];
assign trunc_ln29_fu_1616_p1 = bitcast_ln29_fu_1602_p1[51:0];
assign zext_ln11_fu_686_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1356_p1 = lshr_ln8_1_fu_1347_p4;
assign zext_ln26_2_fu_1365_p1 = add_ln26_fu_1360_p2;
assign zext_ln26_fu_712_p1 = tmp_s_fu_704_p3;
assign zext_ln27_1_fu_777_p1 = add_ln27_2_fu_769_p3;
assign zext_ln27_2_fu_1031_p1 = add_ln27_4_fu_1024_p3;
assign zext_ln27_3_fu_1129_p1 = add_ln27_6_fu_1122_p3;
assign zext_ln27_4_fu_1412_p1 = add_ln27_8_fu_1405_p3;
assign zext_ln27_5_fu_1439_p1 = add_ln27_s_fu_1432_p3;
assign zext_ln27_6_fu_1541_p1 = add_ln27_10_fu_1535_p3;
assign zext_ln27_7_fu_1556_p1 = add_ln27_11_fu_1549_p3;
assign zext_ln27_fu_748_p1 = add_ln_fu_740_p3;
always @ (posedge ap_clk) begin
    shl_ln2_reg_2455[5:0] <= 6'b000000;
end
endmodule 