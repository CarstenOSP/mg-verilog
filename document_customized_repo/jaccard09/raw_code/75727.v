module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_715_p_din0,grp_fu_715_p_din1,grp_fu_715_p_opcode,grp_fu_715_p_dout0,grp_fu_715_p_ce,grp_fu_1334_p_din0,grp_fu_1334_p_din1,grp_fu_1334_p_opcode,grp_fu_1334_p_dout0,grp_fu_1334_p_ce); 
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
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
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
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_14_reg_1757;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_633_p3;
reg   [63:0] reg_647;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_640_p3;
reg   [63:0] reg_651;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_655;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_660_p1;
reg   [10:0] zext_ln52_2_cast_reg_1628;
reg   [5:0] s_reg_1635;
reg   [5:0] s_reg_1635_pp0_iter1_reg;
wire   [3:0] trunc_ln21_fu_686_p1;
reg   [3:0] trunc_ln21_reg_1641;
wire   [5:0] add_ln53_fu_748_p2;
reg   [5:0] add_ln53_reg_1739;
reg   [5:0] add_ln53_reg_1739_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_754_p2;
reg   [5:0] add_ln53_1_reg_1745;
reg   [5:0] add_ln53_1_reg_1745_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_760_p2;
reg   [6:0] add_ln53_2_reg_1751;
reg   [0:0] tmp_14_reg_1757_pp0_iter1_reg;
wire   [63:0] tmp_s_fu_774_p35;
reg   [63:0] tmp_s_reg_1761;
wire   [63:0] tmp_1_fu_845_p35;
reg   [63:0] tmp_1_reg_1766;
wire   [63:0] tmp_3_fu_934_p35;
reg   [63:0] tmp_3_reg_1781;
wire   [63:0] bitcast_ln54_fu_1061_p1;
wire   [63:0] tmp_4_fu_1066_p35;
reg   [63:0] tmp_4_reg_1881;
wire   [5:0] trunc_ln54_fu_1137_p1;
reg   [5:0] trunc_ln54_reg_1886;
reg   [5:0] trunc_ln54_reg_1886_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_1159_p1;
wire   [63:0] bitcast_ln54_2_fu_1164_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_1169_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_1916;
reg   [63:0] p_1_reg_1923;
wire   [0:0] and_ln55_1_fu_1265_p2;
reg   [0:0] and_ln55_1_reg_1930;
reg   [63:0] p_2_reg_1936;
wire   [63:0] min_p_3_fu_1271_p3;
reg   [63:0] min_p_3_reg_1943;
wire   [0:0] and_ln55_3_fu_1354_p2;
reg   [0:0] and_ln55_3_reg_1950;
wire   [63:0] min_p_5_fu_1373_p3;
reg   [63:0] min_p_5_reg_1956;
wire   [7:0] min_s_5_fu_1382_p3;
reg   [7:0] min_s_5_reg_1963;
wire   [0:0] and_ln55_5_fu_1465_p2;
reg   [0:0] and_ln55_5_reg_1968;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1474_p3;
reg   [7:0] min_s_6_reg_1974;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1481_p3;
reg   [63:0] min_p_7_reg_1979;
reg   [0:0] tmp_17_reg_1986;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_708_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_742_p1;
wire   [63:0] zext_ln54_1_fu_928_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1017_p1;
wire   [63:0] zext_ln54_6_fu_1041_p1;
wire   [63:0] zext_ln54_3_fu_1153_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_158;
wire   [63:0] min_p_9_fu_1569_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_162;
wire   [7:0] min_s_7_fu_1579_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_166;
wire   [5:0] add_ln53_3_fu_1174_p2;
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
reg   [63:0] grp_fu_625_p0;
reg   [63:0] grp_fu_625_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_629_p0;
reg   [63:0] grp_fu_629_p1;
wire    ap_block_pp0_stage7;
wire   [1:0] lshr_ln8_2_fu_690_p4;
wire   [9:0] tmp_2_fu_700_p3;
wire   [10:0] shl_ln2_fu_728_p3;
wire   [10:0] add_ln54_fu_736_p2;
wire   [6:0] zext_ln21_fu_682_p1;
wire   [63:0] tmp_s_fu_774_p33;
wire   [63:0] tmp_1_fu_845_p33;
wire   [10:0] shl_ln54_1_fu_916_p3;
wire   [10:0] add_ln54_1_fu_923_p2;
wire   [63:0] tmp_3_fu_934_p33;
wire   [10:0] shl_ln54_2_fu_1005_p3;
wire   [10:0] add_ln54_2_fu_1012_p2;
wire   [2:0] lshr_ln9_3_fu_1023_p4;
wire   [9:0] zext_ln54_5_fu_1032_p1;
wire   [9:0] add_ln54_4_fu_1036_p2;
wire   [63:0] tmp_4_fu_1066_p33;
wire   [10:0] shl_ln54_3_fu_1140_p3;
wire   [10:0] add_ln54_3_fu_1148_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1188_p1;
wire   [63:0] bitcast_ln55_1_fu_1206_p1;
wire   [10:0] tmp_5_fu_1192_p4;
wire   [51:0] trunc_ln55_fu_1202_p1;
wire   [0:0] icmp_ln55_1_fu_1229_p2;
wire   [0:0] icmp_ln55_fu_1223_p2;
wire   [10:0] tmp_6_fu_1209_p4;
wire   [51:0] trunc_ln55_1_fu_1219_p1;
wire   [0:0] icmp_ln55_3_fu_1247_p2;
wire   [0:0] icmp_ln55_2_fu_1241_p2;
wire   [0:0] or_ln55_fu_1235_p2;
wire   [0:0] and_ln55_fu_1259_p2;
wire   [0:0] or_ln55_1_fu_1253_p2;
wire   [63:0] bitcast_ln55_2_fu_1278_p1;
wire   [63:0] bitcast_ln55_3_fu_1295_p1;
wire   [10:0] tmp_8_fu_1281_p4;
wire   [51:0] trunc_ln55_2_fu_1291_p1;
wire   [0:0] icmp_ln55_5_fu_1318_p2;
wire   [0:0] icmp_ln55_4_fu_1312_p2;
wire   [10:0] tmp_9_fu_1298_p4;
wire   [51:0] trunc_ln55_3_fu_1308_p1;
wire   [0:0] icmp_ln55_7_fu_1336_p2;
wire   [0:0] icmp_ln55_6_fu_1330_p2;
wire   [0:0] or_ln55_3_fu_1342_p2;
wire   [0:0] or_ln55_2_fu_1324_p2;
wire   [0:0] and_ln55_2_fu_1348_p2;
wire   [7:0] zext_ln55_fu_1363_p1;
wire   [7:0] zext_ln55_1_fu_1379_p1;
wire   [7:0] min_s_4_fu_1366_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1389_p1;
wire   [63:0] bitcast_ln55_5_fu_1406_p1;
wire   [10:0] tmp_11_fu_1392_p4;
wire   [51:0] trunc_ln55_4_fu_1402_p1;
wire   [0:0] icmp_ln55_9_fu_1429_p2;
wire   [0:0] icmp_ln55_8_fu_1423_p2;
wire   [10:0] tmp_12_fu_1409_p4;
wire   [51:0] trunc_ln55_5_fu_1419_p1;
wire   [0:0] icmp_ln55_11_fu_1447_p2;
wire   [0:0] icmp_ln55_10_fu_1441_p2;
wire   [0:0] or_ln55_5_fu_1453_p2;
wire   [0:0] or_ln55_4_fu_1435_p2;
wire   [0:0] and_ln55_4_fu_1459_p2;
wire   [7:0] zext_ln55_2_fu_1471_p1;
wire   [63:0] bitcast_ln55_6_fu_1487_p1;
wire   [63:0] bitcast_ln55_7_fu_1505_p1;
wire   [10:0] tmp_15_fu_1491_p4;
wire   [51:0] trunc_ln55_6_fu_1501_p1;
wire   [0:0] icmp_ln55_13_fu_1528_p2;
wire   [0:0] icmp_ln55_12_fu_1522_p2;
wire   [10:0] tmp_16_fu_1508_p4;
wire   [51:0] trunc_ln55_7_fu_1518_p1;
wire   [0:0] icmp_ln55_15_fu_1546_p2;
wire   [0:0] icmp_ln55_14_fu_1540_p2;
wire   [0:0] or_ln55_7_fu_1552_p2;
wire   [0:0] or_ln55_6_fu_1534_p2;
wire   [0:0] and_ln55_6_fu_1558_p2;
wire   [0:0] and_ln55_7_fu_1564_p2;
wire   [7:0] zext_ln55_3_fu_1576_p1;
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
wire   [3:0] tmp_s_fu_774_p1;
wire   [3:0] tmp_s_fu_774_p3;
wire   [3:0] tmp_s_fu_774_p5;
wire   [3:0] tmp_s_fu_774_p7;
wire   [3:0] tmp_s_fu_774_p9;
wire   [3:0] tmp_s_fu_774_p11;
wire   [3:0] tmp_s_fu_774_p13;
wire   [3:0] tmp_s_fu_774_p15;
wire  signed [3:0] tmp_s_fu_774_p17;
wire  signed [3:0] tmp_s_fu_774_p19;
wire  signed [3:0] tmp_s_fu_774_p21;
wire  signed [3:0] tmp_s_fu_774_p23;
wire  signed [3:0] tmp_s_fu_774_p25;
wire  signed [3:0] tmp_s_fu_774_p27;
wire  signed [3:0] tmp_s_fu_774_p29;
wire  signed [3:0] tmp_s_fu_774_p31;
wire  signed [3:0] tmp_1_fu_845_p1;
wire   [3:0] tmp_1_fu_845_p3;
wire   [3:0] tmp_1_fu_845_p5;
wire   [3:0] tmp_1_fu_845_p7;
wire   [3:0] tmp_1_fu_845_p9;
wire   [3:0] tmp_1_fu_845_p11;
wire   [3:0] tmp_1_fu_845_p13;
wire   [3:0] tmp_1_fu_845_p15;
wire   [3:0] tmp_1_fu_845_p17;
wire  signed [3:0] tmp_1_fu_845_p19;
wire  signed [3:0] tmp_1_fu_845_p21;
wire  signed [3:0] tmp_1_fu_845_p23;
wire  signed [3:0] tmp_1_fu_845_p25;
wire  signed [3:0] tmp_1_fu_845_p27;
wire  signed [3:0] tmp_1_fu_845_p29;
wire  signed [3:0] tmp_1_fu_845_p31;
wire  signed [3:0] tmp_3_fu_934_p1;
wire  signed [3:0] tmp_3_fu_934_p3;
wire   [3:0] tmp_3_fu_934_p5;
wire   [3:0] tmp_3_fu_934_p7;
wire   [3:0] tmp_3_fu_934_p9;
wire   [3:0] tmp_3_fu_934_p11;
wire   [3:0] tmp_3_fu_934_p13;
wire   [3:0] tmp_3_fu_934_p15;
wire   [3:0] tmp_3_fu_934_p17;
wire   [3:0] tmp_3_fu_934_p19;
wire  signed [3:0] tmp_3_fu_934_p21;
wire  signed [3:0] tmp_3_fu_934_p23;
wire  signed [3:0] tmp_3_fu_934_p25;
wire  signed [3:0] tmp_3_fu_934_p27;
wire  signed [3:0] tmp_3_fu_934_p29;
wire  signed [3:0] tmp_3_fu_934_p31;
wire  signed [3:0] tmp_4_fu_1066_p1;
wire  signed [3:0] tmp_4_fu_1066_p3;
wire  signed [3:0] tmp_4_fu_1066_p5;
wire   [3:0] tmp_4_fu_1066_p7;
wire   [3:0] tmp_4_fu_1066_p9;
wire   [3:0] tmp_4_fu_1066_p11;
wire   [3:0] tmp_4_fu_1066_p13;
wire   [3:0] tmp_4_fu_1066_p15;
wire   [3:0] tmp_4_fu_1066_p17;
wire   [3:0] tmp_4_fu_1066_p19;
wire   [3:0] tmp_4_fu_1066_p21;
wire  signed [3:0] tmp_4_fu_1066_p23;
wire  signed [3:0] tmp_4_fu_1066_p25;
wire  signed [3:0] tmp_4_fu_1066_p27;
wire  signed [3:0] tmp_4_fu_1066_p29;
wire  signed [3:0] tmp_4_fu_1066_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_158 = 64'd0;
#0 min_s_fu_162 = 8'd0;
#0 min_s_1_fu_166 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U84(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_s_fu_774_p33),.sel(trunc_ln21_reg_1641),.dout(tmp_s_fu_774_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U85(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_1_fu_845_p33),.sel(trunc_ln21_reg_1641),.dout(tmp_1_fu_845_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U86(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_3_fu_934_p33),.sel(trunc_ln21_reg_1641),.dout(tmp_3_fu_934_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_x_U87(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_4_fu_1066_p33),.sel(trunc_ln21_reg_1641),.dout(tmp_4_fu_1066_p35));
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
            min_p_fu_158 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_158 <= min_p_9_fu_1569_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_166 <= 6'd1;
    end else if (((tmp_14_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_166 <= add_ln53_3_fu_1174_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_162 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_162 <= min_s_7_fu_1579_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1745 <= add_ln53_1_fu_754_p2;
        add_ln53_1_reg_1745_pp0_iter1_reg <= add_ln53_1_reg_1745;
        add_ln53_2_reg_1751 <= add_ln53_2_fu_760_p2;
        add_ln53_reg_1739 <= add_ln53_fu_748_p2;
        add_ln53_reg_1739_pp0_iter1_reg <= add_ln53_reg_1739;
        s_reg_1635 <= ap_sig_allocacmp_s;
        s_reg_1635_pp0_iter1_reg <= s_reg_1635;
        tmp_14_reg_1757 <= add_ln53_2_fu_760_p2[32'd6];
        tmp_14_reg_1757_pp0_iter1_reg <= tmp_14_reg_1757;
        trunc_ln21_reg_1641 <= trunc_ln21_fu_686_p1;
        zext_ln52_2_cast_reg_1628[6 : 0] <= zext_ln52_2_cast_fu_660_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1930 <= and_ln55_1_fu_1265_p2;
        tmp_4_reg_1881 <= tmp_4_fu_1066_p35;
        trunc_ln54_reg_1886 <= trunc_ln54_fu_1137_p1;
        trunc_ln54_reg_1886_pp0_iter1_reg <= trunc_ln54_reg_1886;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1950 <= and_ln55_3_fu_1354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1968 <= and_ln55_5_fu_1465_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1916 <= min_p_fu_158;
        tmp_1_reg_1766 <= tmp_1_fu_845_p35;
        tmp_3_reg_1781 <= tmp_3_fu_934_p35;
        tmp_s_reg_1761 <= tmp_s_fu_774_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1943 <= min_p_3_fu_1271_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1956 <= min_p_5_fu_1373_p3;
        min_s_5_reg_1963 <= min_s_5_fu_1382_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1979 <= min_p_7_fu_1481_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1974 <= min_s_6_fu_1474_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1923 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1936 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_647 <= grp_fu_633_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_651 <= grp_fu_640_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_655 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_17_reg_1986 <= grp_fu_1334_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_1757 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_14_reg_1757_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_166;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_625_p0 = tmp_4_reg_1881;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_625_p0 = tmp_3_reg_1781;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_625_p0 = tmp_1_reg_1766;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_625_p0 = tmp_s_reg_1761;
        end else begin
            grp_fu_625_p0 = 'bx;
        end
    end else begin
        grp_fu_625_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_625_p1 = bitcast_ln54_3_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_625_p1 = bitcast_ln54_2_fu_1164_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_625_p1 = bitcast_ln54_1_fu_1159_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_625_p1 = bitcast_ln54_fu_1061_p1;
        end else begin
            grp_fu_625_p1 = 'bx;
        end
    end else begin
        grp_fu_625_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_629_p0 = p_2_reg_1936;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_629_p0 = p_1_reg_1923;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_629_p0 = reg_655;
    end else begin
        grp_fu_629_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_629_p1 = min_p_7_fu_1481_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_629_p1 = min_p_5_fu_1373_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_629_p1 = min_p_3_fu_1271_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_629_p1 = min_p_fu_158;
        end else begin
            grp_fu_629_p1 = 'bx;
        end
    end else begin
        grp_fu_629_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_11_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_12_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_13_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_14_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_15_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_1_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_2_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_3_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_4_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_5_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_6_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_7_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_8_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_9_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_4_fu_708_p1;
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
            llike_address0_local = zext_ln54_6_fu_1041_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_708_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_14_reg_1757_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_742_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_928_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
            transition_1_address0_local = zext_ln54_2_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_742_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_928_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln53_1_fu_754_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_760_p2 = (zext_ln21_fu_682_p1 + 7'd3);
assign add_ln53_3_fu_1174_p2 = (s_reg_1635 + 6'd4);
assign add_ln53_fu_748_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_923_p2 = (shl_ln54_1_fu_916_p3 + zext_ln52_2_cast_reg_1628);
assign add_ln54_2_fu_1012_p2 = (shl_ln54_2_fu_1005_p3 + zext_ln52_2_cast_reg_1628);
assign add_ln54_3_fu_1148_p2 = (shl_ln54_3_fu_1140_p3 + zext_ln52_2_cast_reg_1628);
assign add_ln54_4_fu_1036_p2 = (zext_ln52_3 + zext_ln54_5_fu_1032_p1);
assign add_ln54_fu_736_p2 = (shl_ln2_fu_728_p3 + zext_ln52_2_cast_fu_660_p1);
assign and_ln55_1_fu_1265_p2 = (or_ln55_1_fu_1253_p2 & and_ln55_fu_1259_p2);
assign and_ln55_2_fu_1348_p2 = (or_ln55_3_fu_1342_p2 & or_ln55_2_fu_1324_p2);
assign and_ln55_3_fu_1354_p2 = (grp_fu_1334_p_dout0 & and_ln55_2_fu_1348_p2);
assign and_ln55_4_fu_1459_p2 = (or_ln55_5_fu_1453_p2 & or_ln55_4_fu_1435_p2);
assign and_ln55_5_fu_1465_p2 = (grp_fu_1334_p_dout0 & and_ln55_4_fu_1459_p2);
assign and_ln55_6_fu_1558_p2 = (or_ln55_7_fu_1552_p2 & or_ln55_6_fu_1534_p2);
assign and_ln55_7_fu_1564_p2 = (tmp_17_reg_1986 & and_ln55_6_fu_1558_p2);
assign and_ln55_fu_1259_p2 = (or_ln55_fu_1235_p2 & grp_fu_1334_p_dout0);
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
assign bitcast_ln54_1_fu_1159_p1 = reg_651;
assign bitcast_ln54_2_fu_1164_p1 = reg_647;
assign bitcast_ln54_3_fu_1169_p1 = reg_651;
assign bitcast_ln54_fu_1061_p1 = reg_647;
assign bitcast_ln55_1_fu_1206_p1 = min_p_1_reg_1916;
assign bitcast_ln55_2_fu_1278_p1 = p_1_reg_1923;
assign bitcast_ln55_3_fu_1295_p1 = min_p_3_reg_1943;
assign bitcast_ln55_4_fu_1389_p1 = p_2_reg_1936;
assign bitcast_ln55_5_fu_1406_p1 = min_p_5_reg_1956;
assign bitcast_ln55_6_fu_1487_p1 = reg_655;
assign bitcast_ln55_7_fu_1505_p1 = min_p_7_reg_1979;
assign bitcast_ln55_fu_1188_p1 = reg_655;
assign grp_fu_1334_p_ce = 1'b1;
assign grp_fu_1334_p_din0 = grp_fu_629_p0;
assign grp_fu_1334_p_din1 = grp_fu_629_p1;
assign grp_fu_1334_p_opcode = 5'd4;
assign grp_fu_633_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_640_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_715_p_ce = 1'b1;
assign grp_fu_715_p_din0 = grp_fu_625_p0;
assign grp_fu_715_p_din1 = grp_fu_625_p1;
assign grp_fu_715_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1441_p2 = ((tmp_12_fu_1409_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1447_p2 = ((trunc_ln55_5_fu_1419_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1522_p2 = ((tmp_15_fu_1491_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1528_p2 = ((trunc_ln55_6_fu_1501_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1540_p2 = ((tmp_16_fu_1508_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1546_p2 = ((trunc_ln55_7_fu_1518_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1229_p2 = ((trunc_ln55_fu_1202_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1241_p2 = ((tmp_6_fu_1209_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1247_p2 = ((trunc_ln55_1_fu_1219_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1312_p2 = ((tmp_8_fu_1281_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1318_p2 = ((trunc_ln55_2_fu_1291_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1330_p2 = ((tmp_9_fu_1298_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1336_p2 = ((trunc_ln55_3_fu_1308_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1423_p2 = ((tmp_11_fu_1392_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1429_p2 = ((trunc_ln55_4_fu_1402_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1223_p2 = ((tmp_5_fu_1192_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_690_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1023_p4 = {{add_ln53_2_reg_1751[6:4]}};
assign min_p_3_fu_1271_p3 = ((and_ln55_1_reg_1930[0:0] == 1'b1) ? reg_655 : min_p_1_reg_1916);
assign min_p_5_fu_1373_p3 = ((and_ln55_3_reg_1950[0:0] == 1'b1) ? p_1_reg_1923 : min_p_3_reg_1943);
assign min_p_7_fu_1481_p3 = ((and_ln55_5_reg_1968[0:0] == 1'b1) ? p_2_reg_1936 : min_p_5_reg_1956);
assign min_p_9_fu_1569_p3 = ((and_ln55_7_fu_1564_p2[0:0] == 1'b1) ? reg_655 : min_p_7_reg_1979);
assign min_s_10_out = ((and_ln55_5_reg_1968[0:0] == 1'b1) ? zext_ln55_2_fu_1471_p1 : min_s_5_reg_1963);
assign min_s_4_fu_1366_p3 = ((and_ln55_1_reg_1930[0:0] == 1'b1) ? zext_ln55_fu_1363_p1 : min_s_fu_162);
assign min_s_5_fu_1382_p3 = ((and_ln55_3_reg_1950[0:0] == 1'b1) ? zext_ln55_1_fu_1379_p1 : min_s_4_fu_1366_p3);
assign min_s_6_fu_1474_p3 = ((and_ln55_5_reg_1968[0:0] == 1'b1) ? zext_ln55_2_fu_1471_p1 : min_s_5_reg_1963);
assign min_s_7_fu_1579_p3 = ((and_ln55_7_fu_1564_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1576_p1 : min_s_6_reg_1974);
assign or_ln55_1_fu_1253_p2 = (icmp_ln55_3_fu_1247_p2 | icmp_ln55_2_fu_1241_p2);
assign or_ln55_2_fu_1324_p2 = (icmp_ln55_5_fu_1318_p2 | icmp_ln55_4_fu_1312_p2);
assign or_ln55_3_fu_1342_p2 = (icmp_ln55_7_fu_1336_p2 | icmp_ln55_6_fu_1330_p2);
assign or_ln55_4_fu_1435_p2 = (icmp_ln55_9_fu_1429_p2 | icmp_ln55_8_fu_1423_p2);
assign or_ln55_5_fu_1453_p2 = (icmp_ln55_11_fu_1447_p2 | icmp_ln55_10_fu_1441_p2);
assign or_ln55_6_fu_1534_p2 = (icmp_ln55_13_fu_1528_p2 | icmp_ln55_12_fu_1522_p2);
assign or_ln55_7_fu_1552_p2 = (icmp_ln55_15_fu_1546_p2 | icmp_ln55_14_fu_1540_p2);
assign or_ln55_fu_1235_p2 = (icmp_ln55_fu_1223_p2 | icmp_ln55_1_fu_1229_p2);
assign shl_ln2_fu_728_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_916_p3 = {{add_ln53_reg_1739}, {5'd0}};
assign shl_ln54_2_fu_1005_p3 = {{add_ln53_1_reg_1745}, {5'd0}};
assign shl_ln54_3_fu_1140_p3 = {{trunc_ln54_fu_1137_p1}, {5'd0}};
assign tmp_11_fu_1392_p4 = {{bitcast_ln55_4_fu_1389_p1[62:52]}};
assign tmp_12_fu_1409_p4 = {{bitcast_ln55_5_fu_1406_p1[62:52]}};
assign tmp_15_fu_1491_p4 = {{bitcast_ln55_6_fu_1487_p1[62:52]}};
assign tmp_16_fu_1508_p4 = {{bitcast_ln55_7_fu_1505_p1[62:52]}};
assign tmp_1_fu_845_p33 = 'bx;
assign tmp_2_fu_700_p3 = {{t_1}, {lshr_ln8_2_fu_690_p4}};
assign tmp_3_fu_934_p33 = 'bx;
assign tmp_4_fu_1066_p33 = 'bx;
assign tmp_5_fu_1192_p4 = {{bitcast_ln55_fu_1188_p1[62:52]}};
assign tmp_6_fu_1209_p4 = {{bitcast_ln55_1_fu_1206_p1[62:52]}};
assign tmp_8_fu_1281_p4 = {{bitcast_ln55_2_fu_1278_p1[62:52]}};
assign tmp_9_fu_1298_p4 = {{bitcast_ln55_3_fu_1295_p1[62:52]}};
assign tmp_s_fu_774_p33 = 'bx;
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln21_fu_686_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_1137_p1 = add_ln53_2_reg_1751[5:0];
assign trunc_ln55_1_fu_1219_p1 = bitcast_ln55_1_fu_1206_p1[51:0];
assign trunc_ln55_2_fu_1291_p1 = bitcast_ln55_2_fu_1278_p1[51:0];
assign trunc_ln55_3_fu_1308_p1 = bitcast_ln55_3_fu_1295_p1[51:0];
assign trunc_ln55_4_fu_1402_p1 = bitcast_ln55_4_fu_1389_p1[51:0];
assign trunc_ln55_5_fu_1419_p1 = bitcast_ln55_5_fu_1406_p1[51:0];
assign trunc_ln55_6_fu_1501_p1 = bitcast_ln55_6_fu_1487_p1[51:0];
assign trunc_ln55_7_fu_1518_p1 = bitcast_ln55_7_fu_1505_p1[51:0];
assign trunc_ln55_fu_1202_p1 = bitcast_ln55_fu_1188_p1[51:0];
assign zext_ln21_fu_682_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_660_p1 = zext_ln52_2;
assign zext_ln54_1_fu_928_p1 = add_ln54_1_fu_923_p2;
assign zext_ln54_2_fu_1017_p1 = add_ln54_2_fu_1012_p2;
assign zext_ln54_3_fu_1153_p1 = add_ln54_3_fu_1148_p2;
assign zext_ln54_4_fu_708_p1 = tmp_2_fu_700_p3;
assign zext_ln54_5_fu_1032_p1 = lshr_ln9_3_fu_1023_p4;
assign zext_ln54_6_fu_1041_p1 = add_ln54_4_fu_1036_p2;
assign zext_ln54_fu_742_p1 = add_ln54_fu_736_p2;
assign zext_ln55_1_fu_1379_p1 = add_ln53_reg_1739_pp0_iter1_reg;
assign zext_ln55_2_fu_1471_p1 = add_ln53_1_reg_1745_pp0_iter1_reg;
assign zext_ln55_3_fu_1576_p1 = trunc_ln54_reg_1886_pp0_iter1_reg;
assign zext_ln55_fu_1363_p1 = s_reg_1635_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1628[10:7] <= 4'b0000;
end
endmodule 