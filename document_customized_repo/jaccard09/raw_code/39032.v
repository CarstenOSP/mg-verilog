module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_538_p_din0,grp_fu_538_p_din1,grp_fu_538_p_opcode,grp_fu_538_p_dout0,grp_fu_538_p_ce,grp_fu_1142_p_din0,grp_fu_1142_p_din1,grp_fu_1142_p_opcode,grp_fu_1142_p_dout0,grp_fu_1142_p_ce); 
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
input  [10:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_538_p_din0;
output  [63:0] grp_fu_538_p_din1;
output  [1:0] grp_fu_538_p_opcode;
input  [63:0] grp_fu_538_p_dout0;
output   grp_fu_538_p_ce;
output  [63:0] grp_fu_1142_p_din0;
output  [63:0] grp_fu_1142_p_din1;
output  [4:0] grp_fu_1142_p_opcode;
input  [0:0] grp_fu_1142_p_dout0;
output   grp_fu_1142_p_ce;
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
reg   [0:0] tmp_14_reg_1373;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_433_p3;
reg   [63:0] reg_447;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_440_p3;
reg   [63:0] reg_451;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_455;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_460_p1;
reg   [10:0] zext_ln52_2_cast_reg_1284;
reg   [5:0] s_reg_1291;
reg   [5:0] s_reg_1291_pp0_iter1_reg;
wire   [2:0] trunc_ln21_fu_486_p1;
reg   [2:0] trunc_ln21_reg_1297;
wire   [5:0] add_ln53_fu_540_p2;
reg   [5:0] add_ln53_reg_1355;
reg   [5:0] add_ln53_reg_1355_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_546_p2;
reg   [5:0] add_ln53_1_reg_1361;
reg   [5:0] add_ln53_1_reg_1361_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_552_p2;
reg   [6:0] add_ln53_2_reg_1367;
reg   [0:0] tmp_14_reg_1373_pp0_iter1_reg;
wire   [63:0] tmp_2_fu_566_p19;
reg   [63:0] tmp_2_reg_1377;
wire   [63:0] tmp_3_fu_605_p19;
reg   [63:0] tmp_3_reg_1382;
wire   [63:0] tmp_6_fu_662_p19;
reg   [63:0] tmp_6_reg_1397;
wire   [63:0] bitcast_ln54_fu_749_p1;
wire   [63:0] tmp_8_fu_754_p19;
reg   [63:0] tmp_8_reg_1457;
wire   [5:0] trunc_ln54_fu_793_p1;
reg   [5:0] trunc_ln54_reg_1462;
reg   [5:0] trunc_ln54_reg_1462_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_815_p1;
wire   [63:0] bitcast_ln54_2_fu_820_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_825_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_1492;
reg   [63:0] p_1_reg_1499;
wire   [0:0] and_ln55_1_fu_921_p2;
reg   [0:0] and_ln55_1_reg_1506;
reg   [63:0] p_2_reg_1512;
wire   [63:0] min_p_3_fu_927_p3;
reg   [63:0] min_p_3_reg_1519;
wire   [0:0] and_ln55_3_fu_1010_p2;
reg   [0:0] and_ln55_3_reg_1526;
wire   [63:0] min_p_5_fu_1029_p3;
reg   [63:0] min_p_5_reg_1532;
wire   [7:0] min_s_5_fu_1038_p3;
reg   [7:0] min_s_5_reg_1539;
wire   [0:0] and_ln55_5_fu_1121_p2;
reg   [0:0] and_ln55_5_reg_1544;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1130_p3;
reg   [7:0] min_s_6_reg_1550;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1137_p3;
reg   [63:0] min_p_7_reg_1555;
reg   [0:0] tmp_17_reg_1562;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_508_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_534_p1;
wire   [63:0] zext_ln54_1_fu_656_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_713_p1;
wire   [63:0] zext_ln54_6_fu_737_p1;
wire   [63:0] zext_ln54_3_fu_809_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_126;
wire   [63:0] min_p_9_fu_1225_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_130;
wire   [7:0] min_s_7_fu_1235_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_134;
wire   [5:0] add_ln53_3_fu_830_p2;
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
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg   [63:0] grp_fu_425_p0;
reg   [63:0] grp_fu_425_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_429_p0;
reg   [63:0] grp_fu_429_p1;
wire    ap_block_pp0_stage7;
wire   [2:0] lshr_ln8_2_fu_490_p4;
wire   [10:0] tmp_s_fu_500_p3;
wire   [10:0] shl_ln2_fu_520_p3;
wire   [10:0] add_ln54_fu_528_p2;
wire   [6:0] zext_ln21_fu_482_p1;
wire   [63:0] tmp_2_fu_566_p17;
wire   [63:0] tmp_3_fu_605_p17;
wire   [10:0] shl_ln54_1_fu_644_p3;
wire   [10:0] add_ln54_1_fu_651_p2;
wire   [63:0] tmp_6_fu_662_p17;
wire   [10:0] shl_ln54_2_fu_701_p3;
wire   [10:0] add_ln54_2_fu_708_p2;
wire   [3:0] lshr_ln9_3_fu_719_p4;
wire   [10:0] zext_ln54_5_fu_728_p1;
wire   [10:0] add_ln54_4_fu_732_p2;
wire   [63:0] tmp_8_fu_754_p17;
wire   [10:0] shl_ln54_3_fu_796_p3;
wire   [10:0] add_ln54_3_fu_804_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_844_p1;
wire   [63:0] bitcast_ln55_1_fu_862_p1;
wire   [10:0] tmp_1_fu_848_p4;
wire   [51:0] trunc_ln55_fu_858_p1;
wire   [0:0] icmp_ln55_1_fu_885_p2;
wire   [0:0] icmp_ln55_fu_879_p2;
wire   [10:0] tmp_4_fu_865_p4;
wire   [51:0] trunc_ln55_1_fu_875_p1;
wire   [0:0] icmp_ln55_3_fu_903_p2;
wire   [0:0] icmp_ln55_2_fu_897_p2;
wire   [0:0] or_ln55_fu_891_p2;
wire   [0:0] and_ln55_fu_915_p2;
wire   [0:0] or_ln55_1_fu_909_p2;
wire   [63:0] bitcast_ln55_2_fu_934_p1;
wire   [63:0] bitcast_ln55_3_fu_951_p1;
wire   [10:0] tmp_7_fu_937_p4;
wire   [51:0] trunc_ln55_2_fu_947_p1;
wire   [0:0] icmp_ln55_5_fu_974_p2;
wire   [0:0] icmp_ln55_4_fu_968_p2;
wire   [10:0] tmp_9_fu_954_p4;
wire   [51:0] trunc_ln55_3_fu_964_p1;
wire   [0:0] icmp_ln55_7_fu_992_p2;
wire   [0:0] icmp_ln55_6_fu_986_p2;
wire   [0:0] or_ln55_3_fu_998_p2;
wire   [0:0] or_ln55_2_fu_980_p2;
wire   [0:0] and_ln55_2_fu_1004_p2;
wire   [7:0] zext_ln55_fu_1019_p1;
wire   [7:0] zext_ln55_1_fu_1035_p1;
wire   [7:0] min_s_4_fu_1022_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1045_p1;
wire   [63:0] bitcast_ln55_5_fu_1062_p1;
wire   [10:0] tmp_11_fu_1048_p4;
wire   [51:0] trunc_ln55_4_fu_1058_p1;
wire   [0:0] icmp_ln55_9_fu_1085_p2;
wire   [0:0] icmp_ln55_8_fu_1079_p2;
wire   [10:0] tmp_12_fu_1065_p4;
wire   [51:0] trunc_ln55_5_fu_1075_p1;
wire   [0:0] icmp_ln55_11_fu_1103_p2;
wire   [0:0] icmp_ln55_10_fu_1097_p2;
wire   [0:0] or_ln55_5_fu_1109_p2;
wire   [0:0] or_ln55_4_fu_1091_p2;
wire   [0:0] and_ln55_4_fu_1115_p2;
wire   [7:0] zext_ln55_2_fu_1127_p1;
wire   [63:0] bitcast_ln55_6_fu_1143_p1;
wire   [63:0] bitcast_ln55_7_fu_1161_p1;
wire   [10:0] tmp_15_fu_1147_p4;
wire   [51:0] trunc_ln55_6_fu_1157_p1;
wire   [0:0] icmp_ln55_13_fu_1184_p2;
wire   [0:0] icmp_ln55_12_fu_1178_p2;
wire   [10:0] tmp_16_fu_1164_p4;
wire   [51:0] trunc_ln55_7_fu_1174_p1;
wire   [0:0] icmp_ln55_15_fu_1202_p2;
wire   [0:0] icmp_ln55_14_fu_1196_p2;
wire   [0:0] or_ln55_7_fu_1208_p2;
wire   [0:0] or_ln55_6_fu_1190_p2;
wire   [0:0] and_ln55_6_fu_1214_p2;
wire   [0:0] and_ln55_7_fu_1220_p2;
wire   [7:0] zext_ln55_3_fu_1232_p1;
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
wire   [2:0] tmp_2_fu_566_p1;
wire   [2:0] tmp_2_fu_566_p3;
wire   [2:0] tmp_2_fu_566_p5;
wire   [2:0] tmp_2_fu_566_p7;
wire  signed [2:0] tmp_2_fu_566_p9;
wire  signed [2:0] tmp_2_fu_566_p11;
wire  signed [2:0] tmp_2_fu_566_p13;
wire  signed [2:0] tmp_2_fu_566_p15;
wire  signed [2:0] tmp_3_fu_605_p1;
wire   [2:0] tmp_3_fu_605_p3;
wire   [2:0] tmp_3_fu_605_p5;
wire   [2:0] tmp_3_fu_605_p7;
wire   [2:0] tmp_3_fu_605_p9;
wire  signed [2:0] tmp_3_fu_605_p11;
wire  signed [2:0] tmp_3_fu_605_p13;
wire  signed [2:0] tmp_3_fu_605_p15;
wire  signed [2:0] tmp_6_fu_662_p1;
wire  signed [2:0] tmp_6_fu_662_p3;
wire   [2:0] tmp_6_fu_662_p5;
wire   [2:0] tmp_6_fu_662_p7;
wire   [2:0] tmp_6_fu_662_p9;
wire   [2:0] tmp_6_fu_662_p11;
wire  signed [2:0] tmp_6_fu_662_p13;
wire  signed [2:0] tmp_6_fu_662_p15;
wire  signed [2:0] tmp_8_fu_754_p1;
wire  signed [2:0] tmp_8_fu_754_p3;
wire  signed [2:0] tmp_8_fu_754_p5;
wire   [2:0] tmp_8_fu_754_p7;
wire   [2:0] tmp_8_fu_754_p9;
wire   [2:0] tmp_8_fu_754_p11;
wire   [2:0] tmp_8_fu_754_p13;
wire  signed [2:0] tmp_8_fu_754_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_126 = 64'd0;
#0 min_s_fu_130 = 8'd0;
#0 min_s_1_fu_134 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U63(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_2_fu_566_p17),.sel(trunc_ln21_reg_1297),.dout(tmp_2_fu_566_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U64(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_3_fu_605_p17),.sel(trunc_ln21_reg_1297),.dout(tmp_3_fu_605_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U65(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_6_fu_662_p17),.sel(trunc_ln21_reg_1297),.dout(tmp_6_fu_662_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U66(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_8_fu_754_p17),.sel(trunc_ln21_reg_1297),.dout(tmp_8_fu_754_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
            min_p_fu_126 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_126 <= min_p_9_fu_1225_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_134 <= 6'd1;
    end else if (((tmp_14_reg_1373 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_134 <= add_ln53_3_fu_830_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_130 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_130 <= min_s_7_fu_1235_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1361 <= add_ln53_1_fu_546_p2;
        add_ln53_1_reg_1361_pp0_iter1_reg <= add_ln53_1_reg_1361;
        add_ln53_2_reg_1367 <= add_ln53_2_fu_552_p2;
        add_ln53_reg_1355 <= add_ln53_fu_540_p2;
        add_ln53_reg_1355_pp0_iter1_reg <= add_ln53_reg_1355;
        s_reg_1291 <= ap_sig_allocacmp_s;
        s_reg_1291_pp0_iter1_reg <= s_reg_1291;
        tmp_14_reg_1373 <= add_ln53_2_fu_552_p2[32'd6];
        tmp_14_reg_1373_pp0_iter1_reg <= tmp_14_reg_1373;
        trunc_ln21_reg_1297 <= trunc_ln21_fu_486_p1;
        zext_ln52_2_cast_reg_1284[6 : 0] <= zext_ln52_2_cast_fu_460_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1506 <= and_ln55_1_fu_921_p2;
        tmp_8_reg_1457 <= tmp_8_fu_754_p19;
        trunc_ln54_reg_1462 <= trunc_ln54_fu_793_p1;
        trunc_ln54_reg_1462_pp0_iter1_reg <= trunc_ln54_reg_1462;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1526 <= and_ln55_3_fu_1010_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1544 <= and_ln55_5_fu_1121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1492 <= min_p_fu_126;
        tmp_2_reg_1377 <= tmp_2_fu_566_p19;
        tmp_3_reg_1382 <= tmp_3_fu_605_p19;
        tmp_6_reg_1397 <= tmp_6_fu_662_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1519 <= min_p_3_fu_927_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1532 <= min_p_5_fu_1029_p3;
        min_s_5_reg_1539 <= min_s_5_fu_1038_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1555 <= min_p_7_fu_1137_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1550 <= min_s_6_fu_1130_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1499 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1512 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_447 <= grp_fu_433_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_451 <= grp_fu_440_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_455 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_17_reg_1562 <= grp_fu_1142_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_1373 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_14_reg_1373_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_134;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_425_p0 = tmp_8_reg_1457;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_425_p0 = tmp_6_reg_1397;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p0 = tmp_3_reg_1382;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p0 = tmp_2_reg_1377;
        end else begin
            grp_fu_425_p0 = 'bx;
        end
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_425_p1 = bitcast_ln54_3_fu_825_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_425_p1 = bitcast_ln54_2_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p1 = bitcast_ln54_1_fu_815_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p1 = bitcast_ln54_fu_749_p1;
        end else begin
            grp_fu_425_p1 = 'bx;
        end
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_429_p0 = p_2_reg_1512;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = p_1_reg_1499;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_429_p0 = reg_455;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_429_p1 = min_p_7_fu_1137_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_429_p1 = min_p_5_fu_1029_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_429_p1 = min_p_3_fu_927_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_429_p1 = min_p_fu_126;
        end else begin
            grp_fu_429_p1 = 'bx;
        end
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_2_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_3_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_4_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_5_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_6_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_7_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_508_p1;
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
            llike_address0_local = zext_ln54_6_fu_737_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_508_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_14_reg_1373_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_534_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_656_p1;
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
            transition_1_address0_local = zext_ln54_2_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_534_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_656_p1;
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
assign add_ln53_1_fu_546_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_552_p2 = (zext_ln21_fu_482_p1 + 7'd3);
assign add_ln53_3_fu_830_p2 = (s_reg_1291 + 6'd4);
assign add_ln53_fu_540_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_651_p2 = (shl_ln54_1_fu_644_p3 + zext_ln52_2_cast_reg_1284);
assign add_ln54_2_fu_708_p2 = (shl_ln54_2_fu_701_p3 + zext_ln52_2_cast_reg_1284);
assign add_ln54_3_fu_804_p2 = (shl_ln54_3_fu_796_p3 + zext_ln52_2_cast_reg_1284);
assign add_ln54_4_fu_732_p2 = (zext_ln52_3 + zext_ln54_5_fu_728_p1);
assign add_ln54_fu_528_p2 = (shl_ln2_fu_520_p3 + zext_ln52_2_cast_fu_460_p1);
assign and_ln55_1_fu_921_p2 = (or_ln55_1_fu_909_p2 & and_ln55_fu_915_p2);
assign and_ln55_2_fu_1004_p2 = (or_ln55_3_fu_998_p2 & or_ln55_2_fu_980_p2);
assign and_ln55_3_fu_1010_p2 = (grp_fu_1142_p_dout0 & and_ln55_2_fu_1004_p2);
assign and_ln55_4_fu_1115_p2 = (or_ln55_5_fu_1109_p2 & or_ln55_4_fu_1091_p2);
assign and_ln55_5_fu_1121_p2 = (grp_fu_1142_p_dout0 & and_ln55_4_fu_1115_p2);
assign and_ln55_6_fu_1214_p2 = (or_ln55_7_fu_1208_p2 & or_ln55_6_fu_1190_p2);
assign and_ln55_7_fu_1220_p2 = (tmp_17_reg_1562 & and_ln55_6_fu_1214_p2);
assign and_ln55_fu_915_p2 = (or_ln55_fu_891_p2 & grp_fu_1142_p_dout0);
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
assign bitcast_ln54_1_fu_815_p1 = reg_451;
assign bitcast_ln54_2_fu_820_p1 = reg_447;
assign bitcast_ln54_3_fu_825_p1 = reg_451;
assign bitcast_ln54_fu_749_p1 = reg_447;
assign bitcast_ln55_1_fu_862_p1 = min_p_1_reg_1492;
assign bitcast_ln55_2_fu_934_p1 = p_1_reg_1499;
assign bitcast_ln55_3_fu_951_p1 = min_p_3_reg_1519;
assign bitcast_ln55_4_fu_1045_p1 = p_2_reg_1512;
assign bitcast_ln55_5_fu_1062_p1 = min_p_5_reg_1532;
assign bitcast_ln55_6_fu_1143_p1 = reg_455;
assign bitcast_ln55_7_fu_1161_p1 = min_p_7_reg_1555;
assign bitcast_ln55_fu_844_p1 = reg_455;
assign grp_fu_1142_p_ce = 1'b1;
assign grp_fu_1142_p_din0 = grp_fu_429_p0;
assign grp_fu_1142_p_din1 = grp_fu_429_p1;
assign grp_fu_1142_p_opcode = 5'd4;
assign grp_fu_433_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_440_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_538_p_ce = 1'b1;
assign grp_fu_538_p_din0 = grp_fu_425_p0;
assign grp_fu_538_p_din1 = grp_fu_425_p1;
assign grp_fu_538_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1097_p2 = ((tmp_12_fu_1065_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1103_p2 = ((trunc_ln55_5_fu_1075_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1178_p2 = ((tmp_15_fu_1147_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1184_p2 = ((trunc_ln55_6_fu_1157_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1196_p2 = ((tmp_16_fu_1164_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1202_p2 = ((trunc_ln55_7_fu_1174_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_885_p2 = ((trunc_ln55_fu_858_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_897_p2 = ((tmp_4_fu_865_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_903_p2 = ((trunc_ln55_1_fu_875_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_968_p2 = ((tmp_7_fu_937_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_974_p2 = ((trunc_ln55_2_fu_947_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_986_p2 = ((tmp_9_fu_954_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_992_p2 = ((trunc_ln55_3_fu_964_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1079_p2 = ((tmp_11_fu_1048_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1085_p2 = ((trunc_ln55_4_fu_1058_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_879_p2 = ((tmp_1_fu_848_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_490_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_3_fu_719_p4 = {{add_ln53_2_reg_1367[6:3]}};
assign min_p_3_fu_927_p3 = ((and_ln55_1_reg_1506[0:0] == 1'b1) ? reg_455 : min_p_1_reg_1492);
assign min_p_5_fu_1029_p3 = ((and_ln55_3_reg_1526[0:0] == 1'b1) ? p_1_reg_1499 : min_p_3_reg_1519);
assign min_p_7_fu_1137_p3 = ((and_ln55_5_reg_1544[0:0] == 1'b1) ? p_2_reg_1512 : min_p_5_reg_1532);
assign min_p_9_fu_1225_p3 = ((and_ln55_7_fu_1220_p2[0:0] == 1'b1) ? reg_455 : min_p_7_reg_1555);
assign min_s_10_out = ((and_ln55_5_reg_1544[0:0] == 1'b1) ? zext_ln55_2_fu_1127_p1 : min_s_5_reg_1539);
assign min_s_4_fu_1022_p3 = ((and_ln55_1_reg_1506[0:0] == 1'b1) ? zext_ln55_fu_1019_p1 : min_s_fu_130);
assign min_s_5_fu_1038_p3 = ((and_ln55_3_reg_1526[0:0] == 1'b1) ? zext_ln55_1_fu_1035_p1 : min_s_4_fu_1022_p3);
assign min_s_6_fu_1130_p3 = ((and_ln55_5_reg_1544[0:0] == 1'b1) ? zext_ln55_2_fu_1127_p1 : min_s_5_reg_1539);
assign min_s_7_fu_1235_p3 = ((and_ln55_7_fu_1220_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1232_p1 : min_s_6_reg_1550);
assign or_ln55_1_fu_909_p2 = (icmp_ln55_3_fu_903_p2 | icmp_ln55_2_fu_897_p2);
assign or_ln55_2_fu_980_p2 = (icmp_ln55_5_fu_974_p2 | icmp_ln55_4_fu_968_p2);
assign or_ln55_3_fu_998_p2 = (icmp_ln55_7_fu_992_p2 | icmp_ln55_6_fu_986_p2);
assign or_ln55_4_fu_1091_p2 = (icmp_ln55_9_fu_1085_p2 | icmp_ln55_8_fu_1079_p2);
assign or_ln55_5_fu_1109_p2 = (icmp_ln55_11_fu_1103_p2 | icmp_ln55_10_fu_1097_p2);
assign or_ln55_6_fu_1190_p2 = (icmp_ln55_13_fu_1184_p2 | icmp_ln55_12_fu_1178_p2);
assign or_ln55_7_fu_1208_p2 = (icmp_ln55_15_fu_1202_p2 | icmp_ln55_14_fu_1196_p2);
assign or_ln55_fu_891_p2 = (icmp_ln55_fu_879_p2 | icmp_ln55_1_fu_885_p2);
assign shl_ln2_fu_520_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_644_p3 = {{add_ln53_reg_1355}, {5'd0}};
assign shl_ln54_2_fu_701_p3 = {{add_ln53_1_reg_1361}, {5'd0}};
assign shl_ln54_3_fu_796_p3 = {{trunc_ln54_fu_793_p1}, {5'd0}};
assign tmp_11_fu_1048_p4 = {{bitcast_ln55_4_fu_1045_p1[62:52]}};
assign tmp_12_fu_1065_p4 = {{bitcast_ln55_5_fu_1062_p1[62:52]}};
assign tmp_15_fu_1147_p4 = {{bitcast_ln55_6_fu_1143_p1[62:52]}};
assign tmp_16_fu_1164_p4 = {{bitcast_ln55_7_fu_1161_p1[62:52]}};
assign tmp_1_fu_848_p4 = {{bitcast_ln55_fu_844_p1[62:52]}};
assign tmp_2_fu_566_p17 = 'bx;
assign tmp_3_fu_605_p17 = 'bx;
assign tmp_4_fu_865_p4 = {{bitcast_ln55_1_fu_862_p1[62:52]}};
assign tmp_6_fu_662_p17 = 'bx;
assign tmp_7_fu_937_p4 = {{bitcast_ln55_2_fu_934_p1[62:52]}};
assign tmp_8_fu_754_p17 = 'bx;
assign tmp_9_fu_954_p4 = {{bitcast_ln55_3_fu_951_p1[62:52]}};
assign tmp_s_fu_500_p3 = {{t_1}, {lshr_ln8_2_fu_490_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln21_fu_486_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln54_fu_793_p1 = add_ln53_2_reg_1367[5:0];
assign trunc_ln55_1_fu_875_p1 = bitcast_ln55_1_fu_862_p1[51:0];
assign trunc_ln55_2_fu_947_p1 = bitcast_ln55_2_fu_934_p1[51:0];
assign trunc_ln55_3_fu_964_p1 = bitcast_ln55_3_fu_951_p1[51:0];
assign trunc_ln55_4_fu_1058_p1 = bitcast_ln55_4_fu_1045_p1[51:0];
assign trunc_ln55_5_fu_1075_p1 = bitcast_ln55_5_fu_1062_p1[51:0];
assign trunc_ln55_6_fu_1157_p1 = bitcast_ln55_6_fu_1143_p1[51:0];
assign trunc_ln55_7_fu_1174_p1 = bitcast_ln55_7_fu_1161_p1[51:0];
assign trunc_ln55_fu_858_p1 = bitcast_ln55_fu_844_p1[51:0];
assign zext_ln21_fu_482_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_460_p1 = zext_ln52_2;
assign zext_ln54_1_fu_656_p1 = add_ln54_1_fu_651_p2;
assign zext_ln54_2_fu_713_p1 = add_ln54_2_fu_708_p2;
assign zext_ln54_3_fu_809_p1 = add_ln54_3_fu_804_p2;
assign zext_ln54_4_fu_508_p1 = tmp_s_fu_500_p3;
assign zext_ln54_5_fu_728_p1 = lshr_ln9_3_fu_719_p4;
assign zext_ln54_6_fu_737_p1 = add_ln54_4_fu_732_p2;
assign zext_ln54_fu_534_p1 = add_ln54_fu_528_p2;
assign zext_ln55_1_fu_1035_p1 = add_ln53_reg_1355_pp0_iter1_reg;
assign zext_ln55_2_fu_1127_p1 = add_ln53_1_reg_1361_pp0_iter1_reg;
assign zext_ln55_3_fu_1232_p1 = trunc_ln54_reg_1462_pp0_iter1_reg;
assign zext_ln55_fu_1019_p1 = s_reg_1291_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1284[10:7] <= 4'b0000;
end
endmodule 