module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [5:0] conv3_udiv;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
input  [5:0] conv3_udiv_cast;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [3:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [1:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_75_reg_1301;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_648;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_644_p2;
reg   [63:0] reg_656;
wire   [9:0] conv3_udiv_cast_cast_fu_664_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_1286;
reg   [6:0] s_1_reg_1295;
reg   [0:0] tmp_75_reg_1301_pp0_iter1_reg;
reg   [0:0] tmp_75_reg_1301_pp0_iter2_reg;
wire   [3:0] lshr_ln9_fu_684_p4;
reg   [3:0] lshr_ln9_reg_1305;
wire   [2:0] lshr_ln9_1_fu_702_p4;
reg   [2:0] lshr_ln9_1_reg_1311;
reg   [2:0] lshr_ln9_1_reg_1311_pp0_iter1_reg;
reg   [2:0] lshr_ln9_1_reg_1311_pp0_iter2_reg;
reg   [63:0] init_0_load_reg_1400;
wire   [63:0] tmp_fu_792_p11;
reg   [63:0] tmp_reg_1405;
wire   [63:0] tmp_1_fu_831_p11;
reg   [63:0] tmp_1_reg_1410;
reg   [63:0] init_1_load_reg_1455;
reg   [63:0] init_2_load_reg_1460;
reg   [63:0] init_3_load_reg_1465;
reg   [63:0] init_0_load_1_reg_1470;
reg   [63:0] init_1_load_1_reg_1475;
reg   [63:0] init_2_load_1_reg_1480;
reg   [63:0] init_3_load_1_reg_1485;
wire   [63:0] bitcast_ln14_fu_894_p1;
wire   [63:0] tmp_2_fu_914_p11;
reg   [63:0] tmp_2_reg_1495;
wire   [63:0] tmp_3_fu_953_p11;
reg   [63:0] tmp_3_reg_1500;
wire   [63:0] bitcast_ln14_29_fu_1023_p1;
wire   [63:0] tmp_4_fu_1043_p11;
reg   [63:0] tmp_4_reg_1550;
wire   [63:0] tmp_5_fu_1082_p11;
reg   [63:0] tmp_5_reg_1555;
wire   [63:0] bitcast_ln14_30_fu_1125_p1;
wire   [63:0] bitcast_ln14_31_fu_1129_p1;
wire   [63:0] tmp_6_fu_1179_p11;
reg   [63:0] tmp_6_reg_1610;
wire   [63:0] bitcast_ln14_32_fu_1202_p1;
wire   [63:0] bitcast_ln14_33_fu_1206_p1;
wire   [63:0] tmp_7_fu_1226_p11;
reg   [63:0] tmp_7_reg_1625;
wire   [63:0] bitcast_ln14_34_fu_1249_p1;
wire   [63:0] bitcast_ln14_35_fu_1253_p1;
wire   [63:0] zext_ln9_1_fu_1257_p1;
reg   [63:0] zext_ln9_1_reg_1640;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_694_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_720_p1;
wire   [63:0] zext_ln14_1_fu_752_p1;
wire   [63:0] zext_ln14_8_fu_768_p1;
wire   [63:0] zext_ln14_2_fu_866_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_886_p1;
wire   [63:0] zext_ln14_4_fu_984_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1015_p1;
wire   [63:0] zext_ln14_6_fu_1117_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1145_p1;
reg   [6:0] s_fu_122;
wire   [6:0] add_ln13_fu_1153_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [9:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [9:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [9:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [9:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [9:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [9:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [9:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [9:0] emission_3_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    init_2_ce1_local;
reg    init_2_ce0_local;
reg    init_3_ce1_local;
reg    init_3_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [63:0] grp_fu_640_p0;
reg   [63:0] grp_fu_640_p1;
reg   [63:0] grp_fu_644_p0;
reg   [63:0] grp_fu_644_p1;
wire   [9:0] or_ln_fu_712_p3;
wire   [4:0] tmp_93_fu_728_p4;
wire   [9:0] or_ln14_1_fu_738_p3;
wire   [9:0] add_ln14_fu_746_p2;
wire   [3:0] or_ln14_4_fu_760_p3;
wire   [63:0] tmp_fu_792_p2;
wire   [63:0] tmp_fu_792_p4;
wire   [63:0] tmp_fu_792_p6;
wire   [63:0] tmp_fu_792_p8;
wire   [63:0] tmp_fu_792_p9;
wire   [63:0] tmp_1_fu_831_p2;
wire   [63:0] tmp_1_fu_831_p4;
wire   [63:0] tmp_1_fu_831_p6;
wire   [63:0] tmp_1_fu_831_p8;
wire   [63:0] tmp_1_fu_831_p9;
wire   [9:0] or_ln14_2_fu_854_p3;
wire   [9:0] add_ln14_1_fu_861_p2;
wire   [9:0] or_ln14_3_fu_874_p3;
wire   [9:0] add_ln14_2_fu_881_p2;
wire   [63:0] tmp_2_fu_914_p2;
wire   [63:0] tmp_2_fu_914_p4;
wire   [63:0] tmp_2_fu_914_p6;
wire   [63:0] tmp_2_fu_914_p8;
wire   [63:0] tmp_2_fu_914_p9;
wire   [63:0] tmp_3_fu_953_p2;
wire   [63:0] tmp_3_fu_953_p4;
wire   [63:0] tmp_3_fu_953_p6;
wire   [63:0] tmp_3_fu_953_p8;
wire   [63:0] tmp_3_fu_953_p9;
wire   [9:0] or_ln14_5_fu_976_p4;
wire   [0:0] tmp_76_fu_992_p3;
wire   [9:0] or_ln14_6_fu_999_p5;
wire   [9:0] add_ln14_3_fu_1010_p2;
wire   [63:0] tmp_4_fu_1043_p2;
wire   [63:0] tmp_4_fu_1043_p4;
wire   [63:0] tmp_4_fu_1043_p6;
wire   [63:0] tmp_4_fu_1043_p8;
wire   [63:0] tmp_4_fu_1043_p9;
wire   [63:0] tmp_5_fu_1082_p2;
wire   [63:0] tmp_5_fu_1082_p4;
wire   [63:0] tmp_5_fu_1082_p6;
wire   [63:0] tmp_5_fu_1082_p8;
wire   [63:0] tmp_5_fu_1082_p9;
wire   [9:0] or_ln14_7_fu_1105_p3;
wire   [9:0] add_ln14_4_fu_1112_p2;
wire   [9:0] or_ln14_8_fu_1133_p3;
wire   [9:0] add_ln14_5_fu_1140_p2;
wire   [63:0] tmp_6_fu_1179_p2;
wire   [63:0] tmp_6_fu_1179_p4;
wire   [63:0] tmp_6_fu_1179_p6;
wire   [63:0] tmp_6_fu_1179_p8;
wire   [63:0] tmp_6_fu_1179_p9;
wire   [63:0] tmp_7_fu_1226_p2;
wire   [63:0] tmp_7_fu_1226_p4;
wire   [63:0] tmp_7_fu_1226_p6;
wire   [63:0] tmp_7_fu_1226_p8;
wire   [63:0] tmp_7_fu_1226_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_fu_792_p1;
wire   [1:0] tmp_fu_792_p3;
wire  signed [1:0] tmp_fu_792_p5;
wire  signed [1:0] tmp_fu_792_p7;
wire   [1:0] tmp_1_fu_831_p1;
wire   [1:0] tmp_1_fu_831_p3;
wire  signed [1:0] tmp_1_fu_831_p5;
wire  signed [1:0] tmp_1_fu_831_p7;
wire   [1:0] tmp_2_fu_914_p1;
wire   [1:0] tmp_2_fu_914_p3;
wire  signed [1:0] tmp_2_fu_914_p5;
wire  signed [1:0] tmp_2_fu_914_p7;
wire   [1:0] tmp_3_fu_953_p1;
wire   [1:0] tmp_3_fu_953_p3;
wire  signed [1:0] tmp_3_fu_953_p5;
wire  signed [1:0] tmp_3_fu_953_p7;
wire   [1:0] tmp_4_fu_1043_p1;
wire   [1:0] tmp_4_fu_1043_p3;
wire  signed [1:0] tmp_4_fu_1043_p5;
wire  signed [1:0] tmp_4_fu_1043_p7;
wire   [1:0] tmp_5_fu_1082_p1;
wire   [1:0] tmp_5_fu_1082_p3;
wire  signed [1:0] tmp_5_fu_1082_p5;
wire  signed [1:0] tmp_5_fu_1082_p7;
wire   [1:0] tmp_6_fu_1179_p1;
wire   [1:0] tmp_6_fu_1179_p3;
wire  signed [1:0] tmp_6_fu_1179_p5;
wire  signed [1:0] tmp_6_fu_1179_p7;
wire   [1:0] tmp_7_fu_1226_p1;
wire   [1:0] tmp_7_fu_1226_p3;
wire  signed [1:0] tmp_7_fu_1226_p5;
wire  signed [1:0] tmp_7_fu_1226_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_122 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.ce(1'b1),.dout(grp_fu_644_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_792_p2),.din1(tmp_fu_792_p4),.din2(tmp_fu_792_p6),.din3(tmp_fu_792_p8),.def(tmp_fu_792_p9),.sel(empty),.dout(tmp_fu_792_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_831_p2),.din1(tmp_1_fu_831_p4),.din2(tmp_1_fu_831_p6),.din3(tmp_1_fu_831_p8),.def(tmp_1_fu_831_p9),.sel(empty),.dout(tmp_1_fu_831_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_914_p2),.din1(tmp_2_fu_914_p4),.din2(tmp_2_fu_914_p6),.din3(tmp_2_fu_914_p8),.def(tmp_2_fu_914_p9),.sel(empty),.dout(tmp_2_fu_914_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_953_p2),.din1(tmp_3_fu_953_p4),.din2(tmp_3_fu_953_p6),.din3(tmp_3_fu_953_p8),.def(tmp_3_fu_953_p9),.sel(empty),.dout(tmp_3_fu_953_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1043_p2),.din1(tmp_4_fu_1043_p4),.din2(tmp_4_fu_1043_p6),.din3(tmp_4_fu_1043_p8),.def(tmp_4_fu_1043_p9),.sel(empty),.dout(tmp_4_fu_1043_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1082_p2),.din1(tmp_5_fu_1082_p4),.din2(tmp_5_fu_1082_p6),.din3(tmp_5_fu_1082_p8),.def(tmp_5_fu_1082_p9),.sel(empty),.dout(tmp_5_fu_1082_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1179_p2),.din1(tmp_6_fu_1179_p4),.din2(tmp_6_fu_1179_p6),.din3(tmp_6_fu_1179_p8),.def(tmp_6_fu_1179_p9),.sel(empty),.dout(tmp_6_fu_1179_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1226_p2),.din1(tmp_7_fu_1226_p4),.din2(tmp_7_fu_1226_p6),.din3(tmp_7_fu_1226_p8),.def(tmp_7_fu_1226_p9),.sel(empty),.dout(tmp_7_fu_1226_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_122 <= 7'd0;
    end else if (((tmp_75_reg_1301 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_122 <= add_ln13_fu_1153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1286[5 : 0] <= conv3_udiv_cast_cast_fu_664_p1[5 : 0];
        lshr_ln9_1_reg_1311 <= {{ap_sig_allocacmp_s_1[5:3]}};
        lshr_ln9_1_reg_1311_pp0_iter1_reg <= lshr_ln9_1_reg_1311;
        lshr_ln9_1_reg_1311_pp0_iter2_reg <= lshr_ln9_1_reg_1311_pp0_iter1_reg;
        lshr_ln9_reg_1305 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_1295 <= ap_sig_allocacmp_s_1;
        tmp_6_reg_1610 <= tmp_6_fu_1179_p11;
        tmp_75_reg_1301 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_75_reg_1301_pp0_iter1_reg <= tmp_75_reg_1301;
        tmp_75_reg_1301_pp0_iter2_reg <= tmp_75_reg_1301_pp0_iter1_reg;
        tmp_7_reg_1625 <= tmp_7_fu_1226_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_1470 <= init_0_q0;
        init_0_load_reg_1400 <= init_0_q1;
        init_1_load_1_reg_1475 <= init_1_q0;
        init_1_load_reg_1455 <= init_1_q1;
        init_2_load_1_reg_1480 <= init_2_q0;
        init_2_load_reg_1460 <= init_2_q1;
        init_3_load_1_reg_1485 <= init_3_q0;
        init_3_load_reg_1465 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_648 <= grp_fu_728_p_dout0;
        reg_656 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1410 <= tmp_1_fu_831_p11;
        tmp_reg_1405 <= tmp_fu_792_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_1495 <= tmp_2_fu_914_p11;
        tmp_3_reg_1500 <= tmp_3_fu_953_p11;
        zext_ln9_1_reg_1640[2 : 0] <= zext_ln9_1_fu_1257_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_1550 <= tmp_4_fu_1043_p11;
        tmp_5_reg_1555 <= tmp_5_fu_1082_p11;
    end
end
always @ (*) begin
    if (((tmp_75_reg_1301 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_75_reg_1301_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_122;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_752_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_720_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_752_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_720_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_752_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_720_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_752_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1117_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_720_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_640_p0 = bitcast_ln14_34_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_640_p0 = bitcast_ln14_32_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_640_p0 = bitcast_ln14_30_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_640_p0 = bitcast_ln14_fu_894_p1;
    end else begin
        grp_fu_640_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_640_p1 = tmp_6_reg_1610;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_640_p1 = tmp_4_reg_1550;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_640_p1 = tmp_2_reg_1495;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_640_p1 = tmp_reg_1405;
    end else begin
        grp_fu_640_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_644_p0 = bitcast_ln14_35_fu_1253_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_644_p0 = bitcast_ln14_33_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_644_p0 = bitcast_ln14_31_fu_1129_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_644_p0 = bitcast_ln14_29_fu_1023_p1;
    end else begin
        grp_fu_644_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_644_p1 = tmp_7_reg_1625;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_644_p1 = tmp_5_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_644_p1 = tmp_3_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_644_p1 = tmp_1_reg_1410;
    end else begin
        grp_fu_644_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_1153_p2 = (s_1_reg_1295 + 7'd8);
assign add_ln14_1_fu_861_p2 = (or_ln14_2_fu_854_p3 + conv3_udiv_cast_cast_reg_1286);
assign add_ln14_2_fu_881_p2 = (or_ln14_3_fu_874_p3 + conv3_udiv_cast_cast_reg_1286);
assign add_ln14_3_fu_1010_p2 = (or_ln14_6_fu_999_p5 + conv3_udiv_cast_cast_reg_1286);
assign add_ln14_4_fu_1112_p2 = (or_ln14_7_fu_1105_p3 + conv3_udiv_cast_cast_reg_1286);
assign add_ln14_5_fu_1140_p2 = (or_ln14_8_fu_1133_p3 + conv3_udiv_cast_cast_reg_1286);
assign add_ln14_fu_746_p2 = (or_ln14_1_fu_738_p3 + conv3_udiv_cast_cast_fu_664_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_29_fu_1023_p1 = init_1_load_reg_1455;
assign bitcast_ln14_30_fu_1125_p1 = init_2_load_reg_1460;
assign bitcast_ln14_31_fu_1129_p1 = init_3_load_reg_1465;
assign bitcast_ln14_32_fu_1202_p1 = init_0_load_1_reg_1470;
assign bitcast_ln14_33_fu_1206_p1 = init_1_load_1_reg_1475;
assign bitcast_ln14_34_fu_1249_p1 = init_2_load_1_reg_1480;
assign bitcast_ln14_35_fu_1253_p1 = init_3_load_1_reg_1485;
assign bitcast_ln14_fu_894_p1 = init_0_load_reg_1400;
assign conv3_udiv_cast_cast_fu_664_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_640_p0;
assign grp_fu_728_p_din1 = grp_fu_640_p1;
assign grp_fu_728_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_8_fu_768_p1;
assign init_0_address1 = zext_ln9_fu_694_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_8_fu_768_p1;
assign init_1_address1 = zext_ln9_fu_694_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_8_fu_768_p1;
assign init_2_address1 = zext_ln9_fu_694_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_8_fu_768_p1;
assign init_3_address1 = zext_ln9_fu_694_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_1_address0 = zext_ln9_1_fu_1257_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_656;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_1640;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_648;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_1640;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_656;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_reg_1640;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_648;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_reg_1640;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_656;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_reg_1640;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_648;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_reg_1640;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_656;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = zext_ln9_1_fu_1257_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_648;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_702_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign lshr_ln9_fu_684_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_1_fu_738_p3 = {{tmp_93_fu_728_p4}, {5'd16}};
assign or_ln14_2_fu_854_p3 = {{lshr_ln9_reg_1305}, {6'd32}};
assign or_ln14_3_fu_874_p3 = {{lshr_ln9_reg_1305}, {6'd48}};
assign or_ln14_4_fu_760_p3 = {{lshr_ln9_1_fu_702_p4}, {1'd1}};
assign or_ln14_5_fu_976_p4 = {{{lshr_ln9_1_reg_1311}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_999_p5 = {{{{lshr_ln9_1_reg_1311}, {1'd1}}, {tmp_76_fu_992_p3}}, {5'd16}};
assign or_ln14_7_fu_1105_p3 = {{lshr_ln9_1_reg_1311}, {7'd96}};
assign or_ln14_8_fu_1133_p3 = {{lshr_ln9_1_reg_1311}, {7'd112}};
assign or_ln_fu_712_p3 = {{lshr_ln9_fu_684_p4}, {conv3_udiv}};
assign tmp_1_fu_831_p2 = emission_0_q0;
assign tmp_1_fu_831_p4 = emission_1_q0;
assign tmp_1_fu_831_p6 = emission_2_q0;
assign tmp_1_fu_831_p8 = emission_3_q0;
assign tmp_1_fu_831_p9 = 'bx;
assign tmp_2_fu_914_p2 = emission_0_q1;
assign tmp_2_fu_914_p4 = emission_1_q1;
assign tmp_2_fu_914_p6 = emission_2_q1;
assign tmp_2_fu_914_p8 = emission_3_q1;
assign tmp_2_fu_914_p9 = 'bx;
assign tmp_3_fu_953_p2 = emission_0_q0;
assign tmp_3_fu_953_p4 = emission_1_q0;
assign tmp_3_fu_953_p6 = emission_2_q0;
assign tmp_3_fu_953_p8 = emission_3_q0;
assign tmp_3_fu_953_p9 = 'bx;
assign tmp_4_fu_1043_p2 = emission_0_q1;
assign tmp_4_fu_1043_p4 = emission_1_q1;
assign tmp_4_fu_1043_p6 = emission_2_q1;
assign tmp_4_fu_1043_p8 = emission_3_q1;
assign tmp_4_fu_1043_p9 = 'bx;
assign tmp_5_fu_1082_p2 = emission_0_q0;
assign tmp_5_fu_1082_p4 = emission_1_q0;
assign tmp_5_fu_1082_p6 = emission_2_q0;
assign tmp_5_fu_1082_p8 = emission_3_q0;
assign tmp_5_fu_1082_p9 = 'bx;
assign tmp_6_fu_1179_p2 = emission_0_q1;
assign tmp_6_fu_1179_p4 = emission_1_q1;
assign tmp_6_fu_1179_p6 = emission_2_q1;
assign tmp_6_fu_1179_p8 = emission_3_q1;
assign tmp_6_fu_1179_p9 = 'bx;
assign tmp_76_fu_992_p3 = s_1_reg_1295[32'd1];
assign tmp_7_fu_1226_p2 = emission_0_q0;
assign tmp_7_fu_1226_p4 = emission_1_q0;
assign tmp_7_fu_1226_p6 = emission_2_q0;
assign tmp_7_fu_1226_p8 = emission_3_q0;
assign tmp_7_fu_1226_p9 = 'bx;
assign tmp_93_fu_728_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_fu_792_p2 = emission_0_q1;
assign tmp_fu_792_p4 = emission_1_q1;
assign tmp_fu_792_p6 = emission_2_q1;
assign tmp_fu_792_p8 = emission_3_q1;
assign tmp_fu_792_p9 = 'bx;
assign zext_ln14_1_fu_752_p1 = add_ln14_fu_746_p2;
assign zext_ln14_2_fu_866_p1 = add_ln14_1_fu_861_p2;
assign zext_ln14_3_fu_886_p1 = add_ln14_2_fu_881_p2;
assign zext_ln14_4_fu_984_p1 = or_ln14_5_fu_976_p4;
assign zext_ln14_5_fu_1015_p1 = add_ln14_3_fu_1010_p2;
assign zext_ln14_6_fu_1117_p1 = add_ln14_4_fu_1112_p2;
assign zext_ln14_7_fu_1145_p1 = add_ln14_5_fu_1140_p2;
assign zext_ln14_8_fu_768_p1 = or_ln14_4_fu_760_p3;
assign zext_ln14_fu_720_p1 = or_ln_fu_712_p3;
assign zext_ln9_1_fu_1257_p1 = lshr_ln9_1_reg_1311_pp0_iter2_reg;
assign zext_ln9_fu_694_p1 = lshr_ln9_fu_684_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1286[9:6] <= 4'b0000;
    zext_ln9_1_reg_1640[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 