module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_20,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_715_p_din0,grp_fu_715_p_din1,grp_fu_715_p_opcode,grp_fu_715_p_dout0,grp_fu_715_p_ce,grp_fu_1334_p_din0,grp_fu_1334_p_din1,grp_fu_1334_p_opcode,grp_fu_1334_p_dout0,grp_fu_1334_p_ce); 
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
input  [9:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_715_p_din0;
output  [63:0] grp_fu_715_p_din1;
output  [1:0] grp_fu_715_p_opcode;
input  [63:0] grp_fu_715_p_dout0;
output   grp_fu_715_p_ce;
output  [63:0] grp_fu_1334_p_din0;
output  [63:0] grp_fu_1334_p_din1;
output  [4:0] grp_fu_1334_p_opcode;
input  [0:0] grp_fu_1334_p_dout0;
output   grp_fu_1334_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_30_reg_2642;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_705_p3;
reg   [63:0] reg_719;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_712_p3;
reg   [63:0] reg_723;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_727;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_732;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_737;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_742_p1;
reg   [10:0] zext_ln52_2_cast_reg_2501;
reg   [5:0] s_reg_2512;
wire   [3:0] trunc_ln21_fu_768_p1;
reg   [3:0] trunc_ln21_reg_2522;
wire   [5:0] add_ln53_fu_830_p2;
reg   [5:0] add_ln53_reg_2624;
wire   [5:0] add_ln53_1_fu_836_p2;
reg   [5:0] add_ln53_1_reg_2630;
reg   [5:0] add_ln53_1_reg_2630_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_842_p2;
reg   [6:0] add_ln53_6_reg_2636;
reg   [0:0] tmp_30_reg_2642_pp0_iter1_reg;
wire   [63:0] tmp_s_fu_856_p35;
reg   [63:0] tmp_s_reg_2646;
wire   [63:0] tmp_1_fu_927_p35;
reg   [63:0] tmp_1_reg_2651;
wire   [63:0] tmp_3_fu_1016_p35;
reg   [63:0] tmp_3_reg_2666;
wire   [5:0] add_ln53_2_fu_1105_p2;
reg   [5:0] add_ln53_2_reg_2681;
wire   [63:0] tmp_5_fu_1110_p35;
reg   [63:0] tmp_5_reg_2687;
wire   [5:0] add_ln53_3_fu_1181_p2;
reg   [5:0] add_ln53_3_reg_2692;
reg   [5:0] add_ln53_3_reg_2692_pp0_iter1_reg;
wire   [63:0] tmp_6_fu_1186_p35;
reg   [63:0] tmp_6_reg_2698;
wire   [63:0] tmp_7_fu_1257_p35;
reg   [63:0] tmp_7_reg_2703;
wire   [63:0] tmp_9_fu_1328_p35;
reg   [63:0] tmp_9_reg_2708;
wire   [63:0] bitcast_ln54_fu_1437_p1;
wire   [5:0] add_ln53_4_fu_1478_p2;
reg   [5:0] add_ln53_4_reg_2818;
reg   [5:0] add_ln53_4_reg_2818_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_1483_p2;
reg   [5:0] add_ln53_5_reg_2824;
reg   [5:0] add_ln53_5_reg_2824_pp0_iter1_reg;
wire   [63:0] tmp_10_fu_1488_p35;
reg   [63:0] tmp_10_reg_2830;
wire   [63:0] bitcast_ln54_1_fu_1559_p1;
reg   [63:0] select_ln54_3_reg_2840;
wire   [63:0] bitcast_ln54_2_fu_1600_p1;
reg   [63:0] select_ln54_6_reg_2870;
wire   [5:0] trunc_ln54_fu_1605_p1;
reg   [5:0] trunc_ln54_reg_2875;
reg   [5:0] trunc_ln54_reg_2875_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_1627_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] select_ln54_7_reg_2895;
wire   [63:0] bitcast_ln54_4_fu_1631_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_1636_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_1641_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_1645_p1;
reg   [63:0] min_p_1_reg_2920;
wire   [0:0] and_ln55_1_fu_1730_p2;
reg   [0:0] and_ln55_1_reg_2927;
wire   [63:0] min_p_3_fu_1736_p3;
reg   [63:0] min_p_3_reg_2933;
wire   [0:0] and_ln55_3_fu_1820_p2;
reg   [0:0] and_ln55_3_reg_2940;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_4_reg_2946;
wire   [63:0] min_p_5_fu_1839_p3;
reg   [63:0] min_p_5_reg_2953;
wire   [7:0] min_s_5_fu_1849_p3;
reg   [7:0] min_s_5_reg_2960;
wire   [0:0] and_ln55_5_fu_1933_p2;
reg   [0:0] and_ln55_5_reg_2965;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_6_reg_2971;
wire   [63:0] min_p_7_fu_1939_p3;
reg   [63:0] min_p_7_reg_2978;
wire   [0:0] icmp_ln55_14_fu_1964_p2;
reg   [0:0] icmp_ln55_14_reg_2984;
wire   [0:0] icmp_ln55_15_fu_1970_p2;
reg   [0:0] icmp_ln55_15_reg_2989;
wire   [0:0] and_ln55_7_fu_2032_p2;
reg   [0:0] and_ln55_7_reg_2994;
wire   [63:0] min_p_9_fu_2047_p3;
reg   [63:0] min_p_9_reg_3000;
wire   [7:0] min_s_7_fu_2057_p3;
reg   [7:0] min_s_7_reg_3007;
wire   [0:0] and_ln55_9_fu_2140_p2;
reg   [0:0] and_ln55_9_reg_3012;
wire   [63:0] min_p_11_fu_2146_p3;
reg   [63:0] min_p_11_reg_3018;
wire   [0:0] and_ln55_11_fu_2229_p2;
reg   [0:0] and_ln55_11_reg_3025;
wire   [63:0] min_p_13_fu_2235_p3;
reg   [63:0] min_p_13_reg_3031;
wire   [0:0] and_ln55_13_fu_2318_p2;
reg   [0:0] and_ln55_13_reg_3038;
wire   [7:0] min_s_10_fu_2346_p3;
reg   [7:0] min_s_10_reg_3044;
wire   [63:0] min_p_15_fu_2354_p3;
reg   [63:0] min_p_15_reg_3049;
reg   [0:0] tmp_33_reg_3056;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_790_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_824_p1;
wire   [63:0] zext_ln54_1_fu_1010_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1099_p1;
wire   [63:0] zext_ln54_10_fu_1417_p1;
wire   [63:0] zext_ln54_3_fu_1454_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_1472_p1;
wire   [63:0] zext_ln54_5_fu_1576_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_1594_p1;
wire   [63:0] zext_ln54_7_fu_1621_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_166;
wire   [63:0] min_p_17_fu_2442_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_170;
wire   [7:0] min_s_11_fu_2452_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_174;
wire   [5:0] add_ln53_7_fu_1976_p2;
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
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg   [63:0] grp_fu_697_p0;
reg   [63:0] grp_fu_697_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_701_p0;
reg   [63:0] grp_fu_701_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [1:0] lshr_ln8_2_fu_772_p4;
wire   [9:0] tmp_2_fu_782_p3;
wire   [10:0] shl_ln2_fu_810_p3;
wire   [10:0] add_ln54_fu_818_p2;
wire   [6:0] zext_ln21_fu_764_p1;
wire   [63:0] tmp_s_fu_856_p33;
wire   [63:0] tmp_1_fu_927_p33;
wire   [10:0] shl_ln54_1_fu_998_p3;
wire   [10:0] add_ln54_1_fu_1005_p2;
wire   [63:0] tmp_3_fu_1016_p33;
wire   [10:0] shl_ln54_2_fu_1087_p3;
wire   [10:0] add_ln54_2_fu_1094_p2;
wire   [63:0] tmp_5_fu_1110_p33;
wire   [63:0] tmp_6_fu_1186_p33;
wire   [63:0] tmp_7_fu_1257_p33;
wire   [63:0] tmp_9_fu_1328_p33;
wire   [2:0] lshr_ln9_3_fu_1399_p4;
wire   [9:0] zext_ln54_9_fu_1408_p1;
wire   [9:0] add_ln54_8_fu_1412_p2;
wire   [10:0] shl_ln54_3_fu_1442_p3;
wire   [10:0] add_ln54_3_fu_1449_p2;
wire   [10:0] shl_ln54_4_fu_1460_p3;
wire   [10:0] add_ln54_4_fu_1467_p2;
wire   [63:0] tmp_10_fu_1488_p33;
wire   [10:0] shl_ln54_5_fu_1564_p3;
wire   [10:0] add_ln54_5_fu_1571_p2;
wire   [10:0] shl_ln54_6_fu_1582_p3;
wire   [10:0] add_ln54_6_fu_1589_p2;
wire   [10:0] shl_ln54_7_fu_1608_p3;
wire   [10:0] add_ln54_7_fu_1616_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_1653_p1;
wire   [63:0] bitcast_ln55_1_fu_1671_p1;
wire   [10:0] tmp_4_fu_1657_p4;
wire   [51:0] trunc_ln55_fu_1667_p1;
wire   [0:0] icmp_ln55_1_fu_1694_p2;
wire   [0:0] icmp_ln55_fu_1688_p2;
wire   [10:0] tmp_8_fu_1674_p4;
wire   [51:0] trunc_ln55_1_fu_1684_p1;
wire   [0:0] icmp_ln55_3_fu_1712_p2;
wire   [0:0] icmp_ln55_2_fu_1706_p2;
wire   [0:0] or_ln55_fu_1700_p2;
wire   [0:0] and_ln55_fu_1724_p2;
wire   [0:0] or_ln55_1_fu_1718_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_1743_p1;
wire   [63:0] bitcast_ln55_3_fu_1761_p1;
wire   [10:0] tmp_12_fu_1747_p4;
wire   [51:0] trunc_ln55_2_fu_1757_p1;
wire   [0:0] icmp_ln55_5_fu_1784_p2;
wire   [0:0] icmp_ln55_4_fu_1778_p2;
wire   [10:0] tmp_13_fu_1764_p4;
wire   [51:0] trunc_ln55_3_fu_1774_p1;
wire   [0:0] icmp_ln55_7_fu_1802_p2;
wire   [0:0] icmp_ln55_6_fu_1796_p2;
wire   [0:0] or_ln55_3_fu_1808_p2;
wire   [0:0] or_ln55_2_fu_1790_p2;
wire   [0:0] and_ln55_2_fu_1814_p2;
wire   [7:0] zext_ln55_fu_1829_p1;
wire   [7:0] zext_ln55_1_fu_1846_p1;
wire   [7:0] min_s_4_fu_1832_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1856_p1;
wire   [63:0] bitcast_ln55_5_fu_1874_p1;
wire   [10:0] tmp_15_fu_1860_p4;
wire   [51:0] trunc_ln55_4_fu_1870_p1;
wire   [0:0] icmp_ln55_9_fu_1897_p2;
wire   [0:0] icmp_ln55_8_fu_1891_p2;
wire   [10:0] tmp_16_fu_1877_p4;
wire   [51:0] trunc_ln55_5_fu_1887_p1;
wire   [0:0] icmp_ln55_11_fu_1915_p2;
wire   [0:0] icmp_ln55_10_fu_1909_p2;
wire   [0:0] or_ln55_5_fu_1921_p2;
wire   [0:0] or_ln55_4_fu_1903_p2;
wire   [0:0] and_ln55_4_fu_1927_p2;
wire   [63:0] bitcast_ln55_7_fu_1946_p1;
wire   [10:0] tmp_19_fu_1950_p4;
wire   [51:0] trunc_ln55_7_fu_1960_p1;
wire   [63:0] bitcast_ln55_6_fu_1986_p1;
wire   [10:0] tmp_18_fu_1990_p4;
wire   [51:0] trunc_ln55_6_fu_2000_p1;
wire   [0:0] icmp_ln55_13_fu_2010_p2;
wire   [0:0] icmp_ln55_12_fu_2004_p2;
wire   [0:0] or_ln55_7_fu_2022_p2;
wire   [0:0] or_ln55_6_fu_2016_p2;
wire   [0:0] and_ln55_6_fu_2026_p2;
wire   [7:0] zext_ln55_2_fu_2038_p1;
wire   [7:0] zext_ln55_3_fu_2054_p1;
wire   [7:0] min_s_6_fu_2041_p3;
wire   [63:0] bitcast_ln55_8_fu_2064_p1;
wire   [63:0] bitcast_ln55_9_fu_2081_p1;
wire   [10:0] tmp_21_fu_2067_p4;
wire   [51:0] trunc_ln55_8_fu_2077_p1;
wire   [0:0] icmp_ln55_17_fu_2104_p2;
wire   [0:0] icmp_ln55_16_fu_2098_p2;
wire   [10:0] tmp_22_fu_2084_p4;
wire   [51:0] trunc_ln55_9_fu_2094_p1;
wire   [0:0] icmp_ln55_19_fu_2122_p2;
wire   [0:0] icmp_ln55_18_fu_2116_p2;
wire   [0:0] or_ln55_9_fu_2128_p2;
wire   [0:0] or_ln55_8_fu_2110_p2;
wire   [0:0] and_ln55_8_fu_2134_p2;
wire   [63:0] bitcast_ln55_10_fu_2152_p1;
wire   [63:0] bitcast_ln55_11_fu_2170_p1;
wire   [10:0] tmp_24_fu_2156_p4;
wire   [51:0] trunc_ln55_10_fu_2166_p1;
wire   [0:0] icmp_ln55_21_fu_2193_p2;
wire   [0:0] icmp_ln55_20_fu_2187_p2;
wire   [10:0] tmp_25_fu_2173_p4;
wire   [51:0] trunc_ln55_11_fu_2183_p1;
wire   [0:0] icmp_ln55_23_fu_2211_p2;
wire   [0:0] icmp_ln55_22_fu_2205_p2;
wire   [0:0] or_ln55_11_fu_2217_p2;
wire   [0:0] or_ln55_10_fu_2199_p2;
wire   [0:0] and_ln55_10_fu_2223_p2;
wire   [63:0] bitcast_ln55_12_fu_2242_p1;
wire   [63:0] bitcast_ln55_13_fu_2259_p1;
wire   [10:0] tmp_27_fu_2245_p4;
wire   [51:0] trunc_ln55_12_fu_2255_p1;
wire   [0:0] icmp_ln55_25_fu_2282_p2;
wire   [0:0] icmp_ln55_24_fu_2276_p2;
wire   [10:0] tmp_28_fu_2262_p4;
wire   [51:0] trunc_ln55_13_fu_2272_p1;
wire   [0:0] icmp_ln55_27_fu_2300_p2;
wire   [0:0] icmp_ln55_26_fu_2294_p2;
wire   [0:0] or_ln55_13_fu_2306_p2;
wire   [0:0] or_ln55_12_fu_2288_p2;
wire   [0:0] and_ln55_12_fu_2312_p2;
wire   [7:0] zext_ln55_4_fu_2324_p1;
wire   [7:0] zext_ln55_5_fu_2333_p1;
wire   [7:0] min_s_8_fu_2327_p3;
wire   [7:0] zext_ln55_6_fu_2343_p1;
wire   [7:0] min_s_9_fu_2336_p3;
wire   [63:0] bitcast_ln55_14_fu_2360_p1;
wire   [63:0] bitcast_ln55_15_fu_2378_p1;
wire   [10:0] tmp_31_fu_2364_p4;
wire   [51:0] trunc_ln55_14_fu_2374_p1;
wire   [0:0] icmp_ln55_29_fu_2401_p2;
wire   [0:0] icmp_ln55_28_fu_2395_p2;
wire   [10:0] tmp_32_fu_2381_p4;
wire   [51:0] trunc_ln55_15_fu_2391_p1;
wire   [0:0] icmp_ln55_31_fu_2419_p2;
wire   [0:0] icmp_ln55_30_fu_2413_p2;
wire   [0:0] or_ln55_15_fu_2425_p2;
wire   [0:0] or_ln55_14_fu_2407_p2;
wire   [0:0] and_ln55_14_fu_2431_p2;
wire   [0:0] and_ln55_15_fu_2437_p2;
wire   [7:0] zext_ln55_7_fu_2449_p1;
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
wire   [3:0] tmp_s_fu_856_p1;
wire   [3:0] tmp_s_fu_856_p3;
wire   [3:0] tmp_s_fu_856_p5;
wire   [3:0] tmp_s_fu_856_p7;
wire   [3:0] tmp_s_fu_856_p9;
wire   [3:0] tmp_s_fu_856_p11;
wire   [3:0] tmp_s_fu_856_p13;
wire   [3:0] tmp_s_fu_856_p15;
wire  signed [3:0] tmp_s_fu_856_p17;
wire  signed [3:0] tmp_s_fu_856_p19;
wire  signed [3:0] tmp_s_fu_856_p21;
wire  signed [3:0] tmp_s_fu_856_p23;
wire  signed [3:0] tmp_s_fu_856_p25;
wire  signed [3:0] tmp_s_fu_856_p27;
wire  signed [3:0] tmp_s_fu_856_p29;
wire  signed [3:0] tmp_s_fu_856_p31;
wire  signed [3:0] tmp_1_fu_927_p1;
wire   [3:0] tmp_1_fu_927_p3;
wire   [3:0] tmp_1_fu_927_p5;
wire   [3:0] tmp_1_fu_927_p7;
wire   [3:0] tmp_1_fu_927_p9;
wire   [3:0] tmp_1_fu_927_p11;
wire   [3:0] tmp_1_fu_927_p13;
wire   [3:0] tmp_1_fu_927_p15;
wire   [3:0] tmp_1_fu_927_p17;
wire  signed [3:0] tmp_1_fu_927_p19;
wire  signed [3:0] tmp_1_fu_927_p21;
wire  signed [3:0] tmp_1_fu_927_p23;
wire  signed [3:0] tmp_1_fu_927_p25;
wire  signed [3:0] tmp_1_fu_927_p27;
wire  signed [3:0] tmp_1_fu_927_p29;
wire  signed [3:0] tmp_1_fu_927_p31;
wire  signed [3:0] tmp_3_fu_1016_p1;
wire  signed [3:0] tmp_3_fu_1016_p3;
wire   [3:0] tmp_3_fu_1016_p5;
wire   [3:0] tmp_3_fu_1016_p7;
wire   [3:0] tmp_3_fu_1016_p9;
wire   [3:0] tmp_3_fu_1016_p11;
wire   [3:0] tmp_3_fu_1016_p13;
wire   [3:0] tmp_3_fu_1016_p15;
wire   [3:0] tmp_3_fu_1016_p17;
wire   [3:0] tmp_3_fu_1016_p19;
wire  signed [3:0] tmp_3_fu_1016_p21;
wire  signed [3:0] tmp_3_fu_1016_p23;
wire  signed [3:0] tmp_3_fu_1016_p25;
wire  signed [3:0] tmp_3_fu_1016_p27;
wire  signed [3:0] tmp_3_fu_1016_p29;
wire  signed [3:0] tmp_3_fu_1016_p31;
wire  signed [3:0] tmp_5_fu_1110_p1;
wire  signed [3:0] tmp_5_fu_1110_p3;
wire  signed [3:0] tmp_5_fu_1110_p5;
wire   [3:0] tmp_5_fu_1110_p7;
wire   [3:0] tmp_5_fu_1110_p9;
wire   [3:0] tmp_5_fu_1110_p11;
wire   [3:0] tmp_5_fu_1110_p13;
wire   [3:0] tmp_5_fu_1110_p15;
wire   [3:0] tmp_5_fu_1110_p17;
wire   [3:0] tmp_5_fu_1110_p19;
wire   [3:0] tmp_5_fu_1110_p21;
wire  signed [3:0] tmp_5_fu_1110_p23;
wire  signed [3:0] tmp_5_fu_1110_p25;
wire  signed [3:0] tmp_5_fu_1110_p27;
wire  signed [3:0] tmp_5_fu_1110_p29;
wire  signed [3:0] tmp_5_fu_1110_p31;
wire  signed [3:0] tmp_6_fu_1186_p1;
wire  signed [3:0] tmp_6_fu_1186_p3;
wire  signed [3:0] tmp_6_fu_1186_p5;
wire  signed [3:0] tmp_6_fu_1186_p7;
wire   [3:0] tmp_6_fu_1186_p9;
wire   [3:0] tmp_6_fu_1186_p11;
wire   [3:0] tmp_6_fu_1186_p13;
wire   [3:0] tmp_6_fu_1186_p15;
wire   [3:0] tmp_6_fu_1186_p17;
wire   [3:0] tmp_6_fu_1186_p19;
wire   [3:0] tmp_6_fu_1186_p21;
wire   [3:0] tmp_6_fu_1186_p23;
wire  signed [3:0] tmp_6_fu_1186_p25;
wire  signed [3:0] tmp_6_fu_1186_p27;
wire  signed [3:0] tmp_6_fu_1186_p29;
wire  signed [3:0] tmp_6_fu_1186_p31;
wire  signed [3:0] tmp_7_fu_1257_p1;
wire  signed [3:0] tmp_7_fu_1257_p3;
wire  signed [3:0] tmp_7_fu_1257_p5;
wire  signed [3:0] tmp_7_fu_1257_p7;
wire  signed [3:0] tmp_7_fu_1257_p9;
wire   [3:0] tmp_7_fu_1257_p11;
wire   [3:0] tmp_7_fu_1257_p13;
wire   [3:0] tmp_7_fu_1257_p15;
wire   [3:0] tmp_7_fu_1257_p17;
wire   [3:0] tmp_7_fu_1257_p19;
wire   [3:0] tmp_7_fu_1257_p21;
wire   [3:0] tmp_7_fu_1257_p23;
wire   [3:0] tmp_7_fu_1257_p25;
wire  signed [3:0] tmp_7_fu_1257_p27;
wire  signed [3:0] tmp_7_fu_1257_p29;
wire  signed [3:0] tmp_7_fu_1257_p31;
wire  signed [3:0] tmp_9_fu_1328_p1;
wire  signed [3:0] tmp_9_fu_1328_p3;
wire  signed [3:0] tmp_9_fu_1328_p5;
wire  signed [3:0] tmp_9_fu_1328_p7;
wire  signed [3:0] tmp_9_fu_1328_p9;
wire  signed [3:0] tmp_9_fu_1328_p11;
wire   [3:0] tmp_9_fu_1328_p13;
wire   [3:0] tmp_9_fu_1328_p15;
wire   [3:0] tmp_9_fu_1328_p17;
wire   [3:0] tmp_9_fu_1328_p19;
wire   [3:0] tmp_9_fu_1328_p21;
wire   [3:0] tmp_9_fu_1328_p23;
wire   [3:0] tmp_9_fu_1328_p25;
wire   [3:0] tmp_9_fu_1328_p27;
wire  signed [3:0] tmp_9_fu_1328_p29;
wire  signed [3:0] tmp_9_fu_1328_p31;
wire  signed [3:0] tmp_10_fu_1488_p1;
wire  signed [3:0] tmp_10_fu_1488_p3;
wire  signed [3:0] tmp_10_fu_1488_p5;
wire  signed [3:0] tmp_10_fu_1488_p7;
wire  signed [3:0] tmp_10_fu_1488_p9;
wire  signed [3:0] tmp_10_fu_1488_p11;
wire  signed [3:0] tmp_10_fu_1488_p13;
wire   [3:0] tmp_10_fu_1488_p15;
wire   [3:0] tmp_10_fu_1488_p17;
wire   [3:0] tmp_10_fu_1488_p19;
wire   [3:0] tmp_10_fu_1488_p21;
wire   [3:0] tmp_10_fu_1488_p23;
wire   [3:0] tmp_10_fu_1488_p25;
wire   [3:0] tmp_10_fu_1488_p27;
wire   [3:0] tmp_10_fu_1488_p29;
wire  signed [3:0] tmp_10_fu_1488_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_166 = 64'd0;
#0 min_s_fu_170 = 8'd0;
#0 min_s_1_fu_174 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U92(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_s_fu_856_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_s_fu_856_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U93(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_1_fu_927_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_1_fu_927_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U94(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_3_fu_1016_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_3_fu_1016_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U95(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_5_fu_1110_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_5_fu_1110_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'hD ),.din1_WIDTH( 64 ),.CASE2( 4'hE ),.din2_WIDTH( 64 ),.CASE3( 4'hF ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.CASE13( 4'h9 ),.din13_WIDTH( 64 ),.CASE14( 4'hA ),.din14_WIDTH( 64 ),.CASE15( 4'hB ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U96(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_6_fu_1186_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_6_fu_1186_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hB ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'hD ),.din2_WIDTH( 64 ),.CASE3( 4'hE ),.din3_WIDTH( 64 ),.CASE4( 4'hF ),.din4_WIDTH( 64 ),.CASE5( 4'h0 ),.din5_WIDTH( 64 ),.CASE6( 4'h1 ),.din6_WIDTH( 64 ),.CASE7( 4'h2 ),.din7_WIDTH( 64 ),.CASE8( 4'h3 ),.din8_WIDTH( 64 ),.CASE9( 4'h4 ),.din9_WIDTH( 64 ),.CASE10( 4'h5 ),.din10_WIDTH( 64 ),.CASE11( 4'h6 ),.din11_WIDTH( 64 ),.CASE12( 4'h7 ),.din12_WIDTH( 64 ),.CASE13( 4'h8 ),.din13_WIDTH( 64 ),.CASE14( 4'h9 ),.din14_WIDTH( 64 ),.CASE15( 4'hA ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U97(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_7_fu_1257_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_7_fu_1257_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'hD ),.din3_WIDTH( 64 ),.CASE4( 4'hE ),.din4_WIDTH( 64 ),.CASE5( 4'hF ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.CASE13( 4'h7 ),.din13_WIDTH( 64 ),.CASE14( 4'h8 ),.din14_WIDTH( 64 ),.CASE15( 4'h9 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U98(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_9_fu_1328_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_9_fu_1328_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'hD ),.din4_WIDTH( 64 ),.CASE5( 4'hE ),.din5_WIDTH( 64 ),.CASE6( 4'hF ),.din6_WIDTH( 64 ),.CASE7( 4'h0 ),.din7_WIDTH( 64 ),.CASE8( 4'h1 ),.din8_WIDTH( 64 ),.CASE9( 4'h2 ),.din9_WIDTH( 64 ),.CASE10( 4'h3 ),.din10_WIDTH( 64 ),.CASE11( 4'h4 ),.din11_WIDTH( 64 ),.CASE12( 4'h5 ),.din12_WIDTH( 64 ),.CASE13( 4'h6 ),.din13_WIDTH( 64 ),.CASE14( 4'h7 ),.din14_WIDTH( 64 ),.CASE15( 4'h8 ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U99(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_10_fu_1488_p33),.sel(trunc_ln21_reg_2522),.dout(tmp_10_fu_1488_p35));
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
        min_p_fu_166 <= min_p_20;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2642_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_166 <= min_p_17_fu_2442_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_174 <= 6'd1;
    end else if (((tmp_30_reg_2642 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_174 <= add_ln53_7_fu_1976_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_170 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2642_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_170 <= min_s_11_fu_2452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2630 <= add_ln53_1_fu_836_p2;
        add_ln53_1_reg_2630_pp0_iter1_reg <= add_ln53_1_reg_2630;
        add_ln53_6_reg_2636 <= add_ln53_6_fu_842_p2;
        add_ln53_reg_2624 <= add_ln53_fu_830_p2;
        and_ln55_7_reg_2994 <= and_ln55_7_fu_2032_p2;
        s_reg_2512 <= ap_sig_allocacmp_s;
        tmp_30_reg_2642 <= add_ln53_6_fu_842_p2[32'd6];
        tmp_30_reg_2642_pp0_iter1_reg <= tmp_30_reg_2642;
        trunc_ln21_reg_2522 <= trunc_ln21_fu_768_p1;
        zext_ln52_2_cast_reg_2501[6 : 0] <= zext_ln52_2_cast_fu_742_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_2681 <= add_ln53_2_fu_1105_p2;
        add_ln53_3_reg_2692 <= add_ln53_3_fu_1181_p2;
        add_ln53_3_reg_2692_pp0_iter1_reg <= add_ln53_3_reg_2692;
        min_p_9_reg_3000 <= min_p_9_fu_2047_p3;
        min_s_7_reg_3007 <= min_s_7_fu_2057_p3;
        tmp_1_reg_2651 <= tmp_1_fu_927_p35;
        tmp_3_reg_2666 <= tmp_3_fu_1016_p35;
        tmp_5_reg_2687 <= tmp_5_fu_1110_p35;
        tmp_6_reg_2698 <= tmp_6_fu_1186_p35;
        tmp_7_reg_2703 <= tmp_7_fu_1257_p35;
        tmp_9_reg_2708 <= tmp_9_fu_1328_p35;
        tmp_s_reg_2646 <= tmp_s_fu_856_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_2818 <= add_ln53_4_fu_1478_p2;
        add_ln53_4_reg_2818_pp0_iter1_reg <= add_ln53_4_reg_2818;
        add_ln53_5_reg_2824 <= add_ln53_5_fu_1483_p2;
        add_ln53_5_reg_2824_pp0_iter1_reg <= add_ln53_5_reg_2824;
        and_ln55_9_reg_3012 <= and_ln55_9_fu_2140_p2;
        tmp_10_reg_2830 <= tmp_10_fu_1488_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_3025 <= and_ln55_11_fu_2229_p2;
        trunc_ln54_reg_2875 <= trunc_ln54_fu_1605_p1;
        trunc_ln54_reg_2875_pp0_iter1_reg <= trunc_ln54_reg_2875;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_3038 <= and_ln55_13_fu_2318_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2927 <= and_ln55_1_fu_1730_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2940 <= and_ln55_3_fu_1820_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2965 <= and_ln55_5_fu_1933_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2984 <= icmp_ln55_14_fu_1964_p2;
        icmp_ln55_15_reg_2989 <= icmp_ln55_15_fu_1970_p2;
        min_p_7_reg_2978 <= min_p_7_fu_1939_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_3018 <= min_p_11_fu_2146_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_3031 <= min_p_13_fu_2235_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_3049 <= min_p_15_fu_2354_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_1_reg_2920 <= min_p_fu_166;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_3_reg_2933 <= min_p_3_fu_1736_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_5_reg_2953 <= min_p_5_fu_1839_p3;
        min_s_5_reg_2960 <= min_s_5_fu_1849_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_3044 <= min_s_10_fu_2346_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_4_reg_2946 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_6_reg_2971 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_719 <= grp_fu_705_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_723 <= grp_fu_712_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_727 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_732 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_737 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln54_3_reg_2840 <= grp_fu_705_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln54_6_reg_2870 <= grp_fu_712_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_7_reg_2895 <= grp_fu_712_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_33_reg_3056 <= grp_fu_1334_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_30_reg_2642 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_2642_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_174;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_697_p0 = tmp_10_reg_2830;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_697_p0 = tmp_9_reg_2708;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_697_p0 = tmp_7_reg_2703;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_697_p0 = tmp_6_reg_2698;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_697_p0 = tmp_5_reg_2687;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_697_p0 = tmp_3_reg_2666;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_697_p0 = tmp_1_reg_2651;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_697_p0 = tmp_s_reg_2646;
        end else begin
            grp_fu_697_p0 = 'bx;
        end
    end else begin
        grp_fu_697_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_697_p1 = bitcast_ln54_7_fu_1645_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_697_p1 = bitcast_ln54_6_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_697_p1 = bitcast_ln54_5_fu_1636_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_697_p1 = bitcast_ln54_4_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_697_p1 = bitcast_ln54_3_fu_1627_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_697_p1 = bitcast_ln54_2_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_697_p1 = bitcast_ln54_1_fu_1559_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_697_p1 = bitcast_ln54_fu_1437_p1;
        end else begin
            grp_fu_697_p1 = 'bx;
        end
    end else begin
        grp_fu_697_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_701_p0 = p_6_reg_2971;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_701_p0 = p_4_reg_2946;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_701_p0 = reg_737;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_701_p0 = reg_732;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_701_p0 = reg_727;
    end else begin
        grp_fu_701_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_701_p1 = min_p_15_fu_2354_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_701_p1 = min_p_13_fu_2235_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_701_p1 = min_p_11_fu_2146_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_701_p1 = min_p_9_fu_2047_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_701_p1 = min_p_7_fu_1939_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_701_p1 = min_p_5_fu_1839_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_701_p1 = min_p_3_fu_1736_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_701_p1 = min_p_fu_166;
    end else begin
        grp_fu_701_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_11_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_12_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_13_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_14_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_15_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_1_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_2_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_3_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_4_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_5_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_6_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_7_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_8_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_9_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_8_fu_790_p1;
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
            llike_address0_local = zext_ln54_10_fu_1417_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_8_fu_790_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_30_reg_2642_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_1576_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_1454_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1099_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_824_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_1594_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_1472_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1010_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_1576_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_1454_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1099_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_824_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_1594_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_1472_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1010_p1;
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
assign add_ln53_1_fu_836_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1105_p2 = (s_reg_2512 + 6'd3);
assign add_ln53_3_fu_1181_p2 = (s_reg_2512 + 6'd4);
assign add_ln53_4_fu_1478_p2 = (s_reg_2512 + 6'd5);
assign add_ln53_5_fu_1483_p2 = (s_reg_2512 + 6'd6);
assign add_ln53_6_fu_842_p2 = (zext_ln21_fu_764_p1 + 7'd7);
assign add_ln53_7_fu_1976_p2 = (s_reg_2512 + 6'd8);
assign add_ln53_fu_830_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1005_p2 = (shl_ln54_1_fu_998_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_2_fu_1094_p2 = (shl_ln54_2_fu_1087_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_3_fu_1449_p2 = (shl_ln54_3_fu_1442_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_4_fu_1467_p2 = (shl_ln54_4_fu_1460_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_5_fu_1571_p2 = (shl_ln54_5_fu_1564_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_6_fu_1589_p2 = (shl_ln54_6_fu_1582_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_7_fu_1616_p2 = (shl_ln54_7_fu_1608_p3 + zext_ln52_2_cast_reg_2501);
assign add_ln54_8_fu_1412_p2 = (zext_ln52_3 + zext_ln54_9_fu_1408_p1);
assign add_ln54_fu_818_p2 = (shl_ln2_fu_810_p3 + zext_ln52_2_cast_fu_742_p1);
assign and_ln55_10_fu_2223_p2 = (or_ln55_11_fu_2217_p2 & or_ln55_10_fu_2199_p2);
assign and_ln55_11_fu_2229_p2 = (grp_fu_1334_p_dout0 & and_ln55_10_fu_2223_p2);
assign and_ln55_12_fu_2312_p2 = (or_ln55_13_fu_2306_p2 & or_ln55_12_fu_2288_p2);
assign and_ln55_13_fu_2318_p2 = (grp_fu_1334_p_dout0 & and_ln55_12_fu_2312_p2);
assign and_ln55_14_fu_2431_p2 = (or_ln55_15_fu_2425_p2 & or_ln55_14_fu_2407_p2);
assign and_ln55_15_fu_2437_p2 = (tmp_33_reg_3056 & and_ln55_14_fu_2431_p2);
assign and_ln55_1_fu_1730_p2 = (or_ln55_1_fu_1718_p2 & and_ln55_fu_1724_p2);
assign and_ln55_2_fu_1814_p2 = (or_ln55_3_fu_1808_p2 & or_ln55_2_fu_1790_p2);
assign and_ln55_3_fu_1820_p2 = (grp_fu_1334_p_dout0 & and_ln55_2_fu_1814_p2);
assign and_ln55_4_fu_1927_p2 = (or_ln55_5_fu_1921_p2 & or_ln55_4_fu_1903_p2);
assign and_ln55_5_fu_1933_p2 = (grp_fu_1334_p_dout0 & and_ln55_4_fu_1927_p2);
assign and_ln55_6_fu_2026_p2 = (or_ln55_7_fu_2022_p2 & or_ln55_6_fu_2016_p2);
assign and_ln55_7_fu_2032_p2 = (grp_fu_1334_p_dout0 & and_ln55_6_fu_2026_p2);
assign and_ln55_8_fu_2134_p2 = (or_ln55_9_fu_2128_p2 & or_ln55_8_fu_2110_p2);
assign and_ln55_9_fu_2140_p2 = (grp_fu_1334_p_dout0 & and_ln55_8_fu_2134_p2);
assign and_ln55_fu_1724_p2 = (or_ln55_fu_1700_p2 & grp_fu_1334_p_dout0);
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
assign bitcast_ln54_1_fu_1559_p1 = reg_723;
assign bitcast_ln54_2_fu_1600_p1 = reg_719;
assign bitcast_ln54_3_fu_1627_p1 = select_ln54_3_reg_2840;
assign bitcast_ln54_4_fu_1631_p1 = reg_723;
assign bitcast_ln54_5_fu_1636_p1 = reg_719;
assign bitcast_ln54_6_fu_1641_p1 = select_ln54_6_reg_2870;
assign bitcast_ln54_7_fu_1645_p1 = select_ln54_7_reg_2895;
assign bitcast_ln54_fu_1437_p1 = reg_719;
assign bitcast_ln55_10_fu_2152_p1 = reg_732;
assign bitcast_ln55_11_fu_2170_p1 = min_p_11_reg_3018;
assign bitcast_ln55_12_fu_2242_p1 = p_6_reg_2971;
assign bitcast_ln55_13_fu_2259_p1 = min_p_13_reg_3031;
assign bitcast_ln55_14_fu_2360_p1 = reg_737;
assign bitcast_ln55_15_fu_2378_p1 = min_p_15_reg_3049;
assign bitcast_ln55_1_fu_1671_p1 = min_p_1_reg_2920;
assign bitcast_ln55_2_fu_1743_p1 = reg_732;
assign bitcast_ln55_3_fu_1761_p1 = min_p_3_reg_2933;
assign bitcast_ln55_4_fu_1856_p1 = reg_737;
assign bitcast_ln55_5_fu_1874_p1 = min_p_5_reg_2953;
assign bitcast_ln55_6_fu_1986_p1 = reg_727;
assign bitcast_ln55_7_fu_1946_p1 = min_p_7_fu_1939_p3;
assign bitcast_ln55_8_fu_2064_p1 = p_4_reg_2946;
assign bitcast_ln55_9_fu_2081_p1 = min_p_9_reg_3000;
assign bitcast_ln55_fu_1653_p1 = reg_727;
assign grp_fu_1334_p_ce = 1'b1;
assign grp_fu_1334_p_din0 = grp_fu_701_p0;
assign grp_fu_1334_p_din1 = grp_fu_701_p1;
assign grp_fu_1334_p_opcode = 5'd4;
assign grp_fu_705_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_712_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_715_p_ce = 1'b1;
assign grp_fu_715_p_din0 = grp_fu_697_p0;
assign grp_fu_715_p_din1 = grp_fu_697_p1;
assign grp_fu_715_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1909_p2 = ((tmp_16_fu_1877_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1915_p2 = ((trunc_ln55_5_fu_1887_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2004_p2 = ((tmp_18_fu_1990_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2010_p2 = ((trunc_ln55_6_fu_2000_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1964_p2 = ((tmp_19_fu_1950_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1970_p2 = ((trunc_ln55_7_fu_1960_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_2098_p2 = ((tmp_21_fu_2067_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_2104_p2 = ((trunc_ln55_8_fu_2077_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_2116_p2 = ((tmp_22_fu_2084_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_2122_p2 = ((trunc_ln55_9_fu_2094_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1694_p2 = ((trunc_ln55_fu_1667_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_2187_p2 = ((tmp_24_fu_2156_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_2193_p2 = ((trunc_ln55_10_fu_2166_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_2205_p2 = ((tmp_25_fu_2173_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_2211_p2 = ((trunc_ln55_11_fu_2183_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_2276_p2 = ((tmp_27_fu_2245_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_2282_p2 = ((trunc_ln55_12_fu_2255_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_2294_p2 = ((tmp_28_fu_2262_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_2300_p2 = ((trunc_ln55_13_fu_2272_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_2395_p2 = ((tmp_31_fu_2364_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_2401_p2 = ((trunc_ln55_14_fu_2374_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1706_p2 = ((tmp_8_fu_1674_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_2413_p2 = ((tmp_32_fu_2381_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_2419_p2 = ((trunc_ln55_15_fu_2391_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1712_p2 = ((trunc_ln55_1_fu_1684_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1778_p2 = ((tmp_12_fu_1747_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1784_p2 = ((trunc_ln55_2_fu_1757_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1796_p2 = ((tmp_13_fu_1764_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1802_p2 = ((trunc_ln55_3_fu_1774_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1891_p2 = ((tmp_15_fu_1860_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1897_p2 = ((trunc_ln55_4_fu_1870_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1688_p2 = ((tmp_4_fu_1657_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_772_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1399_p4 = {{add_ln53_6_reg_2636[6:4]}};
assign min_p_11_fu_2146_p3 = ((and_ln55_9_reg_3012[0:0] == 1'b1) ? p_4_reg_2946 : min_p_9_reg_3000);
assign min_p_13_fu_2235_p3 = ((and_ln55_11_reg_3025[0:0] == 1'b1) ? reg_732 : min_p_11_reg_3018);
assign min_p_15_fu_2354_p3 = ((and_ln55_13_reg_3038[0:0] == 1'b1) ? p_6_reg_2971 : min_p_13_reg_3031);
assign min_p_17_fu_2442_p3 = ((and_ln55_15_fu_2437_p2[0:0] == 1'b1) ? reg_737 : min_p_15_reg_3049);
assign min_p_3_fu_1736_p3 = ((and_ln55_1_reg_2927[0:0] == 1'b1) ? reg_727 : min_p_1_reg_2920);
assign min_p_5_fu_1839_p3 = ((and_ln55_3_reg_2940[0:0] == 1'b1) ? reg_732 : min_p_3_reg_2933);
assign min_p_7_fu_1939_p3 = ((and_ln55_5_reg_2965[0:0] == 1'b1) ? reg_737 : min_p_5_reg_2953);
assign min_p_9_fu_2047_p3 = ((and_ln55_7_reg_2994[0:0] == 1'b1) ? reg_727 : min_p_7_reg_2978);
assign min_s_10_fu_2346_p3 = ((and_ln55_13_reg_3038[0:0] == 1'b1) ? zext_ln55_6_fu_2343_p1 : min_s_9_fu_2336_p3);
assign min_s_11_fu_2452_p3 = ((and_ln55_15_fu_2437_p2[0:0] == 1'b1) ? zext_ln55_7_fu_2449_p1 : min_s_10_reg_3044);
assign min_s_18_out = ((and_ln55_13_reg_3038[0:0] == 1'b1) ? zext_ln55_6_fu_2343_p1 : min_s_9_fu_2336_p3);
assign min_s_4_fu_1832_p3 = ((and_ln55_1_reg_2927[0:0] == 1'b1) ? zext_ln55_fu_1829_p1 : min_s_fu_170);
assign min_s_5_fu_1849_p3 = ((and_ln55_3_reg_2940[0:0] == 1'b1) ? zext_ln55_1_fu_1846_p1 : min_s_4_fu_1832_p3);
assign min_s_6_fu_2041_p3 = ((and_ln55_5_reg_2965[0:0] == 1'b1) ? zext_ln55_2_fu_2038_p1 : min_s_5_reg_2960);
assign min_s_7_fu_2057_p3 = ((and_ln55_7_reg_2994[0:0] == 1'b1) ? zext_ln55_3_fu_2054_p1 : min_s_6_fu_2041_p3);
assign min_s_8_fu_2327_p3 = ((and_ln55_9_reg_3012[0:0] == 1'b1) ? zext_ln55_4_fu_2324_p1 : min_s_7_reg_3007);
assign min_s_9_fu_2336_p3 = ((and_ln55_11_reg_3025[0:0] == 1'b1) ? zext_ln55_5_fu_2333_p1 : min_s_8_fu_2327_p3);
assign or_ln55_10_fu_2199_p2 = (icmp_ln55_21_fu_2193_p2 | icmp_ln55_20_fu_2187_p2);
assign or_ln55_11_fu_2217_p2 = (icmp_ln55_23_fu_2211_p2 | icmp_ln55_22_fu_2205_p2);
assign or_ln55_12_fu_2288_p2 = (icmp_ln55_25_fu_2282_p2 | icmp_ln55_24_fu_2276_p2);
assign or_ln55_13_fu_2306_p2 = (icmp_ln55_27_fu_2300_p2 | icmp_ln55_26_fu_2294_p2);
assign or_ln55_14_fu_2407_p2 = (icmp_ln55_29_fu_2401_p2 | icmp_ln55_28_fu_2395_p2);
assign or_ln55_15_fu_2425_p2 = (icmp_ln55_31_fu_2419_p2 | icmp_ln55_30_fu_2413_p2);
assign or_ln55_1_fu_1718_p2 = (icmp_ln55_3_fu_1712_p2 | icmp_ln55_2_fu_1706_p2);
assign or_ln55_2_fu_1790_p2 = (icmp_ln55_5_fu_1784_p2 | icmp_ln55_4_fu_1778_p2);
assign or_ln55_3_fu_1808_p2 = (icmp_ln55_7_fu_1802_p2 | icmp_ln55_6_fu_1796_p2);
assign or_ln55_4_fu_1903_p2 = (icmp_ln55_9_fu_1897_p2 | icmp_ln55_8_fu_1891_p2);
assign or_ln55_5_fu_1921_p2 = (icmp_ln55_11_fu_1915_p2 | icmp_ln55_10_fu_1909_p2);
assign or_ln55_6_fu_2016_p2 = (icmp_ln55_13_fu_2010_p2 | icmp_ln55_12_fu_2004_p2);
assign or_ln55_7_fu_2022_p2 = (icmp_ln55_15_reg_2989 | icmp_ln55_14_reg_2984);
assign or_ln55_8_fu_2110_p2 = (icmp_ln55_17_fu_2104_p2 | icmp_ln55_16_fu_2098_p2);
assign or_ln55_9_fu_2128_p2 = (icmp_ln55_19_fu_2122_p2 | icmp_ln55_18_fu_2116_p2);
assign or_ln55_fu_1700_p2 = (icmp_ln55_fu_1688_p2 | icmp_ln55_1_fu_1694_p2);
assign shl_ln2_fu_810_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_998_p3 = {{add_ln53_reg_2624}, {5'd0}};
assign shl_ln54_2_fu_1087_p3 = {{add_ln53_1_reg_2630}, {5'd0}};
assign shl_ln54_3_fu_1442_p3 = {{add_ln53_2_reg_2681}, {5'd0}};
assign shl_ln54_4_fu_1460_p3 = {{add_ln53_3_reg_2692}, {5'd0}};
assign shl_ln54_5_fu_1564_p3 = {{add_ln53_4_reg_2818}, {5'd0}};
assign shl_ln54_6_fu_1582_p3 = {{add_ln53_5_reg_2824}, {5'd0}};
assign shl_ln54_7_fu_1608_p3 = {{trunc_ln54_fu_1605_p1}, {5'd0}};
assign tmp_10_fu_1488_p33 = 'bx;
assign tmp_12_fu_1747_p4 = {{bitcast_ln55_2_fu_1743_p1[62:52]}};
assign tmp_13_fu_1764_p4 = {{bitcast_ln55_3_fu_1761_p1[62:52]}};
assign tmp_15_fu_1860_p4 = {{bitcast_ln55_4_fu_1856_p1[62:52]}};
assign tmp_16_fu_1877_p4 = {{bitcast_ln55_5_fu_1874_p1[62:52]}};
assign tmp_18_fu_1990_p4 = {{bitcast_ln55_6_fu_1986_p1[62:52]}};
assign tmp_19_fu_1950_p4 = {{bitcast_ln55_7_fu_1946_p1[62:52]}};
assign tmp_1_fu_927_p33 = 'bx;
assign tmp_21_fu_2067_p4 = {{bitcast_ln55_8_fu_2064_p1[62:52]}};
assign tmp_22_fu_2084_p4 = {{bitcast_ln55_9_fu_2081_p1[62:52]}};
assign tmp_24_fu_2156_p4 = {{bitcast_ln55_10_fu_2152_p1[62:52]}};
assign tmp_25_fu_2173_p4 = {{bitcast_ln55_11_fu_2170_p1[62:52]}};
assign tmp_27_fu_2245_p4 = {{bitcast_ln55_12_fu_2242_p1[62:52]}};
assign tmp_28_fu_2262_p4 = {{bitcast_ln55_13_fu_2259_p1[62:52]}};
assign tmp_2_fu_782_p3 = {{t_1}, {lshr_ln8_2_fu_772_p4}};
assign tmp_31_fu_2364_p4 = {{bitcast_ln55_14_fu_2360_p1[62:52]}};
assign tmp_32_fu_2381_p4 = {{bitcast_ln55_15_fu_2378_p1[62:52]}};
assign tmp_3_fu_1016_p33 = 'bx;
assign tmp_4_fu_1657_p4 = {{bitcast_ln55_fu_1653_p1[62:52]}};
assign tmp_5_fu_1110_p33 = 'bx;
assign tmp_6_fu_1186_p33 = 'bx;
assign tmp_7_fu_1257_p33 = 'bx;
assign tmp_8_fu_1674_p4 = {{bitcast_ln55_1_fu_1671_p1[62:52]}};
assign tmp_9_fu_1328_p33 = 'bx;
assign tmp_s_fu_856_p33 = 'bx;
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln21_fu_768_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_1605_p1 = add_ln53_6_reg_2636[5:0];
assign trunc_ln55_10_fu_2166_p1 = bitcast_ln55_10_fu_2152_p1[51:0];
assign trunc_ln55_11_fu_2183_p1 = bitcast_ln55_11_fu_2170_p1[51:0];
assign trunc_ln55_12_fu_2255_p1 = bitcast_ln55_12_fu_2242_p1[51:0];
assign trunc_ln55_13_fu_2272_p1 = bitcast_ln55_13_fu_2259_p1[51:0];
assign trunc_ln55_14_fu_2374_p1 = bitcast_ln55_14_fu_2360_p1[51:0];
assign trunc_ln55_15_fu_2391_p1 = bitcast_ln55_15_fu_2378_p1[51:0];
assign trunc_ln55_1_fu_1684_p1 = bitcast_ln55_1_fu_1671_p1[51:0];
assign trunc_ln55_2_fu_1757_p1 = bitcast_ln55_2_fu_1743_p1[51:0];
assign trunc_ln55_3_fu_1774_p1 = bitcast_ln55_3_fu_1761_p1[51:0];
assign trunc_ln55_4_fu_1870_p1 = bitcast_ln55_4_fu_1856_p1[51:0];
assign trunc_ln55_5_fu_1887_p1 = bitcast_ln55_5_fu_1874_p1[51:0];
assign trunc_ln55_6_fu_2000_p1 = bitcast_ln55_6_fu_1986_p1[51:0];
assign trunc_ln55_7_fu_1960_p1 = bitcast_ln55_7_fu_1946_p1[51:0];
assign trunc_ln55_8_fu_2077_p1 = bitcast_ln55_8_fu_2064_p1[51:0];
assign trunc_ln55_9_fu_2094_p1 = bitcast_ln55_9_fu_2081_p1[51:0];
assign trunc_ln55_fu_1667_p1 = bitcast_ln55_fu_1653_p1[51:0];
assign zext_ln21_fu_764_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_742_p1 = zext_ln52_2;
assign zext_ln54_10_fu_1417_p1 = add_ln54_8_fu_1412_p2;
assign zext_ln54_1_fu_1010_p1 = add_ln54_1_fu_1005_p2;
assign zext_ln54_2_fu_1099_p1 = add_ln54_2_fu_1094_p2;
assign zext_ln54_3_fu_1454_p1 = add_ln54_3_fu_1449_p2;
assign zext_ln54_4_fu_1472_p1 = add_ln54_4_fu_1467_p2;
assign zext_ln54_5_fu_1576_p1 = add_ln54_5_fu_1571_p2;
assign zext_ln54_6_fu_1594_p1 = add_ln54_6_fu_1589_p2;
assign zext_ln54_7_fu_1621_p1 = add_ln54_7_fu_1616_p2;
assign zext_ln54_8_fu_790_p1 = tmp_2_fu_782_p3;
assign zext_ln54_9_fu_1408_p1 = lshr_ln9_3_fu_1399_p4;
assign zext_ln54_fu_824_p1 = add_ln54_fu_818_p2;
assign zext_ln55_1_fu_1846_p1 = add_ln53_reg_2624;
assign zext_ln55_2_fu_2038_p1 = add_ln53_1_reg_2630_pp0_iter1_reg;
assign zext_ln55_3_fu_2054_p1 = add_ln53_2_reg_2681;
assign zext_ln55_4_fu_2324_p1 = add_ln53_3_reg_2692_pp0_iter1_reg;
assign zext_ln55_5_fu_2333_p1 = add_ln53_4_reg_2818_pp0_iter1_reg;
assign zext_ln55_6_fu_2343_p1 = add_ln53_5_reg_2824_pp0_iter1_reg;
assign zext_ln55_7_fu_2449_p1 = trunc_ln54_reg_2875_pp0_iter1_reg;
assign zext_ln55_fu_1829_p1 = s_reg_2512;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2501[10:7] <= 4'b0000;
end
endmodule 