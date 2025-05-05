module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_10_out,min_s_10_out_ap_vld,grp_fu_992_p_din0,grp_fu_992_p_din1,grp_fu_992_p_opcode,grp_fu_992_p_dout0,grp_fu_992_p_ce,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce); 
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
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
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
input  [11:0] zext_ln52_3;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_992_p_din0;
output  [63:0] grp_fu_992_p_din1;
output  [1:0] grp_fu_992_p_opcode;
input  [63:0] grp_fu_992_p_dout0;
output   grp_fu_992_p_ce;
output  [63:0] grp_fu_2009_p_din0;
output  [63:0] grp_fu_2009_p_din1;
output  [4:0] grp_fu_2009_p_opcode;
input  [0:0] grp_fu_2009_p_dout0;
output   grp_fu_2009_p_ce;
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
reg   [0:0] tmp_13_reg_1598;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_565;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [8:0] zext_ln52_2_cast_fu_570_p1;
reg   [8:0] zext_ln52_2_cast_reg_1512;
reg   [5:0] s_reg_1519;
reg   [5:0] s_reg_1519_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_647_p2;
reg   [5:0] add_ln53_reg_1580;
reg   [5:0] add_ln53_reg_1580_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_653_p2;
reg   [5:0] add_ln53_1_reg_1586;
reg   [5:0] add_ln53_1_reg_1586_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_659_p2;
reg   [6:0] add_ln53_2_reg_1592;
reg   [0:0] tmp_13_reg_1598_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1602;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_705_p19;
reg   [63:0] tmp_1_reg_1607;
reg   [63:0] llike_2_load_reg_1612;
reg   [63:0] llike_3_load_reg_1657;
wire   [63:0] tmp_5_fu_847_p19;
reg   [63:0] tmp_5_reg_1707;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_918_p19;
reg   [63:0] tmp_9_reg_1712;
reg   [63:0] llike_load_reg_1717;
wire   [5:0] trunc_ln54_fu_957_p1;
reg   [5:0] trunc_ln54_reg_1722;
reg   [5:0] trunc_ln54_reg_1722_pp0_iter1_reg;
wire   [63:0] tmp_14_fu_1017_p19;
reg   [63:0] tmp_14_reg_1767;
reg   [63:0] min_p_1_reg_1772;
reg   [63:0] p_1_reg_1779;
wire   [0:0] and_ln55_1_fu_1147_p2;
reg   [0:0] and_ln55_1_reg_1786;
reg   [63:0] p_2_reg_1792;
wire   [63:0] min_p_3_fu_1153_p3;
reg   [63:0] min_p_3_reg_1799;
wire   [0:0] and_ln55_3_fu_1236_p2;
reg   [0:0] and_ln55_3_reg_1806;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_5_fu_1255_p3;
reg   [63:0] min_p_5_reg_1812;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1264_p3;
reg   [7:0] min_s_5_reg_1819;
wire   [0:0] and_ln55_5_fu_1347_p2;
reg   [0:0] and_ln55_5_reg_1824;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1356_p3;
reg   [7:0] min_s_6_reg_1830;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1363_p3;
reg   [63:0] min_p_7_reg_1835;
reg   [0:0] tmp_17_reg_1842;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_614_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_635_p1;
wire   [63:0] zext_ln54_1_fu_756_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_780_p1;
wire   [63:0] zext_ln54_6_fu_810_p1;
wire   [63:0] zext_ln54_3_fu_973_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_9_fu_1451_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_132;
wire   [7:0] min_s_7_fu_1461_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_136;
wire   [5:0] add_ln53_3_fu_1056_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce0_local;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_557_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_561_p0;
reg   [63:0] grp_fu_561_p1;
wire    ap_block_pp0_stage7;
wire   [3:0] lshr_ln8_2_fu_596_p4;
wire   [11:0] tmp_s_fu_606_p3;
wire   [8:0] shl_ln2_fu_621_p3;
wire   [8:0] add_ln54_fu_629_p2;
wire   [6:0] zext_ln21_fu_592_p1;
wire   [63:0] tmp_1_fu_705_p2;
wire   [63:0] tmp_1_fu_705_p4;
wire   [63:0] tmp_1_fu_705_p6;
wire   [63:0] tmp_1_fu_705_p8;
wire   [63:0] tmp_1_fu_705_p10;
wire   [63:0] tmp_1_fu_705_p12;
wire   [63:0] tmp_1_fu_705_p14;
wire   [63:0] tmp_1_fu_705_p16;
wire   [63:0] tmp_1_fu_705_p17;
wire   [8:0] shl_ln54_1_fu_744_p3;
wire   [8:0] add_ln54_1_fu_751_p2;
wire   [8:0] shl_ln54_2_fu_768_p3;
wire   [8:0] add_ln54_2_fu_775_p2;
wire   [4:0] lshr_ln9_3_fu_792_p4;
wire   [11:0] zext_ln54_5_fu_801_p1;
wire   [11:0] add_ln54_4_fu_805_p2;
wire   [63:0] tmp_5_fu_847_p2;
wire   [63:0] tmp_5_fu_847_p4;
wire   [63:0] tmp_5_fu_847_p6;
wire   [63:0] tmp_5_fu_847_p8;
wire   [63:0] tmp_5_fu_847_p10;
wire   [63:0] tmp_5_fu_847_p12;
wire   [63:0] tmp_5_fu_847_p14;
wire   [63:0] tmp_5_fu_847_p16;
wire   [63:0] tmp_5_fu_847_p17;
wire   [63:0] tmp_9_fu_918_p2;
wire   [63:0] tmp_9_fu_918_p4;
wire   [63:0] tmp_9_fu_918_p6;
wire   [63:0] tmp_9_fu_918_p8;
wire   [63:0] tmp_9_fu_918_p10;
wire   [63:0] tmp_9_fu_918_p12;
wire   [63:0] tmp_9_fu_918_p14;
wire   [63:0] tmp_9_fu_918_p16;
wire   [63:0] tmp_9_fu_918_p17;
wire   [8:0] shl_ln54_3_fu_960_p3;
wire   [8:0] add_ln54_3_fu_968_p2;
wire   [63:0] tmp_14_fu_1017_p2;
wire   [63:0] tmp_14_fu_1017_p4;
wire   [63:0] tmp_14_fu_1017_p6;
wire   [63:0] tmp_14_fu_1017_p8;
wire   [63:0] tmp_14_fu_1017_p10;
wire   [63:0] tmp_14_fu_1017_p12;
wire   [63:0] tmp_14_fu_1017_p14;
wire   [63:0] tmp_14_fu_1017_p16;
wire   [63:0] tmp_14_fu_1017_p17;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1070_p1;
wire   [63:0] bitcast_ln55_1_fu_1088_p1;
wire   [10:0] tmp_2_fu_1074_p4;
wire   [51:0] trunc_ln55_fu_1084_p1;
wire   [0:0] icmp_ln55_1_fu_1111_p2;
wire   [0:0] icmp_ln55_fu_1105_p2;
wire   [10:0] tmp_3_fu_1091_p4;
wire   [51:0] trunc_ln55_1_fu_1101_p1;
wire   [0:0] icmp_ln55_3_fu_1129_p2;
wire   [0:0] icmp_ln55_2_fu_1123_p2;
wire   [0:0] or_ln55_fu_1117_p2;
wire   [0:0] and_ln55_fu_1141_p2;
wire   [0:0] or_ln55_1_fu_1135_p2;
wire   [63:0] bitcast_ln55_2_fu_1160_p1;
wire   [63:0] bitcast_ln55_3_fu_1177_p1;
wire   [10:0] tmp_6_fu_1163_p4;
wire   [51:0] trunc_ln55_2_fu_1173_p1;
wire   [0:0] icmp_ln55_5_fu_1200_p2;
wire   [0:0] icmp_ln55_4_fu_1194_p2;
wire   [10:0] tmp_7_fu_1180_p4;
wire   [51:0] trunc_ln55_3_fu_1190_p1;
wire   [0:0] icmp_ln55_7_fu_1218_p2;
wire   [0:0] icmp_ln55_6_fu_1212_p2;
wire   [0:0] or_ln55_3_fu_1224_p2;
wire   [0:0] or_ln55_2_fu_1206_p2;
wire   [0:0] and_ln55_2_fu_1230_p2;
wire   [7:0] zext_ln55_fu_1245_p1;
wire   [7:0] zext_ln55_1_fu_1261_p1;
wire   [7:0] min_s_4_fu_1248_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1271_p1;
wire   [63:0] bitcast_ln55_5_fu_1288_p1;
wire   [10:0] tmp_10_fu_1274_p4;
wire   [51:0] trunc_ln55_4_fu_1284_p1;
wire   [0:0] icmp_ln55_9_fu_1311_p2;
wire   [0:0] icmp_ln55_8_fu_1305_p2;
wire   [10:0] tmp_11_fu_1291_p4;
wire   [51:0] trunc_ln55_5_fu_1301_p1;
wire   [0:0] icmp_ln55_11_fu_1329_p2;
wire   [0:0] icmp_ln55_10_fu_1323_p2;
wire   [0:0] or_ln55_5_fu_1335_p2;
wire   [0:0] or_ln55_4_fu_1317_p2;
wire   [0:0] and_ln55_4_fu_1341_p2;
wire   [7:0] zext_ln55_2_fu_1353_p1;
wire   [63:0] bitcast_ln55_6_fu_1369_p1;
wire   [63:0] bitcast_ln55_7_fu_1387_p1;
wire   [10:0] tmp_15_fu_1373_p4;
wire   [51:0] trunc_ln55_6_fu_1383_p1;
wire   [0:0] icmp_ln55_13_fu_1410_p2;
wire   [0:0] icmp_ln55_12_fu_1404_p2;
wire   [10:0] tmp_16_fu_1390_p4;
wire   [51:0] trunc_ln55_7_fu_1400_p1;
wire   [0:0] icmp_ln55_15_fu_1428_p2;
wire   [0:0] icmp_ln55_14_fu_1422_p2;
wire   [0:0] or_ln55_7_fu_1434_p2;
wire   [0:0] or_ln55_6_fu_1416_p2;
wire   [0:0] and_ln55_6_fu_1440_p2;
wire   [0:0] and_ln55_7_fu_1446_p2;
wire   [7:0] zext_ln55_3_fu_1458_p1;
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
wire   [2:0] tmp_1_fu_705_p1;
wire   [2:0] tmp_1_fu_705_p3;
wire   [2:0] tmp_1_fu_705_p5;
wire   [2:0] tmp_1_fu_705_p7;
wire  signed [2:0] tmp_1_fu_705_p9;
wire  signed [2:0] tmp_1_fu_705_p11;
wire  signed [2:0] tmp_1_fu_705_p13;
wire  signed [2:0] tmp_1_fu_705_p15;
wire   [2:0] tmp_5_fu_847_p1;
wire   [2:0] tmp_5_fu_847_p3;
wire   [2:0] tmp_5_fu_847_p5;
wire   [2:0] tmp_5_fu_847_p7;
wire  signed [2:0] tmp_5_fu_847_p9;
wire  signed [2:0] tmp_5_fu_847_p11;
wire  signed [2:0] tmp_5_fu_847_p13;
wire  signed [2:0] tmp_5_fu_847_p15;
wire   [2:0] tmp_9_fu_918_p1;
wire   [2:0] tmp_9_fu_918_p3;
wire   [2:0] tmp_9_fu_918_p5;
wire   [2:0] tmp_9_fu_918_p7;
wire  signed [2:0] tmp_9_fu_918_p9;
wire  signed [2:0] tmp_9_fu_918_p11;
wire  signed [2:0] tmp_9_fu_918_p13;
wire  signed [2:0] tmp_9_fu_918_p15;
wire   [2:0] tmp_14_fu_1017_p1;
wire   [2:0] tmp_14_fu_1017_p3;
wire   [2:0] tmp_14_fu_1017_p5;
wire   [2:0] tmp_14_fu_1017_p7;
wire  signed [2:0] tmp_14_fu_1017_p9;
wire  signed [2:0] tmp_14_fu_1017_p11;
wire  signed [2:0] tmp_14_fu_1017_p13;
wire  signed [2:0] tmp_14_fu_1017_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_128 = 64'd0;
#0 min_s_fu_132 = 8'd0;
#0 min_s_1_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U66(.din0(tmp_1_fu_705_p2),.din1(tmp_1_fu_705_p4),.din2(tmp_1_fu_705_p6),.din3(tmp_1_fu_705_p8),.din4(tmp_1_fu_705_p10),.din5(tmp_1_fu_705_p12),.din6(tmp_1_fu_705_p14),.din7(tmp_1_fu_705_p16),.def(tmp_1_fu_705_p17),.sel(empty),.dout(tmp_1_fu_705_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U67(.din0(tmp_5_fu_847_p2),.din1(tmp_5_fu_847_p4),.din2(tmp_5_fu_847_p6),.din3(tmp_5_fu_847_p8),.din4(tmp_5_fu_847_p10),.din5(tmp_5_fu_847_p12),.din6(tmp_5_fu_847_p14),.din7(tmp_5_fu_847_p16),.def(tmp_5_fu_847_p17),.sel(empty),.dout(tmp_5_fu_847_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U68(.din0(tmp_9_fu_918_p2),.din1(tmp_9_fu_918_p4),.din2(tmp_9_fu_918_p6),.din3(tmp_9_fu_918_p8),.din4(tmp_9_fu_918_p10),.din5(tmp_9_fu_918_p12),.din6(tmp_9_fu_918_p14),.din7(tmp_9_fu_918_p16),.def(tmp_9_fu_918_p17),.sel(empty),.dout(tmp_9_fu_918_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U69(.din0(tmp_14_fu_1017_p2),.din1(tmp_14_fu_1017_p4),.din2(tmp_14_fu_1017_p6),.din3(tmp_14_fu_1017_p8),.din4(tmp_14_fu_1017_p10),.din5(tmp_14_fu_1017_p12),.din6(tmp_14_fu_1017_p14),.din7(tmp_14_fu_1017_p16),.def(tmp_14_fu_1017_p17),.sel(empty),.dout(tmp_14_fu_1017_p19));
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
            min_p_fu_128 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_128 <= min_p_9_fu_1451_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_136 <= 6'd1;
    end else if (((tmp_13_reg_1598 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_136 <= add_ln53_3_fu_1056_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_132 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_132 <= min_s_7_fu_1461_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1586 <= add_ln53_1_fu_653_p2;
        add_ln53_1_reg_1586_pp0_iter1_reg <= add_ln53_1_reg_1586;
        add_ln53_2_reg_1592 <= add_ln53_2_fu_659_p2;
        add_ln53_reg_1580 <= add_ln53_fu_647_p2;
        add_ln53_reg_1580_pp0_iter1_reg <= add_ln53_reg_1580;
        s_reg_1519 <= ap_sig_allocacmp_s;
        s_reg_1519_pp0_iter1_reg <= s_reg_1519;
        tmp_13_reg_1598 <= add_ln53_2_fu_659_p2[32'd6];
        tmp_13_reg_1598_pp0_iter1_reg <= tmp_13_reg_1598;
        zext_ln52_2_cast_reg_1512[4 : 0] <= zext_ln52_2_cast_fu_570_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1786 <= and_ln55_1_fu_1147_p2;
        llike_load_reg_1717 <= llike_q0;
        tmp_5_reg_1707 <= tmp_5_fu_847_p19;
        tmp_9_reg_1712 <= tmp_9_fu_918_p19;
        trunc_ln54_reg_1722 <= trunc_ln54_fu_957_p1;
        trunc_ln54_reg_1722_pp0_iter1_reg <= trunc_ln54_reg_1722;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1806 <= and_ln55_3_fu_1236_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1824 <= and_ln55_5_fu_1347_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1602 <= llike_1_q0;
        llike_2_load_reg_1612 <= llike_2_q0;
        llike_3_load_reg_1657 <= llike_3_q0;
        min_p_1_reg_1772 <= min_p_fu_128;
        tmp_1_reg_1607 <= tmp_1_fu_705_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1799 <= min_p_3_fu_1153_p3;
        tmp_14_reg_1767 <= tmp_14_fu_1017_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1812 <= min_p_5_fu_1255_p3;
        min_s_5_reg_1819 <= min_s_5_fu_1264_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1835 <= min_p_7_fu_1363_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1830 <= min_s_6_fu_1356_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1779 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1792 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_565 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_17_reg_1842 <= grp_fu_2009_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_13_reg_1598 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_13_reg_1598_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_136;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_557_p0 = llike_load_reg_1717;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_557_p0 = llike_3_load_reg_1657;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_557_p0 = llike_2_load_reg_1612;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_557_p0 = llike_1_load_reg_1602;
        end else begin
            grp_fu_557_p0 = 'bx;
        end
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_557_p1 = tmp_14_reg_1767;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_557_p1 = tmp_9_reg_1712;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_557_p1 = tmp_5_reg_1707;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_557_p1 = tmp_1_reg_1607;
        end else begin
            grp_fu_557_p1 = 'bx;
        end
    end else begin
        grp_fu_557_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_561_p0 = p_2_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_561_p0 = p_1_reg_1779;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_561_p0 = reg_565;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_561_p1 = min_p_7_fu_1363_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_561_p1 = min_p_5_fu_1255_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_561_p1 = min_p_3_fu_1153_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_561_p1 = min_p_fu_128;
        end else begin
            grp_fu_561_p1 = 'bx;
        end
    end else begin
        grp_fu_561_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_13_reg_1598_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_635_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_1_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_635_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_2_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_635_p1;
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
            transition_2_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_3_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_635_p1;
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
            transition_3_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_4_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_635_p1;
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
            transition_4_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_5_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_635_p1;
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
            transition_5_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_6_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_635_p1;
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
            transition_6_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_756_p1;
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
            transition_7_address0_local = zext_ln54_2_fu_780_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_635_p1;
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
            transition_7_address1_local = zext_ln54_3_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_756_p1;
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
assign add_ln53_1_fu_653_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_659_p2 = (zext_ln21_fu_592_p1 + 7'd3);
assign add_ln53_3_fu_1056_p2 = (s_reg_1519 + 6'd4);
assign add_ln53_fu_647_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_751_p2 = (shl_ln54_1_fu_744_p3 + zext_ln52_2_cast_reg_1512);
assign add_ln54_2_fu_775_p2 = (shl_ln54_2_fu_768_p3 + zext_ln52_2_cast_reg_1512);
assign add_ln54_3_fu_968_p2 = (shl_ln54_3_fu_960_p3 + zext_ln52_2_cast_reg_1512);
assign add_ln54_4_fu_805_p2 = (zext_ln52_3 + zext_ln54_5_fu_801_p1);
assign add_ln54_fu_629_p2 = (shl_ln2_fu_621_p3 + zext_ln52_2_cast_fu_570_p1);
assign and_ln55_1_fu_1147_p2 = (or_ln55_1_fu_1135_p2 & and_ln55_fu_1141_p2);
assign and_ln55_2_fu_1230_p2 = (or_ln55_3_fu_1224_p2 & or_ln55_2_fu_1206_p2);
assign and_ln55_3_fu_1236_p2 = (grp_fu_2009_p_dout0 & and_ln55_2_fu_1230_p2);
assign and_ln55_4_fu_1341_p2 = (or_ln55_5_fu_1335_p2 & or_ln55_4_fu_1317_p2);
assign and_ln55_5_fu_1347_p2 = (grp_fu_2009_p_dout0 & and_ln55_4_fu_1341_p2);
assign and_ln55_6_fu_1440_p2 = (or_ln55_7_fu_1434_p2 & or_ln55_6_fu_1416_p2);
assign and_ln55_7_fu_1446_p2 = (tmp_17_reg_1842 & and_ln55_6_fu_1440_p2);
assign and_ln55_fu_1141_p2 = (or_ln55_fu_1117_p2 & grp_fu_2009_p_dout0);
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
assign bitcast_ln55_1_fu_1088_p1 = min_p_1_reg_1772;
assign bitcast_ln55_2_fu_1160_p1 = p_1_reg_1779;
assign bitcast_ln55_3_fu_1177_p1 = min_p_3_reg_1799;
assign bitcast_ln55_4_fu_1271_p1 = p_2_reg_1792;
assign bitcast_ln55_5_fu_1288_p1 = min_p_5_reg_1812;
assign bitcast_ln55_6_fu_1369_p1 = reg_565;
assign bitcast_ln55_7_fu_1387_p1 = min_p_7_reg_1835;
assign bitcast_ln55_fu_1070_p1 = reg_565;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_561_p0;
assign grp_fu_2009_p_din1 = grp_fu_561_p1;
assign grp_fu_2009_p_opcode = 5'd4;
assign grp_fu_992_p_ce = 1'b1;
assign grp_fu_992_p_din0 = grp_fu_557_p0;
assign grp_fu_992_p_din1 = grp_fu_557_p1;
assign grp_fu_992_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1323_p2 = ((tmp_11_fu_1291_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1329_p2 = ((trunc_ln55_5_fu_1301_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1404_p2 = ((tmp_15_fu_1373_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1410_p2 = ((trunc_ln55_6_fu_1383_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1422_p2 = ((tmp_16_fu_1390_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1428_p2 = ((trunc_ln55_7_fu_1400_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1111_p2 = ((trunc_ln55_fu_1084_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1123_p2 = ((tmp_3_fu_1091_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1129_p2 = ((trunc_ln55_1_fu_1101_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1194_p2 = ((tmp_6_fu_1163_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1200_p2 = ((trunc_ln55_2_fu_1173_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1212_p2 = ((tmp_7_fu_1180_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1218_p2 = ((trunc_ln55_3_fu_1190_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1305_p2 = ((tmp_10_fu_1274_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1311_p2 = ((trunc_ln55_4_fu_1284_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1105_p2 = ((tmp_2_fu_1074_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_4_fu_614_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_4_fu_614_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_4_fu_614_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln54_6_fu_810_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_596_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_3_fu_792_p4 = {{add_ln53_2_reg_1592[6:2]}};
assign min_p_3_fu_1153_p3 = ((and_ln55_1_reg_1786[0:0] == 1'b1) ? reg_565 : min_p_1_reg_1772);
assign min_p_5_fu_1255_p3 = ((and_ln55_3_reg_1806[0:0] == 1'b1) ? p_1_reg_1779 : min_p_3_reg_1799);
assign min_p_7_fu_1363_p3 = ((and_ln55_5_reg_1824[0:0] == 1'b1) ? p_2_reg_1792 : min_p_5_reg_1812);
assign min_p_9_fu_1451_p3 = ((and_ln55_7_fu_1446_p2[0:0] == 1'b1) ? reg_565 : min_p_7_reg_1835);
assign min_s_10_out = ((and_ln55_5_reg_1824[0:0] == 1'b1) ? zext_ln55_2_fu_1353_p1 : min_s_5_reg_1819);
assign min_s_4_fu_1248_p3 = ((and_ln55_1_reg_1786[0:0] == 1'b1) ? zext_ln55_fu_1245_p1 : min_s_fu_132);
assign min_s_5_fu_1264_p3 = ((and_ln55_3_reg_1806[0:0] == 1'b1) ? zext_ln55_1_fu_1261_p1 : min_s_4_fu_1248_p3);
assign min_s_6_fu_1356_p3 = ((and_ln55_5_reg_1824[0:0] == 1'b1) ? zext_ln55_2_fu_1353_p1 : min_s_5_reg_1819);
assign min_s_7_fu_1461_p3 = ((and_ln55_7_fu_1446_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1458_p1 : min_s_6_reg_1830);
assign or_ln55_1_fu_1135_p2 = (icmp_ln55_3_fu_1129_p2 | icmp_ln55_2_fu_1123_p2);
assign or_ln55_2_fu_1206_p2 = (icmp_ln55_5_fu_1200_p2 | icmp_ln55_4_fu_1194_p2);
assign or_ln55_3_fu_1224_p2 = (icmp_ln55_7_fu_1218_p2 | icmp_ln55_6_fu_1212_p2);
assign or_ln55_4_fu_1317_p2 = (icmp_ln55_9_fu_1311_p2 | icmp_ln55_8_fu_1305_p2);
assign or_ln55_5_fu_1335_p2 = (icmp_ln55_11_fu_1329_p2 | icmp_ln55_10_fu_1323_p2);
assign or_ln55_6_fu_1416_p2 = (icmp_ln55_13_fu_1410_p2 | icmp_ln55_12_fu_1404_p2);
assign or_ln55_7_fu_1434_p2 = (icmp_ln55_15_fu_1428_p2 | icmp_ln55_14_fu_1422_p2);
assign or_ln55_fu_1117_p2 = (icmp_ln55_fu_1105_p2 | icmp_ln55_1_fu_1111_p2);
assign shl_ln2_fu_621_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_744_p3 = {{add_ln53_reg_1580}, {3'd0}};
assign shl_ln54_2_fu_768_p3 = {{add_ln53_1_reg_1586}, {3'd0}};
assign shl_ln54_3_fu_960_p3 = {{trunc_ln54_fu_957_p1}, {3'd0}};
assign tmp_10_fu_1274_p4 = {{bitcast_ln55_4_fu_1271_p1[62:52]}};
assign tmp_11_fu_1291_p4 = {{bitcast_ln55_5_fu_1288_p1[62:52]}};
assign tmp_14_fu_1017_p10 = transition_4_q1;
assign tmp_14_fu_1017_p12 = transition_5_q1;
assign tmp_14_fu_1017_p14 = transition_6_q1;
assign tmp_14_fu_1017_p16 = transition_7_q1;
assign tmp_14_fu_1017_p17 = 'bx;
assign tmp_14_fu_1017_p2 = transition_0_q1;
assign tmp_14_fu_1017_p4 = transition_1_q1;
assign tmp_14_fu_1017_p6 = transition_2_q1;
assign tmp_14_fu_1017_p8 = transition_3_q1;
assign tmp_15_fu_1373_p4 = {{bitcast_ln55_6_fu_1369_p1[62:52]}};
assign tmp_16_fu_1390_p4 = {{bitcast_ln55_7_fu_1387_p1[62:52]}};
assign tmp_1_fu_705_p10 = transition_4_q0;
assign tmp_1_fu_705_p12 = transition_5_q0;
assign tmp_1_fu_705_p14 = transition_6_q0;
assign tmp_1_fu_705_p16 = transition_7_q0;
assign tmp_1_fu_705_p17 = 'bx;
assign tmp_1_fu_705_p2 = transition_0_q0;
assign tmp_1_fu_705_p4 = transition_1_q0;
assign tmp_1_fu_705_p6 = transition_2_q0;
assign tmp_1_fu_705_p8 = transition_3_q0;
assign tmp_2_fu_1074_p4 = {{bitcast_ln55_fu_1070_p1[62:52]}};
assign tmp_3_fu_1091_p4 = {{bitcast_ln55_1_fu_1088_p1[62:52]}};
assign tmp_5_fu_847_p10 = transition_4_q1;
assign tmp_5_fu_847_p12 = transition_5_q1;
assign tmp_5_fu_847_p14 = transition_6_q1;
assign tmp_5_fu_847_p16 = transition_7_q1;
assign tmp_5_fu_847_p17 = 'bx;
assign tmp_5_fu_847_p2 = transition_0_q1;
assign tmp_5_fu_847_p4 = transition_1_q1;
assign tmp_5_fu_847_p6 = transition_2_q1;
assign tmp_5_fu_847_p8 = transition_3_q1;
assign tmp_6_fu_1163_p4 = {{bitcast_ln55_2_fu_1160_p1[62:52]}};
assign tmp_7_fu_1180_p4 = {{bitcast_ln55_3_fu_1177_p1[62:52]}};
assign tmp_9_fu_918_p10 = transition_4_q0;
assign tmp_9_fu_918_p12 = transition_5_q0;
assign tmp_9_fu_918_p14 = transition_6_q0;
assign tmp_9_fu_918_p16 = transition_7_q0;
assign tmp_9_fu_918_p17 = 'bx;
assign tmp_9_fu_918_p2 = transition_0_q0;
assign tmp_9_fu_918_p4 = transition_1_q0;
assign tmp_9_fu_918_p6 = transition_2_q0;
assign tmp_9_fu_918_p8 = transition_3_q0;
assign tmp_s_fu_606_p3 = {{t_1}, {lshr_ln8_2_fu_596_p4}};
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
assign trunc_ln54_fu_957_p1 = add_ln53_2_reg_1592[5:0];
assign trunc_ln55_1_fu_1101_p1 = bitcast_ln55_1_fu_1088_p1[51:0];
assign trunc_ln55_2_fu_1173_p1 = bitcast_ln55_2_fu_1160_p1[51:0];
assign trunc_ln55_3_fu_1190_p1 = bitcast_ln55_3_fu_1177_p1[51:0];
assign trunc_ln55_4_fu_1284_p1 = bitcast_ln55_4_fu_1271_p1[51:0];
assign trunc_ln55_5_fu_1301_p1 = bitcast_ln55_5_fu_1288_p1[51:0];
assign trunc_ln55_6_fu_1383_p1 = bitcast_ln55_6_fu_1369_p1[51:0];
assign trunc_ln55_7_fu_1400_p1 = bitcast_ln55_7_fu_1387_p1[51:0];
assign trunc_ln55_fu_1084_p1 = bitcast_ln55_fu_1070_p1[51:0];
assign zext_ln21_fu_592_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_570_p1 = zext_ln52_2;
assign zext_ln54_1_fu_756_p1 = add_ln54_1_fu_751_p2;
assign zext_ln54_2_fu_780_p1 = add_ln54_2_fu_775_p2;
assign zext_ln54_3_fu_973_p1 = add_ln54_3_fu_968_p2;
assign zext_ln54_4_fu_614_p1 = tmp_s_fu_606_p3;
assign zext_ln54_5_fu_801_p1 = lshr_ln9_3_fu_792_p4;
assign zext_ln54_6_fu_810_p1 = add_ln54_4_fu_805_p2;
assign zext_ln54_fu_635_p1 = add_ln54_fu_629_p2;
assign zext_ln55_1_fu_1261_p1 = add_ln53_reg_1580_pp0_iter1_reg;
assign zext_ln55_2_fu_1353_p1 = add_ln53_1_reg_1586_pp0_iter1_reg;
assign zext_ln55_3_fu_1458_p1 = trunc_ln54_reg_1722_pp0_iter1_reg;
assign zext_ln55_fu_1245_p1 = s_reg_1519_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1512[8:5] <= 4'b0000;
end
endmodule 