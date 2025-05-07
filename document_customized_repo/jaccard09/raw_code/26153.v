module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,min_p_42_out,min_p_42_out_ap_vld,grp_fu_538_p_din0,grp_fu_538_p_din1,grp_fu_538_p_opcode,grp_fu_538_p_dout0,grp_fu_538_p_ce,grp_fu_1142_p_din0,grp_fu_1142_p_din1,grp_fu_1142_p_opcode,grp_fu_1142_p_dout0,grp_fu_1142_p_ce); 
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
input  [10:0] empty;
output  [63:0] min_p_42_out;
output   min_p_42_out_ap_vld;
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
reg   [0:0] tmp_72_reg_1315;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_441_p3;
reg   [63:0] reg_455;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1231;
wire   [2:0] trunc_ln15_fu_476_p1;
reg   [2:0] trunc_ln15_reg_1236;
reg   [5:0] tmp_71_reg_1304;
wire   [6:0] add_ln25_fu_578_p2;
reg   [6:0] add_ln25_reg_1309;
reg   [0:0] tmp_72_reg_1315_pp0_iter1_reg;
reg   [0:0] tmp_72_reg_1315_pp0_iter2_reg;
reg   [0:0] tmp_72_reg_1315_pp0_iter3_reg;
wire   [63:0] tmp_6_fu_592_p19;
reg   [63:0] tmp_6_reg_1319;
wire   [63:0] tmp_8_fu_631_p19;
reg   [63:0] tmp_8_reg_1324;
wire   [63:0] grp_fu_448_p3;
reg   [63:0] select_ln27_1_reg_1329;
wire   [63:0] tmp_s_fu_670_p19;
reg   [63:0] tmp_s_reg_1334;
wire   [63:0] bitcast_ln27_fu_767_p1;
wire   [63:0] tmp_1_fu_772_p19;
reg   [63:0] tmp_1_reg_1404;
reg   [63:0] select_ln27_3_reg_1409;
wire   [63:0] bitcast_ln27_1_fu_811_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_815_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_820_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_1429;
reg   [63:0] add52_1_reg_1434;
reg   [63:0] add52_2_reg_1439;
reg   [63:0] add52_3_reg_1444;
reg   [63:0] p_reg_1449;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_35_reg_1456;
wire   [0:0] and_ln29_1_fu_914_p2;
reg   [0:0] and_ln29_1_reg_1463;
reg   [63:0] p_16_reg_1468;
wire   [63:0] min_p_37_fu_920_p3;
reg   [63:0] min_p_37_reg_1475;
reg   [63:0] p_17_reg_1482;
wire   [0:0] and_ln29_3_fu_1002_p2;
reg   [0:0] and_ln29_3_reg_1489;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_18_reg_1494;
wire   [63:0] min_p_39_fu_1008_p3;
reg   [63:0] min_p_39_reg_1501;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1090_p2;
reg   [0:0] and_ln29_5_reg_1508;
wire   [63:0] min_p_41_fu_1096_p3;
reg   [63:0] min_p_41_reg_1513;
reg   [0:0] tmp_68_reg_1520;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_498_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_526_p1;
wire   [63:0] zext_ln27_1_fu_556_p1;
wire   [63:0] zext_ln27_2_fu_715_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_739_p1;
wire   [63:0] zext_ln27_3_fu_761_p1;
reg   [63:0] min_p_fu_132;
wire   [63:0] min_p_43_fu_1184_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_136;
wire   [5:0] add_ln25_1_fu_824_p2;
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
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg   [63:0] grp_fu_433_p0;
reg   [63:0] grp_fu_433_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_437_p0;
reg   [63:0] grp_fu_437_p1;
wire   [2:0] lshr_ln7_1_fu_480_p4;
wire   [10:0] tmp_69_fu_490_p3;
wire   [10:0] add_ln_fu_518_p3;
wire   [10:0] shl_ln1_fu_510_p3;
wire   [10:0] add_ln27_fu_532_p2;
wire   [5:0] tmp_70_fu_538_p4;
wire   [10:0] add_ln27_2_fu_548_p3;
wire   [10:0] add_ln27_1_fu_562_p2;
wire   [6:0] zext_ln15_fu_472_p1;
wire   [63:0] tmp_6_fu_592_p17;
wire   [63:0] tmp_8_fu_631_p17;
wire   [63:0] tmp_s_fu_670_p17;
wire   [10:0] add_ln27_4_fu_709_p3;
wire   [3:0] lshr_ln8_8_fu_721_p4;
wire   [10:0] zext_ln26_1_fu_730_p1;
wire   [10:0] add_ln26_fu_734_p2;
wire   [5:0] trunc_ln27_fu_751_p1;
wire   [10:0] add_ln27_5_fu_754_p3;
wire   [63:0] tmp_1_fu_772_p17;
wire   [63:0] bitcast_ln29_fu_838_p1;
wire   [63:0] bitcast_ln29_1_fu_855_p1;
wire   [10:0] tmp_55_fu_841_p4;
wire   [51:0] trunc_ln29_fu_851_p1;
wire   [0:0] icmp_ln29_1_fu_878_p2;
wire   [0:0] icmp_ln29_fu_872_p2;
wire   [10:0] tmp_56_fu_858_p4;
wire   [51:0] trunc_ln29_1_fu_868_p1;
wire   [0:0] icmp_ln29_3_fu_896_p2;
wire   [0:0] icmp_ln29_2_fu_890_p2;
wire   [0:0] or_ln29_fu_884_p2;
wire   [0:0] and_ln29_fu_908_p2;
wire   [0:0] or_ln29_1_fu_902_p2;
wire   [63:0] bitcast_ln29_2_fu_926_p1;
wire   [63:0] bitcast_ln29_3_fu_943_p1;
wire   [10:0] tmp_58_fu_929_p4;
wire   [51:0] trunc_ln29_2_fu_939_p1;
wire   [0:0] icmp_ln29_5_fu_966_p2;
wire   [0:0] icmp_ln29_4_fu_960_p2;
wire   [10:0] tmp_59_fu_946_p4;
wire   [51:0] trunc_ln29_3_fu_956_p1;
wire   [0:0] icmp_ln29_7_fu_984_p2;
wire   [0:0] icmp_ln29_6_fu_978_p2;
wire   [0:0] or_ln29_3_fu_990_p2;
wire   [0:0] or_ln29_2_fu_972_p2;
wire   [0:0] and_ln29_2_fu_996_p2;
wire   [63:0] bitcast_ln29_4_fu_1014_p1;
wire   [63:0] bitcast_ln29_5_fu_1031_p1;
wire   [10:0] tmp_62_fu_1017_p4;
wire   [51:0] trunc_ln29_4_fu_1027_p1;
wire   [0:0] icmp_ln29_9_fu_1054_p2;
wire   [0:0] icmp_ln29_8_fu_1048_p2;
wire   [10:0] tmp_63_fu_1034_p4;
wire   [51:0] trunc_ln29_5_fu_1044_p1;
wire   [0:0] icmp_ln29_11_fu_1072_p2;
wire   [0:0] icmp_ln29_10_fu_1066_p2;
wire   [0:0] or_ln29_5_fu_1078_p2;
wire   [0:0] or_ln29_4_fu_1060_p2;
wire   [0:0] and_ln29_4_fu_1084_p2;
wire   [63:0] bitcast_ln29_6_fu_1103_p1;
wire   [63:0] bitcast_ln29_7_fu_1120_p1;
wire   [10:0] tmp_66_fu_1106_p4;
wire   [51:0] trunc_ln29_6_fu_1116_p1;
wire   [0:0] icmp_ln29_13_fu_1143_p2;
wire   [0:0] icmp_ln29_12_fu_1137_p2;
wire   [10:0] tmp_67_fu_1123_p4;
wire   [51:0] trunc_ln29_7_fu_1133_p1;
wire   [0:0] icmp_ln29_15_fu_1161_p2;
wire   [0:0] icmp_ln29_14_fu_1155_p2;
wire   [0:0] or_ln29_7_fu_1167_p2;
wire   [0:0] or_ln29_6_fu_1149_p2;
wire   [0:0] and_ln29_6_fu_1173_p2;
wire   [0:0] and_ln29_7_fu_1179_p2;
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
wire   [2:0] tmp_6_fu_592_p1;
wire   [2:0] tmp_6_fu_592_p3;
wire   [2:0] tmp_6_fu_592_p5;
wire   [2:0] tmp_6_fu_592_p7;
wire  signed [2:0] tmp_6_fu_592_p9;
wire  signed [2:0] tmp_6_fu_592_p11;
wire  signed [2:0] tmp_6_fu_592_p13;
wire  signed [2:0] tmp_6_fu_592_p15;
wire  signed [2:0] tmp_8_fu_631_p1;
wire   [2:0] tmp_8_fu_631_p3;
wire   [2:0] tmp_8_fu_631_p5;
wire   [2:0] tmp_8_fu_631_p7;
wire   [2:0] tmp_8_fu_631_p9;
wire  signed [2:0] tmp_8_fu_631_p11;
wire  signed [2:0] tmp_8_fu_631_p13;
wire  signed [2:0] tmp_8_fu_631_p15;
wire  signed [2:0] tmp_s_fu_670_p1;
wire  signed [2:0] tmp_s_fu_670_p3;
wire   [2:0] tmp_s_fu_670_p5;
wire   [2:0] tmp_s_fu_670_p7;
wire   [2:0] tmp_s_fu_670_p9;
wire   [2:0] tmp_s_fu_670_p11;
wire  signed [2:0] tmp_s_fu_670_p13;
wire  signed [2:0] tmp_s_fu_670_p15;
wire  signed [2:0] tmp_1_fu_772_p1;
wire  signed [2:0] tmp_1_fu_772_p3;
wire  signed [2:0] tmp_1_fu_772_p5;
wire   [2:0] tmp_1_fu_772_p7;
wire   [2:0] tmp_1_fu_772_p9;
wire   [2:0] tmp_1_fu_772_p11;
wire   [2:0] tmp_1_fu_772_p13;
wire  signed [2:0] tmp_1_fu_772_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_132 = 64'd0;
#0 prev_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U21(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_6_fu_592_p17),.sel(trunc_ln15_reg_1236),.dout(tmp_6_fu_592_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U22(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_8_fu_631_p17),.sel(trunc_ln15_reg_1236),.dout(tmp_8_fu_631_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U23(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_s_fu_670_p17),.sel(trunc_ln15_reg_1236),.dout(tmp_s_fu_670_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U24(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_1_fu_772_p17),.sel(trunc_ln15_reg_1236),.dout(tmp_1_fu_772_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_132 <= min_p_34;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_72_reg_1315_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_132 <= min_p_43_fu_1184_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_136 <= 6'd1;
    end else if (((tmp_72_reg_1315 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_136 <= add_ln25_1_fu_824_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1429 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1434 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1439 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1444 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1309 <= add_ln25_fu_578_p2;
        prev_1_reg_1231 <= ap_sig_allocacmp_prev_1;
        tmp_71_reg_1304 <= {{add_ln27_1_fu_562_p2[10:5]}};
        tmp_72_reg_1315 <= add_ln25_fu_578_p2[32'd6];
        tmp_72_reg_1315_pp0_iter1_reg <= tmp_72_reg_1315;
        tmp_72_reg_1315_pp0_iter2_reg <= tmp_72_reg_1315_pp0_iter1_reg;
        tmp_72_reg_1315_pp0_iter3_reg <= tmp_72_reg_1315_pp0_iter2_reg;
        trunc_ln15_reg_1236 <= trunc_ln15_fu_476_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1463 <= and_ln29_1_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1489 <= and_ln29_3_fu_1002_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1508 <= and_ln29_5_fu_1090_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_35_reg_1456 <= min_p_fu_132;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_37_reg_1475 <= min_p_37_fu_920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_39_reg_1501 <= min_p_39_fu_1008_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_41_reg_1513 <= min_p_41_fu_1096_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_16_reg_1468 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_17_reg_1482 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_18_reg_1494 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1449 <= grp_fu_538_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_455 <= grp_fu_441_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln27_1_reg_1329 <= grp_fu_448_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln27_3_reg_1409 <= grp_fu_448_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_1404 <= tmp_1_fu_772_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_68_reg_1520 <= grp_fu_1142_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_6_reg_1319 <= tmp_6_fu_592_p19;
        tmp_8_reg_1324 <= tmp_8_fu_631_p19;
        tmp_s_reg_1334 <= tmp_s_fu_670_p19;
    end
end
always @ (*) begin
    if (((tmp_72_reg_1315 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_72_reg_1315_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_433_p0 = add52_3_reg_1444;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_433_p0 = add52_2_reg_1439;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_433_p0 = add52_1_reg_1434;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_433_p0 = add1_reg_1429;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_433_p0 = tmp_1_reg_1404;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_433_p0 = tmp_s_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = tmp_8_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = tmp_6_reg_1319;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_433_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_433_p1 = bitcast_ln27_3_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_433_p1 = bitcast_ln27_2_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p1 = bitcast_ln27_1_fu_811_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = bitcast_ln27_fu_767_p1;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = p_18_reg_1494;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_437_p0 = p_17_reg_1482;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_437_p0 = p_16_reg_1468;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = p_reg_1449;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = min_p_41_fu_1096_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_437_p1 = min_p_39_fu_1008_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_437_p1 = min_p_37_fu_920_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = min_p_fu_132;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_498_p1;
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
            llike_2_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_498_p1;
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
            llike_3_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_498_p1;
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
            llike_4_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_498_p1;
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
            llike_5_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_498_p1;
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
            llike_6_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_498_p1;
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
            llike_7_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_498_p1;
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
            llike_address0_local = zext_ln26_2_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_498_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (tmp_72_reg_1315_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_42_out_ap_vld = 1'b1;
    end else begin
        min_p_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_556_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_526_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_556_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_526_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
assign add_ln25_1_fu_824_p2 = (prev_1_reg_1231 + 6'd4);
assign add_ln25_fu_578_p2 = (zext_ln15_fu_472_p1 + 7'd3);
assign add_ln26_fu_734_p2 = (empty + zext_ln26_1_fu_730_p1);
assign add_ln27_1_fu_562_p2 = (shl_ln1_fu_510_p3 + 11'd64);
assign add_ln27_2_fu_548_p3 = {{tmp_70_fu_538_p4}, {lshr_ln}};
assign add_ln27_4_fu_709_p3 = {{tmp_71_reg_1304}, {lshr_ln}};
assign add_ln27_5_fu_754_p3 = {{trunc_ln27_fu_751_p1}, {lshr_ln}};
assign add_ln27_fu_532_p2 = (shl_ln1_fu_510_p3 + 11'd32);
assign add_ln_fu_518_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_914_p2 = (or_ln29_1_fu_902_p2 & and_ln29_fu_908_p2);
assign and_ln29_2_fu_996_p2 = (or_ln29_3_fu_990_p2 & or_ln29_2_fu_972_p2);
assign and_ln29_3_fu_1002_p2 = (grp_fu_1142_p_dout0 & and_ln29_2_fu_996_p2);
assign and_ln29_4_fu_1084_p2 = (or_ln29_5_fu_1078_p2 & or_ln29_4_fu_1060_p2);
assign and_ln29_5_fu_1090_p2 = (grp_fu_1142_p_dout0 & and_ln29_4_fu_1084_p2);
assign and_ln29_6_fu_1173_p2 = (or_ln29_7_fu_1167_p2 & or_ln29_6_fu_1149_p2);
assign and_ln29_7_fu_1179_p2 = (tmp_68_reg_1520 & and_ln29_6_fu_1173_p2);
assign and_ln29_fu_908_p2 = (or_ln29_fu_884_p2 & grp_fu_1142_p_dout0);
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
assign bitcast_ln27_1_fu_811_p1 = select_ln27_1_reg_1329;
assign bitcast_ln27_2_fu_815_p1 = reg_455;
assign bitcast_ln27_3_fu_820_p1 = select_ln27_3_reg_1409;
assign bitcast_ln27_fu_767_p1 = reg_455;
assign bitcast_ln29_1_fu_855_p1 = min_p_35_reg_1456;
assign bitcast_ln29_2_fu_926_p1 = p_16_reg_1468;
assign bitcast_ln29_3_fu_943_p1 = min_p_37_reg_1475;
assign bitcast_ln29_4_fu_1014_p1 = p_17_reg_1482;
assign bitcast_ln29_5_fu_1031_p1 = min_p_39_reg_1501;
assign bitcast_ln29_6_fu_1103_p1 = p_18_reg_1494;
assign bitcast_ln29_7_fu_1120_p1 = min_p_41_reg_1513;
assign bitcast_ln29_fu_838_p1 = p_reg_1449;
assign grp_fu_1142_p_ce = 1'b1;
assign grp_fu_1142_p_din0 = grp_fu_437_p0;
assign grp_fu_1142_p_din1 = grp_fu_437_p1;
assign grp_fu_1142_p_opcode = 5'd4;
assign grp_fu_441_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_448_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_538_p_ce = 1'b1;
assign grp_fu_538_p_din0 = grp_fu_433_p0;
assign grp_fu_538_p_din1 = grp_fu_433_p1;
assign grp_fu_538_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1066_p2 = ((tmp_63_fu_1034_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1072_p2 = ((trunc_ln29_5_fu_1044_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1137_p2 = ((tmp_66_fu_1106_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1143_p2 = ((trunc_ln29_6_fu_1116_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1155_p2 = ((tmp_67_fu_1123_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1161_p2 = ((trunc_ln29_7_fu_1133_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_878_p2 = ((trunc_ln29_fu_851_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_890_p2 = ((tmp_56_fu_858_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_896_p2 = ((trunc_ln29_1_fu_868_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_960_p2 = ((tmp_58_fu_929_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_966_p2 = ((trunc_ln29_2_fu_939_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_978_p2 = ((tmp_59_fu_946_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_984_p2 = ((trunc_ln29_3_fu_956_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1048_p2 = ((tmp_62_fu_1017_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1054_p2 = ((trunc_ln29_4_fu_1027_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_872_p2 = ((tmp_55_fu_841_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_480_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_8_fu_721_p4 = {{add_ln25_reg_1309[6:3]}};
assign min_p_37_fu_920_p3 = ((and_ln29_1_reg_1463[0:0] == 1'b1) ? p_reg_1449 : min_p_35_reg_1456);
assign min_p_39_fu_1008_p3 = ((and_ln29_3_reg_1489[0:0] == 1'b1) ? p_16_reg_1468 : min_p_37_reg_1475);
assign min_p_41_fu_1096_p3 = ((and_ln29_5_reg_1508[0:0] == 1'b1) ? p_17_reg_1482 : min_p_39_reg_1501);
assign min_p_42_out = ((and_ln29_5_reg_1508[0:0] == 1'b1) ? p_17_reg_1482 : min_p_39_reg_1501);
assign min_p_43_fu_1184_p3 = ((and_ln29_7_fu_1179_p2[0:0] == 1'b1) ? p_18_reg_1494 : min_p_41_reg_1513);
assign or_ln29_1_fu_902_p2 = (icmp_ln29_3_fu_896_p2 | icmp_ln29_2_fu_890_p2);
assign or_ln29_2_fu_972_p2 = (icmp_ln29_5_fu_966_p2 | icmp_ln29_4_fu_960_p2);
assign or_ln29_3_fu_990_p2 = (icmp_ln29_7_fu_984_p2 | icmp_ln29_6_fu_978_p2);
assign or_ln29_4_fu_1060_p2 = (icmp_ln29_9_fu_1054_p2 | icmp_ln29_8_fu_1048_p2);
assign or_ln29_5_fu_1078_p2 = (icmp_ln29_11_fu_1072_p2 | icmp_ln29_10_fu_1066_p2);
assign or_ln29_6_fu_1149_p2 = (icmp_ln29_13_fu_1143_p2 | icmp_ln29_12_fu_1137_p2);
assign or_ln29_7_fu_1167_p2 = (icmp_ln29_15_fu_1161_p2 | icmp_ln29_14_fu_1155_p2);
assign or_ln29_fu_884_p2 = (icmp_ln29_fu_872_p2 | icmp_ln29_1_fu_878_p2);
assign shl_ln1_fu_510_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_1_fu_772_p17 = 'bx;
assign tmp_55_fu_841_p4 = {{bitcast_ln29_fu_838_p1[62:52]}};
assign tmp_56_fu_858_p4 = {{bitcast_ln29_1_fu_855_p1[62:52]}};
assign tmp_58_fu_929_p4 = {{bitcast_ln29_2_fu_926_p1[62:52]}};
assign tmp_59_fu_946_p4 = {{bitcast_ln29_3_fu_943_p1[62:52]}};
assign tmp_62_fu_1017_p4 = {{bitcast_ln29_4_fu_1014_p1[62:52]}};
assign tmp_63_fu_1034_p4 = {{bitcast_ln29_5_fu_1031_p1[62:52]}};
assign tmp_66_fu_1106_p4 = {{bitcast_ln29_6_fu_1103_p1[62:52]}};
assign tmp_67_fu_1123_p4 = {{bitcast_ln29_7_fu_1120_p1[62:52]}};
assign tmp_69_fu_490_p3 = {{empty_9}, {lshr_ln7_1_fu_480_p4}};
assign tmp_6_fu_592_p17 = 'bx;
assign tmp_70_fu_538_p4 = {{add_ln27_fu_532_p2[10:5]}};
assign tmp_8_fu_631_p17 = 'bx;
assign tmp_s_fu_670_p17 = 'bx;
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln15_fu_476_p1 = ap_sig_allocacmp_prev_1[2:0];
assign trunc_ln27_fu_751_p1 = add_ln25_reg_1309[5:0];
assign trunc_ln29_1_fu_868_p1 = bitcast_ln29_1_fu_855_p1[51:0];
assign trunc_ln29_2_fu_939_p1 = bitcast_ln29_2_fu_926_p1[51:0];
assign trunc_ln29_3_fu_956_p1 = bitcast_ln29_3_fu_943_p1[51:0];
assign trunc_ln29_4_fu_1027_p1 = bitcast_ln29_4_fu_1014_p1[51:0];
assign trunc_ln29_5_fu_1044_p1 = bitcast_ln29_5_fu_1031_p1[51:0];
assign trunc_ln29_6_fu_1116_p1 = bitcast_ln29_6_fu_1103_p1[51:0];
assign trunc_ln29_7_fu_1133_p1 = bitcast_ln29_7_fu_1120_p1[51:0];
assign trunc_ln29_fu_851_p1 = bitcast_ln29_fu_838_p1[51:0];
assign zext_ln15_fu_472_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_730_p1 = lshr_ln8_8_fu_721_p4;
assign zext_ln26_2_fu_739_p1 = add_ln26_fu_734_p2;
assign zext_ln26_fu_498_p1 = tmp_69_fu_490_p3;
assign zext_ln27_1_fu_556_p1 = add_ln27_2_fu_548_p3;
assign zext_ln27_2_fu_715_p1 = add_ln27_4_fu_709_p3;
assign zext_ln27_3_fu_761_p1 = add_ln27_5_fu_754_p3;
assign zext_ln27_fu_526_p1 = add_ln_fu_518_p3;
endmodule 