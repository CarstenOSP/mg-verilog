module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce,grp_fu_2062_p_din0,grp_fu_2062_p_din1,grp_fu_2062_p_opcode,grp_fu_2062_p_dout0,grp_fu_2062_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_12;
input  [7:0] t_1;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
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
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty;
input  [10:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_1059_p_din0;
output  [63:0] grp_fu_1059_p_din1;
output  [1:0] grp_fu_1059_p_opcode;
input  [63:0] grp_fu_1059_p_dout0;
output   grp_fu_1059_p_ce;
output  [63:0] grp_fu_2062_p_din0;
output  [63:0] grp_fu_2062_p_din1;
output  [4:0] grp_fu_2062_p_opcode;
input  [0:0] grp_fu_2062_p_dout0;
output   grp_fu_2062_p_ce;
reg ap_idle;
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_16_reg_1927;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_689;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [8:0] zext_ln52_2_cast_fu_694_p1;
reg   [8:0] zext_ln52_2_cast_reg_1808;
reg   [5:0] s_reg_1815;
reg   [5:0] s_reg_1815_pp0_iter1_reg;
wire   [2:0] trunc_ln21_fu_720_p1;
reg   [2:0] trunc_ln21_reg_1821;
wire   [5:0] add_ln53_fu_780_p2;
reg   [5:0] add_ln53_reg_1909;
reg   [5:0] add_ln53_reg_1909_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_786_p2;
reg   [5:0] add_ln53_1_reg_1915;
reg   [5:0] add_ln53_1_reg_1915_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_792_p2;
reg   [6:0] add_ln53_2_reg_1921;
reg   [0:0] tmp_16_reg_1927_pp0_iter1_reg;
wire   [63:0] tmp_1_fu_806_p19;
reg   [63:0] tmp_1_reg_1931;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_2_fu_877_p19;
reg   [63:0] tmp_2_reg_1936;
wire   [63:0] tmp_6_fu_916_p19;
reg   [63:0] tmp_6_reg_1941;
wire   [63:0] tmp_11_fu_979_p19;
reg   [63:0] tmp_11_reg_1986;
wire   [63:0] tmp_7_fu_1104_p19;
reg   [63:0] tmp_7_reg_2071;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_12_fu_1175_p19;
reg   [63:0] tmp_12_reg_2076;
wire   [63:0] tmp_17_fu_1214_p19;
reg   [63:0] tmp_17_reg_2081;
wire   [5:0] trunc_ln54_fu_1253_p1;
reg   [5:0] trunc_ln54_reg_2086;
reg   [5:0] trunc_ln54_reg_2086_pp0_iter1_reg;
wire   [63:0] tmp_18_fu_1313_p19;
reg   [63:0] tmp_18_reg_2131;
reg   [63:0] min_p_1_reg_2136;
reg   [63:0] p_1_reg_2143;
wire   [0:0] and_ln55_1_fu_1443_p2;
reg   [0:0] and_ln55_1_reg_2150;
reg   [63:0] p_2_reg_2156;
wire   [63:0] min_p_3_fu_1449_p3;
reg   [63:0] min_p_3_reg_2163;
wire   [0:0] and_ln55_3_fu_1532_p2;
reg   [0:0] and_ln55_3_reg_2170;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_5_fu_1551_p3;
reg   [63:0] min_p_5_reg_2176;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1560_p3;
reg   [7:0] min_s_5_reg_2183;
wire   [0:0] and_ln55_5_fu_1643_p2;
reg   [0:0] and_ln55_5_reg_2188;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1652_p3;
reg   [7:0] min_s_6_reg_2194;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1659_p3;
reg   [63:0] min_p_7_reg_2199;
reg   [0:0] tmp_21_reg_2206;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_742_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_768_p1;
wire   [63:0] zext_ln54_1_fu_967_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1030_p1;
wire   [63:0] zext_ln54_6_fu_1060_p1;
wire   [63:0] zext_ln54_3_fu_1269_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_136;
wire   [63:0] min_p_9_fu_1747_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_140;
wire   [7:0] min_s_7_fu_1757_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_144;
wire   [5:0] add_ln53_3_fu_1352_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg   [63:0] grp_fu_681_p0;
reg   [63:0] grp_fu_681_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_685_p0;
reg   [63:0] grp_fu_685_p1;
wire    ap_block_pp0_stage7;
wire   [2:0] lshr_ln8_2_fu_724_p4;
wire   [10:0] tmp_s_fu_734_p3;
wire   [8:0] shl_ln2_fu_754_p3;
wire   [8:0] add_ln54_fu_762_p2;
wire   [6:0] zext_ln21_fu_716_p1;
wire   [63:0] tmp_1_fu_806_p17;
wire   [63:0] tmp_2_fu_877_p2;
wire   [63:0] tmp_2_fu_877_p4;
wire   [63:0] tmp_2_fu_877_p6;
wire   [63:0] tmp_2_fu_877_p8;
wire   [63:0] tmp_2_fu_877_p10;
wire   [63:0] tmp_2_fu_877_p12;
wire   [63:0] tmp_2_fu_877_p14;
wire   [63:0] tmp_2_fu_877_p16;
wire   [63:0] tmp_2_fu_877_p17;
wire   [63:0] tmp_6_fu_916_p17;
wire   [8:0] shl_ln54_1_fu_955_p3;
wire   [8:0] add_ln54_1_fu_962_p2;
wire   [63:0] tmp_11_fu_979_p17;
wire   [8:0] shl_ln54_2_fu_1018_p3;
wire   [8:0] add_ln54_2_fu_1025_p2;
wire   [3:0] lshr_ln9_2_fu_1042_p4;
wire   [10:0] zext_ln54_5_fu_1051_p1;
wire   [10:0] add_ln54_4_fu_1055_p2;
wire   [63:0] tmp_7_fu_1104_p2;
wire   [63:0] tmp_7_fu_1104_p4;
wire   [63:0] tmp_7_fu_1104_p6;
wire   [63:0] tmp_7_fu_1104_p8;
wire   [63:0] tmp_7_fu_1104_p10;
wire   [63:0] tmp_7_fu_1104_p12;
wire   [63:0] tmp_7_fu_1104_p14;
wire   [63:0] tmp_7_fu_1104_p16;
wire   [63:0] tmp_7_fu_1104_p17;
wire   [63:0] tmp_12_fu_1175_p2;
wire   [63:0] tmp_12_fu_1175_p4;
wire   [63:0] tmp_12_fu_1175_p6;
wire   [63:0] tmp_12_fu_1175_p8;
wire   [63:0] tmp_12_fu_1175_p10;
wire   [63:0] tmp_12_fu_1175_p12;
wire   [63:0] tmp_12_fu_1175_p14;
wire   [63:0] tmp_12_fu_1175_p16;
wire   [63:0] tmp_12_fu_1175_p17;
wire   [63:0] tmp_17_fu_1214_p17;
wire   [8:0] shl_ln54_3_fu_1256_p3;
wire   [8:0] add_ln54_3_fu_1264_p2;
wire   [63:0] tmp_18_fu_1313_p2;
wire   [63:0] tmp_18_fu_1313_p4;
wire   [63:0] tmp_18_fu_1313_p6;
wire   [63:0] tmp_18_fu_1313_p8;
wire   [63:0] tmp_18_fu_1313_p10;
wire   [63:0] tmp_18_fu_1313_p12;
wire   [63:0] tmp_18_fu_1313_p14;
wire   [63:0] tmp_18_fu_1313_p16;
wire   [63:0] tmp_18_fu_1313_p17;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1366_p1;
wire   [63:0] bitcast_ln55_1_fu_1384_p1;
wire   [10:0] tmp_3_fu_1370_p4;
wire   [51:0] trunc_ln55_fu_1380_p1;
wire   [0:0] icmp_ln55_1_fu_1407_p2;
wire   [0:0] icmp_ln55_fu_1401_p2;
wire   [10:0] tmp_4_fu_1387_p4;
wire   [51:0] trunc_ln55_1_fu_1397_p1;
wire   [0:0] icmp_ln55_3_fu_1425_p2;
wire   [0:0] icmp_ln55_2_fu_1419_p2;
wire   [0:0] or_ln55_fu_1413_p2;
wire   [0:0] and_ln55_fu_1437_p2;
wire   [0:0] or_ln55_1_fu_1431_p2;
wire   [63:0] bitcast_ln55_2_fu_1456_p1;
wire   [63:0] bitcast_ln55_3_fu_1473_p1;
wire   [10:0] tmp_8_fu_1459_p4;
wire   [51:0] trunc_ln55_2_fu_1469_p1;
wire   [0:0] icmp_ln55_5_fu_1496_p2;
wire   [0:0] icmp_ln55_4_fu_1490_p2;
wire   [10:0] tmp_9_fu_1476_p4;
wire   [51:0] trunc_ln55_3_fu_1486_p1;
wire   [0:0] icmp_ln55_7_fu_1514_p2;
wire   [0:0] icmp_ln55_6_fu_1508_p2;
wire   [0:0] or_ln55_3_fu_1520_p2;
wire   [0:0] or_ln55_2_fu_1502_p2;
wire   [0:0] and_ln55_2_fu_1526_p2;
wire   [7:0] zext_ln55_fu_1541_p1;
wire   [7:0] zext_ln55_1_fu_1557_p1;
wire   [7:0] min_s_4_fu_1544_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1567_p1;
wire   [63:0] bitcast_ln55_5_fu_1584_p1;
wire   [10:0] tmp_13_fu_1570_p4;
wire   [51:0] trunc_ln55_4_fu_1580_p1;
wire   [0:0] icmp_ln55_9_fu_1607_p2;
wire   [0:0] icmp_ln55_8_fu_1601_p2;
wire   [10:0] tmp_14_fu_1587_p4;
wire   [51:0] trunc_ln55_5_fu_1597_p1;
wire   [0:0] icmp_ln55_11_fu_1625_p2;
wire   [0:0] icmp_ln55_10_fu_1619_p2;
wire   [0:0] or_ln55_5_fu_1631_p2;
wire   [0:0] or_ln55_4_fu_1613_p2;
wire   [0:0] and_ln55_4_fu_1637_p2;
wire   [7:0] zext_ln55_2_fu_1649_p1;
wire   [63:0] bitcast_ln55_6_fu_1665_p1;
wire   [63:0] bitcast_ln55_7_fu_1683_p1;
wire   [10:0] tmp_19_fu_1669_p4;
wire   [51:0] trunc_ln55_6_fu_1679_p1;
wire   [0:0] icmp_ln55_13_fu_1706_p2;
wire   [0:0] icmp_ln55_12_fu_1700_p2;
wire   [10:0] tmp_20_fu_1686_p4;
wire   [51:0] trunc_ln55_7_fu_1696_p1;
wire   [0:0] icmp_ln55_15_fu_1724_p2;
wire   [0:0] icmp_ln55_14_fu_1718_p2;
wire   [0:0] or_ln55_7_fu_1730_p2;
wire   [0:0] or_ln55_6_fu_1712_p2;
wire   [0:0] and_ln55_6_fu_1736_p2;
wire   [0:0] and_ln55_7_fu_1742_p2;
wire   [7:0] zext_ln55_3_fu_1754_p1;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire   [2:0] tmp_1_fu_806_p1;
wire   [2:0] tmp_1_fu_806_p3;
wire   [2:0] tmp_1_fu_806_p5;
wire   [2:0] tmp_1_fu_806_p7;
wire  signed [2:0] tmp_1_fu_806_p9;
wire  signed [2:0] tmp_1_fu_806_p11;
wire  signed [2:0] tmp_1_fu_806_p13;
wire  signed [2:0] tmp_1_fu_806_p15;
wire   [2:0] tmp_2_fu_877_p1;
wire   [2:0] tmp_2_fu_877_p3;
wire   [2:0] tmp_2_fu_877_p5;
wire   [2:0] tmp_2_fu_877_p7;
wire  signed [2:0] tmp_2_fu_877_p9;
wire  signed [2:0] tmp_2_fu_877_p11;
wire  signed [2:0] tmp_2_fu_877_p13;
wire  signed [2:0] tmp_2_fu_877_p15;
wire  signed [2:0] tmp_6_fu_916_p1;
wire   [2:0] tmp_6_fu_916_p3;
wire   [2:0] tmp_6_fu_916_p5;
wire   [2:0] tmp_6_fu_916_p7;
wire   [2:0] tmp_6_fu_916_p9;
wire  signed [2:0] tmp_6_fu_916_p11;
wire  signed [2:0] tmp_6_fu_916_p13;
wire  signed [2:0] tmp_6_fu_916_p15;
wire  signed [2:0] tmp_11_fu_979_p1;
wire  signed [2:0] tmp_11_fu_979_p3;
wire   [2:0] tmp_11_fu_979_p5;
wire   [2:0] tmp_11_fu_979_p7;
wire   [2:0] tmp_11_fu_979_p9;
wire   [2:0] tmp_11_fu_979_p11;
wire  signed [2:0] tmp_11_fu_979_p13;
wire  signed [2:0] tmp_11_fu_979_p15;
wire   [2:0] tmp_7_fu_1104_p1;
wire   [2:0] tmp_7_fu_1104_p3;
wire   [2:0] tmp_7_fu_1104_p5;
wire   [2:0] tmp_7_fu_1104_p7;
wire  signed [2:0] tmp_7_fu_1104_p9;
wire  signed [2:0] tmp_7_fu_1104_p11;
wire  signed [2:0] tmp_7_fu_1104_p13;
wire  signed [2:0] tmp_7_fu_1104_p15;
wire   [2:0] tmp_12_fu_1175_p1;
wire   [2:0] tmp_12_fu_1175_p3;
wire   [2:0] tmp_12_fu_1175_p5;
wire   [2:0] tmp_12_fu_1175_p7;
wire  signed [2:0] tmp_12_fu_1175_p9;
wire  signed [2:0] tmp_12_fu_1175_p11;
wire  signed [2:0] tmp_12_fu_1175_p13;
wire  signed [2:0] tmp_12_fu_1175_p15;
wire  signed [2:0] tmp_17_fu_1214_p1;
wire  signed [2:0] tmp_17_fu_1214_p3;
wire  signed [2:0] tmp_17_fu_1214_p5;
wire   [2:0] tmp_17_fu_1214_p7;
wire   [2:0] tmp_17_fu_1214_p9;
wire   [2:0] tmp_17_fu_1214_p11;
wire   [2:0] tmp_17_fu_1214_p13;
wire  signed [2:0] tmp_17_fu_1214_p15;
wire   [2:0] tmp_18_fu_1313_p1;
wire   [2:0] tmp_18_fu_1313_p3;
wire   [2:0] tmp_18_fu_1313_p5;
wire   [2:0] tmp_18_fu_1313_p7;
wire  signed [2:0] tmp_18_fu_1313_p9;
wire  signed [2:0] tmp_18_fu_1313_p11;
wire  signed [2:0] tmp_18_fu_1313_p13;
wire  signed [2:0] tmp_18_fu_1313_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_136 = 64'd0;
#0 min_s_fu_140 = 8'd0;
#0 min_s_1_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U93(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_1_fu_806_p17),.sel(trunc_ln21_reg_1821),.dout(tmp_1_fu_806_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U94(.din0(tmp_2_fu_877_p2),.din1(tmp_2_fu_877_p4),.din2(tmp_2_fu_877_p6),.din3(tmp_2_fu_877_p8),.din4(tmp_2_fu_877_p10),.din5(tmp_2_fu_877_p12),.din6(tmp_2_fu_877_p14),.din7(tmp_2_fu_877_p16),.def(tmp_2_fu_877_p17),.sel(empty),.dout(tmp_2_fu_877_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U95(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_6_fu_916_p17),.sel(trunc_ln21_reg_1821),.dout(tmp_6_fu_916_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U96(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_11_fu_979_p17),.sel(trunc_ln21_reg_1821),.dout(tmp_11_fu_979_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U97(.din0(tmp_7_fu_1104_p2),.din1(tmp_7_fu_1104_p4),.din2(tmp_7_fu_1104_p6),.din3(tmp_7_fu_1104_p8),.din4(tmp_7_fu_1104_p10),.din5(tmp_7_fu_1104_p12),.din6(tmp_7_fu_1104_p14),.din7(tmp_7_fu_1104_p16),.def(tmp_7_fu_1104_p17),.sel(empty),.dout(tmp_7_fu_1104_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U98(.din0(tmp_12_fu_1175_p2),.din1(tmp_12_fu_1175_p4),.din2(tmp_12_fu_1175_p6),.din3(tmp_12_fu_1175_p8),.din4(tmp_12_fu_1175_p10),.din5(tmp_12_fu_1175_p12),.din6(tmp_12_fu_1175_p14),.din7(tmp_12_fu_1175_p16),.def(tmp_12_fu_1175_p17),.sel(empty),.dout(tmp_12_fu_1175_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U99(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_17_fu_1214_p17),.sel(trunc_ln21_reg_1821),.dout(tmp_17_fu_1214_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U100(.din0(tmp_18_fu_1313_p2),.din1(tmp_18_fu_1313_p4),.din2(tmp_18_fu_1313_p6),.din3(tmp_18_fu_1313_p8),.din4(tmp_18_fu_1313_p10),.din5(tmp_18_fu_1313_p12),.din6(tmp_18_fu_1313_p14),.din7(tmp_18_fu_1313_p16),.def(tmp_18_fu_1313_p17),.sel(empty),.dout(tmp_18_fu_1313_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_136 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_136 <= min_p_9_fu_1747_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_144 <= 6'd1;
    end else if (((tmp_16_reg_1927 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_144 <= add_ln53_3_fu_1352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_140 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_140 <= min_s_7_fu_1757_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1915 <= add_ln53_1_fu_786_p2;
        add_ln53_1_reg_1915_pp0_iter1_reg <= add_ln53_1_reg_1915;
        add_ln53_2_reg_1921 <= add_ln53_2_fu_792_p2;
        add_ln53_reg_1909 <= add_ln53_fu_780_p2;
        add_ln53_reg_1909_pp0_iter1_reg <= add_ln53_reg_1909;
        s_reg_1815 <= ap_sig_allocacmp_s;
        s_reg_1815_pp0_iter1_reg <= s_reg_1815;
        tmp_16_reg_1927 <= add_ln53_2_fu_792_p2[32'd6];
        tmp_16_reg_1927_pp0_iter1_reg <= tmp_16_reg_1927;
        trunc_ln21_reg_1821 <= trunc_ln21_fu_720_p1;
        zext_ln52_2_cast_reg_1808[4 : 0] <= zext_ln52_2_cast_fu_694_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_2150 <= and_ln55_1_fu_1443_p2;
        tmp_12_reg_2076 <= tmp_12_fu_1175_p19;
        tmp_17_reg_2081 <= tmp_17_fu_1214_p19;
        tmp_7_reg_2071 <= tmp_7_fu_1104_p19;
        trunc_ln54_reg_2086 <= trunc_ln54_fu_1253_p1;
        trunc_ln54_reg_2086_pp0_iter1_reg <= trunc_ln54_reg_2086;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_2170 <= and_ln55_3_fu_1532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_2188 <= and_ln55_5_fu_1643_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_2136 <= min_p_fu_136;
        tmp_11_reg_1986 <= tmp_11_fu_979_p19;
        tmp_1_reg_1931 <= tmp_1_fu_806_p19;
        tmp_2_reg_1936 <= tmp_2_fu_877_p19;
        tmp_6_reg_1941 <= tmp_6_fu_916_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_2163 <= min_p_3_fu_1449_p3;
        tmp_18_reg_2131 <= tmp_18_fu_1313_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_2176 <= min_p_5_fu_1551_p3;
        min_s_5_reg_2183 <= min_s_5_fu_1560_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_2199 <= min_p_7_fu_1659_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_2194 <= min_s_6_fu_1652_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_2143 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_2156 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_689 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_21_reg_2206 <= grp_fu_2062_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_16_reg_1927 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_16_reg_1927_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_144;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_681_p0 = tmp_17_reg_2081;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_681_p0 = tmp_11_reg_1986;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_681_p0 = tmp_6_reg_1941;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_681_p0 = tmp_1_reg_1931;
        end else begin
            grp_fu_681_p0 = 'bx;
        end
    end else begin
        grp_fu_681_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_681_p1 = tmp_18_reg_2131;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_681_p1 = tmp_12_reg_2076;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_681_p1 = tmp_7_reg_2071;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_681_p1 = tmp_2_reg_1936;
        end else begin
            grp_fu_681_p1 = 'bx;
        end
    end else begin
        grp_fu_681_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_685_p0 = p_2_reg_2156;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_685_p0 = p_1_reg_2143;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_685_p0 = reg_689;
    end else begin
        grp_fu_685_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_685_p1 = min_p_7_fu_1659_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_685_p1 = min_p_5_fu_1551_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_685_p1 = min_p_3_fu_1449_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_685_p1 = min_p_fu_136;
        end else begin
            grp_fu_685_p1 = 'bx;
        end
    end else begin
        grp_fu_685_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_742_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_6_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_742_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_16_reg_1927_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_768_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_3_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_967_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_786_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_792_p2 = (zext_ln21_fu_716_p1 + 7'd3);
assign add_ln53_3_fu_1352_p2 = (s_reg_1815 + 6'd4);
assign add_ln53_fu_780_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_962_p2 = (shl_ln54_1_fu_955_p3 + zext_ln52_2_cast_reg_1808);
assign add_ln54_2_fu_1025_p2 = (shl_ln54_2_fu_1018_p3 + zext_ln52_2_cast_reg_1808);
assign add_ln54_3_fu_1264_p2 = (shl_ln54_3_fu_1256_p3 + zext_ln52_2_cast_reg_1808);
assign add_ln54_4_fu_1055_p2 = (zext_ln52_3 + zext_ln54_5_fu_1051_p1);
assign add_ln54_fu_762_p2 = (shl_ln2_fu_754_p3 + zext_ln52_2_cast_fu_694_p1);
assign and_ln55_1_fu_1443_p2 = (or_ln55_1_fu_1431_p2 & and_ln55_fu_1437_p2);
assign and_ln55_2_fu_1526_p2 = (or_ln55_3_fu_1520_p2 & or_ln55_2_fu_1502_p2);
assign and_ln55_3_fu_1532_p2 = (grp_fu_2062_p_dout0 & and_ln55_2_fu_1526_p2);
assign and_ln55_4_fu_1637_p2 = (or_ln55_5_fu_1631_p2 & or_ln55_4_fu_1613_p2);
assign and_ln55_5_fu_1643_p2 = (grp_fu_2062_p_dout0 & and_ln55_4_fu_1637_p2);
assign and_ln55_6_fu_1736_p2 = (or_ln55_7_fu_1730_p2 & or_ln55_6_fu_1712_p2);
assign and_ln55_7_fu_1742_p2 = (tmp_21_reg_2206 & and_ln55_6_fu_1736_p2);
assign and_ln55_fu_1437_p2 = (or_ln55_fu_1413_p2 & grp_fu_2062_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_1384_p1 = min_p_1_reg_2136;
assign bitcast_ln55_2_fu_1456_p1 = p_1_reg_2143;
assign bitcast_ln55_3_fu_1473_p1 = min_p_3_reg_2163;
assign bitcast_ln55_4_fu_1567_p1 = p_2_reg_2156;
assign bitcast_ln55_5_fu_1584_p1 = min_p_5_reg_2176;
assign bitcast_ln55_6_fu_1665_p1 = reg_689;
assign bitcast_ln55_7_fu_1683_p1 = min_p_7_reg_2199;
assign bitcast_ln55_fu_1366_p1 = reg_689;
assign grp_fu_1059_p_ce = 1'b1;
assign grp_fu_1059_p_din0 = grp_fu_681_p0;
assign grp_fu_1059_p_din1 = grp_fu_681_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign grp_fu_2062_p_ce = 1'b1;
assign grp_fu_2062_p_din0 = grp_fu_685_p0;
assign grp_fu_2062_p_din1 = grp_fu_685_p1;
assign grp_fu_2062_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1619_p2 = ((tmp_14_fu_1587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1625_p2 = ((trunc_ln55_5_fu_1597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1700_p2 = ((tmp_19_fu_1669_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1706_p2 = ((trunc_ln55_6_fu_1679_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1718_p2 = ((tmp_20_fu_1686_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1724_p2 = ((trunc_ln55_7_fu_1696_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1407_p2 = ((trunc_ln55_fu_1380_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1419_p2 = ((tmp_4_fu_1387_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1425_p2 = ((trunc_ln55_1_fu_1397_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1490_p2 = ((tmp_8_fu_1459_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1496_p2 = ((trunc_ln55_2_fu_1469_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1508_p2 = ((tmp_9_fu_1476_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1514_p2 = ((trunc_ln55_3_fu_1486_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1601_p2 = ((tmp_13_fu_1570_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1607_p2 = ((trunc_ln55_4_fu_1580_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1401_p2 = ((tmp_3_fu_1370_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_724_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_2_fu_1042_p4 = {{add_ln53_2_reg_1921[6:3]}};
assign min_p_3_fu_1449_p3 = ((and_ln55_1_reg_2150[0:0] == 1'b1) ? reg_689 : min_p_1_reg_2136);
assign min_p_5_fu_1551_p3 = ((and_ln55_3_reg_2170[0:0] == 1'b1) ? p_1_reg_2143 : min_p_3_reg_2163);
assign min_p_7_fu_1659_p3 = ((and_ln55_5_reg_2188[0:0] == 1'b1) ? p_2_reg_2156 : min_p_5_reg_2176);
assign min_p_9_fu_1747_p3 = ((and_ln55_7_fu_1742_p2[0:0] == 1'b1) ? reg_689 : min_p_7_reg_2199);
assign min_s_10_out = ((and_ln55_5_reg_2188[0:0] == 1'b1) ? zext_ln55_2_fu_1649_p1 : min_s_5_reg_2183);
assign min_s_4_fu_1544_p3 = ((and_ln55_1_reg_2150[0:0] == 1'b1) ? zext_ln55_fu_1541_p1 : min_s_fu_140);
assign min_s_5_fu_1560_p3 = ((and_ln55_3_reg_2170[0:0] == 1'b1) ? zext_ln55_1_fu_1557_p1 : min_s_4_fu_1544_p3);
assign min_s_6_fu_1652_p3 = ((and_ln55_5_reg_2188[0:0] == 1'b1) ? zext_ln55_2_fu_1649_p1 : min_s_5_reg_2183);
assign min_s_7_fu_1757_p3 = ((and_ln55_7_fu_1742_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1754_p1 : min_s_6_reg_2194);
assign or_ln55_1_fu_1431_p2 = (icmp_ln55_3_fu_1425_p2 | icmp_ln55_2_fu_1419_p2);
assign or_ln55_2_fu_1502_p2 = (icmp_ln55_5_fu_1496_p2 | icmp_ln55_4_fu_1490_p2);
assign or_ln55_3_fu_1520_p2 = (icmp_ln55_7_fu_1514_p2 | icmp_ln55_6_fu_1508_p2);
assign or_ln55_4_fu_1613_p2 = (icmp_ln55_9_fu_1607_p2 | icmp_ln55_8_fu_1601_p2);
assign or_ln55_5_fu_1631_p2 = (icmp_ln55_11_fu_1625_p2 | icmp_ln55_10_fu_1619_p2);
assign or_ln55_6_fu_1712_p2 = (icmp_ln55_13_fu_1706_p2 | icmp_ln55_12_fu_1700_p2);
assign or_ln55_7_fu_1730_p2 = (icmp_ln55_15_fu_1724_p2 | icmp_ln55_14_fu_1718_p2);
assign or_ln55_fu_1413_p2 = (icmp_ln55_fu_1401_p2 | icmp_ln55_1_fu_1407_p2);
assign shl_ln2_fu_754_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_955_p3 = {{add_ln53_reg_1909}, {3'd0}};
assign shl_ln54_2_fu_1018_p3 = {{add_ln53_1_reg_1915}, {3'd0}};
assign shl_ln54_3_fu_1256_p3 = {{trunc_ln54_fu_1253_p1}, {3'd0}};
assign tmp_11_fu_979_p17 = 'bx;
assign tmp_12_fu_1175_p10 = transition_4_q0;
assign tmp_12_fu_1175_p12 = transition_5_q0;
assign tmp_12_fu_1175_p14 = transition_6_q0;
assign tmp_12_fu_1175_p16 = transition_7_q0;
assign tmp_12_fu_1175_p17 = 'bx;
assign tmp_12_fu_1175_p2 = transition_0_q0;
assign tmp_12_fu_1175_p4 = transition_1_q0;
assign tmp_12_fu_1175_p6 = transition_2_q0;
assign tmp_12_fu_1175_p8 = transition_3_q0;
assign tmp_13_fu_1570_p4 = {{bitcast_ln55_4_fu_1567_p1[62:52]}};
assign tmp_14_fu_1587_p4 = {{bitcast_ln55_5_fu_1584_p1[62:52]}};
assign tmp_17_fu_1214_p17 = 'bx;
assign tmp_18_fu_1313_p10 = transition_4_q1;
assign tmp_18_fu_1313_p12 = transition_5_q1;
assign tmp_18_fu_1313_p14 = transition_6_q1;
assign tmp_18_fu_1313_p16 = transition_7_q1;
assign tmp_18_fu_1313_p17 = 'bx;
assign tmp_18_fu_1313_p2 = transition_0_q1;
assign tmp_18_fu_1313_p4 = transition_1_q1;
assign tmp_18_fu_1313_p6 = transition_2_q1;
assign tmp_18_fu_1313_p8 = transition_3_q1;
assign tmp_19_fu_1669_p4 = {{bitcast_ln55_6_fu_1665_p1[62:52]}};
assign tmp_1_fu_806_p17 = 'bx;
assign tmp_20_fu_1686_p4 = {{bitcast_ln55_7_fu_1683_p1[62:52]}};
assign tmp_2_fu_877_p10 = transition_4_q0;
assign tmp_2_fu_877_p12 = transition_5_q0;
assign tmp_2_fu_877_p14 = transition_6_q0;
assign tmp_2_fu_877_p16 = transition_7_q0;
assign tmp_2_fu_877_p17 = 'bx;
assign tmp_2_fu_877_p2 = transition_0_q0;
assign tmp_2_fu_877_p4 = transition_1_q0;
assign tmp_2_fu_877_p6 = transition_2_q0;
assign tmp_2_fu_877_p8 = transition_3_q0;
assign tmp_3_fu_1370_p4 = {{bitcast_ln55_fu_1366_p1[62:52]}};
assign tmp_4_fu_1387_p4 = {{bitcast_ln55_1_fu_1384_p1[62:52]}};
assign tmp_6_fu_916_p17 = 'bx;
assign tmp_7_fu_1104_p10 = transition_4_q1;
assign tmp_7_fu_1104_p12 = transition_5_q1;
assign tmp_7_fu_1104_p14 = transition_6_q1;
assign tmp_7_fu_1104_p16 = transition_7_q1;
assign tmp_7_fu_1104_p17 = 'bx;
assign tmp_7_fu_1104_p2 = transition_0_q1;
assign tmp_7_fu_1104_p4 = transition_1_q1;
assign tmp_7_fu_1104_p6 = transition_2_q1;
assign tmp_7_fu_1104_p8 = transition_3_q1;
assign tmp_8_fu_1459_p4 = {{bitcast_ln55_2_fu_1456_p1[62:52]}};
assign tmp_9_fu_1476_p4 = {{bitcast_ln55_3_fu_1473_p1[62:52]}};
assign tmp_s_fu_734_p3 = {{t_1}, {lshr_ln8_2_fu_724_p4}};
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
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln21_fu_720_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln54_fu_1253_p1 = add_ln53_2_reg_1921[5:0];
assign trunc_ln55_1_fu_1397_p1 = bitcast_ln55_1_fu_1384_p1[51:0];
assign trunc_ln55_2_fu_1469_p1 = bitcast_ln55_2_fu_1456_p1[51:0];
assign trunc_ln55_3_fu_1486_p1 = bitcast_ln55_3_fu_1473_p1[51:0];
assign trunc_ln55_4_fu_1580_p1 = bitcast_ln55_4_fu_1567_p1[51:0];
assign trunc_ln55_5_fu_1597_p1 = bitcast_ln55_5_fu_1584_p1[51:0];
assign trunc_ln55_6_fu_1679_p1 = bitcast_ln55_6_fu_1665_p1[51:0];
assign trunc_ln55_7_fu_1696_p1 = bitcast_ln55_7_fu_1683_p1[51:0];
assign trunc_ln55_fu_1380_p1 = bitcast_ln55_fu_1366_p1[51:0];
assign zext_ln21_fu_716_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_694_p1 = zext_ln52_2;
assign zext_ln54_1_fu_967_p1 = add_ln54_1_fu_962_p2;
assign zext_ln54_2_fu_1030_p1 = add_ln54_2_fu_1025_p2;
assign zext_ln54_3_fu_1269_p1 = add_ln54_3_fu_1264_p2;
assign zext_ln54_4_fu_742_p1 = tmp_s_fu_734_p3;
assign zext_ln54_5_fu_1051_p1 = lshr_ln9_2_fu_1042_p4;
assign zext_ln54_6_fu_1060_p1 = add_ln54_4_fu_1055_p2;
assign zext_ln54_fu_768_p1 = add_ln54_fu_762_p2;
assign zext_ln55_1_fu_1557_p1 = add_ln53_reg_1909_pp0_iter1_reg;
assign zext_ln55_2_fu_1649_p1 = add_ln53_1_reg_1915_pp0_iter1_reg;
assign zext_ln55_3_fu_1754_p1 = trunc_ln54_reg_2086_pp0_iter1_reg;
assign zext_ln55_fu_1541_p1 = s_reg_1815_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1808[8:5] <= 4'b0000;
end
endmodule 