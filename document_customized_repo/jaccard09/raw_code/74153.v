module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,empty_9,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,empty,min_p_137_out,min_p_137_out_ap_vld,grp_fu_387_p_din0,grp_fu_387_p_din1,grp_fu_387_p_opcode,grp_fu_387_p_dout0,grp_fu_387_p_ce,grp_fu_676_p_din0,grp_fu_676_p_din1,grp_fu_676_p_opcode,grp_fu_676_p_dout0,grp_fu_676_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
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
input  [5:0] empty_9;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
input  [10:0] empty;
output  [63:0] min_p_137_out;
output   min_p_137_out_ap_vld;
output  [63:0] grp_fu_387_p_din0;
output  [63:0] grp_fu_387_p_din1;
output  [1:0] grp_fu_387_p_opcode;
input  [63:0] grp_fu_387_p_dout0;
output   grp_fu_387_p_ce;
output  [63:0] grp_fu_676_p_din0;
output  [63:0] grp_fu_676_p_din1;
output  [4:0] grp_fu_676_p_opcode;
input  [0:0] grp_fu_676_p_dout0;
output   grp_fu_676_p_ce;
reg ap_idle;
reg min_p_137_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_18_reg_1228;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_388;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1154;
wire   [2:0] trunc_ln11_fu_409_p1;
reg   [2:0] trunc_ln11_reg_1159;
reg   [5:0] tmp_13_reg_1217;
wire   [6:0] add_ln25_fu_509_p2;
reg   [6:0] add_ln25_reg_1222;
reg   [0:0] tmp_18_reg_1228_pp0_iter1_reg;
reg   [0:0] tmp_18_reg_1228_pp0_iter2_reg;
reg   [0:0] tmp_18_reg_1228_pp0_iter3_reg;
wire   [63:0] tmp_fu_523_p19;
reg   [63:0] tmp_reg_1232;
wire   [63:0] tmp_1_fu_562_p19;
reg   [63:0] tmp_1_reg_1237;
reg   [63:0] transition_load_1_reg_1242;
wire   [63:0] tmp_2_fu_601_p19;
reg   [63:0] tmp_2_reg_1247;
wire   [63:0] bitcast_ln27_fu_696_p1;
wire   [63:0] tmp_3_fu_701_p19;
reg   [63:0] tmp_3_reg_1307;
reg   [63:0] transition_load_3_reg_1312;
wire   [63:0] bitcast_ln27_1_fu_740_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_744_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_749_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_1332;
reg   [63:0] add52_1_reg_1337;
reg   [63:0] add52_2_reg_1342;
reg   [63:0] add52_3_reg_1347;
reg   [63:0] p_reg_1352;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_1_reg_1359;
wire   [0:0] and_ln29_1_fu_843_p2;
reg   [0:0] and_ln29_1_reg_1366;
reg   [63:0] p_1_reg_1371;
wire   [63:0] min_p_3_fu_849_p3;
reg   [63:0] min_p_3_reg_1378;
reg   [63:0] p_2_reg_1385;
wire   [0:0] and_ln29_3_fu_931_p2;
reg   [0:0] and_ln29_3_reg_1392;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_3_reg_1397;
wire   [63:0] min_p_6_fu_937_p3;
reg   [63:0] min_p_6_reg_1404;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1019_p2;
reg   [0:0] and_ln29_5_reg_1411;
wire   [63:0] min_p_8_fu_1025_p3;
reg   [63:0] min_p_8_reg_1416;
reg   [0:0] tmp_21_reg_1423;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_431_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_459_p1;
wire   [63:0] zext_ln27_1_fu_488_p1;
wire   [63:0] zext_ln27_2_fu_646_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_669_p1;
wire   [63:0] zext_ln27_3_fu_691_p1;
reg   [63:0] min_p_fu_126;
wire   [63:0] min_p_10_fu_1113_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_130;
wire   [5:0] add_ln25_1_fu_753_p2;
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
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg   [63:0] grp_fu_380_p0;
reg   [63:0] grp_fu_380_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_384_p0;
reg   [63:0] grp_fu_384_p1;
wire   [2:0] lshr_ln7_1_fu_413_p4;
wire   [10:0] tmp_17_fu_423_p3;
wire   [11:0] add_ln_fu_451_p3;
wire   [11:0] shl_ln2_fu_443_p3;
wire   [11:0] add_ln27_fu_464_p2;
wire   [5:0] tmp_s_fu_470_p4;
wire   [11:0] add_ln27_2_fu_480_p3;
wire   [11:0] add_ln27_1_fu_493_p2;
wire   [6:0] zext_ln11_fu_405_p1;
wire   [63:0] tmp_fu_523_p17;
wire   [63:0] tmp_1_fu_562_p17;
wire   [63:0] tmp_2_fu_601_p17;
wire   [11:0] add_ln27_4_fu_640_p3;
wire   [3:0] lshr_ln8_1_fu_651_p4;
wire   [10:0] zext_ln26_1_fu_660_p1;
wire   [10:0] add_ln26_fu_664_p2;
wire   [5:0] trunc_ln27_fu_681_p1;
wire   [11:0] add_ln27_5_fu_684_p3;
wire   [63:0] tmp_3_fu_701_p17;
wire   [63:0] bitcast_ln29_fu_767_p1;
wire   [63:0] bitcast_ln29_1_fu_784_p1;
wire   [10:0] tmp_7_fu_770_p4;
wire   [51:0] trunc_ln29_fu_780_p1;
wire   [0:0] icmp_ln29_1_fu_807_p2;
wire   [0:0] icmp_ln29_fu_801_p2;
wire   [10:0] tmp_8_fu_787_p4;
wire   [51:0] trunc_ln29_1_fu_797_p1;
wire   [0:0] icmp_ln29_3_fu_825_p2;
wire   [0:0] icmp_ln29_2_fu_819_p2;
wire   [0:0] or_ln29_fu_813_p2;
wire   [0:0] and_ln29_fu_837_p2;
wire   [0:0] or_ln29_1_fu_831_p2;
wire   [63:0] bitcast_ln29_2_fu_855_p1;
wire   [63:0] bitcast_ln29_3_fu_872_p1;
wire   [10:0] tmp_10_fu_858_p4;
wire   [51:0] trunc_ln29_2_fu_868_p1;
wire   [0:0] icmp_ln29_5_fu_895_p2;
wire   [0:0] icmp_ln29_4_fu_889_p2;
wire   [10:0] tmp_11_fu_875_p4;
wire   [51:0] trunc_ln29_3_fu_885_p1;
wire   [0:0] icmp_ln29_7_fu_913_p2;
wire   [0:0] icmp_ln29_6_fu_907_p2;
wire   [0:0] or_ln29_3_fu_919_p2;
wire   [0:0] or_ln29_2_fu_901_p2;
wire   [0:0] and_ln29_2_fu_925_p2;
wire   [63:0] bitcast_ln29_4_fu_943_p1;
wire   [63:0] bitcast_ln29_5_fu_960_p1;
wire   [10:0] tmp_14_fu_946_p4;
wire   [51:0] trunc_ln29_4_fu_956_p1;
wire   [0:0] icmp_ln29_9_fu_983_p2;
wire   [0:0] icmp_ln29_8_fu_977_p2;
wire   [10:0] tmp_15_fu_963_p4;
wire   [51:0] trunc_ln29_5_fu_973_p1;
wire   [0:0] icmp_ln29_11_fu_1001_p2;
wire   [0:0] icmp_ln29_10_fu_995_p2;
wire   [0:0] or_ln29_5_fu_1007_p2;
wire   [0:0] or_ln29_4_fu_989_p2;
wire   [0:0] and_ln29_4_fu_1013_p2;
wire   [63:0] bitcast_ln29_6_fu_1032_p1;
wire   [63:0] bitcast_ln29_7_fu_1049_p1;
wire   [10:0] tmp_19_fu_1035_p4;
wire   [51:0] trunc_ln29_6_fu_1045_p1;
wire   [0:0] icmp_ln29_13_fu_1072_p2;
wire   [0:0] icmp_ln29_12_fu_1066_p2;
wire   [10:0] tmp_20_fu_1052_p4;
wire   [51:0] trunc_ln29_7_fu_1062_p1;
wire   [0:0] icmp_ln29_15_fu_1090_p2;
wire   [0:0] icmp_ln29_14_fu_1084_p2;
wire   [0:0] or_ln29_7_fu_1096_p2;
wire   [0:0] or_ln29_6_fu_1078_p2;
wire   [0:0] and_ln29_6_fu_1102_p2;
wire   [0:0] and_ln29_7_fu_1108_p2;
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
wire   [2:0] tmp_fu_523_p1;
wire   [2:0] tmp_fu_523_p3;
wire   [2:0] tmp_fu_523_p5;
wire   [2:0] tmp_fu_523_p7;
wire  signed [2:0] tmp_fu_523_p9;
wire  signed [2:0] tmp_fu_523_p11;
wire  signed [2:0] tmp_fu_523_p13;
wire  signed [2:0] tmp_fu_523_p15;
wire  signed [2:0] tmp_1_fu_562_p1;
wire   [2:0] tmp_1_fu_562_p3;
wire   [2:0] tmp_1_fu_562_p5;
wire   [2:0] tmp_1_fu_562_p7;
wire   [2:0] tmp_1_fu_562_p9;
wire  signed [2:0] tmp_1_fu_562_p11;
wire  signed [2:0] tmp_1_fu_562_p13;
wire  signed [2:0] tmp_1_fu_562_p15;
wire  signed [2:0] tmp_2_fu_601_p1;
wire  signed [2:0] tmp_2_fu_601_p3;
wire   [2:0] tmp_2_fu_601_p5;
wire   [2:0] tmp_2_fu_601_p7;
wire   [2:0] tmp_2_fu_601_p9;
wire   [2:0] tmp_2_fu_601_p11;
wire  signed [2:0] tmp_2_fu_601_p13;
wire  signed [2:0] tmp_2_fu_601_p15;
wire  signed [2:0] tmp_3_fu_701_p1;
wire  signed [2:0] tmp_3_fu_701_p3;
wire  signed [2:0] tmp_3_fu_701_p5;
wire   [2:0] tmp_3_fu_701_p7;
wire   [2:0] tmp_3_fu_701_p9;
wire   [2:0] tmp_3_fu_701_p11;
wire   [2:0] tmp_3_fu_701_p13;
wire  signed [2:0] tmp_3_fu_701_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_126 = 64'd0;
#0 prev_fu_130 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_fu_523_p17),.sel(trunc_ln11_reg_1159),.dout(tmp_fu_523_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U18(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_1_fu_562_p17),.sel(trunc_ln11_reg_1159),.dout(tmp_1_fu_562_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U19(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_2_fu_601_p17),.sel(trunc_ln11_reg_1159),.dout(tmp_2_fu_601_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U20(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_3_fu_701_p17),.sel(trunc_ln11_reg_1159),.dout(tmp_3_fu_701_p19));
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
        min_p_fu_126 <= min_p_4;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_18_reg_1228_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_126 <= min_p_10_fu_1113_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_130 <= 6'd1;
    end else if (((tmp_18_reg_1228 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_130 <= add_ln25_1_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1332 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1337 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1342 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1347 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1222 <= add_ln25_fu_509_p2;
        prev_1_reg_1154 <= ap_sig_allocacmp_prev_1;
        tmp_13_reg_1217 <= {{add_ln27_1_fu_493_p2[11:6]}};
        tmp_18_reg_1228 <= add_ln25_fu_509_p2[32'd6];
        tmp_18_reg_1228_pp0_iter1_reg <= tmp_18_reg_1228;
        tmp_18_reg_1228_pp0_iter2_reg <= tmp_18_reg_1228_pp0_iter1_reg;
        tmp_18_reg_1228_pp0_iter3_reg <= tmp_18_reg_1228_pp0_iter2_reg;
        trunc_ln11_reg_1159 <= trunc_ln11_fu_409_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1366 <= and_ln29_1_fu_843_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1392 <= and_ln29_3_fu_931_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1411 <= and_ln29_5_fu_1019_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_1_reg_1359 <= min_p_fu_126;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_3_reg_1378 <= min_p_3_fu_849_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_6_reg_1404 <= min_p_6_fu_937_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_8_reg_1416 <= min_p_8_fu_1025_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_1_reg_1371 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_2_reg_1385 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_3_reg_1397 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1352 <= grp_fu_387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_388 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1237 <= tmp_1_fu_562_p19;
        tmp_2_reg_1247 <= tmp_2_fu_601_p19;
        tmp_reg_1232 <= tmp_fu_523_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_21_reg_1423 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_3_reg_1307 <= tmp_3_fu_701_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        transition_load_1_reg_1242 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        transition_load_3_reg_1312 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_18_reg_1228 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_18_reg_1228_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_380_p0 = add52_3_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_380_p0 = add52_2_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_380_p0 = add52_1_reg_1337;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p0 = add1_reg_1332;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_380_p0 = tmp_3_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_380_p0 = tmp_2_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p0 = tmp_1_reg_1237;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p0 = tmp_reg_1232;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_380_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_380_p1 = bitcast_ln27_3_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_380_p1 = bitcast_ln27_2_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p1 = bitcast_ln27_1_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p1 = bitcast_ln27_fu_696_p1;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p0 = p_3_reg_1397;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_384_p0 = p_2_reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_384_p0 = p_1_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p0 = p_reg_1352;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p1 = min_p_8_fu_1025_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_384_p1 = min_p_6_fu_937_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_384_p1 = min_p_3_fu_849_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p1 = min_p_fu_126;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_431_p1;
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
            llike_2_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_431_p1;
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
            llike_3_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_431_p1;
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
            llike_4_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_431_p1;
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
            llike_5_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_431_p1;
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
            llike_6_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_431_p1;
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
            llike_7_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_431_p1;
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
            llike_address0_local = zext_ln26_2_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_431_p1;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_18_reg_1228_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_137_out_ap_vld = 1'b1;
    end else begin
        min_p_137_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_691_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_488_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_646_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_459_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln25_1_fu_753_p2 = (prev_1_reg_1154 + 6'd4);
assign add_ln25_fu_509_p2 = (zext_ln11_fu_405_p1 + 7'd3);
assign add_ln26_fu_664_p2 = (empty + zext_ln26_1_fu_660_p1);
assign add_ln27_1_fu_493_p2 = (shl_ln2_fu_443_p3 + 12'd128);
assign add_ln27_2_fu_480_p3 = {{tmp_s_fu_470_p4}, {empty_9}};
assign add_ln27_4_fu_640_p3 = {{tmp_13_reg_1217}, {empty_9}};
assign add_ln27_5_fu_684_p3 = {{trunc_ln27_fu_681_p1}, {empty_9}};
assign add_ln27_fu_464_p2 = (shl_ln2_fu_443_p3 + 12'd64);
assign add_ln_fu_451_p3 = {{ap_sig_allocacmp_prev_1}, {empty_9}};
assign and_ln29_1_fu_843_p2 = (or_ln29_1_fu_831_p2 & and_ln29_fu_837_p2);
assign and_ln29_2_fu_925_p2 = (or_ln29_3_fu_919_p2 & or_ln29_2_fu_901_p2);
assign and_ln29_3_fu_931_p2 = (grp_fu_676_p_dout0 & and_ln29_2_fu_925_p2);
assign and_ln29_4_fu_1013_p2 = (or_ln29_5_fu_1007_p2 & or_ln29_4_fu_989_p2);
assign and_ln29_5_fu_1019_p2 = (grp_fu_676_p_dout0 & and_ln29_4_fu_1013_p2);
assign and_ln29_6_fu_1102_p2 = (or_ln29_7_fu_1096_p2 & or_ln29_6_fu_1078_p2);
assign and_ln29_7_fu_1108_p2 = (tmp_21_reg_1423 & and_ln29_6_fu_1102_p2);
assign and_ln29_fu_837_p2 = (or_ln29_fu_813_p2 & grp_fu_676_p_dout0);
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
assign bitcast_ln27_1_fu_740_p1 = transition_load_1_reg_1242;
assign bitcast_ln27_2_fu_744_p1 = reg_388;
assign bitcast_ln27_3_fu_749_p1 = transition_load_3_reg_1312;
assign bitcast_ln27_fu_696_p1 = reg_388;
assign bitcast_ln29_1_fu_784_p1 = min_p_1_reg_1359;
assign bitcast_ln29_2_fu_855_p1 = p_1_reg_1371;
assign bitcast_ln29_3_fu_872_p1 = min_p_3_reg_1378;
assign bitcast_ln29_4_fu_943_p1 = p_2_reg_1385;
assign bitcast_ln29_5_fu_960_p1 = min_p_6_reg_1404;
assign bitcast_ln29_6_fu_1032_p1 = p_3_reg_1397;
assign bitcast_ln29_7_fu_1049_p1 = min_p_8_reg_1416;
assign bitcast_ln29_fu_767_p1 = p_reg_1352;
assign grp_fu_387_p_ce = 1'b1;
assign grp_fu_387_p_din0 = grp_fu_380_p0;
assign grp_fu_387_p_din1 = grp_fu_380_p1;
assign grp_fu_387_p_opcode = 2'd0;
assign grp_fu_676_p_ce = 1'b1;
assign grp_fu_676_p_din0 = grp_fu_384_p0;
assign grp_fu_676_p_din1 = grp_fu_384_p1;
assign grp_fu_676_p_opcode = 5'd4;
assign icmp_ln29_10_fu_995_p2 = ((tmp_15_fu_963_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1001_p2 = ((trunc_ln29_5_fu_973_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1066_p2 = ((tmp_19_fu_1035_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1072_p2 = ((trunc_ln29_6_fu_1045_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1084_p2 = ((tmp_20_fu_1052_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1090_p2 = ((trunc_ln29_7_fu_1062_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_807_p2 = ((trunc_ln29_fu_780_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_819_p2 = ((tmp_8_fu_787_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_825_p2 = ((trunc_ln29_1_fu_797_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_889_p2 = ((tmp_10_fu_858_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_895_p2 = ((trunc_ln29_2_fu_868_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_907_p2 = ((tmp_11_fu_875_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_913_p2 = ((trunc_ln29_3_fu_885_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_977_p2 = ((tmp_14_fu_946_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_983_p2 = ((trunc_ln29_4_fu_956_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_801_p2 = ((tmp_7_fu_770_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_413_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_1_fu_651_p4 = {{add_ln25_reg_1222[6:3]}};
assign min_p_10_fu_1113_p3 = ((and_ln29_7_fu_1108_p2[0:0] == 1'b1) ? p_3_reg_1397 : min_p_8_reg_1416);
assign min_p_137_out = ((and_ln29_5_reg_1411[0:0] == 1'b1) ? p_2_reg_1385 : min_p_6_reg_1404);
assign min_p_3_fu_849_p3 = ((and_ln29_1_reg_1366[0:0] == 1'b1) ? p_reg_1352 : min_p_1_reg_1359);
assign min_p_6_fu_937_p3 = ((and_ln29_3_reg_1392[0:0] == 1'b1) ? p_1_reg_1371 : min_p_3_reg_1378);
assign min_p_8_fu_1025_p3 = ((and_ln29_5_reg_1411[0:0] == 1'b1) ? p_2_reg_1385 : min_p_6_reg_1404);
assign or_ln29_1_fu_831_p2 = (icmp_ln29_3_fu_825_p2 | icmp_ln29_2_fu_819_p2);
assign or_ln29_2_fu_901_p2 = (icmp_ln29_5_fu_895_p2 | icmp_ln29_4_fu_889_p2);
assign or_ln29_3_fu_919_p2 = (icmp_ln29_7_fu_913_p2 | icmp_ln29_6_fu_907_p2);
assign or_ln29_4_fu_989_p2 = (icmp_ln29_9_fu_983_p2 | icmp_ln29_8_fu_977_p2);
assign or_ln29_5_fu_1007_p2 = (icmp_ln29_11_fu_1001_p2 | icmp_ln29_10_fu_995_p2);
assign or_ln29_6_fu_1078_p2 = (icmp_ln29_13_fu_1072_p2 | icmp_ln29_12_fu_1066_p2);
assign or_ln29_7_fu_1096_p2 = (icmp_ln29_15_fu_1090_p2 | icmp_ln29_14_fu_1084_p2);
assign or_ln29_fu_813_p2 = (icmp_ln29_fu_801_p2 | icmp_ln29_1_fu_807_p2);
assign shl_ln2_fu_443_p3 = {{ap_sig_allocacmp_prev_1}, {6'd0}};
assign tmp_10_fu_858_p4 = {{bitcast_ln29_2_fu_855_p1[62:52]}};
assign tmp_11_fu_875_p4 = {{bitcast_ln29_3_fu_872_p1[62:52]}};
assign tmp_14_fu_946_p4 = {{bitcast_ln29_4_fu_943_p1[62:52]}};
assign tmp_15_fu_963_p4 = {{bitcast_ln29_5_fu_960_p1[62:52]}};
assign tmp_17_fu_423_p3 = {{empty_8}, {lshr_ln7_1_fu_413_p4}};
assign tmp_19_fu_1035_p4 = {{bitcast_ln29_6_fu_1032_p1[62:52]}};
assign tmp_1_fu_562_p17 = 'bx;
assign tmp_20_fu_1052_p4 = {{bitcast_ln29_7_fu_1049_p1[62:52]}};
assign tmp_2_fu_601_p17 = 'bx;
assign tmp_3_fu_701_p17 = 'bx;
assign tmp_7_fu_770_p4 = {{bitcast_ln29_fu_767_p1[62:52]}};
assign tmp_8_fu_787_p4 = {{bitcast_ln29_1_fu_784_p1[62:52]}};
assign tmp_fu_523_p17 = 'bx;
assign tmp_s_fu_470_p4 = {{add_ln27_fu_464_p2[11:6]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln11_fu_409_p1 = ap_sig_allocacmp_prev_1[2:0];
assign trunc_ln27_fu_681_p1 = add_ln25_reg_1222[5:0];
assign trunc_ln29_1_fu_797_p1 = bitcast_ln29_1_fu_784_p1[51:0];
assign trunc_ln29_2_fu_868_p1 = bitcast_ln29_2_fu_855_p1[51:0];
assign trunc_ln29_3_fu_885_p1 = bitcast_ln29_3_fu_872_p1[51:0];
assign trunc_ln29_4_fu_956_p1 = bitcast_ln29_4_fu_943_p1[51:0];
assign trunc_ln29_5_fu_973_p1 = bitcast_ln29_5_fu_960_p1[51:0];
assign trunc_ln29_6_fu_1045_p1 = bitcast_ln29_6_fu_1032_p1[51:0];
assign trunc_ln29_7_fu_1062_p1 = bitcast_ln29_7_fu_1049_p1[51:0];
assign trunc_ln29_fu_780_p1 = bitcast_ln29_fu_767_p1[51:0];
assign zext_ln11_fu_405_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_660_p1 = lshr_ln8_1_fu_651_p4;
assign zext_ln26_2_fu_669_p1 = add_ln26_fu_664_p2;
assign zext_ln26_fu_431_p1 = tmp_17_fu_423_p3;
assign zext_ln27_1_fu_488_p1 = add_ln27_2_fu_480_p3;
assign zext_ln27_2_fu_646_p1 = add_ln27_4_fu_640_p3;
assign zext_ln27_3_fu_691_p1 = add_ln27_5_fu_684_p3;
assign zext_ln27_fu_459_p1 = add_ln_fu_451_p3;
endmodule 