module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,empty,min_p_42_out,min_p_42_out_ap_vld,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce,grp_fu_2062_p_din0,grp_fu_2062_p_din1,grp_fu_2062_p_opcode,grp_fu_2062_p_dout0,grp_fu_2062_p_ce); 
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
input  [63:0] min_p_34;
input  [7:0] empty_9;
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
input  [2:0] lshr_ln7;
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
input  [2:0] empty_10;
input  [63:0] tmp_9;
input  [10:0] empty;
output  [63:0] min_p_42_out;
output   min_p_42_out_ap_vld;
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
reg min_p_42_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_73_reg_1903;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1759;
wire   [2:0] trunc_ln16_fu_712_p1;
reg   [2:0] trunc_ln16_reg_1764;
reg   [5:0] tmp_81_reg_1892;
wire   [6:0] add_ln25_fu_826_p2;
reg   [6:0] add_ln25_reg_1897;
reg   [0:0] tmp_73_reg_1903_pp0_iter1_reg;
reg   [0:0] tmp_73_reg_1903_pp0_iter2_reg;
reg   [0:0] tmp_73_reg_1903_pp0_iter3_reg;
wire   [63:0] tmp_4_fu_840_p19;
reg   [63:0] tmp_4_reg_1907;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_5_fu_911_p19;
reg   [63:0] tmp_5_reg_1912;
wire   [63:0] tmp_6_fu_950_p19;
reg   [63:0] tmp_6_reg_1917;
wire   [63:0] tmp_10_fu_1021_p19;
reg   [63:0] tmp_10_reg_1922;
wire   [63:0] tmp_11_fu_1060_p19;
reg   [63:0] tmp_11_reg_1927;
wire   [63:0] tmp_12_fu_1201_p19;
reg   [63:0] tmp_12_reg_2052;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_15_fu_1240_p19;
reg   [63:0] tmp_15_reg_2057;
wire   [63:0] tmp_16_fu_1311_p19;
reg   [63:0] tmp_16_reg_2062;
reg   [63:0] add1_reg_2067;
reg   [63:0] add52_1_reg_2072;
reg   [63:0] add52_2_reg_2077;
reg   [63:0] add52_3_reg_2082;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_2087;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_35_reg_2094;
wire   [0:0] and_ln29_1_fu_1440_p2;
reg   [0:0] and_ln29_1_reg_2101;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_16_reg_2106;
wire   [63:0] min_p_37_fu_1446_p3;
reg   [63:0] min_p_37_reg_2113;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_17_reg_2120;
wire   [0:0] and_ln29_3_fu_1528_p2;
reg   [0:0] and_ln29_3_reg_2127;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_18_reg_2132;
wire   [63:0] min_p_39_fu_1534_p3;
reg   [63:0] min_p_39_reg_2139;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1616_p2;
reg   [0:0] and_ln29_5_reg_2146;
wire   [63:0] min_p_41_fu_1622_p3;
reg   [63:0] min_p_41_reg_2151;
reg   [0:0] tmp_87_reg_2158;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_734_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_762_p1;
wire   [63:0] zext_ln27_1_fu_798_p1;
wire   [63:0] zext_ln27_2_fu_1105_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_1135_p1;
wire   [63:0] zext_ln27_3_fu_1157_p1;
reg   [63:0] min_p_fu_140;
wire   [63:0] min_p_43_fu_1710_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_144;
wire   [5:0] add_ln25_1_fu_1350_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
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
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg   [63:0] grp_fu_687_p0;
reg   [63:0] grp_fu_687_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_691_p0;
reg   [63:0] grp_fu_691_p1;
wire   [2:0] lshr_ln7_1_fu_716_p4;
wire   [10:0] tmp_s_fu_726_p3;
wire   [8:0] add_ln_fu_754_p3;
wire   [8:0] shl_ln1_fu_746_p3;
wire   [8:0] add_ln27_fu_774_p2;
wire   [5:0] tmp_77_fu_780_p4;
wire   [8:0] add_ln27_2_fu_790_p3;
wire   [8:0] add_ln27_1_fu_810_p2;
wire   [6:0] zext_ln16_fu_708_p1;
wire   [63:0] tmp_4_fu_840_p17;
wire   [63:0] tmp_5_fu_911_p2;
wire   [63:0] tmp_5_fu_911_p4;
wire   [63:0] tmp_5_fu_911_p6;
wire   [63:0] tmp_5_fu_911_p8;
wire   [63:0] tmp_5_fu_911_p10;
wire   [63:0] tmp_5_fu_911_p12;
wire   [63:0] tmp_5_fu_911_p14;
wire   [63:0] tmp_5_fu_911_p16;
wire   [63:0] tmp_5_fu_911_p17;
wire   [63:0] tmp_6_fu_950_p17;
wire   [63:0] tmp_10_fu_1021_p2;
wire   [63:0] tmp_10_fu_1021_p4;
wire   [63:0] tmp_10_fu_1021_p6;
wire   [63:0] tmp_10_fu_1021_p8;
wire   [63:0] tmp_10_fu_1021_p10;
wire   [63:0] tmp_10_fu_1021_p12;
wire   [63:0] tmp_10_fu_1021_p14;
wire   [63:0] tmp_10_fu_1021_p16;
wire   [63:0] tmp_10_fu_1021_p17;
wire   [63:0] tmp_11_fu_1060_p17;
wire   [8:0] add_ln27_4_fu_1099_p3;
wire   [3:0] lshr_ln8_8_fu_1117_p4;
wire   [10:0] zext_ln26_1_fu_1126_p1;
wire   [10:0] add_ln26_fu_1130_p2;
wire   [5:0] trunc_ln27_fu_1147_p1;
wire   [8:0] add_ln27_5_fu_1150_p3;
wire   [63:0] tmp_12_fu_1201_p2;
wire   [63:0] tmp_12_fu_1201_p4;
wire   [63:0] tmp_12_fu_1201_p6;
wire   [63:0] tmp_12_fu_1201_p8;
wire   [63:0] tmp_12_fu_1201_p10;
wire   [63:0] tmp_12_fu_1201_p12;
wire   [63:0] tmp_12_fu_1201_p14;
wire   [63:0] tmp_12_fu_1201_p16;
wire   [63:0] tmp_12_fu_1201_p17;
wire   [63:0] tmp_15_fu_1240_p17;
wire   [63:0] tmp_16_fu_1311_p2;
wire   [63:0] tmp_16_fu_1311_p4;
wire   [63:0] tmp_16_fu_1311_p6;
wire   [63:0] tmp_16_fu_1311_p8;
wire   [63:0] tmp_16_fu_1311_p10;
wire   [63:0] tmp_16_fu_1311_p12;
wire   [63:0] tmp_16_fu_1311_p14;
wire   [63:0] tmp_16_fu_1311_p16;
wire   [63:0] tmp_16_fu_1311_p17;
wire   [63:0] bitcast_ln29_fu_1364_p1;
wire   [63:0] bitcast_ln29_1_fu_1381_p1;
wire   [10:0] tmp_74_fu_1367_p4;
wire   [51:0] trunc_ln29_fu_1377_p1;
wire   [0:0] icmp_ln29_1_fu_1404_p2;
wire   [0:0] icmp_ln29_fu_1398_p2;
wire   [10:0] tmp_75_fu_1384_p4;
wire   [51:0] trunc_ln29_1_fu_1394_p1;
wire   [0:0] icmp_ln29_3_fu_1422_p2;
wire   [0:0] icmp_ln29_2_fu_1416_p2;
wire   [0:0] or_ln29_fu_1410_p2;
wire   [0:0] and_ln29_fu_1434_p2;
wire   [0:0] or_ln29_1_fu_1428_p2;
wire   [63:0] bitcast_ln29_2_fu_1452_p1;
wire   [63:0] bitcast_ln29_3_fu_1469_p1;
wire   [10:0] tmp_78_fu_1455_p4;
wire   [51:0] trunc_ln29_2_fu_1465_p1;
wire   [0:0] icmp_ln29_5_fu_1492_p2;
wire   [0:0] icmp_ln29_4_fu_1486_p2;
wire   [10:0] tmp_79_fu_1472_p4;
wire   [51:0] trunc_ln29_3_fu_1482_p1;
wire   [0:0] icmp_ln29_7_fu_1510_p2;
wire   [0:0] icmp_ln29_6_fu_1504_p2;
wire   [0:0] or_ln29_3_fu_1516_p2;
wire   [0:0] or_ln29_2_fu_1498_p2;
wire   [0:0] and_ln29_2_fu_1522_p2;
wire   [63:0] bitcast_ln29_4_fu_1540_p1;
wire   [63:0] bitcast_ln29_5_fu_1557_p1;
wire   [10:0] tmp_82_fu_1543_p4;
wire   [51:0] trunc_ln29_4_fu_1553_p1;
wire   [0:0] icmp_ln29_9_fu_1580_p2;
wire   [0:0] icmp_ln29_8_fu_1574_p2;
wire   [10:0] tmp_83_fu_1560_p4;
wire   [51:0] trunc_ln29_5_fu_1570_p1;
wire   [0:0] icmp_ln29_11_fu_1598_p2;
wire   [0:0] icmp_ln29_10_fu_1592_p2;
wire   [0:0] or_ln29_5_fu_1604_p2;
wire   [0:0] or_ln29_4_fu_1586_p2;
wire   [0:0] and_ln29_4_fu_1610_p2;
wire   [63:0] bitcast_ln29_6_fu_1629_p1;
wire   [63:0] bitcast_ln29_7_fu_1646_p1;
wire   [10:0] tmp_85_fu_1632_p4;
wire   [51:0] trunc_ln29_6_fu_1642_p1;
wire   [0:0] icmp_ln29_13_fu_1669_p2;
wire   [0:0] icmp_ln29_12_fu_1663_p2;
wire   [10:0] tmp_86_fu_1649_p4;
wire   [51:0] trunc_ln29_7_fu_1659_p1;
wire   [0:0] icmp_ln29_15_fu_1687_p2;
wire   [0:0] icmp_ln29_14_fu_1681_p2;
wire   [0:0] or_ln29_7_fu_1693_p2;
wire   [0:0] or_ln29_6_fu_1675_p2;
wire   [0:0] and_ln29_6_fu_1699_p2;
wire   [0:0] and_ln29_7_fu_1705_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire   [2:0] tmp_4_fu_840_p1;
wire   [2:0] tmp_4_fu_840_p3;
wire   [2:0] tmp_4_fu_840_p5;
wire   [2:0] tmp_4_fu_840_p7;
wire  signed [2:0] tmp_4_fu_840_p9;
wire  signed [2:0] tmp_4_fu_840_p11;
wire  signed [2:0] tmp_4_fu_840_p13;
wire  signed [2:0] tmp_4_fu_840_p15;
wire   [2:0] tmp_5_fu_911_p1;
wire   [2:0] tmp_5_fu_911_p3;
wire   [2:0] tmp_5_fu_911_p5;
wire   [2:0] tmp_5_fu_911_p7;
wire  signed [2:0] tmp_5_fu_911_p9;
wire  signed [2:0] tmp_5_fu_911_p11;
wire  signed [2:0] tmp_5_fu_911_p13;
wire  signed [2:0] tmp_5_fu_911_p15;
wire  signed [2:0] tmp_6_fu_950_p1;
wire   [2:0] tmp_6_fu_950_p3;
wire   [2:0] tmp_6_fu_950_p5;
wire   [2:0] tmp_6_fu_950_p7;
wire   [2:0] tmp_6_fu_950_p9;
wire  signed [2:0] tmp_6_fu_950_p11;
wire  signed [2:0] tmp_6_fu_950_p13;
wire  signed [2:0] tmp_6_fu_950_p15;
wire   [2:0] tmp_10_fu_1021_p1;
wire   [2:0] tmp_10_fu_1021_p3;
wire   [2:0] tmp_10_fu_1021_p5;
wire   [2:0] tmp_10_fu_1021_p7;
wire  signed [2:0] tmp_10_fu_1021_p9;
wire  signed [2:0] tmp_10_fu_1021_p11;
wire  signed [2:0] tmp_10_fu_1021_p13;
wire  signed [2:0] tmp_10_fu_1021_p15;
wire  signed [2:0] tmp_11_fu_1060_p1;
wire  signed [2:0] tmp_11_fu_1060_p3;
wire   [2:0] tmp_11_fu_1060_p5;
wire   [2:0] tmp_11_fu_1060_p7;
wire   [2:0] tmp_11_fu_1060_p9;
wire   [2:0] tmp_11_fu_1060_p11;
wire  signed [2:0] tmp_11_fu_1060_p13;
wire  signed [2:0] tmp_11_fu_1060_p15;
wire   [2:0] tmp_12_fu_1201_p1;
wire   [2:0] tmp_12_fu_1201_p3;
wire   [2:0] tmp_12_fu_1201_p5;
wire   [2:0] tmp_12_fu_1201_p7;
wire  signed [2:0] tmp_12_fu_1201_p9;
wire  signed [2:0] tmp_12_fu_1201_p11;
wire  signed [2:0] tmp_12_fu_1201_p13;
wire  signed [2:0] tmp_12_fu_1201_p15;
wire  signed [2:0] tmp_15_fu_1240_p1;
wire  signed [2:0] tmp_15_fu_1240_p3;
wire  signed [2:0] tmp_15_fu_1240_p5;
wire   [2:0] tmp_15_fu_1240_p7;
wire   [2:0] tmp_15_fu_1240_p9;
wire   [2:0] tmp_15_fu_1240_p11;
wire   [2:0] tmp_15_fu_1240_p13;
wire  signed [2:0] tmp_15_fu_1240_p15;
wire   [2:0] tmp_16_fu_1311_p1;
wire   [2:0] tmp_16_fu_1311_p3;
wire   [2:0] tmp_16_fu_1311_p5;
wire   [2:0] tmp_16_fu_1311_p7;
wire  signed [2:0] tmp_16_fu_1311_p9;
wire  signed [2:0] tmp_16_fu_1311_p11;
wire  signed [2:0] tmp_16_fu_1311_p13;
wire  signed [2:0] tmp_16_fu_1311_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_140 = 64'd0;
#0 prev_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U38(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_4_fu_840_p17),.sel(trunc_ln16_reg_1764),.dout(tmp_4_fu_840_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U39(.din0(tmp_5_fu_911_p2),.din1(tmp_5_fu_911_p4),.din2(tmp_5_fu_911_p6),.din3(tmp_5_fu_911_p8),.din4(tmp_5_fu_911_p10),.din5(tmp_5_fu_911_p12),.din6(tmp_5_fu_911_p14),.din7(tmp_5_fu_911_p16),.def(tmp_5_fu_911_p17),.sel(empty_10),.dout(tmp_5_fu_911_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U40(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_6_fu_950_p17),.sel(trunc_ln16_reg_1764),.dout(tmp_6_fu_950_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U41(.din0(tmp_10_fu_1021_p2),.din1(tmp_10_fu_1021_p4),.din2(tmp_10_fu_1021_p6),.din3(tmp_10_fu_1021_p8),.din4(tmp_10_fu_1021_p10),.din5(tmp_10_fu_1021_p12),.din6(tmp_10_fu_1021_p14),.din7(tmp_10_fu_1021_p16),.def(tmp_10_fu_1021_p17),.sel(empty_10),.dout(tmp_10_fu_1021_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U42(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_11_fu_1060_p17),.sel(trunc_ln16_reg_1764),.dout(tmp_11_fu_1060_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(tmp_12_fu_1201_p2),.din1(tmp_12_fu_1201_p4),.din2(tmp_12_fu_1201_p6),.din3(tmp_12_fu_1201_p8),.din4(tmp_12_fu_1201_p10),.din5(tmp_12_fu_1201_p12),.din6(tmp_12_fu_1201_p14),.din7(tmp_12_fu_1201_p16),.def(tmp_12_fu_1201_p17),.sel(empty_10),.dout(tmp_12_fu_1201_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U44(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_15_fu_1240_p17),.sel(trunc_ln16_reg_1764),.dout(tmp_15_fu_1240_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U45(.din0(tmp_16_fu_1311_p2),.din1(tmp_16_fu_1311_p4),.din2(tmp_16_fu_1311_p6),.din3(tmp_16_fu_1311_p8),.din4(tmp_16_fu_1311_p10),.din5(tmp_16_fu_1311_p12),.din6(tmp_16_fu_1311_p14),.din7(tmp_16_fu_1311_p16),.def(tmp_16_fu_1311_p17),.sel(empty_10),.dout(tmp_16_fu_1311_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_140 <= min_p_34;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_73_reg_1903_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_140 <= min_p_43_fu_1710_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_144 <= 6'd1;
    end else if (((tmp_73_reg_1903 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_144 <= add_ln25_1_fu_1350_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_2067 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_2072 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_2077 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_2082 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1897 <= add_ln25_fu_826_p2;
        prev_1_reg_1759 <= ap_sig_allocacmp_prev_1;
        tmp_73_reg_1903 <= add_ln25_fu_826_p2[32'd6];
        tmp_73_reg_1903_pp0_iter1_reg <= tmp_73_reg_1903;
        tmp_73_reg_1903_pp0_iter2_reg <= tmp_73_reg_1903_pp0_iter1_reg;
        tmp_73_reg_1903_pp0_iter3_reg <= tmp_73_reg_1903_pp0_iter2_reg;
        tmp_81_reg_1892 <= {{add_ln27_1_fu_810_p2[8:3]}};
        trunc_ln16_reg_1764 <= trunc_ln16_fu_712_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_2101 <= and_ln29_1_fu_1440_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_2127 <= and_ln29_3_fu_1528_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_2146 <= and_ln29_5_fu_1616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_35_reg_2094 <= min_p_fu_140;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_37_reg_2113 <= min_p_37_fu_1446_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_39_reg_2139 <= min_p_39_fu_1534_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_41_reg_2151 <= min_p_41_fu_1622_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_16_reg_2106 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_17_reg_2120 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_18_reg_2132 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_2087 <= grp_fu_1059_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_1922 <= tmp_10_fu_1021_p19;
        tmp_11_reg_1927 <= tmp_11_fu_1060_p19;
        tmp_4_reg_1907 <= tmp_4_fu_840_p19;
        tmp_5_reg_1912 <= tmp_5_fu_911_p19;
        tmp_6_reg_1917 <= tmp_6_fu_950_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_12_reg_2052 <= tmp_12_fu_1201_p19;
        tmp_15_reg_2057 <= tmp_15_fu_1240_p19;
        tmp_16_reg_2062 <= tmp_16_fu_1311_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_87_reg_2158 <= grp_fu_2062_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_73_reg_1903 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_73_reg_1903_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_687_p0 = add52_3_reg_2082;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_687_p0 = add52_2_reg_2077;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_687_p0 = add52_1_reg_2072;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_687_p0 = add1_reg_2067;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_687_p0 = tmp_15_reg_2057;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_687_p0 = tmp_11_reg_1927;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_687_p0 = tmp_6_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_687_p0 = tmp_4_reg_1907;
    end else begin
        grp_fu_687_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_687_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_687_p1 = tmp_16_reg_2062;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_687_p1 = tmp_12_reg_2052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_687_p1 = tmp_10_reg_1922;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_687_p1 = tmp_5_reg_1912;
    end else begin
        grp_fu_687_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_691_p0 = p_18_reg_2132;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_691_p0 = p_17_reg_2120;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_691_p0 = p_16_reg_2106;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_691_p0 = p_reg_2087;
    end else begin
        grp_fu_691_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_691_p1 = min_p_41_fu_1622_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_691_p1 = min_p_39_fu_1534_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_691_p1 = min_p_37_fu_1446_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_691_p1 = min_p_fu_140;
    end else begin
        grp_fu_691_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_734_p1;
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
            llike_2_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_734_p1;
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
            llike_3_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_734_p1;
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
            llike_4_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_734_p1;
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
            llike_5_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_734_p1;
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
            llike_6_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_734_p1;
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
            llike_7_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_734_p1;
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
            llike_address0_local = zext_ln26_2_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_734_p1;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_73_reg_1903_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_42_out_ap_vld = 1'b1;
    end else begin
        min_p_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_1157_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_798_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_762_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_1350_p2 = (prev_1_reg_1759 + 6'd4);
assign add_ln25_fu_826_p2 = (zext_ln16_fu_708_p1 + 7'd3);
assign add_ln26_fu_1130_p2 = (empty + zext_ln26_1_fu_1126_p1);
assign add_ln27_1_fu_810_p2 = (shl_ln1_fu_746_p3 + 9'd16);
assign add_ln27_2_fu_790_p3 = {{tmp_77_fu_780_p4}, {lshr_ln7}};
assign add_ln27_4_fu_1099_p3 = {{tmp_81_reg_1892}, {lshr_ln7}};
assign add_ln27_5_fu_1150_p3 = {{trunc_ln27_fu_1147_p1}, {lshr_ln7}};
assign add_ln27_fu_774_p2 = (shl_ln1_fu_746_p3 + 9'd8);
assign add_ln_fu_754_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_1_fu_1440_p2 = (or_ln29_1_fu_1428_p2 & and_ln29_fu_1434_p2);
assign and_ln29_2_fu_1522_p2 = (or_ln29_3_fu_1516_p2 & or_ln29_2_fu_1498_p2);
assign and_ln29_3_fu_1528_p2 = (grp_fu_2062_p_dout0 & and_ln29_2_fu_1522_p2);
assign and_ln29_4_fu_1610_p2 = (or_ln29_5_fu_1604_p2 & or_ln29_4_fu_1586_p2);
assign and_ln29_5_fu_1616_p2 = (grp_fu_2062_p_dout0 & and_ln29_4_fu_1610_p2);
assign and_ln29_6_fu_1699_p2 = (or_ln29_7_fu_1693_p2 & or_ln29_6_fu_1675_p2);
assign and_ln29_7_fu_1705_p2 = (tmp_87_reg_2158 & and_ln29_6_fu_1699_p2);
assign and_ln29_fu_1434_p2 = (or_ln29_fu_1410_p2 & grp_fu_2062_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_1_fu_1381_p1 = min_p_35_reg_2094;
assign bitcast_ln29_2_fu_1452_p1 = p_16_reg_2106;
assign bitcast_ln29_3_fu_1469_p1 = min_p_37_reg_2113;
assign bitcast_ln29_4_fu_1540_p1 = p_17_reg_2120;
assign bitcast_ln29_5_fu_1557_p1 = min_p_39_reg_2139;
assign bitcast_ln29_6_fu_1629_p1 = p_18_reg_2132;
assign bitcast_ln29_7_fu_1646_p1 = min_p_41_reg_2151;
assign bitcast_ln29_fu_1364_p1 = p_reg_2087;
assign grp_fu_1059_p_ce = 1'b1;
assign grp_fu_1059_p_din0 = grp_fu_687_p0;
assign grp_fu_1059_p_din1 = grp_fu_687_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign grp_fu_2062_p_ce = 1'b1;
assign grp_fu_2062_p_din0 = grp_fu_691_p0;
assign grp_fu_2062_p_din1 = grp_fu_691_p1;
assign grp_fu_2062_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1592_p2 = ((tmp_83_fu_1560_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1598_p2 = ((trunc_ln29_5_fu_1570_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1663_p2 = ((tmp_85_fu_1632_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1669_p2 = ((trunc_ln29_6_fu_1642_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1681_p2 = ((tmp_86_fu_1649_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1687_p2 = ((trunc_ln29_7_fu_1659_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1404_p2 = ((trunc_ln29_fu_1377_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1416_p2 = ((tmp_75_fu_1384_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1422_p2 = ((trunc_ln29_1_fu_1394_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1486_p2 = ((tmp_78_fu_1455_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1492_p2 = ((trunc_ln29_2_fu_1465_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1504_p2 = ((tmp_79_fu_1472_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1510_p2 = ((trunc_ln29_3_fu_1482_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1574_p2 = ((tmp_82_fu_1543_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1580_p2 = ((trunc_ln29_4_fu_1553_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1398_p2 = ((tmp_74_fu_1367_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_716_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_8_fu_1117_p4 = {{add_ln25_reg_1897[6:3]}};
assign min_p_37_fu_1446_p3 = ((and_ln29_1_reg_2101[0:0] == 1'b1) ? p_reg_2087 : min_p_35_reg_2094);
assign min_p_39_fu_1534_p3 = ((and_ln29_3_reg_2127[0:0] == 1'b1) ? p_16_reg_2106 : min_p_37_reg_2113);
assign min_p_41_fu_1622_p3 = ((and_ln29_5_reg_2146[0:0] == 1'b1) ? p_17_reg_2120 : min_p_39_reg_2139);
assign min_p_42_out = ((and_ln29_5_reg_2146[0:0] == 1'b1) ? p_17_reg_2120 : min_p_39_reg_2139);
assign min_p_43_fu_1710_p3 = ((and_ln29_7_fu_1705_p2[0:0] == 1'b1) ? p_18_reg_2132 : min_p_41_reg_2151);
assign or_ln29_1_fu_1428_p2 = (icmp_ln29_3_fu_1422_p2 | icmp_ln29_2_fu_1416_p2);
assign or_ln29_2_fu_1498_p2 = (icmp_ln29_5_fu_1492_p2 | icmp_ln29_4_fu_1486_p2);
assign or_ln29_3_fu_1516_p2 = (icmp_ln29_7_fu_1510_p2 | icmp_ln29_6_fu_1504_p2);
assign or_ln29_4_fu_1586_p2 = (icmp_ln29_9_fu_1580_p2 | icmp_ln29_8_fu_1574_p2);
assign or_ln29_5_fu_1604_p2 = (icmp_ln29_11_fu_1598_p2 | icmp_ln29_10_fu_1592_p2);
assign or_ln29_6_fu_1675_p2 = (icmp_ln29_13_fu_1669_p2 | icmp_ln29_12_fu_1663_p2);
assign or_ln29_7_fu_1693_p2 = (icmp_ln29_15_fu_1687_p2 | icmp_ln29_14_fu_1681_p2);
assign or_ln29_fu_1410_p2 = (icmp_ln29_fu_1398_p2 | icmp_ln29_1_fu_1404_p2);
assign shl_ln1_fu_746_p3 = {{ap_sig_allocacmp_prev_1}, {3'd0}};
assign tmp_10_fu_1021_p10 = transition_4_q0;
assign tmp_10_fu_1021_p12 = transition_5_q0;
assign tmp_10_fu_1021_p14 = transition_6_q0;
assign tmp_10_fu_1021_p16 = transition_7_q0;
assign tmp_10_fu_1021_p17 = 'bx;
assign tmp_10_fu_1021_p2 = transition_0_q0;
assign tmp_10_fu_1021_p4 = transition_1_q0;
assign tmp_10_fu_1021_p6 = transition_2_q0;
assign tmp_10_fu_1021_p8 = transition_3_q0;
assign tmp_11_fu_1060_p17 = 'bx;
assign tmp_12_fu_1201_p10 = transition_4_q1;
assign tmp_12_fu_1201_p12 = transition_5_q1;
assign tmp_12_fu_1201_p14 = transition_6_q1;
assign tmp_12_fu_1201_p16 = transition_7_q1;
assign tmp_12_fu_1201_p17 = 'bx;
assign tmp_12_fu_1201_p2 = transition_0_q1;
assign tmp_12_fu_1201_p4 = transition_1_q1;
assign tmp_12_fu_1201_p6 = transition_2_q1;
assign tmp_12_fu_1201_p8 = transition_3_q1;
assign tmp_15_fu_1240_p17 = 'bx;
assign tmp_16_fu_1311_p10 = transition_4_q0;
assign tmp_16_fu_1311_p12 = transition_5_q0;
assign tmp_16_fu_1311_p14 = transition_6_q0;
assign tmp_16_fu_1311_p16 = transition_7_q0;
assign tmp_16_fu_1311_p17 = 'bx;
assign tmp_16_fu_1311_p2 = transition_0_q0;
assign tmp_16_fu_1311_p4 = transition_1_q0;
assign tmp_16_fu_1311_p6 = transition_2_q0;
assign tmp_16_fu_1311_p8 = transition_3_q0;
assign tmp_4_fu_840_p17 = 'bx;
assign tmp_5_fu_911_p10 = transition_4_q1;
assign tmp_5_fu_911_p12 = transition_5_q1;
assign tmp_5_fu_911_p14 = transition_6_q1;
assign tmp_5_fu_911_p16 = transition_7_q1;
assign tmp_5_fu_911_p17 = 'bx;
assign tmp_5_fu_911_p2 = transition_0_q1;
assign tmp_5_fu_911_p4 = transition_1_q1;
assign tmp_5_fu_911_p6 = transition_2_q1;
assign tmp_5_fu_911_p8 = transition_3_q1;
assign tmp_6_fu_950_p17 = 'bx;
assign tmp_74_fu_1367_p4 = {{bitcast_ln29_fu_1364_p1[62:52]}};
assign tmp_75_fu_1384_p4 = {{bitcast_ln29_1_fu_1381_p1[62:52]}};
assign tmp_77_fu_780_p4 = {{add_ln27_fu_774_p2[8:3]}};
assign tmp_78_fu_1455_p4 = {{bitcast_ln29_2_fu_1452_p1[62:52]}};
assign tmp_79_fu_1472_p4 = {{bitcast_ln29_3_fu_1469_p1[62:52]}};
assign tmp_82_fu_1543_p4 = {{bitcast_ln29_4_fu_1540_p1[62:52]}};
assign tmp_83_fu_1560_p4 = {{bitcast_ln29_5_fu_1557_p1[62:52]}};
assign tmp_85_fu_1632_p4 = {{bitcast_ln29_6_fu_1629_p1[62:52]}};
assign tmp_86_fu_1649_p4 = {{bitcast_ln29_7_fu_1646_p1[62:52]}};
assign tmp_s_fu_726_p3 = {{empty_9}, {lshr_ln7_1_fu_716_p4}};
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
assign trunc_ln16_fu_712_p1 = ap_sig_allocacmp_prev_1[2:0];
assign trunc_ln27_fu_1147_p1 = add_ln25_reg_1897[5:0];
assign trunc_ln29_1_fu_1394_p1 = bitcast_ln29_1_fu_1381_p1[51:0];
assign trunc_ln29_2_fu_1465_p1 = bitcast_ln29_2_fu_1452_p1[51:0];
assign trunc_ln29_3_fu_1482_p1 = bitcast_ln29_3_fu_1469_p1[51:0];
assign trunc_ln29_4_fu_1553_p1 = bitcast_ln29_4_fu_1540_p1[51:0];
assign trunc_ln29_5_fu_1570_p1 = bitcast_ln29_5_fu_1557_p1[51:0];
assign trunc_ln29_6_fu_1642_p1 = bitcast_ln29_6_fu_1629_p1[51:0];
assign trunc_ln29_7_fu_1659_p1 = bitcast_ln29_7_fu_1646_p1[51:0];
assign trunc_ln29_fu_1377_p1 = bitcast_ln29_fu_1364_p1[51:0];
assign zext_ln16_fu_708_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1126_p1 = lshr_ln8_8_fu_1117_p4;
assign zext_ln26_2_fu_1135_p1 = add_ln26_fu_1130_p2;
assign zext_ln26_fu_734_p1 = tmp_s_fu_726_p3;
assign zext_ln27_1_fu_798_p1 = add_ln27_2_fu_790_p3;
assign zext_ln27_2_fu_1105_p1 = add_ln27_4_fu_1099_p3;
assign zext_ln27_3_fu_1157_p1 = add_ln27_5_fu_1150_p3;
assign zext_ln27_fu_762_p1 = add_ln_fu_754_p3;
endmodule 