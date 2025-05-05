module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_511_p_din0,grp_fu_511_p_din1,grp_fu_511_p_opcode,grp_fu_511_p_dout0,grp_fu_511_p_ce,grp_fu_843_p_din0,grp_fu_843_p_din1,grp_fu_843_p_opcode,grp_fu_843_p_dout0,grp_fu_843_p_ce); 
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
input  [63:0] min_p_147;
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
input  [5:0] zext_ln52_2;
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
input  [1:0] empty;
input  [9:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_511_p_din0;
output  [63:0] grp_fu_511_p_din1;
output  [1:0] grp_fu_511_p_opcode;
input  [63:0] grp_fu_511_p_dout0;
output   grp_fu_511_p_ce;
output  [63:0] grp_fu_843_p_din0;
output  [63:0] grp_fu_843_p_din1;
output  [4:0] grp_fu_843_p_opcode;
input  [0:0] grp_fu_843_p_dout0;
output   grp_fu_843_p_ce;
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
reg   [0:0] tmp_1_reg_1985;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_727;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] zext_ln52_2_cast_fu_732_p1;
reg   [9:0] zext_ln52_2_cast_reg_1846;
reg   [5:0] s_reg_1853;
reg   [5:0] s_reg_1853_pp0_iter1_reg;
wire   [3:0] trunc_ln17_fu_758_p1;
reg   [3:0] trunc_ln17_reg_1859;
wire   [5:0] add_ln53_fu_822_p2;
reg   [5:0] add_ln53_reg_1967;
reg   [5:0] add_ln53_reg_1967_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_828_p2;
reg   [5:0] add_ln53_1_reg_1973;
reg   [5:0] add_ln53_1_reg_1973_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_834_p2;
reg   [6:0] add_ln53_2_reg_1979;
reg   [0:0] tmp_1_reg_1985_pp0_iter1_reg;
wire   [63:0] tmp_69_fu_848_p35;
reg   [63:0] tmp_69_reg_1989;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_70_fu_935_p11;
reg   [63:0] tmp_70_reg_1994;
wire   [63:0] tmp_71_fu_958_p35;
reg   [63:0] tmp_71_reg_1999;
wire   [63:0] tmp_73_fu_1049_p35;
reg   [63:0] tmp_73_reg_2024;
wire   [63:0] tmp_72_fu_1194_p11;
reg   [63:0] tmp_72_reg_2129;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_74_fu_1233_p11;
reg   [63:0] tmp_74_reg_2134;
wire   [63:0] tmp_75_fu_1256_p35;
reg   [63:0] tmp_75_reg_2139;
wire   [5:0] trunc_ln54_fu_1327_p1;
reg   [5:0] trunc_ln54_reg_2144;
reg   [5:0] trunc_ln54_reg_2144_pp0_iter1_reg;
wire   [63:0] tmp_76_fu_1367_p11;
reg   [63:0] tmp_76_reg_2169;
reg   [63:0] min_p_127_reg_2174;
reg   [63:0] p_63_reg_2181;
wire   [0:0] and_ln55_1_fu_1481_p2;
reg   [0:0] and_ln55_1_reg_2188;
reg   [63:0] p_64_reg_2194;
wire   [63:0] min_p_129_fu_1487_p3;
reg   [63:0] min_p_129_reg_2201;
wire   [0:0] and_ln55_3_fu_1570_p2;
reg   [0:0] and_ln55_3_reg_2208;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_131_fu_1589_p3;
reg   [63:0] min_p_131_reg_2214;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1598_p3;
reg   [7:0] min_s_5_reg_2221;
wire   [0:0] and_ln55_5_fu_1681_p2;
reg   [0:0] and_ln55_5_reg_2226;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1690_p3;
reg   [7:0] min_s_6_reg_2232;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_1697_p3;
reg   [63:0] min_p_133_reg_2237;
reg   [0:0] tmp_271_reg_2244;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_780_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_814_p1;
wire   [63:0] zext_ln54_1_fu_1041_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1132_p1;
wire   [63:0] zext_ln54_6_fu_1158_p1;
wire   [63:0] zext_ln54_3_fu_1343_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_170;
wire   [63:0] min_p_135_fu_1785_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_174;
wire   [7:0] min_s_7_fu_1795_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_178;
wire   [5:0] add_ln53_3_fu_1390_p2;
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
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg   [63:0] grp_fu_719_p0;
reg   [63:0] grp_fu_719_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_723_p0;
reg   [63:0] grp_fu_723_p1;
wire    ap_block_pp0_stage7;
wire   [1:0] lshr_ln8_1_fu_762_p4;
wire   [9:0] tmp_s_fu_772_p3;
wire   [9:0] shl_ln2_fu_800_p3;
wire   [9:0] add_ln54_fu_808_p2;
wire   [6:0] zext_ln17_fu_754_p1;
wire   [63:0] tmp_69_fu_848_p33;
wire   [63:0] tmp_70_fu_935_p2;
wire   [63:0] tmp_70_fu_935_p4;
wire   [63:0] tmp_70_fu_935_p6;
wire   [63:0] tmp_70_fu_935_p8;
wire   [63:0] tmp_70_fu_935_p9;
wire   [63:0] tmp_71_fu_958_p33;
wire   [9:0] shl_ln54_1_fu_1029_p3;
wire   [9:0] add_ln54_1_fu_1036_p2;
wire   [63:0] tmp_73_fu_1049_p33;
wire   [9:0] shl_ln54_2_fu_1120_p3;
wire   [9:0] add_ln54_2_fu_1127_p2;
wire   [2:0] lshr_ln9_3_fu_1140_p4;
wire   [9:0] zext_ln54_5_fu_1149_p1;
wire   [9:0] add_ln54_4_fu_1153_p2;
wire   [63:0] tmp_72_fu_1194_p2;
wire   [63:0] tmp_72_fu_1194_p4;
wire   [63:0] tmp_72_fu_1194_p6;
wire   [63:0] tmp_72_fu_1194_p8;
wire   [63:0] tmp_72_fu_1194_p9;
wire   [63:0] tmp_74_fu_1233_p2;
wire   [63:0] tmp_74_fu_1233_p4;
wire   [63:0] tmp_74_fu_1233_p6;
wire   [63:0] tmp_74_fu_1233_p8;
wire   [63:0] tmp_74_fu_1233_p9;
wire   [63:0] tmp_75_fu_1256_p33;
wire   [9:0] shl_ln54_3_fu_1330_p3;
wire   [9:0] add_ln54_3_fu_1338_p2;
wire   [63:0] tmp_76_fu_1367_p2;
wire   [63:0] tmp_76_fu_1367_p4;
wire   [63:0] tmp_76_fu_1367_p6;
wire   [63:0] tmp_76_fu_1367_p8;
wire   [63:0] tmp_76_fu_1367_p9;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1404_p1;
wire   [63:0] bitcast_ln55_1_fu_1422_p1;
wire   [10:0] tmp_260_fu_1408_p4;
wire   [51:0] trunc_ln55_fu_1418_p1;
wire   [0:0] icmp_ln55_1_fu_1445_p2;
wire   [0:0] icmp_ln55_fu_1439_p2;
wire   [10:0] tmp_261_fu_1425_p4;
wire   [51:0] trunc_ln55_1_fu_1435_p1;
wire   [0:0] icmp_ln55_3_fu_1463_p2;
wire   [0:0] icmp_ln55_2_fu_1457_p2;
wire   [0:0] or_ln55_fu_1451_p2;
wire   [0:0] and_ln55_fu_1475_p2;
wire   [0:0] or_ln55_1_fu_1469_p2;
wire   [63:0] bitcast_ln55_2_fu_1494_p1;
wire   [63:0] bitcast_ln55_3_fu_1511_p1;
wire   [10:0] tmp_263_fu_1497_p4;
wire   [51:0] trunc_ln55_2_fu_1507_p1;
wire   [0:0] icmp_ln55_5_fu_1534_p2;
wire   [0:0] icmp_ln55_4_fu_1528_p2;
wire   [10:0] tmp_264_fu_1514_p4;
wire   [51:0] trunc_ln55_3_fu_1524_p1;
wire   [0:0] icmp_ln55_7_fu_1552_p2;
wire   [0:0] icmp_ln55_6_fu_1546_p2;
wire   [0:0] or_ln55_3_fu_1558_p2;
wire   [0:0] or_ln55_2_fu_1540_p2;
wire   [0:0] and_ln55_2_fu_1564_p2;
wire   [7:0] zext_ln55_fu_1579_p1;
wire   [7:0] zext_ln55_1_fu_1595_p1;
wire   [7:0] min_s_4_fu_1582_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1605_p1;
wire   [63:0] bitcast_ln55_5_fu_1622_p1;
wire   [10:0] tmp_266_fu_1608_p4;
wire   [51:0] trunc_ln55_4_fu_1618_p1;
wire   [0:0] icmp_ln55_9_fu_1645_p2;
wire   [0:0] icmp_ln55_8_fu_1639_p2;
wire   [10:0] tmp_267_fu_1625_p4;
wire   [51:0] trunc_ln55_5_fu_1635_p1;
wire   [0:0] icmp_ln55_11_fu_1663_p2;
wire   [0:0] icmp_ln55_10_fu_1657_p2;
wire   [0:0] or_ln55_5_fu_1669_p2;
wire   [0:0] or_ln55_4_fu_1651_p2;
wire   [0:0] and_ln55_4_fu_1675_p2;
wire   [7:0] zext_ln55_2_fu_1687_p1;
wire   [63:0] bitcast_ln55_6_fu_1703_p1;
wire   [63:0] bitcast_ln55_7_fu_1721_p1;
wire   [10:0] tmp_269_fu_1707_p4;
wire   [51:0] trunc_ln55_6_fu_1717_p1;
wire   [0:0] icmp_ln55_13_fu_1744_p2;
wire   [0:0] icmp_ln55_12_fu_1738_p2;
wire   [10:0] tmp_270_fu_1724_p4;
wire   [51:0] trunc_ln55_7_fu_1734_p1;
wire   [0:0] icmp_ln55_15_fu_1762_p2;
wire   [0:0] icmp_ln55_14_fu_1756_p2;
wire   [0:0] or_ln55_7_fu_1768_p2;
wire   [0:0] or_ln55_6_fu_1750_p2;
wire   [0:0] and_ln55_6_fu_1774_p2;
wire   [0:0] and_ln55_7_fu_1780_p2;
wire   [7:0] zext_ln55_3_fu_1792_p1;
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
wire   [3:0] tmp_69_fu_848_p1;
wire   [3:0] tmp_69_fu_848_p3;
wire   [3:0] tmp_69_fu_848_p5;
wire   [3:0] tmp_69_fu_848_p7;
wire   [3:0] tmp_69_fu_848_p9;
wire   [3:0] tmp_69_fu_848_p11;
wire   [3:0] tmp_69_fu_848_p13;
wire   [3:0] tmp_69_fu_848_p15;
wire  signed [3:0] tmp_69_fu_848_p17;
wire  signed [3:0] tmp_69_fu_848_p19;
wire  signed [3:0] tmp_69_fu_848_p21;
wire  signed [3:0] tmp_69_fu_848_p23;
wire  signed [3:0] tmp_69_fu_848_p25;
wire  signed [3:0] tmp_69_fu_848_p27;
wire  signed [3:0] tmp_69_fu_848_p29;
wire  signed [3:0] tmp_69_fu_848_p31;
wire   [1:0] tmp_70_fu_935_p1;
wire   [1:0] tmp_70_fu_935_p3;
wire  signed [1:0] tmp_70_fu_935_p5;
wire  signed [1:0] tmp_70_fu_935_p7;
wire  signed [3:0] tmp_71_fu_958_p1;
wire   [3:0] tmp_71_fu_958_p3;
wire   [3:0] tmp_71_fu_958_p5;
wire   [3:0] tmp_71_fu_958_p7;
wire   [3:0] tmp_71_fu_958_p9;
wire   [3:0] tmp_71_fu_958_p11;
wire   [3:0] tmp_71_fu_958_p13;
wire   [3:0] tmp_71_fu_958_p15;
wire   [3:0] tmp_71_fu_958_p17;
wire  signed [3:0] tmp_71_fu_958_p19;
wire  signed [3:0] tmp_71_fu_958_p21;
wire  signed [3:0] tmp_71_fu_958_p23;
wire  signed [3:0] tmp_71_fu_958_p25;
wire  signed [3:0] tmp_71_fu_958_p27;
wire  signed [3:0] tmp_71_fu_958_p29;
wire  signed [3:0] tmp_71_fu_958_p31;
wire  signed [3:0] tmp_73_fu_1049_p1;
wire  signed [3:0] tmp_73_fu_1049_p3;
wire   [3:0] tmp_73_fu_1049_p5;
wire   [3:0] tmp_73_fu_1049_p7;
wire   [3:0] tmp_73_fu_1049_p9;
wire   [3:0] tmp_73_fu_1049_p11;
wire   [3:0] tmp_73_fu_1049_p13;
wire   [3:0] tmp_73_fu_1049_p15;
wire   [3:0] tmp_73_fu_1049_p17;
wire   [3:0] tmp_73_fu_1049_p19;
wire  signed [3:0] tmp_73_fu_1049_p21;
wire  signed [3:0] tmp_73_fu_1049_p23;
wire  signed [3:0] tmp_73_fu_1049_p25;
wire  signed [3:0] tmp_73_fu_1049_p27;
wire  signed [3:0] tmp_73_fu_1049_p29;
wire  signed [3:0] tmp_73_fu_1049_p31;
wire   [1:0] tmp_72_fu_1194_p1;
wire   [1:0] tmp_72_fu_1194_p3;
wire  signed [1:0] tmp_72_fu_1194_p5;
wire  signed [1:0] tmp_72_fu_1194_p7;
wire   [1:0] tmp_74_fu_1233_p1;
wire   [1:0] tmp_74_fu_1233_p3;
wire  signed [1:0] tmp_74_fu_1233_p5;
wire  signed [1:0] tmp_74_fu_1233_p7;
wire  signed [3:0] tmp_75_fu_1256_p1;
wire  signed [3:0] tmp_75_fu_1256_p3;
wire  signed [3:0] tmp_75_fu_1256_p5;
wire   [3:0] tmp_75_fu_1256_p7;
wire   [3:0] tmp_75_fu_1256_p9;
wire   [3:0] tmp_75_fu_1256_p11;
wire   [3:0] tmp_75_fu_1256_p13;
wire   [3:0] tmp_75_fu_1256_p15;
wire   [3:0] tmp_75_fu_1256_p17;
wire   [3:0] tmp_75_fu_1256_p19;
wire   [3:0] tmp_75_fu_1256_p21;
wire  signed [3:0] tmp_75_fu_1256_p23;
wire  signed [3:0] tmp_75_fu_1256_p25;
wire  signed [3:0] tmp_75_fu_1256_p27;
wire  signed [3:0] tmp_75_fu_1256_p29;
wire  signed [3:0] tmp_75_fu_1256_p31;
wire   [1:0] tmp_76_fu_1367_p1;
wire   [1:0] tmp_76_fu_1367_p3;
wire  signed [1:0] tmp_76_fu_1367_p5;
wire  signed [1:0] tmp_76_fu_1367_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_170 = 64'd0;
#0 min_s_fu_174 = 8'd0;
#0 min_s_1_fu_178 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U162(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_69_fu_848_p33),.sel(trunc_ln17_reg_1859),.dout(tmp_69_fu_848_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U163(.din0(tmp_70_fu_935_p2),.din1(tmp_70_fu_935_p4),.din2(tmp_70_fu_935_p6),.din3(tmp_70_fu_935_p8),.def(tmp_70_fu_935_p9),.sel(empty),.dout(tmp_70_fu_935_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U164(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_71_fu_958_p33),.sel(trunc_ln17_reg_1859),.dout(tmp_71_fu_958_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U165(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_73_fu_1049_p33),.sel(trunc_ln17_reg_1859),.dout(tmp_73_fu_1049_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U166(.din0(tmp_72_fu_1194_p2),.din1(tmp_72_fu_1194_p4),.din2(tmp_72_fu_1194_p6),.din3(tmp_72_fu_1194_p8),.def(tmp_72_fu_1194_p9),.sel(empty),.dout(tmp_72_fu_1194_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U167(.din0(tmp_74_fu_1233_p2),.din1(tmp_74_fu_1233_p4),.din2(tmp_74_fu_1233_p6),.din3(tmp_74_fu_1233_p8),.def(tmp_74_fu_1233_p9),.sel(empty),.dout(tmp_74_fu_1233_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U168(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_75_fu_1256_p33),.sel(trunc_ln17_reg_1859),.dout(tmp_75_fu_1256_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U169(.din0(tmp_76_fu_1367_p2),.din1(tmp_76_fu_1367_p4),.din2(tmp_76_fu_1367_p6),.din3(tmp_76_fu_1367_p8),.def(tmp_76_fu_1367_p9),.sel(empty),.dout(tmp_76_fu_1367_p11));
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
            min_p_fu_170 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_170 <= min_p_135_fu_1785_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_178 <= 6'd1;
    end else if (((tmp_1_reg_1985 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_178 <= add_ln53_3_fu_1390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_174 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_174 <= min_s_7_fu_1795_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1973 <= add_ln53_1_fu_828_p2;
        add_ln53_1_reg_1973_pp0_iter1_reg <= add_ln53_1_reg_1973;
        add_ln53_2_reg_1979 <= add_ln53_2_fu_834_p2;
        add_ln53_reg_1967 <= add_ln53_fu_822_p2;
        add_ln53_reg_1967_pp0_iter1_reg <= add_ln53_reg_1967;
        s_reg_1853 <= ap_sig_allocacmp_s;
        s_reg_1853_pp0_iter1_reg <= s_reg_1853;
        tmp_1_reg_1985 <= add_ln53_2_fu_834_p2[32'd6];
        tmp_1_reg_1985_pp0_iter1_reg <= tmp_1_reg_1985;
        trunc_ln17_reg_1859 <= trunc_ln17_fu_758_p1;
        zext_ln52_2_cast_reg_1846[5 : 0] <= zext_ln52_2_cast_fu_732_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_2188 <= and_ln55_1_fu_1481_p2;
        tmp_72_reg_2129 <= tmp_72_fu_1194_p11;
        tmp_74_reg_2134 <= tmp_74_fu_1233_p11;
        tmp_75_reg_2139 <= tmp_75_fu_1256_p35;
        trunc_ln54_reg_2144 <= trunc_ln54_fu_1327_p1;
        trunc_ln54_reg_2144_pp0_iter1_reg <= trunc_ln54_reg_2144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_2208 <= and_ln55_3_fu_1570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_2226 <= and_ln55_5_fu_1681_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_127_reg_2174 <= min_p_fu_170;
        tmp_69_reg_1989 <= tmp_69_fu_848_p35;
        tmp_70_reg_1994 <= tmp_70_fu_935_p11;
        tmp_71_reg_1999 <= tmp_71_fu_958_p35;
        tmp_73_reg_2024 <= tmp_73_fu_1049_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_2201 <= min_p_129_fu_1487_p3;
        tmp_76_reg_2169 <= tmp_76_fu_1367_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_2214 <= min_p_131_fu_1589_p3;
        min_s_5_reg_2221 <= min_s_5_fu_1598_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_2237 <= min_p_133_fu_1697_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_2232 <= min_s_6_fu_1690_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_2181 <= grp_fu_511_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_2194 <= grp_fu_511_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_727 <= grp_fu_511_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_271_reg_2244 <= grp_fu_843_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1985 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1985_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_178;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_719_p0 = tmp_75_reg_2139;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_719_p0 = tmp_73_reg_2024;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_719_p0 = tmp_71_reg_1999;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_719_p0 = tmp_69_reg_1989;
        end else begin
            grp_fu_719_p0 = 'bx;
        end
    end else begin
        grp_fu_719_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_719_p1 = tmp_76_reg_2169;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_719_p1 = tmp_74_reg_2134;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_719_p1 = tmp_72_reg_2129;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_719_p1 = tmp_70_reg_1994;
        end else begin
            grp_fu_719_p1 = 'bx;
        end
    end else begin
        grp_fu_719_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_723_p0 = p_64_reg_2194;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_723_p0 = p_63_reg_2181;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_723_p0 = reg_727;
    end else begin
        grp_fu_723_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_723_p1 = min_p_133_fu_1697_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_723_p1 = min_p_131_fu_1589_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_723_p1 = min_p_129_fu_1487_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_723_p1 = min_p_fu_170;
        end else begin
            grp_fu_723_p1 = 'bx;
        end
    end else begin
        grp_fu_723_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_2_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_3_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_4_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_5_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_6_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_7_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_780_p1;
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
            llike_8_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_4_fu_780_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_6_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_780_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_1_reg_1985_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_814_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1041_p1;
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
            transition_1_address0_local = zext_ln54_2_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_814_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1041_p1;
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
            transition_2_address0_local = zext_ln54_2_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_814_p1;
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
            transition_2_address1_local = zext_ln54_3_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1041_p1;
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
            transition_3_address0_local = zext_ln54_2_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_814_p1;
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
            transition_3_address1_local = zext_ln54_3_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1041_p1;
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
assign add_ln53_1_fu_828_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_834_p2 = (zext_ln17_fu_754_p1 + 7'd3);
assign add_ln53_3_fu_1390_p2 = (s_reg_1853 + 6'd4);
assign add_ln53_fu_822_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1036_p2 = (shl_ln54_1_fu_1029_p3 + zext_ln52_2_cast_reg_1846);
assign add_ln54_2_fu_1127_p2 = (shl_ln54_2_fu_1120_p3 + zext_ln52_2_cast_reg_1846);
assign add_ln54_3_fu_1338_p2 = (shl_ln54_3_fu_1330_p3 + zext_ln52_2_cast_reg_1846);
assign add_ln54_4_fu_1153_p2 = (zext_ln52_3 + zext_ln54_5_fu_1149_p1);
assign add_ln54_fu_808_p2 = (shl_ln2_fu_800_p3 + zext_ln52_2_cast_fu_732_p1);
assign and_ln55_1_fu_1481_p2 = (or_ln55_1_fu_1469_p2 & and_ln55_fu_1475_p2);
assign and_ln55_2_fu_1564_p2 = (or_ln55_3_fu_1558_p2 & or_ln55_2_fu_1540_p2);
assign and_ln55_3_fu_1570_p2 = (grp_fu_843_p_dout0 & and_ln55_2_fu_1564_p2);
assign and_ln55_4_fu_1675_p2 = (or_ln55_5_fu_1669_p2 & or_ln55_4_fu_1651_p2);
assign and_ln55_5_fu_1681_p2 = (grp_fu_843_p_dout0 & and_ln55_4_fu_1675_p2);
assign and_ln55_6_fu_1774_p2 = (or_ln55_7_fu_1768_p2 & or_ln55_6_fu_1750_p2);
assign and_ln55_7_fu_1780_p2 = (tmp_271_reg_2244 & and_ln55_6_fu_1774_p2);
assign and_ln55_fu_1475_p2 = (or_ln55_fu_1451_p2 & grp_fu_843_p_dout0);
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
assign bitcast_ln55_1_fu_1422_p1 = min_p_127_reg_2174;
assign bitcast_ln55_2_fu_1494_p1 = p_63_reg_2181;
assign bitcast_ln55_3_fu_1511_p1 = min_p_129_reg_2201;
assign bitcast_ln55_4_fu_1605_p1 = p_64_reg_2194;
assign bitcast_ln55_5_fu_1622_p1 = min_p_131_reg_2214;
assign bitcast_ln55_6_fu_1703_p1 = reg_727;
assign bitcast_ln55_7_fu_1721_p1 = min_p_133_reg_2237;
assign bitcast_ln55_fu_1404_p1 = reg_727;
assign grp_fu_511_p_ce = 1'b1;
assign grp_fu_511_p_din0 = grp_fu_719_p0;
assign grp_fu_511_p_din1 = grp_fu_719_p1;
assign grp_fu_511_p_opcode = 2'd0;
assign grp_fu_843_p_ce = 1'b1;
assign grp_fu_843_p_din0 = grp_fu_723_p0;
assign grp_fu_843_p_din1 = grp_fu_723_p1;
assign grp_fu_843_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1657_p2 = ((tmp_267_fu_1625_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1663_p2 = ((trunc_ln55_5_fu_1635_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1738_p2 = ((tmp_269_fu_1707_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1744_p2 = ((trunc_ln55_6_fu_1717_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1756_p2 = ((tmp_270_fu_1724_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1762_p2 = ((trunc_ln55_7_fu_1734_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1445_p2 = ((trunc_ln55_fu_1418_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1457_p2 = ((tmp_261_fu_1425_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1463_p2 = ((trunc_ln55_1_fu_1435_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1528_p2 = ((tmp_263_fu_1497_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1534_p2 = ((trunc_ln55_2_fu_1507_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1546_p2 = ((tmp_264_fu_1514_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1552_p2 = ((trunc_ln55_3_fu_1524_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1639_p2 = ((tmp_266_fu_1608_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1645_p2 = ((trunc_ln55_4_fu_1618_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1439_p2 = ((tmp_260_fu_1408_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_1_fu_762_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1140_p4 = {{add_ln53_2_reg_1979[6:4]}};
assign min_p_129_fu_1487_p3 = ((and_ln55_1_reg_2188[0:0] == 1'b1) ? reg_727 : min_p_127_reg_2174);
assign min_p_131_fu_1589_p3 = ((and_ln55_3_reg_2208[0:0] == 1'b1) ? p_63_reg_2181 : min_p_129_reg_2201);
assign min_p_133_fu_1697_p3 = ((and_ln55_5_reg_2226[0:0] == 1'b1) ? p_64_reg_2194 : min_p_131_reg_2214);
assign min_p_135_fu_1785_p3 = ((and_ln55_7_fu_1780_p2[0:0] == 1'b1) ? reg_727 : min_p_133_reg_2237);
assign min_s_10_out = ((and_ln55_5_reg_2226[0:0] == 1'b1) ? zext_ln55_2_fu_1687_p1 : min_s_5_reg_2221);
assign min_s_4_fu_1582_p3 = ((and_ln55_1_reg_2188[0:0] == 1'b1) ? zext_ln55_fu_1579_p1 : min_s_fu_174);
assign min_s_5_fu_1598_p3 = ((and_ln55_3_reg_2208[0:0] == 1'b1) ? zext_ln55_1_fu_1595_p1 : min_s_4_fu_1582_p3);
assign min_s_6_fu_1690_p3 = ((and_ln55_5_reg_2226[0:0] == 1'b1) ? zext_ln55_2_fu_1687_p1 : min_s_5_reg_2221);
assign min_s_7_fu_1795_p3 = ((and_ln55_7_fu_1780_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1792_p1 : min_s_6_reg_2232);
assign or_ln55_1_fu_1469_p2 = (icmp_ln55_3_fu_1463_p2 | icmp_ln55_2_fu_1457_p2);
assign or_ln55_2_fu_1540_p2 = (icmp_ln55_5_fu_1534_p2 | icmp_ln55_4_fu_1528_p2);
assign or_ln55_3_fu_1558_p2 = (icmp_ln55_7_fu_1552_p2 | icmp_ln55_6_fu_1546_p2);
assign or_ln55_4_fu_1651_p2 = (icmp_ln55_9_fu_1645_p2 | icmp_ln55_8_fu_1639_p2);
assign or_ln55_5_fu_1669_p2 = (icmp_ln55_11_fu_1663_p2 | icmp_ln55_10_fu_1657_p2);
assign or_ln55_6_fu_1750_p2 = (icmp_ln55_13_fu_1744_p2 | icmp_ln55_12_fu_1738_p2);
assign or_ln55_7_fu_1768_p2 = (icmp_ln55_15_fu_1762_p2 | icmp_ln55_14_fu_1756_p2);
assign or_ln55_fu_1451_p2 = (icmp_ln55_fu_1439_p2 | icmp_ln55_1_fu_1445_p2);
assign shl_ln2_fu_800_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_1029_p3 = {{add_ln53_reg_1967}, {4'd0}};
assign shl_ln54_2_fu_1120_p3 = {{add_ln53_1_reg_1973}, {4'd0}};
assign shl_ln54_3_fu_1330_p3 = {{trunc_ln54_fu_1327_p1}, {4'd0}};
assign tmp_260_fu_1408_p4 = {{bitcast_ln55_fu_1404_p1[62:52]}};
assign tmp_261_fu_1425_p4 = {{bitcast_ln55_1_fu_1422_p1[62:52]}};
assign tmp_263_fu_1497_p4 = {{bitcast_ln55_2_fu_1494_p1[62:52]}};
assign tmp_264_fu_1514_p4 = {{bitcast_ln55_3_fu_1511_p1[62:52]}};
assign tmp_266_fu_1608_p4 = {{bitcast_ln55_4_fu_1605_p1[62:52]}};
assign tmp_267_fu_1625_p4 = {{bitcast_ln55_5_fu_1622_p1[62:52]}};
assign tmp_269_fu_1707_p4 = {{bitcast_ln55_6_fu_1703_p1[62:52]}};
assign tmp_270_fu_1724_p4 = {{bitcast_ln55_7_fu_1721_p1[62:52]}};
assign tmp_69_fu_848_p33 = 'bx;
assign tmp_70_fu_935_p2 = transition_0_q0;
assign tmp_70_fu_935_p4 = transition_1_q0;
assign tmp_70_fu_935_p6 = transition_2_q0;
assign tmp_70_fu_935_p8 = transition_3_q0;
assign tmp_70_fu_935_p9 = 'bx;
assign tmp_71_fu_958_p33 = 'bx;
assign tmp_72_fu_1194_p2 = transition_0_q1;
assign tmp_72_fu_1194_p4 = transition_1_q1;
assign tmp_72_fu_1194_p6 = transition_2_q1;
assign tmp_72_fu_1194_p8 = transition_3_q1;
assign tmp_72_fu_1194_p9 = 'bx;
assign tmp_73_fu_1049_p33 = 'bx;
assign tmp_74_fu_1233_p2 = transition_0_q0;
assign tmp_74_fu_1233_p4 = transition_1_q0;
assign tmp_74_fu_1233_p6 = transition_2_q0;
assign tmp_74_fu_1233_p8 = transition_3_q0;
assign tmp_74_fu_1233_p9 = 'bx;
assign tmp_75_fu_1256_p33 = 'bx;
assign tmp_76_fu_1367_p2 = transition_0_q1;
assign tmp_76_fu_1367_p4 = transition_1_q1;
assign tmp_76_fu_1367_p6 = transition_2_q1;
assign tmp_76_fu_1367_p8 = transition_3_q1;
assign tmp_76_fu_1367_p9 = 'bx;
assign tmp_s_fu_772_p3 = {{t_1}, {lshr_ln8_1_fu_762_p4}};
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
assign trunc_ln17_fu_758_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_1327_p1 = add_ln53_2_reg_1979[5:0];
assign trunc_ln55_1_fu_1435_p1 = bitcast_ln55_1_fu_1422_p1[51:0];
assign trunc_ln55_2_fu_1507_p1 = bitcast_ln55_2_fu_1494_p1[51:0];
assign trunc_ln55_3_fu_1524_p1 = bitcast_ln55_3_fu_1511_p1[51:0];
assign trunc_ln55_4_fu_1618_p1 = bitcast_ln55_4_fu_1605_p1[51:0];
assign trunc_ln55_5_fu_1635_p1 = bitcast_ln55_5_fu_1622_p1[51:0];
assign trunc_ln55_6_fu_1717_p1 = bitcast_ln55_6_fu_1703_p1[51:0];
assign trunc_ln55_7_fu_1734_p1 = bitcast_ln55_7_fu_1721_p1[51:0];
assign trunc_ln55_fu_1418_p1 = bitcast_ln55_fu_1404_p1[51:0];
assign zext_ln17_fu_754_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_732_p1 = zext_ln52_2;
assign zext_ln54_1_fu_1041_p1 = add_ln54_1_fu_1036_p2;
assign zext_ln54_2_fu_1132_p1 = add_ln54_2_fu_1127_p2;
assign zext_ln54_3_fu_1343_p1 = add_ln54_3_fu_1338_p2;
assign zext_ln54_4_fu_780_p1 = tmp_s_fu_772_p3;
assign zext_ln54_5_fu_1149_p1 = lshr_ln9_3_fu_1140_p4;
assign zext_ln54_6_fu_1158_p1 = add_ln54_4_fu_1153_p2;
assign zext_ln54_fu_814_p1 = add_ln54_fu_808_p2;
assign zext_ln55_1_fu_1595_p1 = add_ln53_reg_1967_pp0_iter1_reg;
assign zext_ln55_2_fu_1687_p1 = add_ln53_1_reg_1973_pp0_iter1_reg;
assign zext_ln55_3_fu_1792_p1 = trunc_ln54_reg_2144_pp0_iter1_reg;
assign zext_ln55_fu_1579_p1 = s_reg_1853_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1846[9:6] <= 4'b0000;
end
endmodule 