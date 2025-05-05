module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,zext_ln52_2,min_s_10_out,min_s_10_out_ap_vld,grp_fu_434_p_din0,grp_fu_434_p_din1,grp_fu_434_p_opcode,grp_fu_434_p_dout0,grp_fu_434_p_ce,grp_fu_848_p_din0,grp_fu_848_p_din1,grp_fu_848_p_opcode,grp_fu_848_p_dout0,grp_fu_848_p_ce); 
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
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [10:0] zext_ln52_2;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_434_p_din0;
output  [63:0] grp_fu_434_p_din1;
output  [1:0] grp_fu_434_p_opcode;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;
output  [63:0] grp_fu_848_p_din0;
output  [63:0] grp_fu_848_p_din1;
output  [4:0] grp_fu_848_p_opcode;
input  [0:0] grp_fu_848_p_dout0;
output   grp_fu_848_p_ce;
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
reg   [0:0] tmp_reg_1285;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_378;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_383;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_388_p1;
reg   [11:0] zext_ln52_cast_reg_1201;
reg   [5:0] s_reg_1208;
reg   [5:0] s_reg_1208_pp0_iter1_reg;
wire   [2:0] trunc_ln16_fu_414_p1;
reg   [2:0] trunc_ln16_reg_1214;
wire   [5:0] add_ln53_fu_467_p2;
reg   [5:0] add_ln53_reg_1267;
reg   [5:0] add_ln53_reg_1267_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_473_p2;
reg   [5:0] add_ln53_1_reg_1273;
reg   [5:0] add_ln53_1_reg_1273_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_479_p2;
reg   [6:0] add_ln53_2_reg_1279;
reg   [0:0] tmp_reg_1285_pp0_iter1_reg;
wire   [63:0] tmp_8_fu_493_p19;
reg   [63:0] tmp_8_reg_1289;
wire   [63:0] tmp_9_fu_532_p19;
reg   [63:0] tmp_9_reg_1294;
wire   [63:0] tmp_s_fu_588_p19;
reg   [63:0] tmp_s_reg_1304;
wire   [63:0] bitcast_ln54_fu_674_p1;
reg   [63:0] transition_load_2_reg_1359;
wire   [63:0] tmp_2_fu_679_p19;
reg   [63:0] tmp_2_reg_1364;
wire   [5:0] trunc_ln54_fu_718_p1;
reg   [5:0] trunc_ln54_reg_1369;
reg   [5:0] trunc_ln54_reg_1369_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_739_p1;
wire   [63:0] bitcast_ln54_2_fu_744_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_748_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_1394;
reg   [63:0] p_1_reg_1401;
wire   [0:0] and_ln55_1_fu_844_p2;
reg   [0:0] and_ln55_1_reg_1408;
reg   [63:0] p_2_reg_1414;
wire   [63:0] min_p_3_fu_850_p3;
reg   [63:0] min_p_3_reg_1421;
wire   [0:0] and_ln55_3_fu_933_p2;
reg   [0:0] and_ln55_3_reg_1428;
wire   [63:0] min_p_5_fu_952_p3;
reg   [63:0] min_p_5_reg_1434;
wire   [7:0] min_s_5_fu_961_p3;
reg   [7:0] min_s_5_reg_1441;
wire   [0:0] and_ln55_5_fu_1044_p2;
reg   [0:0] and_ln55_5_reg_1446;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1053_p3;
reg   [7:0] min_s_6_reg_1452;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1060_p3;
reg   [63:0] min_p_7_reg_1457;
reg   [0:0] tmp_16_reg_1464;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_436_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_462_p1;
wire   [63:0] zext_ln54_1_fu_583_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_639_p1;
wire   [63:0] zext_ln54_6_fu_662_p1;
wire   [63:0] zext_ln54_3_fu_734_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_118;
wire   [63:0] min_p_9_fu_1148_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_122;
wire   [7:0] min_s_7_fu_1158_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_126;
wire   [5:0] add_ln53_3_fu_753_p2;
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
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg   [63:0] grp_fu_370_p0;
reg   [63:0] grp_fu_370_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_374_p0;
reg   [63:0] grp_fu_374_p1;
wire    ap_block_pp0_stage7;
wire   [2:0] lshr_ln8_2_fu_418_p4;
wire   [10:0] tmp_1_fu_428_p3;
wire   [11:0] shl_ln3_fu_448_p3;
wire   [11:0] add_ln54_fu_456_p2;
wire   [6:0] zext_ln16_fu_410_p1;
wire   [63:0] tmp_8_fu_493_p17;
wire   [63:0] tmp_9_fu_532_p17;
wire   [11:0] shl_ln54_1_fu_571_p3;
wire   [11:0] add_ln54_1_fu_578_p2;
wire   [63:0] tmp_s_fu_588_p17;
wire   [11:0] shl_ln54_2_fu_627_p3;
wire   [11:0] add_ln54_2_fu_634_p2;
wire   [3:0] lshr_ln9_2_fu_644_p4;
wire   [10:0] zext_ln54_5_fu_653_p1;
wire   [10:0] add_ln54_4_fu_657_p2;
wire   [63:0] tmp_2_fu_679_p17;
wire   [11:0] shl_ln54_3_fu_721_p3;
wire   [11:0] add_ln54_3_fu_729_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_767_p1;
wire   [63:0] bitcast_ln55_1_fu_785_p1;
wire   [10:0] tmp_3_fu_771_p4;
wire   [51:0] trunc_ln55_fu_781_p1;
wire   [0:0] icmp_ln55_1_fu_808_p2;
wire   [0:0] icmp_ln55_fu_802_p2;
wire   [10:0] tmp_4_fu_788_p4;
wire   [51:0] trunc_ln55_1_fu_798_p1;
wire   [0:0] icmp_ln55_3_fu_826_p2;
wire   [0:0] icmp_ln55_2_fu_820_p2;
wire   [0:0] or_ln55_fu_814_p2;
wire   [0:0] and_ln55_fu_838_p2;
wire   [0:0] or_ln55_1_fu_832_p2;
wire   [63:0] bitcast_ln55_2_fu_857_p1;
wire   [63:0] bitcast_ln55_3_fu_874_p1;
wire   [10:0] tmp_6_fu_860_p4;
wire   [51:0] trunc_ln55_2_fu_870_p1;
wire   [0:0] icmp_ln55_5_fu_897_p2;
wire   [0:0] icmp_ln55_4_fu_891_p2;
wire   [10:0] tmp_7_fu_877_p4;
wire   [51:0] trunc_ln55_3_fu_887_p1;
wire   [0:0] icmp_ln55_7_fu_915_p2;
wire   [0:0] icmp_ln55_6_fu_909_p2;
wire   [0:0] or_ln55_3_fu_921_p2;
wire   [0:0] or_ln55_2_fu_903_p2;
wire   [0:0] and_ln55_2_fu_927_p2;
wire   [7:0] zext_ln55_fu_942_p1;
wire   [7:0] zext_ln55_1_fu_958_p1;
wire   [7:0] min_s_4_fu_945_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_968_p1;
wire   [63:0] bitcast_ln55_5_fu_985_p1;
wire   [10:0] tmp_11_fu_971_p4;
wire   [51:0] trunc_ln55_4_fu_981_p1;
wire   [0:0] icmp_ln55_9_fu_1008_p2;
wire   [0:0] icmp_ln55_8_fu_1002_p2;
wire   [10:0] tmp_12_fu_988_p4;
wire   [51:0] trunc_ln55_5_fu_998_p1;
wire   [0:0] icmp_ln55_11_fu_1026_p2;
wire   [0:0] icmp_ln55_10_fu_1020_p2;
wire   [0:0] or_ln55_5_fu_1032_p2;
wire   [0:0] or_ln55_4_fu_1014_p2;
wire   [0:0] and_ln55_4_fu_1038_p2;
wire   [7:0] zext_ln55_2_fu_1050_p1;
wire   [63:0] bitcast_ln55_6_fu_1066_p1;
wire   [63:0] bitcast_ln55_7_fu_1084_p1;
wire   [10:0] tmp_14_fu_1070_p4;
wire   [51:0] trunc_ln55_6_fu_1080_p1;
wire   [0:0] icmp_ln55_13_fu_1107_p2;
wire   [0:0] icmp_ln55_12_fu_1101_p2;
wire   [10:0] tmp_15_fu_1087_p4;
wire   [51:0] trunc_ln55_7_fu_1097_p1;
wire   [0:0] icmp_ln55_15_fu_1125_p2;
wire   [0:0] icmp_ln55_14_fu_1119_p2;
wire   [0:0] or_ln55_7_fu_1131_p2;
wire   [0:0] or_ln55_6_fu_1113_p2;
wire   [0:0] and_ln55_6_fu_1137_p2;
wire   [0:0] and_ln55_7_fu_1143_p2;
wire   [7:0] zext_ln55_3_fu_1155_p1;
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
wire   [2:0] tmp_8_fu_493_p1;
wire   [2:0] tmp_8_fu_493_p3;
wire   [2:0] tmp_8_fu_493_p5;
wire   [2:0] tmp_8_fu_493_p7;
wire  signed [2:0] tmp_8_fu_493_p9;
wire  signed [2:0] tmp_8_fu_493_p11;
wire  signed [2:0] tmp_8_fu_493_p13;
wire  signed [2:0] tmp_8_fu_493_p15;
wire  signed [2:0] tmp_9_fu_532_p1;
wire   [2:0] tmp_9_fu_532_p3;
wire   [2:0] tmp_9_fu_532_p5;
wire   [2:0] tmp_9_fu_532_p7;
wire   [2:0] tmp_9_fu_532_p9;
wire  signed [2:0] tmp_9_fu_532_p11;
wire  signed [2:0] tmp_9_fu_532_p13;
wire  signed [2:0] tmp_9_fu_532_p15;
wire  signed [2:0] tmp_s_fu_588_p1;
wire  signed [2:0] tmp_s_fu_588_p3;
wire   [2:0] tmp_s_fu_588_p5;
wire   [2:0] tmp_s_fu_588_p7;
wire   [2:0] tmp_s_fu_588_p9;
wire   [2:0] tmp_s_fu_588_p11;
wire  signed [2:0] tmp_s_fu_588_p13;
wire  signed [2:0] tmp_s_fu_588_p15;
wire  signed [2:0] tmp_2_fu_679_p1;
wire  signed [2:0] tmp_2_fu_679_p3;
wire  signed [2:0] tmp_2_fu_679_p5;
wire   [2:0] tmp_2_fu_679_p7;
wire   [2:0] tmp_2_fu_679_p9;
wire   [2:0] tmp_2_fu_679_p11;
wire   [2:0] tmp_2_fu_679_p13;
wire  signed [2:0] tmp_2_fu_679_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_118 = 64'd0;
#0 min_s_fu_122 = 8'd0;
#0 min_s_1_fu_126 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U54(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_8_fu_493_p17),.sel(trunc_ln16_reg_1214),.dout(tmp_8_fu_493_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U55(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_9_fu_532_p17),.sel(trunc_ln16_reg_1214),.dout(tmp_9_fu_532_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U56(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_s_fu_588_p17),.sel(trunc_ln16_reg_1214),.dout(tmp_s_fu_588_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U57(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_2_fu_679_p17),.sel(trunc_ln16_reg_1214),.dout(tmp_2_fu_679_p19));
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
            min_p_fu_118 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_118 <= min_p_9_fu_1148_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_126 <= 6'd1;
    end else if (((tmp_reg_1285 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_126 <= add_ln53_3_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_122 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_122 <= min_s_7_fu_1158_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_378 <= transition_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_378 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1273 <= add_ln53_1_fu_473_p2;
        add_ln53_1_reg_1273_pp0_iter1_reg <= add_ln53_1_reg_1273;
        add_ln53_2_reg_1279 <= add_ln53_2_fu_479_p2;
        add_ln53_reg_1267 <= add_ln53_fu_467_p2;
        add_ln53_reg_1267_pp0_iter1_reg <= add_ln53_reg_1267;
        s_reg_1208 <= ap_sig_allocacmp_s;
        s_reg_1208_pp0_iter1_reg <= s_reg_1208;
        tmp_reg_1285 <= add_ln53_2_fu_479_p2[32'd6];
        tmp_reg_1285_pp0_iter1_reg <= tmp_reg_1285;
        trunc_ln16_reg_1214 <= trunc_ln16_fu_414_p1;
        zext_ln52_cast_reg_1201[7 : 0] <= zext_ln52_cast_fu_388_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1408 <= and_ln55_1_fu_844_p2;
        tmp_2_reg_1364 <= tmp_2_fu_679_p19;
        trunc_ln54_reg_1369 <= trunc_ln54_fu_718_p1;
        trunc_ln54_reg_1369_pp0_iter1_reg <= trunc_ln54_reg_1369;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1428 <= and_ln55_3_fu_933_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1446 <= and_ln55_5_fu_1044_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1394 <= min_p_fu_118;
        tmp_8_reg_1289 <= tmp_8_fu_493_p19;
        tmp_9_reg_1294 <= tmp_9_fu_532_p19;
        tmp_s_reg_1304 <= tmp_s_fu_588_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1421 <= min_p_3_fu_850_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1434 <= min_p_5_fu_952_p3;
        min_s_5_reg_1441 <= min_s_5_fu_961_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1457 <= min_p_7_fu_1060_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1452 <= min_s_6_fu_1053_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1401 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1414 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_383 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_16_reg_1464 <= grp_fu_848_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        transition_load_2_reg_1359 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1285 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1285_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_126;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_370_p0 = tmp_2_reg_1364;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_370_p0 = tmp_s_reg_1304;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_370_p0 = tmp_9_reg_1294;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_370_p0 = tmp_8_reg_1289;
        end else begin
            grp_fu_370_p0 = 'bx;
        end
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_370_p1 = bitcast_ln54_3_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_370_p1 = bitcast_ln54_2_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_370_p1 = bitcast_ln54_1_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_370_p1 = bitcast_ln54_fu_674_p1;
        end else begin
            grp_fu_370_p1 = 'bx;
        end
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p0 = p_2_reg_1414;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p0 = p_1_reg_1401;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_374_p0 = reg_383;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_374_p1 = min_p_7_fu_1060_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_374_p1 = min_p_5_fu_952_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_374_p1 = min_p_3_fu_850_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_374_p1 = min_p_fu_118;
        end else begin
            grp_fu_374_p1 = 'bx;
        end
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_2_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_3_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_4_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_5_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_6_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_7_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_436_p1;
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
            llike_address0_local = zext_ln54_6_fu_662_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_436_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_1285_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_462_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_3_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_583_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln53_1_fu_473_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_479_p2 = (zext_ln16_fu_410_p1 + 7'd3);
assign add_ln53_3_fu_753_p2 = (s_reg_1208 + 6'd4);
assign add_ln53_fu_467_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_578_p2 = (shl_ln54_1_fu_571_p3 + zext_ln52_cast_reg_1201);
assign add_ln54_2_fu_634_p2 = (shl_ln54_2_fu_627_p3 + zext_ln52_cast_reg_1201);
assign add_ln54_3_fu_729_p2 = (shl_ln54_3_fu_721_p3 + zext_ln52_cast_reg_1201);
assign add_ln54_4_fu_657_p2 = (zext_ln52_2 + zext_ln54_5_fu_653_p1);
assign add_ln54_fu_456_p2 = (shl_ln3_fu_448_p3 + zext_ln52_cast_fu_388_p1);
assign and_ln55_1_fu_844_p2 = (or_ln55_1_fu_832_p2 & and_ln55_fu_838_p2);
assign and_ln55_2_fu_927_p2 = (or_ln55_3_fu_921_p2 & or_ln55_2_fu_903_p2);
assign and_ln55_3_fu_933_p2 = (grp_fu_848_p_dout0 & and_ln55_2_fu_927_p2);
assign and_ln55_4_fu_1038_p2 = (or_ln55_5_fu_1032_p2 & or_ln55_4_fu_1014_p2);
assign and_ln55_5_fu_1044_p2 = (grp_fu_848_p_dout0 & and_ln55_4_fu_1038_p2);
assign and_ln55_6_fu_1137_p2 = (or_ln55_7_fu_1131_p2 & or_ln55_6_fu_1113_p2);
assign and_ln55_7_fu_1143_p2 = (tmp_16_reg_1464 & and_ln55_6_fu_1137_p2);
assign and_ln55_fu_838_p2 = (or_ln55_fu_814_p2 & grp_fu_848_p_dout0);
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
assign bitcast_ln54_1_fu_739_p1 = reg_378;
assign bitcast_ln54_2_fu_744_p1 = transition_load_2_reg_1359;
assign bitcast_ln54_3_fu_748_p1 = reg_378;
assign bitcast_ln54_fu_674_p1 = reg_378;
assign bitcast_ln55_1_fu_785_p1 = min_p_1_reg_1394;
assign bitcast_ln55_2_fu_857_p1 = p_1_reg_1401;
assign bitcast_ln55_3_fu_874_p1 = min_p_3_reg_1421;
assign bitcast_ln55_4_fu_968_p1 = p_2_reg_1414;
assign bitcast_ln55_5_fu_985_p1 = min_p_5_reg_1434;
assign bitcast_ln55_6_fu_1066_p1 = reg_383;
assign bitcast_ln55_7_fu_1084_p1 = min_p_7_reg_1457;
assign bitcast_ln55_fu_767_p1 = reg_383;
assign grp_fu_434_p_ce = 1'b1;
assign grp_fu_434_p_din0 = grp_fu_370_p0;
assign grp_fu_434_p_din1 = grp_fu_370_p1;
assign grp_fu_434_p_opcode = 2'd0;
assign grp_fu_848_p_ce = 1'b1;
assign grp_fu_848_p_din0 = grp_fu_374_p0;
assign grp_fu_848_p_din1 = grp_fu_374_p1;
assign grp_fu_848_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1020_p2 = ((tmp_12_fu_988_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1026_p2 = ((trunc_ln55_5_fu_998_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1101_p2 = ((tmp_14_fu_1070_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1107_p2 = ((trunc_ln55_6_fu_1080_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1119_p2 = ((tmp_15_fu_1087_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1125_p2 = ((trunc_ln55_7_fu_1097_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_808_p2 = ((trunc_ln55_fu_781_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_820_p2 = ((tmp_4_fu_788_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_826_p2 = ((trunc_ln55_1_fu_798_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_891_p2 = ((tmp_6_fu_860_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_897_p2 = ((trunc_ln55_2_fu_870_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_909_p2 = ((tmp_7_fu_877_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_915_p2 = ((trunc_ln55_3_fu_887_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1002_p2 = ((tmp_11_fu_971_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1008_p2 = ((trunc_ln55_4_fu_981_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_802_p2 = ((tmp_3_fu_771_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_2_fu_418_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_2_fu_644_p4 = {{add_ln53_2_reg_1279[6:3]}};
assign min_p_3_fu_850_p3 = ((and_ln55_1_reg_1408[0:0] == 1'b1) ? reg_383 : min_p_1_reg_1394);
assign min_p_5_fu_952_p3 = ((and_ln55_3_reg_1428[0:0] == 1'b1) ? p_1_reg_1401 : min_p_3_reg_1421);
assign min_p_7_fu_1060_p3 = ((and_ln55_5_reg_1446[0:0] == 1'b1) ? p_2_reg_1414 : min_p_5_reg_1434);
assign min_p_9_fu_1148_p3 = ((and_ln55_7_fu_1143_p2[0:0] == 1'b1) ? reg_383 : min_p_7_reg_1457);
assign min_s_10_out = ((and_ln55_5_reg_1446[0:0] == 1'b1) ? zext_ln55_2_fu_1050_p1 : min_s_5_reg_1441);
assign min_s_4_fu_945_p3 = ((and_ln55_1_reg_1408[0:0] == 1'b1) ? zext_ln55_fu_942_p1 : min_s_fu_122);
assign min_s_5_fu_961_p3 = ((and_ln55_3_reg_1428[0:0] == 1'b1) ? zext_ln55_1_fu_958_p1 : min_s_4_fu_945_p3);
assign min_s_6_fu_1053_p3 = ((and_ln55_5_reg_1446[0:0] == 1'b1) ? zext_ln55_2_fu_1050_p1 : min_s_5_reg_1441);
assign min_s_7_fu_1158_p3 = ((and_ln55_7_fu_1143_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1155_p1 : min_s_6_reg_1452);
assign or_ln55_1_fu_832_p2 = (icmp_ln55_3_fu_826_p2 | icmp_ln55_2_fu_820_p2);
assign or_ln55_2_fu_903_p2 = (icmp_ln55_5_fu_897_p2 | icmp_ln55_4_fu_891_p2);
assign or_ln55_3_fu_921_p2 = (icmp_ln55_7_fu_915_p2 | icmp_ln55_6_fu_909_p2);
assign or_ln55_4_fu_1014_p2 = (icmp_ln55_9_fu_1008_p2 | icmp_ln55_8_fu_1002_p2);
assign or_ln55_5_fu_1032_p2 = (icmp_ln55_11_fu_1026_p2 | icmp_ln55_10_fu_1020_p2);
assign or_ln55_6_fu_1113_p2 = (icmp_ln55_13_fu_1107_p2 | icmp_ln55_12_fu_1101_p2);
assign or_ln55_7_fu_1131_p2 = (icmp_ln55_15_fu_1125_p2 | icmp_ln55_14_fu_1119_p2);
assign or_ln55_fu_814_p2 = (icmp_ln55_fu_802_p2 | icmp_ln55_1_fu_808_p2);
assign shl_ln3_fu_448_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_571_p3 = {{add_ln53_reg_1267}, {6'd0}};
assign shl_ln54_2_fu_627_p3 = {{add_ln53_1_reg_1273}, {6'd0}};
assign shl_ln54_3_fu_721_p3 = {{trunc_ln54_fu_718_p1}, {6'd0}};
assign tmp_11_fu_971_p4 = {{bitcast_ln55_4_fu_968_p1[62:52]}};
assign tmp_12_fu_988_p4 = {{bitcast_ln55_5_fu_985_p1[62:52]}};
assign tmp_14_fu_1070_p4 = {{bitcast_ln55_6_fu_1066_p1[62:52]}};
assign tmp_15_fu_1087_p4 = {{bitcast_ln55_7_fu_1084_p1[62:52]}};
assign tmp_1_fu_428_p3 = {{t_1}, {lshr_ln8_2_fu_418_p4}};
assign tmp_2_fu_679_p17 = 'bx;
assign tmp_3_fu_771_p4 = {{bitcast_ln55_fu_767_p1[62:52]}};
assign tmp_4_fu_788_p4 = {{bitcast_ln55_1_fu_785_p1[62:52]}};
assign tmp_6_fu_860_p4 = {{bitcast_ln55_2_fu_857_p1[62:52]}};
assign tmp_7_fu_877_p4 = {{bitcast_ln55_3_fu_874_p1[62:52]}};
assign tmp_8_fu_493_p17 = 'bx;
assign tmp_9_fu_532_p17 = 'bx;
assign tmp_s_fu_588_p17 = 'bx;
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln16_fu_414_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln54_fu_718_p1 = add_ln53_2_reg_1279[5:0];
assign trunc_ln55_1_fu_798_p1 = bitcast_ln55_1_fu_785_p1[51:0];
assign trunc_ln55_2_fu_870_p1 = bitcast_ln55_2_fu_857_p1[51:0];
assign trunc_ln55_3_fu_887_p1 = bitcast_ln55_3_fu_874_p1[51:0];
assign trunc_ln55_4_fu_981_p1 = bitcast_ln55_4_fu_968_p1[51:0];
assign trunc_ln55_5_fu_998_p1 = bitcast_ln55_5_fu_985_p1[51:0];
assign trunc_ln55_6_fu_1080_p1 = bitcast_ln55_6_fu_1066_p1[51:0];
assign trunc_ln55_7_fu_1097_p1 = bitcast_ln55_7_fu_1084_p1[51:0];
assign trunc_ln55_fu_781_p1 = bitcast_ln55_fu_767_p1[51:0];
assign zext_ln16_fu_410_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_388_p1 = zext_ln52;
assign zext_ln54_1_fu_583_p1 = add_ln54_1_fu_578_p2;
assign zext_ln54_2_fu_639_p1 = add_ln54_2_fu_634_p2;
assign zext_ln54_3_fu_734_p1 = add_ln54_3_fu_729_p2;
assign zext_ln54_4_fu_436_p1 = tmp_1_fu_428_p3;
assign zext_ln54_5_fu_653_p1 = lshr_ln9_2_fu_644_p4;
assign zext_ln54_6_fu_662_p1 = add_ln54_4_fu_657_p2;
assign zext_ln54_fu_462_p1 = add_ln54_fu_456_p2;
assign zext_ln55_1_fu_958_p1 = add_ln53_reg_1267_pp0_iter1_reg;
assign zext_ln55_2_fu_1050_p1 = add_ln53_1_reg_1273_pp0_iter1_reg;
assign zext_ln55_3_fu_1155_p1 = trunc_ln54_reg_1369_pp0_iter1_reg;
assign zext_ln55_fu_942_p1 = s_reg_1208_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_1201[11:8] <= 4'b0000;
end
endmodule 