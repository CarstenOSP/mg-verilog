module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,zext_ln52_2,min_s_18_out,min_s_18_out_ap_vld,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_1046_p_din0,grp_fu_1046_p_din1,grp_fu_1046_p_opcode,grp_fu_1046_p_dout0,grp_fu_1046_p_ce); 
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
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [9:0] zext_ln52_2;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_1046_p_din0;
output  [63:0] grp_fu_1046_p_din1;
output  [4:0] grp_fu_1046_p_opcode;
input  [0:0] grp_fu_1046_p_dout0;
output   grp_fu_1046_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_2524;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_618;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_623;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_627;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_632;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_637;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_642_p1;
reg   [11:0] zext_ln52_cast_reg_2388;
reg   [5:0] s_reg_2399;
wire   [3:0] trunc_ln16_fu_668_p1;
reg   [3:0] trunc_ln16_reg_2409;
wire   [5:0] add_ln53_fu_729_p2;
reg   [5:0] add_ln53_reg_2506;
wire   [5:0] add_ln53_1_fu_735_p2;
reg   [5:0] add_ln53_1_reg_2512;
reg   [5:0] add_ln53_1_reg_2512_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_741_p2;
reg   [6:0] add_ln53_6_reg_2518;
reg   [0:0] tmp_reg_2524_pp0_iter1_reg;
wire   [63:0] tmp_s_fu_755_p35;
reg   [63:0] tmp_s_reg_2528;
wire   [63:0] tmp_4_fu_826_p35;
reg   [63:0] tmp_4_reg_2533;
wire   [63:0] tmp_5_fu_914_p35;
reg   [63:0] tmp_5_reg_2543;
wire   [5:0] add_ln53_2_fu_1002_p2;
reg   [5:0] add_ln53_2_reg_2553;
wire   [63:0] tmp_6_fu_1007_p35;
reg   [63:0] tmp_6_reg_2559;
wire   [5:0] add_ln53_3_fu_1078_p2;
reg   [5:0] add_ln53_3_reg_2564;
reg   [5:0] add_ln53_3_reg_2564_pp0_iter1_reg;
wire   [63:0] tmp_7_fu_1083_p35;
reg   [63:0] tmp_7_reg_2570;
wire   [63:0] tmp_8_fu_1154_p35;
reg   [63:0] tmp_8_reg_2575;
wire   [63:0] tmp_9_fu_1225_p35;
reg   [63:0] tmp_9_reg_2580;
wire   [63:0] bitcast_ln54_fu_1334_p1;
wire   [5:0] add_ln53_4_fu_1373_p2;
reg   [5:0] add_ln53_4_reg_2680;
reg   [5:0] add_ln53_4_reg_2680_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_1378_p2;
reg   [5:0] add_ln53_5_reg_2686;
reg   [5:0] add_ln53_5_reg_2686_pp0_iter1_reg;
wire   [63:0] tmp_10_fu_1383_p35;
reg   [63:0] tmp_10_reg_2692;
wire   [63:0] bitcast_ln54_1_fu_1454_p1;
reg   [63:0] transition_load_4_reg_2702;
wire   [63:0] bitcast_ln54_2_fu_1493_p1;
reg   [63:0] transition_load_6_reg_2722;
wire   [5:0] trunc_ln54_fu_1498_p1;
reg   [5:0] trunc_ln54_reg_2727;
reg   [5:0] trunc_ln54_reg_2727_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_1519_p1;
wire   [63:0] bitcast_ln54_4_fu_1524_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_1528_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_1533_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_1537_p1;
reg   [63:0] min_p_1_reg_2762;
wire   [0:0] and_ln55_1_fu_1623_p2;
reg   [0:0] and_ln55_1_reg_2769;
wire   [63:0] min_p_3_fu_1629_p3;
reg   [63:0] min_p_3_reg_2775;
wire   [0:0] and_ln55_3_fu_1713_p2;
reg   [0:0] and_ln55_3_reg_2782;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_2788;
wire   [63:0] min_p_5_fu_1732_p3;
reg   [63:0] min_p_5_reg_2795;
wire   [7:0] min_s_5_fu_1742_p3;
reg   [7:0] min_s_5_reg_2802;
wire   [0:0] and_ln55_5_fu_1826_p2;
reg   [0:0] and_ln55_5_reg_2807;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_2813;
wire   [63:0] min_p_7_fu_1832_p3;
reg   [63:0] min_p_7_reg_2820;
wire   [0:0] icmp_ln55_14_fu_1857_p2;
reg   [0:0] icmp_ln55_14_reg_2826;
wire   [0:0] icmp_ln55_15_fu_1863_p2;
reg   [0:0] icmp_ln55_15_reg_2831;
wire   [0:0] and_ln55_7_fu_1925_p2;
reg   [0:0] and_ln55_7_reg_2836;
wire   [63:0] min_p_9_fu_1940_p3;
reg   [63:0] min_p_9_reg_2842;
wire   [7:0] min_s_7_fu_1950_p3;
reg   [7:0] min_s_7_reg_2849;
wire   [0:0] and_ln55_9_fu_2033_p2;
reg   [0:0] and_ln55_9_reg_2854;
wire   [63:0] min_p_11_fu_2039_p3;
reg   [63:0] min_p_11_reg_2860;
wire   [0:0] and_ln55_11_fu_2122_p2;
reg   [0:0] and_ln55_11_reg_2867;
wire   [63:0] min_p_13_fu_2128_p3;
reg   [63:0] min_p_13_reg_2873;
wire   [0:0] and_ln55_13_fu_2211_p2;
reg   [0:0] and_ln55_13_reg_2880;
wire   [7:0] min_s_10_fu_2239_p3;
reg   [7:0] min_s_10_reg_2886;
wire   [63:0] min_p_15_fu_2247_p3;
reg   [63:0] min_p_15_reg_2891;
reg   [0:0] tmp_32_reg_2898;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_690_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_724_p1;
wire   [63:0] zext_ln54_1_fu_909_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_997_p1;
wire   [63:0] zext_ln54_10_fu_1314_p1;
wire   [63:0] zext_ln54_3_fu_1351_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1368_p1;
wire   [63:0] zext_ln54_5_fu_1471_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1488_p1;
wire   [63:0] zext_ln54_7_fu_1514_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_158;
wire   [63:0] min_p_17_fu_2335_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_162;
wire   [7:0] min_s_11_fu_2345_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_166;
wire   [5:0] add_ln53_7_fu_1869_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg   [63:0] grp_fu_610_p0;
reg   [63:0] grp_fu_610_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_614_p0;
reg   [63:0] grp_fu_614_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [1:0] lshr_ln8_2_fu_672_p4;
wire   [9:0] tmp_1_fu_682_p3;
wire   [11:0] shl_ln3_fu_710_p3;
wire   [11:0] add_ln54_fu_718_p2;
wire   [6:0] zext_ln16_fu_664_p1;
wire   [63:0] tmp_s_fu_755_p33;
wire   [63:0] tmp_4_fu_826_p33;
wire   [11:0] shl_ln54_1_fu_897_p3;
wire   [11:0] add_ln54_1_fu_904_p2;
wire   [63:0] tmp_5_fu_914_p33;
wire   [11:0] shl_ln54_2_fu_985_p3;
wire   [11:0] add_ln54_2_fu_992_p2;
wire   [63:0] tmp_6_fu_1007_p33;
wire   [63:0] tmp_7_fu_1083_p33;
wire   [63:0] tmp_8_fu_1154_p33;
wire   [63:0] tmp_9_fu_1225_p33;
wire   [2:0] lshr_ln9_2_fu_1296_p4;
wire   [9:0] zext_ln54_9_fu_1305_p1;
wire   [9:0] add_ln54_8_fu_1309_p2;
wire   [11:0] shl_ln54_3_fu_1339_p3;
wire   [11:0] add_ln54_3_fu_1346_p2;
wire   [11:0] shl_ln54_4_fu_1356_p3;
wire   [11:0] add_ln54_4_fu_1363_p2;
wire   [63:0] tmp_10_fu_1383_p33;
wire   [11:0] shl_ln54_5_fu_1459_p3;
wire   [11:0] add_ln54_5_fu_1466_p2;
wire   [11:0] shl_ln54_6_fu_1476_p3;
wire   [11:0] add_ln54_6_fu_1483_p2;
wire   [11:0] shl_ln54_7_fu_1501_p3;
wire   [11:0] add_ln54_7_fu_1509_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1546_p1;
wire   [63:0] bitcast_ln55_1_fu_1564_p1;
wire   [10:0] tmp_2_fu_1550_p4;
wire   [51:0] trunc_ln55_fu_1560_p1;
wire   [0:0] icmp_ln55_1_fu_1587_p2;
wire   [0:0] icmp_ln55_fu_1581_p2;
wire   [10:0] tmp_3_fu_1567_p4;
wire   [51:0] trunc_ln55_1_fu_1577_p1;
wire   [0:0] icmp_ln55_3_fu_1605_p2;
wire   [0:0] icmp_ln55_2_fu_1599_p2;
wire   [0:0] or_ln55_fu_1593_p2;
wire   [0:0] and_ln55_fu_1617_p2;
wire   [0:0] or_ln55_1_fu_1611_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1636_p1;
wire   [63:0] bitcast_ln55_3_fu_1654_p1;
wire   [10:0] tmp_12_fu_1640_p4;
wire   [51:0] trunc_ln55_2_fu_1650_p1;
wire   [0:0] icmp_ln55_5_fu_1677_p2;
wire   [0:0] icmp_ln55_4_fu_1671_p2;
wire   [10:0] tmp_13_fu_1657_p4;
wire   [51:0] trunc_ln55_3_fu_1667_p1;
wire   [0:0] icmp_ln55_7_fu_1695_p2;
wire   [0:0] icmp_ln55_6_fu_1689_p2;
wire   [0:0] or_ln55_3_fu_1701_p2;
wire   [0:0] or_ln55_2_fu_1683_p2;
wire   [0:0] and_ln55_2_fu_1707_p2;
wire   [7:0] zext_ln55_fu_1722_p1;
wire   [7:0] zext_ln55_1_fu_1739_p1;
wire   [7:0] min_s_4_fu_1725_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1749_p1;
wire   [63:0] bitcast_ln55_5_fu_1767_p1;
wire   [10:0] tmp_15_fu_1753_p4;
wire   [51:0] trunc_ln55_4_fu_1763_p1;
wire   [0:0] icmp_ln55_9_fu_1790_p2;
wire   [0:0] icmp_ln55_8_fu_1784_p2;
wire   [10:0] tmp_16_fu_1770_p4;
wire   [51:0] trunc_ln55_5_fu_1780_p1;
wire   [0:0] icmp_ln55_11_fu_1808_p2;
wire   [0:0] icmp_ln55_10_fu_1802_p2;
wire   [0:0] or_ln55_5_fu_1814_p2;
wire   [0:0] or_ln55_4_fu_1796_p2;
wire   [0:0] and_ln55_4_fu_1820_p2;
wire   [63:0] bitcast_ln55_7_fu_1839_p1;
wire   [10:0] tmp_19_fu_1843_p4;
wire   [51:0] trunc_ln55_7_fu_1853_p1;
wire   [63:0] bitcast_ln55_6_fu_1879_p1;
wire   [10:0] tmp_18_fu_1883_p4;
wire   [51:0] trunc_ln55_6_fu_1893_p1;
wire   [0:0] icmp_ln55_13_fu_1903_p2;
wire   [0:0] icmp_ln55_12_fu_1897_p2;
wire   [0:0] or_ln55_7_fu_1915_p2;
wire   [0:0] or_ln55_6_fu_1909_p2;
wire   [0:0] and_ln55_6_fu_1919_p2;
wire   [7:0] zext_ln55_2_fu_1931_p1;
wire   [7:0] zext_ln55_3_fu_1947_p1;
wire   [7:0] min_s_6_fu_1934_p3;
wire   [63:0] bitcast_ln55_8_fu_1957_p1;
wire   [63:0] bitcast_ln55_9_fu_1974_p1;
wire   [10:0] tmp_21_fu_1960_p4;
wire   [51:0] trunc_ln55_8_fu_1970_p1;
wire   [0:0] icmp_ln55_17_fu_1997_p2;
wire   [0:0] icmp_ln55_16_fu_1991_p2;
wire   [10:0] tmp_22_fu_1977_p4;
wire   [51:0] trunc_ln55_9_fu_1987_p1;
wire   [0:0] icmp_ln55_19_fu_2015_p2;
wire   [0:0] icmp_ln55_18_fu_2009_p2;
wire   [0:0] or_ln55_9_fu_2021_p2;
wire   [0:0] or_ln55_8_fu_2003_p2;
wire   [0:0] and_ln55_8_fu_2027_p2;
wire   [63:0] bitcast_ln55_10_fu_2045_p1;
wire   [63:0] bitcast_ln55_11_fu_2063_p1;
wire   [10:0] tmp_24_fu_2049_p4;
wire   [51:0] trunc_ln55_10_fu_2059_p1;
wire   [0:0] icmp_ln55_21_fu_2086_p2;
wire   [0:0] icmp_ln55_20_fu_2080_p2;
wire   [10:0] tmp_25_fu_2066_p4;
wire   [51:0] trunc_ln55_11_fu_2076_p1;
wire   [0:0] icmp_ln55_23_fu_2104_p2;
wire   [0:0] icmp_ln55_22_fu_2098_p2;
wire   [0:0] or_ln55_11_fu_2110_p2;
wire   [0:0] or_ln55_10_fu_2092_p2;
wire   [0:0] and_ln55_10_fu_2116_p2;
wire   [63:0] bitcast_ln55_12_fu_2135_p1;
wire   [63:0] bitcast_ln55_13_fu_2152_p1;
wire   [10:0] tmp_27_fu_2138_p4;
wire   [51:0] trunc_ln55_12_fu_2148_p1;
wire   [0:0] icmp_ln55_25_fu_2175_p2;
wire   [0:0] icmp_ln55_24_fu_2169_p2;
wire   [10:0] tmp_28_fu_2155_p4;
wire   [51:0] trunc_ln55_13_fu_2165_p1;
wire   [0:0] icmp_ln55_27_fu_2193_p2;
wire   [0:0] icmp_ln55_26_fu_2187_p2;
wire   [0:0] or_ln55_13_fu_2199_p2;
wire   [0:0] or_ln55_12_fu_2181_p2;
wire   [0:0] and_ln55_12_fu_2205_p2;
wire   [7:0] zext_ln55_4_fu_2217_p1;
wire   [7:0] zext_ln55_5_fu_2226_p1;
wire   [7:0] min_s_8_fu_2220_p3;
wire   [7:0] zext_ln55_6_fu_2236_p1;
wire   [7:0] min_s_9_fu_2229_p3;
wire   [63:0] bitcast_ln55_14_fu_2253_p1;
wire   [63:0] bitcast_ln55_15_fu_2271_p1;
wire   [10:0] tmp_30_fu_2257_p4;
wire   [51:0] trunc_ln55_14_fu_2267_p1;
wire   [0:0] icmp_ln55_29_fu_2294_p2;
wire   [0:0] icmp_ln55_28_fu_2288_p2;
wire   [10:0] tmp_31_fu_2274_p4;
wire   [51:0] trunc_ln55_15_fu_2284_p1;
wire   [0:0] icmp_ln55_31_fu_2312_p2;
wire   [0:0] icmp_ln55_30_fu_2306_p2;
wire   [0:0] or_ln55_15_fu_2318_p2;
wire   [0:0] or_ln55_14_fu_2300_p2;
wire   [0:0] and_ln55_14_fu_2324_p2;
wire   [0:0] and_ln55_15_fu_2330_p2;
wire   [7:0] zext_ln55_7_fu_2342_p1;
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
wire   [3:0] tmp_s_fu_755_p1;
wire   [3:0] tmp_s_fu_755_p3;
wire   [3:0] tmp_s_fu_755_p5;
wire   [3:0] tmp_s_fu_755_p7;
wire   [3:0] tmp_s_fu_755_p9;
wire   [3:0] tmp_s_fu_755_p11;
wire   [3:0] tmp_s_fu_755_p13;
wire   [3:0] tmp_s_fu_755_p15;
wire  signed [3:0] tmp_s_fu_755_p17;
wire  signed [3:0] tmp_s_fu_755_p19;
wire  signed [3:0] tmp_s_fu_755_p21;
wire  signed [3:0] tmp_s_fu_755_p23;
wire  signed [3:0] tmp_s_fu_755_p25;
wire  signed [3:0] tmp_s_fu_755_p27;
wire  signed [3:0] tmp_s_fu_755_p29;
wire  signed [3:0] tmp_s_fu_755_p31;
wire  signed [3:0] tmp_4_fu_826_p1;
wire   [3:0] tmp_4_fu_826_p3;
wire   [3:0] tmp_4_fu_826_p5;
wire   [3:0] tmp_4_fu_826_p7;
wire   [3:0] tmp_4_fu_826_p9;
wire   [3:0] tmp_4_fu_826_p11;
wire   [3:0] tmp_4_fu_826_p13;
wire   [3:0] tmp_4_fu_826_p15;
wire   [3:0] tmp_4_fu_826_p17;
wire  signed [3:0] tmp_4_fu_826_p19;
wire  signed [3:0] tmp_4_fu_826_p21;
wire  signed [3:0] tmp_4_fu_826_p23;
wire  signed [3:0] tmp_4_fu_826_p25;
wire  signed [3:0] tmp_4_fu_826_p27;
wire  signed [3:0] tmp_4_fu_826_p29;
wire  signed [3:0] tmp_4_fu_826_p31;
wire  signed [3:0] tmp_5_fu_914_p1;
wire  signed [3:0] tmp_5_fu_914_p3;
wire   [3:0] tmp_5_fu_914_p5;
wire   [3:0] tmp_5_fu_914_p7;
wire   [3:0] tmp_5_fu_914_p9;
wire   [3:0] tmp_5_fu_914_p11;
wire   [3:0] tmp_5_fu_914_p13;
wire   [3:0] tmp_5_fu_914_p15;
wire   [3:0] tmp_5_fu_914_p17;
wire   [3:0] tmp_5_fu_914_p19;
wire  signed [3:0] tmp_5_fu_914_p21;
wire  signed [3:0] tmp_5_fu_914_p23;
wire  signed [3:0] tmp_5_fu_914_p25;
wire  signed [3:0] tmp_5_fu_914_p27;
wire  signed [3:0] tmp_5_fu_914_p29;
wire  signed [3:0] tmp_5_fu_914_p31;
wire  signed [3:0] tmp_6_fu_1007_p1;
wire  signed [3:0] tmp_6_fu_1007_p3;
wire  signed [3:0] tmp_6_fu_1007_p5;
wire   [3:0] tmp_6_fu_1007_p7;
wire   [3:0] tmp_6_fu_1007_p9;
wire   [3:0] tmp_6_fu_1007_p11;
wire   [3:0] tmp_6_fu_1007_p13;
wire   [3:0] tmp_6_fu_1007_p15;
wire   [3:0] tmp_6_fu_1007_p17;
wire   [3:0] tmp_6_fu_1007_p19;
wire   [3:0] tmp_6_fu_1007_p21;
wire  signed [3:0] tmp_6_fu_1007_p23;
wire  signed [3:0] tmp_6_fu_1007_p25;
wire  signed [3:0] tmp_6_fu_1007_p27;
wire  signed [3:0] tmp_6_fu_1007_p29;
wire  signed [3:0] tmp_6_fu_1007_p31;
wire  signed [3:0] tmp_7_fu_1083_p1;
wire  signed [3:0] tmp_7_fu_1083_p3;
wire  signed [3:0] tmp_7_fu_1083_p5;
wire  signed [3:0] tmp_7_fu_1083_p7;
wire   [3:0] tmp_7_fu_1083_p9;
wire   [3:0] tmp_7_fu_1083_p11;
wire   [3:0] tmp_7_fu_1083_p13;
wire   [3:0] tmp_7_fu_1083_p15;
wire   [3:0] tmp_7_fu_1083_p17;
wire   [3:0] tmp_7_fu_1083_p19;
wire   [3:0] tmp_7_fu_1083_p21;
wire   [3:0] tmp_7_fu_1083_p23;
wire  signed [3:0] tmp_7_fu_1083_p25;
wire  signed [3:0] tmp_7_fu_1083_p27;
wire  signed [3:0] tmp_7_fu_1083_p29;
wire  signed [3:0] tmp_7_fu_1083_p31;
wire  signed [3:0] tmp_8_fu_1154_p1;
wire  signed [3:0] tmp_8_fu_1154_p3;
wire  signed [3:0] tmp_8_fu_1154_p5;
wire  signed [3:0] tmp_8_fu_1154_p7;
wire  signed [3:0] tmp_8_fu_1154_p9;
wire   [3:0] tmp_8_fu_1154_p11;
wire   [3:0] tmp_8_fu_1154_p13;
wire   [3:0] tmp_8_fu_1154_p15;
wire   [3:0] tmp_8_fu_1154_p17;
wire   [3:0] tmp_8_fu_1154_p19;
wire   [3:0] tmp_8_fu_1154_p21;
wire   [3:0] tmp_8_fu_1154_p23;
wire   [3:0] tmp_8_fu_1154_p25;
wire  signed [3:0] tmp_8_fu_1154_p27;
wire  signed [3:0] tmp_8_fu_1154_p29;
wire  signed [3:0] tmp_8_fu_1154_p31;
wire  signed [3:0] tmp_9_fu_1225_p1;
wire  signed [3:0] tmp_9_fu_1225_p3;
wire  signed [3:0] tmp_9_fu_1225_p5;
wire  signed [3:0] tmp_9_fu_1225_p7;
wire  signed [3:0] tmp_9_fu_1225_p9;
wire  signed [3:0] tmp_9_fu_1225_p11;
wire   [3:0] tmp_9_fu_1225_p13;
wire   [3:0] tmp_9_fu_1225_p15;
wire   [3:0] tmp_9_fu_1225_p17;
wire   [3:0] tmp_9_fu_1225_p19;
wire   [3:0] tmp_9_fu_1225_p21;
wire   [3:0] tmp_9_fu_1225_p23;
wire   [3:0] tmp_9_fu_1225_p25;
wire   [3:0] tmp_9_fu_1225_p27;
wire  signed [3:0] tmp_9_fu_1225_p29;
wire  signed [3:0] tmp_9_fu_1225_p31;
wire  signed [3:0] tmp_10_fu_1383_p1;
wire  signed [3:0] tmp_10_fu_1383_p3;
wire  signed [3:0] tmp_10_fu_1383_p5;
wire  signed [3:0] tmp_10_fu_1383_p7;
wire  signed [3:0] tmp_10_fu_1383_p9;
wire  signed [3:0] tmp_10_fu_1383_p11;
wire  signed [3:0] tmp_10_fu_1383_p13;
wire   [3:0] tmp_10_fu_1383_p15;
wire   [3:0] tmp_10_fu_1383_p17;
wire   [3:0] tmp_10_fu_1383_p19;
wire   [3:0] tmp_10_fu_1383_p21;
wire   [3:0] tmp_10_fu_1383_p23;
wire   [3:0] tmp_10_fu_1383_p25;
wire   [3:0] tmp_10_fu_1383_p27;
wire   [3:0] tmp_10_fu_1383_p29;
wire  signed [3:0] tmp_10_fu_1383_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_158 = 64'd0;
#0 min_s_fu_162 = 8'd0;
#0 min_s_1_fu_166 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U86(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_s_fu_755_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_s_fu_755_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U87(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_4_fu_826_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_4_fu_826_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U88(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_5_fu_914_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_5_fu_914_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U89(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_6_fu_1007_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_6_fu_1007_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U90(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_7_fu_1083_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_7_fu_1083_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U91(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_8_fu_1154_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_8_fu_1154_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U92(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_9_fu_1225_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_9_fu_1225_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U93(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_10_fu_1383_p33),.sel(trunc_ln16_reg_2409),.dout(tmp_10_fu_1383_p35));
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
        min_p_fu_158 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2524_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_158 <= min_p_17_fu_2335_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_166 <= 6'd1;
    end else if (((tmp_reg_2524 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_166 <= add_ln53_7_fu_1869_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_162 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2524_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_162 <= min_s_11_fu_2345_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_618 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_618 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2512 <= add_ln53_1_fu_735_p2;
        add_ln53_1_reg_2512_pp0_iter1_reg <= add_ln53_1_reg_2512;
        add_ln53_6_reg_2518 <= add_ln53_6_fu_741_p2;
        add_ln53_reg_2506 <= add_ln53_fu_729_p2;
        and_ln55_7_reg_2836 <= and_ln55_7_fu_1925_p2;
        s_reg_2399 <= ap_sig_allocacmp_s;
        tmp_reg_2524 <= add_ln53_6_fu_741_p2[32'd6];
        tmp_reg_2524_pp0_iter1_reg <= tmp_reg_2524;
        trunc_ln16_reg_2409 <= trunc_ln16_fu_668_p1;
        zext_ln52_cast_reg_2388[7 : 0] <= zext_ln52_cast_fu_642_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_2553 <= add_ln53_2_fu_1002_p2;
        add_ln53_3_reg_2564 <= add_ln53_3_fu_1078_p2;
        add_ln53_3_reg_2564_pp0_iter1_reg <= add_ln53_3_reg_2564;
        min_p_9_reg_2842 <= min_p_9_fu_1940_p3;
        min_s_7_reg_2849 <= min_s_7_fu_1950_p3;
        tmp_4_reg_2533 <= tmp_4_fu_826_p35;
        tmp_5_reg_2543 <= tmp_5_fu_914_p35;
        tmp_6_reg_2559 <= tmp_6_fu_1007_p35;
        tmp_7_reg_2570 <= tmp_7_fu_1083_p35;
        tmp_8_reg_2575 <= tmp_8_fu_1154_p35;
        tmp_9_reg_2580 <= tmp_9_fu_1225_p35;
        tmp_s_reg_2528 <= tmp_s_fu_755_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_2680 <= add_ln53_4_fu_1373_p2;
        add_ln53_4_reg_2680_pp0_iter1_reg <= add_ln53_4_reg_2680;
        add_ln53_5_reg_2686 <= add_ln53_5_fu_1378_p2;
        add_ln53_5_reg_2686_pp0_iter1_reg <= add_ln53_5_reg_2686;
        and_ln55_9_reg_2854 <= and_ln55_9_fu_2033_p2;
        tmp_10_reg_2692 <= tmp_10_fu_1383_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2867 <= and_ln55_11_fu_2122_p2;
        trunc_ln54_reg_2727 <= trunc_ln54_fu_1498_p1;
        trunc_ln54_reg_2727_pp0_iter1_reg <= trunc_ln54_reg_2727;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2880 <= and_ln55_13_fu_2211_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2769 <= and_ln55_1_fu_1623_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2782 <= and_ln55_3_fu_1713_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2807 <= and_ln55_5_fu_1826_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2826 <= icmp_ln55_14_fu_1857_p2;
        icmp_ln55_15_reg_2831 <= icmp_ln55_15_fu_1863_p2;
        min_p_7_reg_2820 <= min_p_7_fu_1832_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_2860 <= min_p_11_fu_2039_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_2873 <= min_p_13_fu_2128_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_2891 <= min_p_15_fu_2247_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_2762 <= min_p_fu_158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_2775 <= min_p_3_fu_1629_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_2795 <= min_p_5_fu_1732_p3;
        min_s_5_reg_2802 <= min_s_5_fu_1742_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2886 <= min_s_10_fu_2239_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_2788 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_2813 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_623 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_627 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_632 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_637 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_32_reg_2898 <= grp_fu_1046_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_4_reg_2702 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_6_reg_2722 <= transition_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_2524 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_2524_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_166;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_610_p0 = tmp_10_reg_2692;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_610_p0 = tmp_9_reg_2580;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_610_p0 = tmp_8_reg_2575;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_610_p0 = tmp_7_reg_2570;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_610_p0 = tmp_6_reg_2559;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_610_p0 = tmp_5_reg_2543;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_610_p0 = tmp_4_reg_2533;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_610_p0 = tmp_s_reg_2528;
        end else begin
            grp_fu_610_p0 = 'bx;
        end
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_610_p1 = bitcast_ln54_7_fu_1537_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_610_p1 = bitcast_ln54_6_fu_1533_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_610_p1 = bitcast_ln54_5_fu_1528_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_610_p1 = bitcast_ln54_4_fu_1524_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_610_p1 = bitcast_ln54_3_fu_1519_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_610_p1 = bitcast_ln54_2_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_610_p1 = bitcast_ln54_1_fu_1454_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_610_p1 = bitcast_ln54_fu_1334_p1;
        end else begin
            grp_fu_610_p1 = 'bx;
        end
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_614_p0 = p_6_reg_2813;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_614_p0 = p_4_reg_2788;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_614_p0 = reg_637;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_614_p0 = reg_632;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_614_p0 = reg_627;
    end else begin
        grp_fu_614_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_614_p1 = min_p_15_fu_2247_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_614_p1 = min_p_13_fu_2128_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p1 = min_p_11_fu_2039_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_614_p1 = min_p_9_fu_1940_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_614_p1 = min_p_7_fu_1832_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_614_p1 = min_p_5_fu_1732_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_614_p1 = min_p_3_fu_1629_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_614_p1 = min_p_fu_158;
    end else begin
        grp_fu_614_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_11_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_12_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_13_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_14_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_15_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_1_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_2_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_3_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_4_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_5_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_6_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_7_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_8_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_9_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_8_fu_690_p1;
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
            llike_address0_local = zext_ln54_10_fu_1314_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_8_fu_690_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_reg_2524_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_1471_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_1351_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_997_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_724_p1;
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
            transition_address1_local = zext_ln54_7_fu_1514_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_1488_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_1368_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_909_p1;
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
assign add_ln53_1_fu_735_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1002_p2 = (s_reg_2399 + 6'd3);
assign add_ln53_3_fu_1078_p2 = (s_reg_2399 + 6'd4);
assign add_ln53_4_fu_1373_p2 = (s_reg_2399 + 6'd5);
assign add_ln53_5_fu_1378_p2 = (s_reg_2399 + 6'd6);
assign add_ln53_6_fu_741_p2 = (zext_ln16_fu_664_p1 + 7'd7);
assign add_ln53_7_fu_1869_p2 = (s_reg_2399 + 6'd8);
assign add_ln53_fu_729_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_904_p2 = (shl_ln54_1_fu_897_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_2_fu_992_p2 = (shl_ln54_2_fu_985_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_3_fu_1346_p2 = (shl_ln54_3_fu_1339_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_4_fu_1363_p2 = (shl_ln54_4_fu_1356_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_5_fu_1466_p2 = (shl_ln54_5_fu_1459_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_6_fu_1483_p2 = (shl_ln54_6_fu_1476_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_7_fu_1509_p2 = (shl_ln54_7_fu_1501_p3 + zext_ln52_cast_reg_2388);
assign add_ln54_8_fu_1309_p2 = (zext_ln52_2 + zext_ln54_9_fu_1305_p1);
assign add_ln54_fu_718_p2 = (shl_ln3_fu_710_p3 + zext_ln52_cast_fu_642_p1);
assign and_ln55_10_fu_2116_p2 = (or_ln55_11_fu_2110_p2 & or_ln55_10_fu_2092_p2);
assign and_ln55_11_fu_2122_p2 = (grp_fu_1046_p_dout0 & and_ln55_10_fu_2116_p2);
assign and_ln55_12_fu_2205_p2 = (or_ln55_13_fu_2199_p2 & or_ln55_12_fu_2181_p2);
assign and_ln55_13_fu_2211_p2 = (grp_fu_1046_p_dout0 & and_ln55_12_fu_2205_p2);
assign and_ln55_14_fu_2324_p2 = (or_ln55_15_fu_2318_p2 & or_ln55_14_fu_2300_p2);
assign and_ln55_15_fu_2330_p2 = (tmp_32_reg_2898 & and_ln55_14_fu_2324_p2);
assign and_ln55_1_fu_1623_p2 = (or_ln55_1_fu_1611_p2 & and_ln55_fu_1617_p2);
assign and_ln55_2_fu_1707_p2 = (or_ln55_3_fu_1701_p2 & or_ln55_2_fu_1683_p2);
assign and_ln55_3_fu_1713_p2 = (grp_fu_1046_p_dout0 & and_ln55_2_fu_1707_p2);
assign and_ln55_4_fu_1820_p2 = (or_ln55_5_fu_1814_p2 & or_ln55_4_fu_1796_p2);
assign and_ln55_5_fu_1826_p2 = (grp_fu_1046_p_dout0 & and_ln55_4_fu_1820_p2);
assign and_ln55_6_fu_1919_p2 = (or_ln55_7_fu_1915_p2 & or_ln55_6_fu_1909_p2);
assign and_ln55_7_fu_1925_p2 = (grp_fu_1046_p_dout0 & and_ln55_6_fu_1919_p2);
assign and_ln55_8_fu_2027_p2 = (or_ln55_9_fu_2021_p2 & or_ln55_8_fu_2003_p2);
assign and_ln55_9_fu_2033_p2 = (grp_fu_1046_p_dout0 & and_ln55_8_fu_2027_p2);
assign and_ln55_fu_1617_p2 = (or_ln55_fu_1593_p2 & grp_fu_1046_p_dout0);
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
assign bitcast_ln54_1_fu_1454_p1 = reg_618;
assign bitcast_ln54_2_fu_1493_p1 = reg_623;
assign bitcast_ln54_3_fu_1519_p1 = reg_618;
assign bitcast_ln54_4_fu_1524_p1 = transition_load_4_reg_2702;
assign bitcast_ln54_5_fu_1528_p1 = reg_623;
assign bitcast_ln54_6_fu_1533_p1 = transition_load_6_reg_2722;
assign bitcast_ln54_7_fu_1537_p1 = reg_618;
assign bitcast_ln54_fu_1334_p1 = reg_618;
assign bitcast_ln55_10_fu_2045_p1 = reg_632;
assign bitcast_ln55_11_fu_2063_p1 = min_p_11_reg_2860;
assign bitcast_ln55_12_fu_2135_p1 = p_6_reg_2813;
assign bitcast_ln55_13_fu_2152_p1 = min_p_13_reg_2873;
assign bitcast_ln55_14_fu_2253_p1 = reg_637;
assign bitcast_ln55_15_fu_2271_p1 = min_p_15_reg_2891;
assign bitcast_ln55_1_fu_1564_p1 = min_p_1_reg_2762;
assign bitcast_ln55_2_fu_1636_p1 = reg_632;
assign bitcast_ln55_3_fu_1654_p1 = min_p_3_reg_2775;
assign bitcast_ln55_4_fu_1749_p1 = reg_637;
assign bitcast_ln55_5_fu_1767_p1 = min_p_5_reg_2795;
assign bitcast_ln55_6_fu_1879_p1 = reg_627;
assign bitcast_ln55_7_fu_1839_p1 = min_p_7_fu_1832_p3;
assign bitcast_ln55_8_fu_1957_p1 = p_4_reg_2788;
assign bitcast_ln55_9_fu_1974_p1 = min_p_9_reg_2842;
assign bitcast_ln55_fu_1546_p1 = reg_627;
assign grp_fu_1046_p_ce = 1'b1;
assign grp_fu_1046_p_din0 = grp_fu_614_p0;
assign grp_fu_1046_p_din1 = grp_fu_614_p1;
assign grp_fu_1046_p_opcode = 5'd4;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_610_p0;
assign grp_fu_612_p_din1 = grp_fu_610_p1;
assign grp_fu_612_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1802_p2 = ((tmp_16_fu_1770_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1808_p2 = ((trunc_ln55_5_fu_1780_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1897_p2 = ((tmp_18_fu_1883_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1903_p2 = ((trunc_ln55_6_fu_1893_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1857_p2 = ((tmp_19_fu_1843_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1863_p2 = ((trunc_ln55_7_fu_1853_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1991_p2 = ((tmp_21_fu_1960_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1997_p2 = ((trunc_ln55_8_fu_1970_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2009_p2 = ((tmp_22_fu_1977_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2015_p2 = ((trunc_ln55_9_fu_1987_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1587_p2 = ((trunc_ln55_fu_1560_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2080_p2 = ((tmp_24_fu_2049_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2086_p2 = ((trunc_ln55_10_fu_2059_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2098_p2 = ((tmp_25_fu_2066_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2104_p2 = ((trunc_ln55_11_fu_2076_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2169_p2 = ((tmp_27_fu_2138_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2175_p2 = ((trunc_ln55_12_fu_2148_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2187_p2 = ((tmp_28_fu_2155_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2193_p2 = ((trunc_ln55_13_fu_2165_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2288_p2 = ((tmp_30_fu_2257_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2294_p2 = ((trunc_ln55_14_fu_2267_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1599_p2 = ((tmp_3_fu_1567_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2306_p2 = ((tmp_31_fu_2274_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2312_p2 = ((trunc_ln55_15_fu_2284_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1605_p2 = ((trunc_ln55_1_fu_1577_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1671_p2 = ((tmp_12_fu_1640_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1677_p2 = ((trunc_ln55_2_fu_1650_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1689_p2 = ((tmp_13_fu_1657_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1695_p2 = ((trunc_ln55_3_fu_1667_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1784_p2 = ((tmp_15_fu_1753_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1790_p2 = ((trunc_ln55_4_fu_1763_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1581_p2 = ((tmp_2_fu_1550_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_672_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_2_fu_1296_p4 = {{add_ln53_6_reg_2518[6:4]}};
assign min_p_11_fu_2039_p3 = ((and_ln55_9_reg_2854[0:0] == 1'b1) ? p_4_reg_2788 : min_p_9_reg_2842);
assign min_p_13_fu_2128_p3 = ((and_ln55_11_reg_2867[0:0] == 1'b1) ? reg_632 : min_p_11_reg_2860);
assign min_p_15_fu_2247_p3 = ((and_ln55_13_reg_2880[0:0] == 1'b1) ? p_6_reg_2813 : min_p_13_reg_2873);
assign min_p_17_fu_2335_p3 = ((and_ln55_15_fu_2330_p2[0:0] == 1'b1) ? reg_637 : min_p_15_reg_2891);
assign min_p_3_fu_1629_p3 = ((and_ln55_1_reg_2769[0:0] == 1'b1) ? reg_627 : min_p_1_reg_2762);
assign min_p_5_fu_1732_p3 = ((and_ln55_3_reg_2782[0:0] == 1'b1) ? reg_632 : min_p_3_reg_2775);
assign min_p_7_fu_1832_p3 = ((and_ln55_5_reg_2807[0:0] == 1'b1) ? reg_637 : min_p_5_reg_2795);
assign min_p_9_fu_1940_p3 = ((and_ln55_7_reg_2836[0:0] == 1'b1) ? reg_627 : min_p_7_reg_2820);
assign min_s_10_fu_2239_p3 = ((and_ln55_13_reg_2880[0:0] == 1'b1) ? zext_ln55_6_fu_2236_p1 : min_s_9_fu_2229_p3);
assign min_s_11_fu_2345_p3 = ((and_ln55_15_fu_2330_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2342_p1 : min_s_10_reg_2886);
assign min_s_18_out = ((and_ln55_13_reg_2880[0:0] == 1'b1) ? zext_ln55_6_fu_2236_p1 : min_s_9_fu_2229_p3);
assign min_s_4_fu_1725_p3 = ((and_ln55_1_reg_2769[0:0] == 1'b1) ? zext_ln55_fu_1722_p1 : min_s_fu_162);
assign min_s_5_fu_1742_p3 = ((and_ln55_3_reg_2782[0:0] == 1'b1) ? zext_ln55_1_fu_1739_p1 : min_s_4_fu_1725_p3);
assign min_s_6_fu_1934_p3 = ((and_ln55_5_reg_2807[0:0] == 1'b1) ? zext_ln55_2_fu_1931_p1 : min_s_5_reg_2802);
assign min_s_7_fu_1950_p3 = ((and_ln55_7_reg_2836[0:0] == 1'b1) ? zext_ln55_3_fu_1947_p1 : min_s_6_fu_1934_p3);
assign min_s_8_fu_2220_p3 = ((and_ln55_9_reg_2854[0:0] == 1'b1) ? zext_ln55_4_fu_2217_p1 : min_s_7_reg_2849);
assign min_s_9_fu_2229_p3 = ((and_ln55_11_reg_2867[0:0] == 1'b1) ? zext_ln55_5_fu_2226_p1 : min_s_8_fu_2220_p3);
assign or_ln55_10_fu_2092_p2 = (icmp_ln55_21_fu_2086_p2 | icmp_ln55_20_fu_2080_p2);
assign or_ln55_11_fu_2110_p2 = (icmp_ln55_23_fu_2104_p2 | icmp_ln55_22_fu_2098_p2);
assign or_ln55_12_fu_2181_p2 = (icmp_ln55_25_fu_2175_p2 | icmp_ln55_24_fu_2169_p2);
assign or_ln55_13_fu_2199_p2 = (icmp_ln55_27_fu_2193_p2 | icmp_ln55_26_fu_2187_p2);
assign or_ln55_14_fu_2300_p2 = (icmp_ln55_29_fu_2294_p2 | icmp_ln55_28_fu_2288_p2);
assign or_ln55_15_fu_2318_p2 = (icmp_ln55_31_fu_2312_p2 | icmp_ln55_30_fu_2306_p2);
assign or_ln55_1_fu_1611_p2 = (icmp_ln55_3_fu_1605_p2 | icmp_ln55_2_fu_1599_p2);
assign or_ln55_2_fu_1683_p2 = (icmp_ln55_5_fu_1677_p2 | icmp_ln55_4_fu_1671_p2);
assign or_ln55_3_fu_1701_p2 = (icmp_ln55_7_fu_1695_p2 | icmp_ln55_6_fu_1689_p2);
assign or_ln55_4_fu_1796_p2 = (icmp_ln55_9_fu_1790_p2 | icmp_ln55_8_fu_1784_p2);
assign or_ln55_5_fu_1814_p2 = (icmp_ln55_11_fu_1808_p2 | icmp_ln55_10_fu_1802_p2);
assign or_ln55_6_fu_1909_p2 = (icmp_ln55_13_fu_1903_p2 | icmp_ln55_12_fu_1897_p2);
assign or_ln55_7_fu_1915_p2 = (icmp_ln55_15_reg_2831 | icmp_ln55_14_reg_2826);
assign or_ln55_8_fu_2003_p2 = (icmp_ln55_17_fu_1997_p2 | icmp_ln55_16_fu_1991_p2);
assign or_ln55_9_fu_2021_p2 = (icmp_ln55_19_fu_2015_p2 | icmp_ln55_18_fu_2009_p2);
assign or_ln55_fu_1593_p2 = (icmp_ln55_fu_1581_p2 | icmp_ln55_1_fu_1587_p2);
assign shl_ln3_fu_710_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_897_p3 = {{add_ln53_reg_2506}, {6'd0}};
assign shl_ln54_2_fu_985_p3 = {{add_ln53_1_reg_2512}, {6'd0}};
assign shl_ln54_3_fu_1339_p3 = {{add_ln53_2_reg_2553}, {6'd0}};
assign shl_ln54_4_fu_1356_p3 = {{add_ln53_3_reg_2564}, {6'd0}};
assign shl_ln54_5_fu_1459_p3 = {{add_ln53_4_reg_2680}, {6'd0}};
assign shl_ln54_6_fu_1476_p3 = {{add_ln53_5_reg_2686}, {6'd0}};
assign shl_ln54_7_fu_1501_p3 = {{trunc_ln54_fu_1498_p1}, {6'd0}};
assign tmp_10_fu_1383_p33 = 'bx;
assign tmp_12_fu_1640_p4 = {{bitcast_ln55_2_fu_1636_p1[62:52]}};
assign tmp_13_fu_1657_p4 = {{bitcast_ln55_3_fu_1654_p1[62:52]}};
assign tmp_15_fu_1753_p4 = {{bitcast_ln55_4_fu_1749_p1[62:52]}};
assign tmp_16_fu_1770_p4 = {{bitcast_ln55_5_fu_1767_p1[62:52]}};
assign tmp_18_fu_1883_p4 = {{bitcast_ln55_6_fu_1879_p1[62:52]}};
assign tmp_19_fu_1843_p4 = {{bitcast_ln55_7_fu_1839_p1[62:52]}};
assign tmp_1_fu_682_p3 = {{t_1}, {lshr_ln8_2_fu_672_p4}};
assign tmp_21_fu_1960_p4 = {{bitcast_ln55_8_fu_1957_p1[62:52]}};
assign tmp_22_fu_1977_p4 = {{bitcast_ln55_9_fu_1974_p1[62:52]}};
assign tmp_24_fu_2049_p4 = {{bitcast_ln55_10_fu_2045_p1[62:52]}};
assign tmp_25_fu_2066_p4 = {{bitcast_ln55_11_fu_2063_p1[62:52]}};
assign tmp_27_fu_2138_p4 = {{bitcast_ln55_12_fu_2135_p1[62:52]}};
assign tmp_28_fu_2155_p4 = {{bitcast_ln55_13_fu_2152_p1[62:52]}};
assign tmp_2_fu_1550_p4 = {{bitcast_ln55_fu_1546_p1[62:52]}};
assign tmp_30_fu_2257_p4 = {{bitcast_ln55_14_fu_2253_p1[62:52]}};
assign tmp_31_fu_2274_p4 = {{bitcast_ln55_15_fu_2271_p1[62:52]}};
assign tmp_3_fu_1567_p4 = {{bitcast_ln55_1_fu_1564_p1[62:52]}};
assign tmp_4_fu_826_p33 = 'bx;
assign tmp_5_fu_914_p33 = 'bx;
assign tmp_6_fu_1007_p33 = 'bx;
assign tmp_7_fu_1083_p33 = 'bx;
assign tmp_8_fu_1154_p33 = 'bx;
assign tmp_9_fu_1225_p33 = 'bx;
assign tmp_s_fu_755_p33 = 'bx;
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln16_fu_668_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_1498_p1 = add_ln53_6_reg_2518[5:0];
assign trunc_ln55_10_fu_2059_p1 = bitcast_ln55_10_fu_2045_p1[51:0];
assign trunc_ln55_11_fu_2076_p1 = bitcast_ln55_11_fu_2063_p1[51:0];
assign trunc_ln55_12_fu_2148_p1 = bitcast_ln55_12_fu_2135_p1[51:0];
assign trunc_ln55_13_fu_2165_p1 = bitcast_ln55_13_fu_2152_p1[51:0];
assign trunc_ln55_14_fu_2267_p1 = bitcast_ln55_14_fu_2253_p1[51:0];
assign trunc_ln55_15_fu_2284_p1 = bitcast_ln55_15_fu_2271_p1[51:0];
assign trunc_ln55_1_fu_1577_p1 = bitcast_ln55_1_fu_1564_p1[51:0];
assign trunc_ln55_2_fu_1650_p1 = bitcast_ln55_2_fu_1636_p1[51:0];
assign trunc_ln55_3_fu_1667_p1 = bitcast_ln55_3_fu_1654_p1[51:0];
assign trunc_ln55_4_fu_1763_p1 = bitcast_ln55_4_fu_1749_p1[51:0];
assign trunc_ln55_5_fu_1780_p1 = bitcast_ln55_5_fu_1767_p1[51:0];
assign trunc_ln55_6_fu_1893_p1 = bitcast_ln55_6_fu_1879_p1[51:0];
assign trunc_ln55_7_fu_1853_p1 = bitcast_ln55_7_fu_1839_p1[51:0];
assign trunc_ln55_8_fu_1970_p1 = bitcast_ln55_8_fu_1957_p1[51:0];
assign trunc_ln55_9_fu_1987_p1 = bitcast_ln55_9_fu_1974_p1[51:0];
assign trunc_ln55_fu_1560_p1 = bitcast_ln55_fu_1546_p1[51:0];
assign zext_ln16_fu_664_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_642_p1 = zext_ln52;
assign zext_ln54_10_fu_1314_p1 = add_ln54_8_fu_1309_p2;
assign zext_ln54_1_fu_909_p1 = add_ln54_1_fu_904_p2;
assign zext_ln54_2_fu_997_p1 = add_ln54_2_fu_992_p2;
assign zext_ln54_3_fu_1351_p1 = add_ln54_3_fu_1346_p2;
assign zext_ln54_4_fu_1368_p1 = add_ln54_4_fu_1363_p2;
assign zext_ln54_5_fu_1471_p1 = add_ln54_5_fu_1466_p2;
assign zext_ln54_6_fu_1488_p1 = add_ln54_6_fu_1483_p2;
assign zext_ln54_7_fu_1514_p1 = add_ln54_7_fu_1509_p2;
assign zext_ln54_8_fu_690_p1 = tmp_1_fu_682_p3;
assign zext_ln54_9_fu_1305_p1 = lshr_ln9_2_fu_1296_p4;
assign zext_ln54_fu_724_p1 = add_ln54_fu_718_p2;
assign zext_ln55_1_fu_1739_p1 = add_ln53_reg_2506;
assign zext_ln55_2_fu_1931_p1 = add_ln53_1_reg_2512_pp0_iter1_reg;
assign zext_ln55_3_fu_1947_p1 = add_ln53_2_reg_2553;
assign zext_ln55_4_fu_2217_p1 = add_ln53_3_reg_2564_pp0_iter1_reg;
assign zext_ln55_5_fu_2226_p1 = add_ln53_4_reg_2680_pp0_iter1_reg;
assign zext_ln55_6_fu_2236_p1 = add_ln53_5_reg_2686_pp0_iter1_reg;
assign zext_ln55_7_fu_2342_p1 = trunc_ln54_reg_2727_pp0_iter1_reg;
assign zext_ln55_fu_1722_p1 = s_reg_2399;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_2388[11:8] <= 4'b0000;
end
endmodule 