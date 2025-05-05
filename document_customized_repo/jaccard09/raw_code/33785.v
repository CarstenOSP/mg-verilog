module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,min_p_82_out,min_p_82_out_ap_vld,grp_fu_717_p_din0,grp_fu_717_p_din1,grp_fu_717_p_opcode,grp_fu_717_p_dout0,grp_fu_717_p_ce,grp_fu_1338_p_din0,grp_fu_1338_p_din1,grp_fu_1338_p_opcode,grp_fu_1338_p_dout0,grp_fu_1338_p_ce); 
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
input  [4:0] lshr_ln;
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
input  [0:0] empty_10;
input  [63:0] bitcast_ln24;
input  [9:0] empty;
output  [63:0] min_p_82_out;
output   min_p_82_out_ap_vld;
output  [63:0] grp_fu_717_p_din0;
output  [63:0] grp_fu_717_p_din1;
output  [1:0] grp_fu_717_p_opcode;
input  [63:0] grp_fu_717_p_dout0;
output   grp_fu_717_p_ce;
output  [63:0] grp_fu_1338_p_din0;
output  [63:0] grp_fu_1338_p_din1;
output  [4:0] grp_fu_1338_p_opcode;
input  [0:0] grp_fu_1338_p_dout0;
output   grp_fu_1338_p_ce;
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
reg   [0:0] tmp_140_reg_2602;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_713_p3;
reg   [63:0] reg_727;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_720_p3;
reg   [63:0] reg_731;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_735;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_741;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_747;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_753;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_759;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_765;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_2470;
wire   [3:0] trunc_ln16_fu_788_p1;
reg   [3:0] trunc_ln16_reg_2475;
wire   [10:0] shl_ln1_fu_830_p3;
reg   [10:0] shl_ln1_reg_2567;
wire   [6:0] add_ln25_fu_882_p2;
reg   [6:0] add_ln25_reg_2596;
reg   [0:0] tmp_140_reg_2602_pp0_iter1_reg;
wire   [63:0] tmp_s_fu_896_p35;
reg   [63:0] tmp_s_reg_2606;
wire   [63:0] tmp_1_fu_967_p35;
reg   [63:0] tmp_1_reg_2611;
wire   [63:0] tmp_2_fu_1038_p35;
reg   [63:0] tmp_2_reg_2616;
wire   [63:0] tmp_3_fu_1137_p35;
reg   [63:0] tmp_3_reg_2631;
wire   [63:0] tmp_4_fu_1236_p35;
reg   [63:0] tmp_4_reg_2646;
wire   [63:0] tmp_5_fu_1307_p35;
reg   [63:0] tmp_5_reg_2651;
wire   [63:0] tmp_6_fu_1378_p35;
reg   [63:0] tmp_6_reg_2656;
wire   [63:0] bitcast_ln27_fu_1487_p1;
reg   [63:0] select_ln27_3_reg_2746;
reg   [5:0] tmp_139_reg_2771;
wire   [63:0] tmp_7_fu_1563_p35;
reg   [63:0] tmp_7_reg_2776;
wire   [63:0] bitcast_ln27_1_fu_1634_p1;
reg   [63:0] select_ln27_4_reg_2786;
wire   [63:0] bitcast_ln27_2_fu_1667_p1;
reg   [63:0] select_ln27_7_reg_2816;
wire   [63:0] bitcast_ln27_3_fu_1672_p1;
wire   [63:0] bitcast_ln27_4_fu_1676_p1;
wire   [63:0] bitcast_ln27_5_fu_1680_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_1685_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_1690_p1;
reg   [63:0] add52_5_reg_2846;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_2851;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_67_reg_2856;
wire   [0:0] and_ln29_1_fu_1785_p2;
reg   [0:0] and_ln29_1_reg_2863;
wire   [63:0] min_p_69_fu_1791_p3;
reg   [63:0] min_p_69_reg_2868;
wire   [0:0] and_ln29_3_fu_1875_p2;
reg   [0:0] and_ln29_3_reg_2875;
wire   [63:0] min_p_71_fu_1881_p3;
reg   [63:0] min_p_71_reg_2880;
wire   [0:0] and_ln29_5_fu_1965_p2;
reg   [0:0] and_ln29_5_reg_2887;
wire   [63:0] min_p_73_fu_1971_p3;
reg   [63:0] min_p_73_reg_2892;
wire   [0:0] icmp_ln29_14_fu_1996_p2;
reg   [0:0] icmp_ln29_14_reg_2898;
wire   [0:0] icmp_ln29_15_fu_2002_p2;
reg   [0:0] icmp_ln29_15_reg_2903;
reg   [63:0] p_38_reg_2908;
wire   [0:0] and_ln29_7_fu_2054_p2;
reg   [0:0] and_ln29_7_reg_2915;
wire   [63:0] min_p_75_fu_2060_p3;
reg   [63:0] min_p_75_reg_2920;
wire   [0:0] and_ln29_9_fu_2144_p2;
reg   [0:0] and_ln29_9_reg_2927;
wire   [63:0] min_p_77_fu_2150_p3;
reg   [63:0] min_p_77_reg_2932;
wire   [0:0] and_ln29_11_fu_2234_p2;
reg   [0:0] and_ln29_11_reg_2939;
wire   [63:0] min_p_79_fu_2240_p3;
reg   [63:0] min_p_79_reg_2944;
wire   [0:0] and_ln29_13_fu_2324_p2;
reg   [0:0] and_ln29_13_reg_2951;
wire   [63:0] min_p_81_fu_2330_p3;
reg   [63:0] min_p_81_reg_2956;
reg   [0:0] tmp_136_reg_2963;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_810_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_846_p1;
wire   [63:0] zext_ln27_1_fu_876_p1;
wire   [63:0] zext_ln27_2_fu_1131_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1230_p1;
wire   [63:0] zext_ln26_2_fu_1467_p1;
wire   [63:0] zext_ln27_4_fu_1514_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1542_p1;
wire   [63:0] zext_ln27_6_fu_1645_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1661_p1;
reg   [63:0] min_p_fu_172;
wire   [63:0] min_p_83_fu_2419_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_176;
wire   [5:0] add_ln25_1_fu_1694_p2;
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
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg   [63:0] grp_fu_705_p0;
reg   [63:0] grp_fu_705_p1;
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
reg   [63:0] grp_fu_709_p0;
reg   [63:0] grp_fu_709_p1;
wire   [1:0] lshr_ln7_1_fu_792_p4;
wire   [9:0] tmp_121_fu_802_p3;
wire   [10:0] add_ln_fu_838_p3;
wire   [10:0] add_ln27_fu_852_p2;
wire   [5:0] tmp_125_fu_858_p4;
wire   [10:0] add_ln27_2_fu_868_p3;
wire   [6:0] zext_ln16_fu_784_p1;
wire   [63:0] tmp_s_fu_896_p33;
wire   [63:0] tmp_1_fu_967_p33;
wire   [63:0] tmp_2_fu_1038_p33;
wire   [10:0] add_ln27_1_fu_1109_p2;
wire   [5:0] tmp_129_fu_1114_p4;
wire   [10:0] add_ln27_4_fu_1124_p3;
wire   [63:0] tmp_3_fu_1137_p33;
wire   [10:0] add_ln27_3_fu_1208_p2;
wire   [5:0] tmp_133_fu_1213_p4;
wire   [10:0] add_ln27_6_fu_1223_p3;
wire   [63:0] tmp_4_fu_1236_p33;
wire   [63:0] tmp_5_fu_1307_p33;
wire   [63:0] tmp_6_fu_1378_p33;
wire   [2:0] lshr_ln8_s_fu_1449_p4;
wire   [9:0] zext_ln26_1_fu_1458_p1;
wire   [9:0] add_ln26_fu_1462_p2;
wire   [10:0] add_ln27_5_fu_1492_p2;
wire   [5:0] tmp_137_fu_1497_p4;
wire   [10:0] add_ln27_8_fu_1507_p3;
wire   [10:0] add_ln27_7_fu_1520_p2;
wire   [5:0] tmp_138_fu_1525_p4;
wire   [10:0] add_ln27_s_fu_1535_p3;
wire   [10:0] add_ln27_9_fu_1548_p2;
wire   [63:0] tmp_7_fu_1563_p33;
wire   [10:0] add_ln27_10_fu_1639_p3;
wire   [5:0] trunc_ln27_fu_1651_p1;
wire   [10:0] add_ln27_11_fu_1654_p3;
wire   [63:0] bitcast_ln29_fu_1708_p1;
wire   [63:0] bitcast_ln29_1_fu_1726_p1;
wire   [10:0] tmp_107_fu_1712_p4;
wire   [51:0] trunc_ln29_fu_1722_p1;
wire   [0:0] icmp_ln29_1_fu_1749_p2;
wire   [0:0] icmp_ln29_fu_1743_p2;
wire   [10:0] tmp_108_fu_1729_p4;
wire   [51:0] trunc_ln29_1_fu_1739_p1;
wire   [0:0] icmp_ln29_3_fu_1767_p2;
wire   [0:0] icmp_ln29_2_fu_1761_p2;
wire   [0:0] or_ln29_fu_1755_p2;
wire   [0:0] and_ln29_fu_1779_p2;
wire   [0:0] or_ln29_1_fu_1773_p2;
wire   [63:0] bitcast_ln29_2_fu_1798_p1;
wire   [63:0] bitcast_ln29_3_fu_1816_p1;
wire   [10:0] tmp_110_fu_1802_p4;
wire   [51:0] trunc_ln29_2_fu_1812_p1;
wire   [0:0] icmp_ln29_5_fu_1839_p2;
wire   [0:0] icmp_ln29_4_fu_1833_p2;
wire   [10:0] tmp_111_fu_1819_p4;
wire   [51:0] trunc_ln29_3_fu_1829_p1;
wire   [0:0] icmp_ln29_7_fu_1857_p2;
wire   [0:0] icmp_ln29_6_fu_1851_p2;
wire   [0:0] or_ln29_3_fu_1863_p2;
wire   [0:0] or_ln29_2_fu_1845_p2;
wire   [0:0] and_ln29_2_fu_1869_p2;
wire   [63:0] bitcast_ln29_4_fu_1888_p1;
wire   [63:0] bitcast_ln29_5_fu_1906_p1;
wire   [10:0] tmp_114_fu_1892_p4;
wire   [51:0] trunc_ln29_4_fu_1902_p1;
wire   [0:0] icmp_ln29_9_fu_1929_p2;
wire   [0:0] icmp_ln29_8_fu_1923_p2;
wire   [10:0] tmp_115_fu_1909_p4;
wire   [51:0] trunc_ln29_5_fu_1919_p1;
wire   [0:0] icmp_ln29_11_fu_1947_p2;
wire   [0:0] icmp_ln29_10_fu_1941_p2;
wire   [0:0] or_ln29_5_fu_1953_p2;
wire   [0:0] or_ln29_4_fu_1935_p2;
wire   [0:0] and_ln29_4_fu_1959_p2;
wire   [63:0] bitcast_ln29_7_fu_1978_p1;
wire   [10:0] tmp_119_fu_1982_p4;
wire   [51:0] trunc_ln29_7_fu_1992_p1;
wire   [63:0] bitcast_ln29_6_fu_2008_p1;
wire   [10:0] tmp_118_fu_2012_p4;
wire   [51:0] trunc_ln29_6_fu_2022_p1;
wire   [0:0] icmp_ln29_13_fu_2032_p2;
wire   [0:0] icmp_ln29_12_fu_2026_p2;
wire   [0:0] or_ln29_7_fu_2044_p2;
wire   [0:0] or_ln29_6_fu_2038_p2;
wire   [0:0] and_ln29_6_fu_2048_p2;
wire   [63:0] bitcast_ln29_8_fu_2067_p1;
wire   [63:0] bitcast_ln29_9_fu_2085_p1;
wire   [10:0] tmp_122_fu_2071_p4;
wire   [51:0] trunc_ln29_8_fu_2081_p1;
wire   [0:0] icmp_ln29_17_fu_2108_p2;
wire   [0:0] icmp_ln29_16_fu_2102_p2;
wire   [10:0] tmp_123_fu_2088_p4;
wire   [51:0] trunc_ln29_9_fu_2098_p1;
wire   [0:0] icmp_ln29_19_fu_2126_p2;
wire   [0:0] icmp_ln29_18_fu_2120_p2;
wire   [0:0] or_ln29_9_fu_2132_p2;
wire   [0:0] or_ln29_8_fu_2114_p2;
wire   [0:0] and_ln29_8_fu_2138_p2;
wire   [63:0] bitcast_ln29_10_fu_2157_p1;
wire   [63:0] bitcast_ln29_11_fu_2175_p1;
wire   [10:0] tmp_126_fu_2161_p4;
wire   [51:0] trunc_ln29_10_fu_2171_p1;
wire   [0:0] icmp_ln29_21_fu_2198_p2;
wire   [0:0] icmp_ln29_20_fu_2192_p2;
wire   [10:0] tmp_127_fu_2178_p4;
wire   [51:0] trunc_ln29_11_fu_2188_p1;
wire   [0:0] icmp_ln29_23_fu_2216_p2;
wire   [0:0] icmp_ln29_22_fu_2210_p2;
wire   [0:0] or_ln29_11_fu_2222_p2;
wire   [0:0] or_ln29_10_fu_2204_p2;
wire   [0:0] and_ln29_10_fu_2228_p2;
wire   [63:0] bitcast_ln29_12_fu_2247_p1;
wire   [63:0] bitcast_ln29_13_fu_2265_p1;
wire   [10:0] tmp_130_fu_2251_p4;
wire   [51:0] trunc_ln29_12_fu_2261_p1;
wire   [0:0] icmp_ln29_25_fu_2288_p2;
wire   [0:0] icmp_ln29_24_fu_2282_p2;
wire   [10:0] tmp_131_fu_2268_p4;
wire   [51:0] trunc_ln29_13_fu_2278_p1;
wire   [0:0] icmp_ln29_27_fu_2306_p2;
wire   [0:0] icmp_ln29_26_fu_2300_p2;
wire   [0:0] or_ln29_13_fu_2312_p2;
wire   [0:0] or_ln29_12_fu_2294_p2;
wire   [0:0] and_ln29_12_fu_2318_p2;
wire   [63:0] bitcast_ln29_14_fu_2338_p1;
wire   [63:0] bitcast_ln29_15_fu_2355_p1;
wire   [10:0] tmp_134_fu_2341_p4;
wire   [51:0] trunc_ln29_14_fu_2351_p1;
wire   [0:0] icmp_ln29_29_fu_2378_p2;
wire   [0:0] icmp_ln29_28_fu_2372_p2;
wire   [10:0] tmp_135_fu_2358_p4;
wire   [51:0] trunc_ln29_15_fu_2368_p1;
wire   [0:0] icmp_ln29_31_fu_2396_p2;
wire   [0:0] icmp_ln29_30_fu_2390_p2;
wire   [0:0] or_ln29_15_fu_2402_p2;
wire   [0:0] or_ln29_14_fu_2384_p2;
wire   [0:0] and_ln29_14_fu_2408_p2;
wire   [0:0] and_ln29_15_fu_2414_p2;
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
wire   [3:0] tmp_s_fu_896_p1;
wire   [3:0] tmp_s_fu_896_p3;
wire   [3:0] tmp_s_fu_896_p5;
wire   [3:0] tmp_s_fu_896_p7;
wire   [3:0] tmp_s_fu_896_p9;
wire   [3:0] tmp_s_fu_896_p11;
wire   [3:0] tmp_s_fu_896_p13;
wire   [3:0] tmp_s_fu_896_p15;
wire  signed [3:0] tmp_s_fu_896_p17;
wire  signed [3:0] tmp_s_fu_896_p19;
wire  signed [3:0] tmp_s_fu_896_p21;
wire  signed [3:0] tmp_s_fu_896_p23;
wire  signed [3:0] tmp_s_fu_896_p25;
wire  signed [3:0] tmp_s_fu_896_p27;
wire  signed [3:0] tmp_s_fu_896_p29;
wire  signed [3:0] tmp_s_fu_896_p31;
wire  signed [3:0] tmp_1_fu_967_p1;
wire   [3:0] tmp_1_fu_967_p3;
wire   [3:0] tmp_1_fu_967_p5;
wire   [3:0] tmp_1_fu_967_p7;
wire   [3:0] tmp_1_fu_967_p9;
wire   [3:0] tmp_1_fu_967_p11;
wire   [3:0] tmp_1_fu_967_p13;
wire   [3:0] tmp_1_fu_967_p15;
wire   [3:0] tmp_1_fu_967_p17;
wire  signed [3:0] tmp_1_fu_967_p19;
wire  signed [3:0] tmp_1_fu_967_p21;
wire  signed [3:0] tmp_1_fu_967_p23;
wire  signed [3:0] tmp_1_fu_967_p25;
wire  signed [3:0] tmp_1_fu_967_p27;
wire  signed [3:0] tmp_1_fu_967_p29;
wire  signed [3:0] tmp_1_fu_967_p31;
wire  signed [3:0] tmp_2_fu_1038_p1;
wire  signed [3:0] tmp_2_fu_1038_p3;
wire   [3:0] tmp_2_fu_1038_p5;
wire   [3:0] tmp_2_fu_1038_p7;
wire   [3:0] tmp_2_fu_1038_p9;
wire   [3:0] tmp_2_fu_1038_p11;
wire   [3:0] tmp_2_fu_1038_p13;
wire   [3:0] tmp_2_fu_1038_p15;
wire   [3:0] tmp_2_fu_1038_p17;
wire   [3:0] tmp_2_fu_1038_p19;
wire  signed [3:0] tmp_2_fu_1038_p21;
wire  signed [3:0] tmp_2_fu_1038_p23;
wire  signed [3:0] tmp_2_fu_1038_p25;
wire  signed [3:0] tmp_2_fu_1038_p27;
wire  signed [3:0] tmp_2_fu_1038_p29;
wire  signed [3:0] tmp_2_fu_1038_p31;
wire  signed [3:0] tmp_3_fu_1137_p1;
wire  signed [3:0] tmp_3_fu_1137_p3;
wire  signed [3:0] tmp_3_fu_1137_p5;
wire   [3:0] tmp_3_fu_1137_p7;
wire   [3:0] tmp_3_fu_1137_p9;
wire   [3:0] tmp_3_fu_1137_p11;
wire   [3:0] tmp_3_fu_1137_p13;
wire   [3:0] tmp_3_fu_1137_p15;
wire   [3:0] tmp_3_fu_1137_p17;
wire   [3:0] tmp_3_fu_1137_p19;
wire   [3:0] tmp_3_fu_1137_p21;
wire  signed [3:0] tmp_3_fu_1137_p23;
wire  signed [3:0] tmp_3_fu_1137_p25;
wire  signed [3:0] tmp_3_fu_1137_p27;
wire  signed [3:0] tmp_3_fu_1137_p29;
wire  signed [3:0] tmp_3_fu_1137_p31;
wire  signed [3:0] tmp_4_fu_1236_p1;
wire  signed [3:0] tmp_4_fu_1236_p3;
wire  signed [3:0] tmp_4_fu_1236_p5;
wire  signed [3:0] tmp_4_fu_1236_p7;
wire   [3:0] tmp_4_fu_1236_p9;
wire   [3:0] tmp_4_fu_1236_p11;
wire   [3:0] tmp_4_fu_1236_p13;
wire   [3:0] tmp_4_fu_1236_p15;
wire   [3:0] tmp_4_fu_1236_p17;
wire   [3:0] tmp_4_fu_1236_p19;
wire   [3:0] tmp_4_fu_1236_p21;
wire   [3:0] tmp_4_fu_1236_p23;
wire  signed [3:0] tmp_4_fu_1236_p25;
wire  signed [3:0] tmp_4_fu_1236_p27;
wire  signed [3:0] tmp_4_fu_1236_p29;
wire  signed [3:0] tmp_4_fu_1236_p31;
wire  signed [3:0] tmp_5_fu_1307_p1;
wire  signed [3:0] tmp_5_fu_1307_p3;
wire  signed [3:0] tmp_5_fu_1307_p5;
wire  signed [3:0] tmp_5_fu_1307_p7;
wire  signed [3:0] tmp_5_fu_1307_p9;
wire   [3:0] tmp_5_fu_1307_p11;
wire   [3:0] tmp_5_fu_1307_p13;
wire   [3:0] tmp_5_fu_1307_p15;
wire   [3:0] tmp_5_fu_1307_p17;
wire   [3:0] tmp_5_fu_1307_p19;
wire   [3:0] tmp_5_fu_1307_p21;
wire   [3:0] tmp_5_fu_1307_p23;
wire   [3:0] tmp_5_fu_1307_p25;
wire  signed [3:0] tmp_5_fu_1307_p27;
wire  signed [3:0] tmp_5_fu_1307_p29;
wire  signed [3:0] tmp_5_fu_1307_p31;
wire  signed [3:0] tmp_6_fu_1378_p1;
wire  signed [3:0] tmp_6_fu_1378_p3;
wire  signed [3:0] tmp_6_fu_1378_p5;
wire  signed [3:0] tmp_6_fu_1378_p7;
wire  signed [3:0] tmp_6_fu_1378_p9;
wire  signed [3:0] tmp_6_fu_1378_p11;
wire   [3:0] tmp_6_fu_1378_p13;
wire   [3:0] tmp_6_fu_1378_p15;
wire   [3:0] tmp_6_fu_1378_p17;
wire   [3:0] tmp_6_fu_1378_p19;
wire   [3:0] tmp_6_fu_1378_p21;
wire   [3:0] tmp_6_fu_1378_p23;
wire   [3:0] tmp_6_fu_1378_p25;
wire   [3:0] tmp_6_fu_1378_p27;
wire  signed [3:0] tmp_6_fu_1378_p29;
wire  signed [3:0] tmp_6_fu_1378_p31;
wire  signed [3:0] tmp_7_fu_1563_p1;
wire  signed [3:0] tmp_7_fu_1563_p3;
wire  signed [3:0] tmp_7_fu_1563_p5;
wire  signed [3:0] tmp_7_fu_1563_p7;
wire  signed [3:0] tmp_7_fu_1563_p9;
wire  signed [3:0] tmp_7_fu_1563_p11;
wire  signed [3:0] tmp_7_fu_1563_p13;
wire   [3:0] tmp_7_fu_1563_p15;
wire   [3:0] tmp_7_fu_1563_p17;
wire   [3:0] tmp_7_fu_1563_p19;
wire   [3:0] tmp_7_fu_1563_p21;
wire   [3:0] tmp_7_fu_1563_p23;
wire   [3:0] tmp_7_fu_1563_p25;
wire   [3:0] tmp_7_fu_1563_p27;
wire   [3:0] tmp_7_fu_1563_p29;
wire  signed [3:0] tmp_7_fu_1563_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_172 = 64'd0;
#0 prev_fu_176 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U30(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_s_fu_896_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_s_fu_896_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U31(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_1_fu_967_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_1_fu_967_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U32(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_2_fu_1038_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_2_fu_1038_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U33(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_3_fu_1137_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_3_fu_1137_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U34(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_4_fu_1236_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_4_fu_1236_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U35(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_5_fu_1307_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_5_fu_1307_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U36(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_6_fu_1378_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_6_fu_1378_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U37(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_7_fu_1563_p33),.sel(trunc_ln16_reg_2475),.dout(tmp_7_fu_1563_p35));
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
            min_p_fu_172 <= min_p_66;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_172 <= min_p_83_fu_2419_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_176 <= 6'd1;
    end else if (((tmp_140_reg_2602 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_176 <= add_ln25_1_fu_1694_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_2846 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_2851 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_2596 <= add_ln25_fu_882_p2;
        prev_1_reg_2470 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_2567[10 : 5] <= shl_ln1_fu_830_p3[10 : 5];
        tmp_140_reg_2602 <= add_ln25_fu_882_p2[32'd6];
        tmp_140_reg_2602_pp0_iter1_reg <= tmp_140_reg_2602;
        trunc_ln16_reg_2475 <= trunc_ln16_fu_788_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2939 <= and_ln29_11_fu_2234_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2951 <= and_ln29_13_fu_2324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_2863 <= and_ln29_1_fu_1785_p2;
        tmp_139_reg_2771 <= {{add_ln27_9_fu_1548_p2[10:5]}};
        tmp_7_reg_2776 <= tmp_7_fu_1563_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_2875 <= and_ln29_3_fu_1875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_2887 <= and_ln29_5_fu_1965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_2915 <= and_ln29_7_fu_2054_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_2927 <= and_ln29_9_fu_2144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_2898 <= icmp_ln29_14_fu_1996_p2;
        icmp_ln29_15_reg_2903 <= icmp_ln29_15_fu_2002_p2;
        min_p_73_reg_2892 <= min_p_73_fu_1971_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_67_reg_2856 <= min_p_fu_172;
        tmp_1_reg_2611 <= tmp_1_fu_967_p35;
        tmp_2_reg_2616 <= tmp_2_fu_1038_p35;
        tmp_3_reg_2631 <= tmp_3_fu_1137_p35;
        tmp_4_reg_2646 <= tmp_4_fu_1236_p35;
        tmp_5_reg_2651 <= tmp_5_fu_1307_p35;
        tmp_6_reg_2656 <= tmp_6_fu_1378_p35;
        tmp_s_reg_2606 <= tmp_s_fu_896_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_69_reg_2868 <= min_p_69_fu_1791_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_71_reg_2880 <= min_p_71_fu_1881_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_75_reg_2920 <= min_p_75_fu_2060_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_77_reg_2932 <= min_p_77_fu_2150_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_79_reg_2944 <= min_p_79_fu_2240_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_81_reg_2956 <= min_p_81_fu_2330_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_38_reg_2908 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_727 <= grp_fu_713_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_731 <= grp_fu_720_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_735 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_741 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_747 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_753 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_759 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_765 <= grp_fu_717_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln27_3_reg_2746 <= grp_fu_720_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln27_4_reg_2786 <= grp_fu_713_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln27_7_reg_2816 <= grp_fu_720_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_136_reg_2963 <= grp_fu_1338_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_140_reg_2602 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (tmp_140_reg_2602_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_705_p0 = add52_7_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_705_p0 = reg_765;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_705_p0 = add52_5_reg_2846;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_705_p0 = reg_759;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_705_p0 = reg_753;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_705_p0 = reg_747;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_705_p0 = reg_741;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_705_p0 = reg_735;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_705_p0 = tmp_7_reg_2776;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_705_p0 = tmp_6_reg_2656;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_705_p0 = tmp_5_reg_2651;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_705_p0 = tmp_4_reg_2646;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_705_p0 = tmp_3_reg_2631;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_705_p0 = tmp_2_reg_2616;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_705_p0 = tmp_1_reg_2611;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_705_p0 = tmp_s_reg_2606;
    end else begin
        grp_fu_705_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_705_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_705_p1 = bitcast_ln27_7_fu_1690_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_705_p1 = bitcast_ln27_6_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_705_p1 = bitcast_ln27_5_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_705_p1 = bitcast_ln27_4_fu_1676_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_705_p1 = bitcast_ln27_3_fu_1672_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_705_p1 = bitcast_ln27_2_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_705_p1 = bitcast_ln27_1_fu_1634_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_705_p1 = bitcast_ln27_fu_1487_p1;
    end else begin
        grp_fu_705_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_709_p0 = p_38_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_709_p0 = reg_765;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_709_p0 = reg_759;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_709_p0 = reg_753;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_709_p0 = reg_747;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_709_p0 = reg_741;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_709_p0 = reg_735;
    end else begin
        grp_fu_709_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_709_p1 = min_p_81_fu_2330_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_709_p1 = min_p_79_fu_2240_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_709_p1 = min_p_77_fu_2150_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_709_p1 = min_p_75_fu_2060_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_709_p1 = min_p_73_fu_1971_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_709_p1 = min_p_71_fu_1881_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_709_p1 = min_p_69_fu_1791_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_709_p1 = min_p_fu_172;
        end else begin
            grp_fu_709_p1 = 'bx;
        end
    end else begin
        grp_fu_709_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln26_fu_810_p1;
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
            llike_11_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln26_fu_810_p1;
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
            llike_12_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln26_fu_810_p1;
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
            llike_13_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln26_fu_810_p1;
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
            llike_14_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln26_fu_810_p1;
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
            llike_15_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln26_fu_810_p1;
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
            llike_1_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_810_p1;
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
            llike_2_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_810_p1;
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
            llike_3_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_810_p1;
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
            llike_4_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_810_p1;
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
            llike_5_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_810_p1;
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
            llike_6_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_810_p1;
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
            llike_7_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_810_p1;
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
            llike_8_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln26_fu_810_p1;
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
            llike_9_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln26_fu_810_p1;
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
            llike_address0_local = zext_ln26_2_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_810_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_140_reg_2602_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_82_out_ap_vld = 1'b1;
    end else begin
        min_p_82_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_876_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1514_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1131_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_846_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1542_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_876_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1514_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1131_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_846_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
assign add_ln25_1_fu_1694_p2 = (prev_1_reg_2470 + 6'd8);
assign add_ln25_fu_882_p2 = (zext_ln16_fu_784_p1 + 7'd7);
assign add_ln26_fu_1462_p2 = (empty + zext_ln26_1_fu_1458_p1);
assign add_ln27_10_fu_1639_p3 = {{tmp_139_reg_2771}, {lshr_ln}};
assign add_ln27_11_fu_1654_p3 = {{trunc_ln27_fu_1651_p1}, {lshr_ln}};
assign add_ln27_1_fu_1109_p2 = (shl_ln1_reg_2567 + 11'd64);
assign add_ln27_2_fu_868_p3 = {{tmp_125_fu_858_p4}, {lshr_ln}};
assign add_ln27_3_fu_1208_p2 = (shl_ln1_reg_2567 + 11'd96);
assign add_ln27_4_fu_1124_p3 = {{tmp_129_fu_1114_p4}, {lshr_ln}};
assign add_ln27_5_fu_1492_p2 = (shl_ln1_reg_2567 + 11'd128);
assign add_ln27_6_fu_1223_p3 = {{tmp_133_fu_1213_p4}, {lshr_ln}};
assign add_ln27_7_fu_1520_p2 = (shl_ln1_reg_2567 + 11'd160);
assign add_ln27_8_fu_1507_p3 = {{tmp_137_fu_1497_p4}, {lshr_ln}};
assign add_ln27_9_fu_1548_p2 = (shl_ln1_reg_2567 + 11'd192);
assign add_ln27_fu_852_p2 = (shl_ln1_fu_830_p3 + 11'd32);
assign add_ln27_s_fu_1535_p3 = {{tmp_138_fu_1525_p4}, {lshr_ln}};
assign add_ln_fu_838_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_2228_p2 = (or_ln29_11_fu_2222_p2 & or_ln29_10_fu_2204_p2);
assign and_ln29_11_fu_2234_p2 = (grp_fu_1338_p_dout0 & and_ln29_10_fu_2228_p2);
assign and_ln29_12_fu_2318_p2 = (or_ln29_13_fu_2312_p2 & or_ln29_12_fu_2294_p2);
assign and_ln29_13_fu_2324_p2 = (grp_fu_1338_p_dout0 & and_ln29_12_fu_2318_p2);
assign and_ln29_14_fu_2408_p2 = (or_ln29_15_fu_2402_p2 & or_ln29_14_fu_2384_p2);
assign and_ln29_15_fu_2414_p2 = (tmp_136_reg_2963 & and_ln29_14_fu_2408_p2);
assign and_ln29_1_fu_1785_p2 = (or_ln29_1_fu_1773_p2 & and_ln29_fu_1779_p2);
assign and_ln29_2_fu_1869_p2 = (or_ln29_3_fu_1863_p2 & or_ln29_2_fu_1845_p2);
assign and_ln29_3_fu_1875_p2 = (grp_fu_1338_p_dout0 & and_ln29_2_fu_1869_p2);
assign and_ln29_4_fu_1959_p2 = (or_ln29_5_fu_1953_p2 & or_ln29_4_fu_1935_p2);
assign and_ln29_5_fu_1965_p2 = (grp_fu_1338_p_dout0 & and_ln29_4_fu_1959_p2);
assign and_ln29_6_fu_2048_p2 = (or_ln29_7_fu_2044_p2 & or_ln29_6_fu_2038_p2);
assign and_ln29_7_fu_2054_p2 = (grp_fu_1338_p_dout0 & and_ln29_6_fu_2048_p2);
assign and_ln29_8_fu_2138_p2 = (or_ln29_9_fu_2132_p2 & or_ln29_8_fu_2114_p2);
assign and_ln29_9_fu_2144_p2 = (grp_fu_1338_p_dout0 & and_ln29_8_fu_2138_p2);
assign and_ln29_fu_1779_p2 = (or_ln29_fu_1755_p2 & grp_fu_1338_p_dout0);
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
assign bitcast_ln27_1_fu_1634_p1 = reg_731;
assign bitcast_ln27_2_fu_1667_p1 = reg_727;
assign bitcast_ln27_3_fu_1672_p1 = select_ln27_3_reg_2746;
assign bitcast_ln27_4_fu_1676_p1 = select_ln27_4_reg_2786;
assign bitcast_ln27_5_fu_1680_p1 = reg_731;
assign bitcast_ln27_6_fu_1685_p1 = reg_727;
assign bitcast_ln27_7_fu_1690_p1 = select_ln27_7_reg_2816;
assign bitcast_ln27_fu_1487_p1 = reg_727;
assign bitcast_ln29_10_fu_2157_p1 = reg_759;
assign bitcast_ln29_11_fu_2175_p1 = min_p_77_reg_2932;
assign bitcast_ln29_12_fu_2247_p1 = reg_765;
assign bitcast_ln29_13_fu_2265_p1 = min_p_79_reg_2944;
assign bitcast_ln29_14_fu_2338_p1 = p_38_reg_2908;
assign bitcast_ln29_15_fu_2355_p1 = min_p_81_reg_2956;
assign bitcast_ln29_1_fu_1726_p1 = min_p_67_reg_2856;
assign bitcast_ln29_2_fu_1798_p1 = reg_741;
assign bitcast_ln29_3_fu_1816_p1 = min_p_69_reg_2868;
assign bitcast_ln29_4_fu_1888_p1 = reg_747;
assign bitcast_ln29_5_fu_1906_p1 = min_p_71_reg_2880;
assign bitcast_ln29_6_fu_2008_p1 = reg_735;
assign bitcast_ln29_7_fu_1978_p1 = min_p_73_fu_1971_p3;
assign bitcast_ln29_8_fu_2067_p1 = reg_753;
assign bitcast_ln29_9_fu_2085_p1 = min_p_75_reg_2920;
assign bitcast_ln29_fu_1708_p1 = reg_735;
assign grp_fu_1338_p_ce = 1'b1;
assign grp_fu_1338_p_din0 = grp_fu_709_p0;
assign grp_fu_1338_p_din1 = grp_fu_709_p1;
assign grp_fu_1338_p_opcode = 5'd4;
assign grp_fu_713_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_717_p_ce = 1'b1;
assign grp_fu_717_p_din0 = grp_fu_705_p0;
assign grp_fu_717_p_din1 = grp_fu_705_p1;
assign grp_fu_717_p_opcode = 2'd0;
assign grp_fu_720_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign icmp_ln29_10_fu_1941_p2 = ((tmp_115_fu_1909_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1947_p2 = ((trunc_ln29_5_fu_1919_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_2026_p2 = ((tmp_118_fu_2012_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_2032_p2 = ((trunc_ln29_6_fu_2022_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1996_p2 = ((tmp_119_fu_1982_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_2002_p2 = ((trunc_ln29_7_fu_1992_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_2102_p2 = ((tmp_122_fu_2071_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_2108_p2 = ((trunc_ln29_8_fu_2081_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_2120_p2 = ((tmp_123_fu_2088_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_2126_p2 = ((trunc_ln29_9_fu_2098_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1749_p2 = ((trunc_ln29_fu_1722_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_2192_p2 = ((tmp_126_fu_2161_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_2198_p2 = ((trunc_ln29_10_fu_2171_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_2210_p2 = ((tmp_127_fu_2178_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_2216_p2 = ((trunc_ln29_11_fu_2188_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2282_p2 = ((tmp_130_fu_2251_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2288_p2 = ((trunc_ln29_12_fu_2261_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2300_p2 = ((tmp_131_fu_2268_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2306_p2 = ((trunc_ln29_13_fu_2278_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2372_p2 = ((tmp_134_fu_2341_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2378_p2 = ((trunc_ln29_14_fu_2351_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1761_p2 = ((tmp_108_fu_1729_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2390_p2 = ((tmp_135_fu_2358_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2396_p2 = ((trunc_ln29_15_fu_2368_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1767_p2 = ((trunc_ln29_1_fu_1739_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1833_p2 = ((tmp_110_fu_1802_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1839_p2 = ((trunc_ln29_2_fu_1812_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1851_p2 = ((tmp_111_fu_1819_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1857_p2 = ((trunc_ln29_3_fu_1829_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1923_p2 = ((tmp_114_fu_1892_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1929_p2 = ((trunc_ln29_4_fu_1902_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1743_p2 = ((tmp_107_fu_1712_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_792_p4 = {{ap_sig_allocacmp_prev_1[5:4]}};
assign lshr_ln8_s_fu_1449_p4 = {{add_ln25_reg_2596[6:4]}};
assign min_p_69_fu_1791_p3 = ((and_ln29_1_reg_2863[0:0] == 1'b1) ? reg_735 : min_p_67_reg_2856);
assign min_p_71_fu_1881_p3 = ((and_ln29_3_reg_2875[0:0] == 1'b1) ? reg_741 : min_p_69_reg_2868);
assign min_p_73_fu_1971_p3 = ((and_ln29_5_reg_2887[0:0] == 1'b1) ? reg_747 : min_p_71_reg_2880);
assign min_p_75_fu_2060_p3 = ((and_ln29_7_reg_2915[0:0] == 1'b1) ? reg_735 : min_p_73_reg_2892);
assign min_p_77_fu_2150_p3 = ((and_ln29_9_reg_2927[0:0] == 1'b1) ? reg_753 : min_p_75_reg_2920);
assign min_p_79_fu_2240_p3 = ((and_ln29_11_reg_2939[0:0] == 1'b1) ? reg_759 : min_p_77_reg_2932);
assign min_p_81_fu_2330_p3 = ((and_ln29_13_reg_2951[0:0] == 1'b1) ? reg_765 : min_p_79_reg_2944);
assign min_p_82_out = ((and_ln29_13_reg_2951[0:0] == 1'b1) ? reg_765 : min_p_79_reg_2944);
assign min_p_83_fu_2419_p3 = ((and_ln29_15_fu_2414_p2[0:0] == 1'b1) ? p_38_reg_2908 : min_p_81_reg_2956);
assign or_ln29_10_fu_2204_p2 = (icmp_ln29_21_fu_2198_p2 | icmp_ln29_20_fu_2192_p2);
assign or_ln29_11_fu_2222_p2 = (icmp_ln29_23_fu_2216_p2 | icmp_ln29_22_fu_2210_p2);
assign or_ln29_12_fu_2294_p2 = (icmp_ln29_25_fu_2288_p2 | icmp_ln29_24_fu_2282_p2);
assign or_ln29_13_fu_2312_p2 = (icmp_ln29_27_fu_2306_p2 | icmp_ln29_26_fu_2300_p2);
assign or_ln29_14_fu_2384_p2 = (icmp_ln29_29_fu_2378_p2 | icmp_ln29_28_fu_2372_p2);
assign or_ln29_15_fu_2402_p2 = (icmp_ln29_31_fu_2396_p2 | icmp_ln29_30_fu_2390_p2);
assign or_ln29_1_fu_1773_p2 = (icmp_ln29_3_fu_1767_p2 | icmp_ln29_2_fu_1761_p2);
assign or_ln29_2_fu_1845_p2 = (icmp_ln29_5_fu_1839_p2 | icmp_ln29_4_fu_1833_p2);
assign or_ln29_3_fu_1863_p2 = (icmp_ln29_7_fu_1857_p2 | icmp_ln29_6_fu_1851_p2);
assign or_ln29_4_fu_1935_p2 = (icmp_ln29_9_fu_1929_p2 | icmp_ln29_8_fu_1923_p2);
assign or_ln29_5_fu_1953_p2 = (icmp_ln29_11_fu_1947_p2 | icmp_ln29_10_fu_1941_p2);
assign or_ln29_6_fu_2038_p2 = (icmp_ln29_13_fu_2032_p2 | icmp_ln29_12_fu_2026_p2);
assign or_ln29_7_fu_2044_p2 = (icmp_ln29_15_reg_2903 | icmp_ln29_14_reg_2898);
assign or_ln29_8_fu_2114_p2 = (icmp_ln29_17_fu_2108_p2 | icmp_ln29_16_fu_2102_p2);
assign or_ln29_9_fu_2132_p2 = (icmp_ln29_19_fu_2126_p2 | icmp_ln29_18_fu_2120_p2);
assign or_ln29_fu_1755_p2 = (icmp_ln29_fu_1743_p2 | icmp_ln29_1_fu_1749_p2);
assign shl_ln1_fu_830_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_107_fu_1712_p4 = {{bitcast_ln29_fu_1708_p1[62:52]}};
assign tmp_108_fu_1729_p4 = {{bitcast_ln29_1_fu_1726_p1[62:52]}};
assign tmp_110_fu_1802_p4 = {{bitcast_ln29_2_fu_1798_p1[62:52]}};
assign tmp_111_fu_1819_p4 = {{bitcast_ln29_3_fu_1816_p1[62:52]}};
assign tmp_114_fu_1892_p4 = {{bitcast_ln29_4_fu_1888_p1[62:52]}};
assign tmp_115_fu_1909_p4 = {{bitcast_ln29_5_fu_1906_p1[62:52]}};
assign tmp_118_fu_2012_p4 = {{bitcast_ln29_6_fu_2008_p1[62:52]}};
assign tmp_119_fu_1982_p4 = {{bitcast_ln29_7_fu_1978_p1[62:52]}};
assign tmp_121_fu_802_p3 = {{empty_9}, {lshr_ln7_1_fu_792_p4}};
assign tmp_122_fu_2071_p4 = {{bitcast_ln29_8_fu_2067_p1[62:52]}};
assign tmp_123_fu_2088_p4 = {{bitcast_ln29_9_fu_2085_p1[62:52]}};
assign tmp_125_fu_858_p4 = {{add_ln27_fu_852_p2[10:5]}};
assign tmp_126_fu_2161_p4 = {{bitcast_ln29_10_fu_2157_p1[62:52]}};
assign tmp_127_fu_2178_p4 = {{bitcast_ln29_11_fu_2175_p1[62:52]}};
assign tmp_129_fu_1114_p4 = {{add_ln27_1_fu_1109_p2[10:5]}};
assign tmp_130_fu_2251_p4 = {{bitcast_ln29_12_fu_2247_p1[62:52]}};
assign tmp_131_fu_2268_p4 = {{bitcast_ln29_13_fu_2265_p1[62:52]}};
assign tmp_133_fu_1213_p4 = {{add_ln27_3_fu_1208_p2[10:5]}};
assign tmp_134_fu_2341_p4 = {{bitcast_ln29_14_fu_2338_p1[62:52]}};
assign tmp_135_fu_2358_p4 = {{bitcast_ln29_15_fu_2355_p1[62:52]}};
assign tmp_137_fu_1497_p4 = {{add_ln27_5_fu_1492_p2[10:5]}};
assign tmp_138_fu_1525_p4 = {{add_ln27_7_fu_1520_p2[10:5]}};
assign tmp_1_fu_967_p33 = 'bx;
assign tmp_2_fu_1038_p33 = 'bx;
assign tmp_3_fu_1137_p33 = 'bx;
assign tmp_4_fu_1236_p33 = 'bx;
assign tmp_5_fu_1307_p33 = 'bx;
assign tmp_6_fu_1378_p33 = 'bx;
assign tmp_7_fu_1563_p33 = 'bx;
assign tmp_s_fu_896_p33 = 'bx;
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln16_fu_788_p1 = ap_sig_allocacmp_prev_1[3:0];
assign trunc_ln27_fu_1651_p1 = add_ln25_reg_2596[5:0];
assign trunc_ln29_10_fu_2171_p1 = bitcast_ln29_10_fu_2157_p1[51:0];
assign trunc_ln29_11_fu_2188_p1 = bitcast_ln29_11_fu_2175_p1[51:0];
assign trunc_ln29_12_fu_2261_p1 = bitcast_ln29_12_fu_2247_p1[51:0];
assign trunc_ln29_13_fu_2278_p1 = bitcast_ln29_13_fu_2265_p1[51:0];
assign trunc_ln29_14_fu_2351_p1 = bitcast_ln29_14_fu_2338_p1[51:0];
assign trunc_ln29_15_fu_2368_p1 = bitcast_ln29_15_fu_2355_p1[51:0];
assign trunc_ln29_1_fu_1739_p1 = bitcast_ln29_1_fu_1726_p1[51:0];
assign trunc_ln29_2_fu_1812_p1 = bitcast_ln29_2_fu_1798_p1[51:0];
assign trunc_ln29_3_fu_1829_p1 = bitcast_ln29_3_fu_1816_p1[51:0];
assign trunc_ln29_4_fu_1902_p1 = bitcast_ln29_4_fu_1888_p1[51:0];
assign trunc_ln29_5_fu_1919_p1 = bitcast_ln29_5_fu_1906_p1[51:0];
assign trunc_ln29_6_fu_2022_p1 = bitcast_ln29_6_fu_2008_p1[51:0];
assign trunc_ln29_7_fu_1992_p1 = bitcast_ln29_7_fu_1978_p1[51:0];
assign trunc_ln29_8_fu_2081_p1 = bitcast_ln29_8_fu_2067_p1[51:0];
assign trunc_ln29_9_fu_2098_p1 = bitcast_ln29_9_fu_2085_p1[51:0];
assign trunc_ln29_fu_1722_p1 = bitcast_ln29_fu_1708_p1[51:0];
assign zext_ln16_fu_784_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1458_p1 = lshr_ln8_s_fu_1449_p4;
assign zext_ln26_2_fu_1467_p1 = add_ln26_fu_1462_p2;
assign zext_ln26_fu_810_p1 = tmp_121_fu_802_p3;
assign zext_ln27_1_fu_876_p1 = add_ln27_2_fu_868_p3;
assign zext_ln27_2_fu_1131_p1 = add_ln27_4_fu_1124_p3;
assign zext_ln27_3_fu_1230_p1 = add_ln27_6_fu_1223_p3;
assign zext_ln27_4_fu_1514_p1 = add_ln27_8_fu_1507_p3;
assign zext_ln27_5_fu_1542_p1 = add_ln27_s_fu_1535_p3;
assign zext_ln27_6_fu_1645_p1 = add_ln27_10_fu_1639_p3;
assign zext_ln27_7_fu_1661_p1 = add_ln27_11_fu_1654_p3;
assign zext_ln27_fu_846_p1 = add_ln_fu_838_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_2567[4:0] <= 5'b00000;
end
endmodule 