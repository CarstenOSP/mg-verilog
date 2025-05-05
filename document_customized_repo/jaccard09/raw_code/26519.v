module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_629_p_din0,grp_fu_629_p_din1,grp_fu_629_p_opcode,grp_fu_629_p_dout0,grp_fu_629_p_ce); 
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
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
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
output  [63:0] grp_fu_629_p_din0;
output  [63:0] grp_fu_629_p_din1;
output  [1:0] grp_fu_629_p_opcode;
input  [63:0] grp_fu_629_p_dout0;
output   grp_fu_629_p_ce;
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
reg   [0:0] tmp_39_reg_1264;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_620;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_616_p2;
reg   [63:0] reg_626;
wire   [9:0] conv3_udiv_cast_cast_fu_632_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_1249;
reg   [6:0] s_1_reg_1258;
reg   [0:0] tmp_39_reg_1264_pp0_iter1_reg;
reg   [0:0] tmp_39_reg_1264_pp0_iter2_reg;
wire   [3:0] lshr_ln9_fu_652_p4;
reg   [3:0] lshr_ln9_reg_1268;
wire   [63:0] zext_ln9_fu_662_p1;
reg   [63:0] zext_ln9_reg_1274;
reg   [63:0] zext_ln9_reg_1274_pp0_iter1_reg;
reg   [63:0] zext_ln9_reg_1274_pp0_iter2_reg;
wire   [2:0] tmp_s_fu_718_p4;
reg   [2:0] tmp_s_reg_1327;
wire   [63:0] zext_ln14_8_fu_736_p1;
reg   [63:0] zext_ln14_8_reg_1335;
reg   [63:0] zext_ln14_8_reg_1335_pp0_iter1_reg;
reg   [63:0] zext_ln14_8_reg_1335_pp0_iter2_reg;
reg   [63:0] zext_ln14_8_reg_1335_pp0_iter3_reg;
reg   [63:0] init_0_load_reg_1378;
wire   [63:0] tmp_fu_760_p11;
reg   [63:0] tmp_reg_1383;
wire   [63:0] tmp_1_fu_799_p11;
reg   [63:0] tmp_1_reg_1388;
reg   [63:0] init_0_load_1_reg_1433;
reg   [63:0] init_1_load_reg_1438;
reg   [63:0] init_1_load_1_reg_1443;
reg   [63:0] init_2_load_reg_1448;
reg   [63:0] init_2_load_1_reg_1453;
reg   [63:0] init_3_load_reg_1458;
reg   [63:0] init_3_load_1_reg_1463;
wire   [63:0] bitcast_ln14_fu_862_p1;
wire   [63:0] tmp_2_fu_882_p11;
reg   [63:0] tmp_2_reg_1473;
wire   [63:0] tmp_3_fu_921_p11;
reg   [63:0] tmp_3_reg_1478;
wire   [63:0] bitcast_ln14_22_fu_960_p1;
wire   [63:0] tmp_4_fu_1011_p11;
reg   [63:0] tmp_4_reg_1528;
wire   [63:0] tmp_5_fu_1050_p11;
reg   [63:0] tmp_5_reg_1533;
wire   [63:0] bitcast_ln14_28_fu_1073_p1;
wire   [63:0] bitcast_ln14_34_fu_1097_p1;
wire   [63:0] bitcast_ln14_17_fu_1131_p1;
wire   [63:0] bitcast_ln14_23_fu_1135_p1;
wire   [63:0] tmp_6_fu_1155_p11;
reg   [63:0] tmp_6_reg_1598;
wire   [63:0] tmp_7_fu_1194_p11;
reg   [63:0] tmp_7_reg_1603;
wire   [63:0] bitcast_ln14_29_fu_1217_p1;
wire   [63:0] bitcast_ln14_35_fu_1221_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_678_p1;
wire   [63:0] zext_ln14_1_fu_710_p1;
wire   [63:0] zext_ln14_2_fu_834_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_854_p1;
wire   [63:0] zext_ln14_4_fu_952_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_987_p1;
wire   [63:0] zext_ln14_6_fu_1089_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1113_p1;
reg   [6:0] s_fu_114;
wire   [6:0] add_ln13_fu_1121_p2;
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
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_612_p0;
reg   [63:0] grp_fu_612_p1;
reg   [63:0] grp_fu_616_p0;
reg   [63:0] grp_fu_616_p1;
wire   [9:0] or_ln_fu_670_p3;
wire   [4:0] tmp_61_fu_686_p4;
wire   [9:0] or_ln14_1_fu_696_p3;
wire   [9:0] add_ln14_fu_704_p2;
wire   [3:0] or_ln14_4_fu_728_p3;
wire   [63:0] tmp_fu_760_p2;
wire   [63:0] tmp_fu_760_p4;
wire   [63:0] tmp_fu_760_p6;
wire   [63:0] tmp_fu_760_p8;
wire   [63:0] tmp_fu_760_p9;
wire   [63:0] tmp_1_fu_799_p2;
wire   [63:0] tmp_1_fu_799_p4;
wire   [63:0] tmp_1_fu_799_p6;
wire   [63:0] tmp_1_fu_799_p8;
wire   [63:0] tmp_1_fu_799_p9;
wire   [9:0] or_ln14_2_fu_822_p3;
wire   [9:0] add_ln14_1_fu_829_p2;
wire   [9:0] or_ln14_3_fu_842_p3;
wire   [9:0] add_ln14_2_fu_849_p2;
wire   [63:0] tmp_2_fu_882_p2;
wire   [63:0] tmp_2_fu_882_p4;
wire   [63:0] tmp_2_fu_882_p6;
wire   [63:0] tmp_2_fu_882_p8;
wire   [63:0] tmp_2_fu_882_p9;
wire   [63:0] tmp_3_fu_921_p2;
wire   [63:0] tmp_3_fu_921_p4;
wire   [63:0] tmp_3_fu_921_p6;
wire   [63:0] tmp_3_fu_921_p8;
wire   [63:0] tmp_3_fu_921_p9;
wire   [9:0] or_ln14_5_fu_944_p4;
wire   [0:0] tmp_40_fu_964_p3;
wire   [9:0] or_ln14_6_fu_971_p5;
wire   [9:0] add_ln14_3_fu_982_p2;
wire   [63:0] tmp_4_fu_1011_p2;
wire   [63:0] tmp_4_fu_1011_p4;
wire   [63:0] tmp_4_fu_1011_p6;
wire   [63:0] tmp_4_fu_1011_p8;
wire   [63:0] tmp_4_fu_1011_p9;
wire   [63:0] tmp_5_fu_1050_p2;
wire   [63:0] tmp_5_fu_1050_p4;
wire   [63:0] tmp_5_fu_1050_p6;
wire   [63:0] tmp_5_fu_1050_p8;
wire   [63:0] tmp_5_fu_1050_p9;
wire   [9:0] or_ln14_7_fu_1077_p3;
wire   [9:0] add_ln14_4_fu_1084_p2;
wire   [9:0] or_ln14_8_fu_1101_p3;
wire   [9:0] add_ln14_5_fu_1108_p2;
wire   [63:0] tmp_6_fu_1155_p2;
wire   [63:0] tmp_6_fu_1155_p4;
wire   [63:0] tmp_6_fu_1155_p6;
wire   [63:0] tmp_6_fu_1155_p8;
wire   [63:0] tmp_6_fu_1155_p9;
wire   [63:0] tmp_7_fu_1194_p2;
wire   [63:0] tmp_7_fu_1194_p4;
wire   [63:0] tmp_7_fu_1194_p6;
wire   [63:0] tmp_7_fu_1194_p8;
wire   [63:0] tmp_7_fu_1194_p9;
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
wire   [1:0] tmp_fu_760_p1;
wire   [1:0] tmp_fu_760_p3;
wire  signed [1:0] tmp_fu_760_p5;
wire  signed [1:0] tmp_fu_760_p7;
wire   [1:0] tmp_1_fu_799_p1;
wire   [1:0] tmp_1_fu_799_p3;
wire  signed [1:0] tmp_1_fu_799_p5;
wire  signed [1:0] tmp_1_fu_799_p7;
wire   [1:0] tmp_2_fu_882_p1;
wire   [1:0] tmp_2_fu_882_p3;
wire  signed [1:0] tmp_2_fu_882_p5;
wire  signed [1:0] tmp_2_fu_882_p7;
wire   [1:0] tmp_3_fu_921_p1;
wire   [1:0] tmp_3_fu_921_p3;
wire  signed [1:0] tmp_3_fu_921_p5;
wire  signed [1:0] tmp_3_fu_921_p7;
wire   [1:0] tmp_4_fu_1011_p1;
wire   [1:0] tmp_4_fu_1011_p3;
wire  signed [1:0] tmp_4_fu_1011_p5;
wire  signed [1:0] tmp_4_fu_1011_p7;
wire   [1:0] tmp_5_fu_1050_p1;
wire   [1:0] tmp_5_fu_1050_p3;
wire  signed [1:0] tmp_5_fu_1050_p5;
wire  signed [1:0] tmp_5_fu_1050_p7;
wire   [1:0] tmp_6_fu_1155_p1;
wire   [1:0] tmp_6_fu_1155_p3;
wire  signed [1:0] tmp_6_fu_1155_p5;
wire  signed [1:0] tmp_6_fu_1155_p7;
wire   [1:0] tmp_7_fu_1194_p1;
wire   [1:0] tmp_7_fu_1194_p3;
wire  signed [1:0] tmp_7_fu_1194_p5;
wire  signed [1:0] tmp_7_fu_1194_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_114 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_616_p0),.din1(grp_fu_616_p1),.ce(1'b1),.dout(grp_fu_616_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_760_p2),.din1(tmp_fu_760_p4),.din2(tmp_fu_760_p6),.din3(tmp_fu_760_p8),.def(tmp_fu_760_p9),.sel(empty),.dout(tmp_fu_760_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_799_p2),.din1(tmp_1_fu_799_p4),.din2(tmp_1_fu_799_p6),.din3(tmp_1_fu_799_p8),.def(tmp_1_fu_799_p9),.sel(empty),.dout(tmp_1_fu_799_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_882_p2),.din1(tmp_2_fu_882_p4),.din2(tmp_2_fu_882_p6),.din3(tmp_2_fu_882_p8),.def(tmp_2_fu_882_p9),.sel(empty),.dout(tmp_2_fu_882_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_921_p2),.din1(tmp_3_fu_921_p4),.din2(tmp_3_fu_921_p6),.din3(tmp_3_fu_921_p8),.def(tmp_3_fu_921_p9),.sel(empty),.dout(tmp_3_fu_921_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1011_p2),.din1(tmp_4_fu_1011_p4),.din2(tmp_4_fu_1011_p6),.din3(tmp_4_fu_1011_p8),.def(tmp_4_fu_1011_p9),.sel(empty),.dout(tmp_4_fu_1011_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1050_p2),.din1(tmp_5_fu_1050_p4),.din2(tmp_5_fu_1050_p6),.din3(tmp_5_fu_1050_p8),.def(tmp_5_fu_1050_p9),.sel(empty),.dout(tmp_5_fu_1050_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1155_p2),.din1(tmp_6_fu_1155_p4),.din2(tmp_6_fu_1155_p6),.din3(tmp_6_fu_1155_p8),.def(tmp_6_fu_1155_p9),.sel(empty),.dout(tmp_6_fu_1155_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1194_p2),.din1(tmp_7_fu_1194_p4),.din2(tmp_7_fu_1194_p6),.din3(tmp_7_fu_1194_p8),.def(tmp_7_fu_1194_p9),.sel(empty),.dout(tmp_7_fu_1194_p11));
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
        s_fu_114 <= 7'd0;
    end else if (((tmp_39_reg_1264 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_114 <= add_ln13_fu_1121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1249[5 : 0] <= conv3_udiv_cast_cast_fu_632_p1[5 : 0];
        lshr_ln9_reg_1268 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_1258 <= ap_sig_allocacmp_s_1;
        tmp_39_reg_1264 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_39_reg_1264_pp0_iter1_reg <= tmp_39_reg_1264;
        tmp_39_reg_1264_pp0_iter2_reg <= tmp_39_reg_1264_pp0_iter1_reg;
        tmp_6_reg_1598 <= tmp_6_fu_1155_p11;
        tmp_7_reg_1603 <= tmp_7_fu_1194_p11;
        tmp_s_reg_1327 <= {{ap_sig_allocacmp_s_1[5:3]}};
        zext_ln14_8_reg_1335[3 : 1] <= zext_ln14_8_fu_736_p1[3 : 1];
        zext_ln14_8_reg_1335_pp0_iter1_reg[3 : 1] <= zext_ln14_8_reg_1335[3 : 1];
        zext_ln14_8_reg_1335_pp0_iter2_reg[3 : 1] <= zext_ln14_8_reg_1335_pp0_iter1_reg[3 : 1];
        zext_ln14_8_reg_1335_pp0_iter3_reg[3 : 1] <= zext_ln14_8_reg_1335_pp0_iter2_reg[3 : 1];
        zext_ln9_reg_1274[3 : 0] <= zext_ln9_fu_662_p1[3 : 0];
        zext_ln9_reg_1274_pp0_iter1_reg[3 : 0] <= zext_ln9_reg_1274[3 : 0];
        zext_ln9_reg_1274_pp0_iter2_reg[3 : 0] <= zext_ln9_reg_1274_pp0_iter1_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_1433 <= init_0_q0;
        init_0_load_reg_1378 <= init_0_q1;
        init_1_load_1_reg_1443 <= init_1_q0;
        init_1_load_reg_1438 <= init_1_q1;
        init_2_load_1_reg_1453 <= init_2_q0;
        init_2_load_reg_1448 <= init_2_q1;
        init_3_load_1_reg_1463 <= init_3_q0;
        init_3_load_reg_1458 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_620 <= grp_fu_629_p_dout0;
        reg_626 <= grp_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1388 <= tmp_1_fu_799_p11;
        tmp_reg_1383 <= tmp_fu_760_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_1473 <= tmp_2_fu_882_p11;
        tmp_3_reg_1478 <= tmp_3_fu_921_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_1528 <= tmp_4_fu_1011_p11;
        tmp_5_reg_1533 <= tmp_5_fu_1050_p11;
    end
end
always @ (*) begin
    if (((tmp_39_reg_1264 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_39_reg_1264_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_114;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_710_p1;
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
            emission_0_address1_local = zext_ln14_6_fu_1089_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_678_p1;
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
            emission_1_address0_local = zext_ln14_7_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_710_p1;
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
            emission_1_address1_local = zext_ln14_6_fu_1089_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_678_p1;
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
            emission_2_address0_local = zext_ln14_7_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_710_p1;
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
            emission_2_address1_local = zext_ln14_6_fu_1089_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_678_p1;
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
            emission_3_address0_local = zext_ln14_7_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_987_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_710_p1;
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
            emission_3_address1_local = zext_ln14_6_fu_1089_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_678_p1;
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
        grp_fu_612_p0 = bitcast_ln14_29_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p0 = bitcast_ln14_17_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p0 = bitcast_ln14_28_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p0 = bitcast_ln14_fu_862_p1;
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p1 = tmp_6_reg_1598;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p1 = tmp_4_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p1 = tmp_2_reg_1473;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p1 = tmp_reg_1383;
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = bitcast_ln14_35_fu_1221_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = bitcast_ln14_23_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = bitcast_ln14_34_fu_1097_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = bitcast_ln14_22_fu_960_p1;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p1 = tmp_7_reg_1603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p1 = tmp_5_reg_1533;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p1 = tmp_3_reg_1478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p1 = tmp_1_reg_1388;
    end else begin
        grp_fu_616_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_8_reg_1335_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_reg_1274_pp0_iter2_reg;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_8_reg_1335_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_1274_pp0_iter2_reg;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_8_reg_1335_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_1274_pp0_iter2_reg;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_8_reg_1335_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_reg_1274_pp0_iter2_reg;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln13_fu_1121_p2 = (s_1_reg_1258 + 7'd8);
assign add_ln14_1_fu_829_p2 = (or_ln14_2_fu_822_p3 + conv3_udiv_cast_cast_reg_1249);
assign add_ln14_2_fu_849_p2 = (or_ln14_3_fu_842_p3 + conv3_udiv_cast_cast_reg_1249);
assign add_ln14_3_fu_982_p2 = (or_ln14_6_fu_971_p5 + conv3_udiv_cast_cast_reg_1249);
assign add_ln14_4_fu_1084_p2 = (or_ln14_7_fu_1077_p3 + conv3_udiv_cast_cast_reg_1249);
assign add_ln14_5_fu_1108_p2 = (or_ln14_8_fu_1101_p3 + conv3_udiv_cast_cast_reg_1249);
assign add_ln14_fu_704_p2 = (or_ln14_1_fu_696_p3 + conv3_udiv_cast_cast_fu_632_p1);
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
assign bitcast_ln14_17_fu_1131_p1 = init_0_load_1_reg_1433;
assign bitcast_ln14_22_fu_960_p1 = init_1_load_reg_1438;
assign bitcast_ln14_23_fu_1135_p1 = init_1_load_1_reg_1443;
assign bitcast_ln14_28_fu_1073_p1 = init_2_load_reg_1448;
assign bitcast_ln14_29_fu_1217_p1 = init_2_load_1_reg_1453;
assign bitcast_ln14_34_fu_1097_p1 = init_3_load_reg_1458;
assign bitcast_ln14_35_fu_1221_p1 = init_3_load_1_reg_1463;
assign bitcast_ln14_fu_862_p1 = init_0_load_reg_1378;
assign conv3_udiv_cast_cast_fu_632_p1 = conv3_udiv_cast;
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
assign grp_fu_629_p_ce = 1'b1;
assign grp_fu_629_p_din0 = grp_fu_612_p0;
assign grp_fu_629_p_din1 = grp_fu_612_p1;
assign grp_fu_629_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_8_fu_736_p1;
assign init_0_address1 = zext_ln9_fu_662_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_8_fu_736_p1;
assign init_1_address1 = zext_ln9_fu_662_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_8_fu_736_p1;
assign init_2_address1 = zext_ln9_fu_662_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_8_fu_736_p1;
assign init_3_address1 = zext_ln9_fu_662_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_626;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_620;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_626;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_620;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_652_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_1_fu_696_p3 = {{tmp_61_fu_686_p4}, {5'd16}};
assign or_ln14_2_fu_822_p3 = {{lshr_ln9_reg_1268}, {6'd32}};
assign or_ln14_3_fu_842_p3 = {{lshr_ln9_reg_1268}, {6'd48}};
assign or_ln14_4_fu_728_p3 = {{tmp_s_fu_718_p4}, {1'd1}};
assign or_ln14_5_fu_944_p4 = {{{tmp_s_reg_1327}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_971_p5 = {{{{tmp_s_reg_1327}, {1'd1}}, {tmp_40_fu_964_p3}}, {5'd16}};
assign or_ln14_7_fu_1077_p3 = {{tmp_s_reg_1327}, {7'd96}};
assign or_ln14_8_fu_1101_p3 = {{tmp_s_reg_1327}, {7'd112}};
assign or_ln_fu_670_p3 = {{lshr_ln9_fu_652_p4}, {conv3_udiv}};
assign tmp_1_fu_799_p2 = emission_0_q0;
assign tmp_1_fu_799_p4 = emission_1_q0;
assign tmp_1_fu_799_p6 = emission_2_q0;
assign tmp_1_fu_799_p8 = emission_3_q0;
assign tmp_1_fu_799_p9 = 'bx;
assign tmp_2_fu_882_p2 = emission_0_q1;
assign tmp_2_fu_882_p4 = emission_1_q1;
assign tmp_2_fu_882_p6 = emission_2_q1;
assign tmp_2_fu_882_p8 = emission_3_q1;
assign tmp_2_fu_882_p9 = 'bx;
assign tmp_3_fu_921_p2 = emission_0_q0;
assign tmp_3_fu_921_p4 = emission_1_q0;
assign tmp_3_fu_921_p6 = emission_2_q0;
assign tmp_3_fu_921_p8 = emission_3_q0;
assign tmp_3_fu_921_p9 = 'bx;
assign tmp_40_fu_964_p3 = s_1_reg_1258[32'd1];
assign tmp_4_fu_1011_p2 = emission_0_q1;
assign tmp_4_fu_1011_p4 = emission_1_q1;
assign tmp_4_fu_1011_p6 = emission_2_q1;
assign tmp_4_fu_1011_p8 = emission_3_q1;
assign tmp_4_fu_1011_p9 = 'bx;
assign tmp_5_fu_1050_p2 = emission_0_q0;
assign tmp_5_fu_1050_p4 = emission_1_q0;
assign tmp_5_fu_1050_p6 = emission_2_q0;
assign tmp_5_fu_1050_p8 = emission_3_q0;
assign tmp_5_fu_1050_p9 = 'bx;
assign tmp_61_fu_686_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_6_fu_1155_p2 = emission_0_q1;
assign tmp_6_fu_1155_p4 = emission_1_q1;
assign tmp_6_fu_1155_p6 = emission_2_q1;
assign tmp_6_fu_1155_p8 = emission_3_q1;
assign tmp_6_fu_1155_p9 = 'bx;
assign tmp_7_fu_1194_p2 = emission_0_q0;
assign tmp_7_fu_1194_p4 = emission_1_q0;
assign tmp_7_fu_1194_p6 = emission_2_q0;
assign tmp_7_fu_1194_p8 = emission_3_q0;
assign tmp_7_fu_1194_p9 = 'bx;
assign tmp_fu_760_p2 = emission_0_q1;
assign tmp_fu_760_p4 = emission_1_q1;
assign tmp_fu_760_p6 = emission_2_q1;
assign tmp_fu_760_p8 = emission_3_q1;
assign tmp_fu_760_p9 = 'bx;
assign tmp_s_fu_718_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign zext_ln14_1_fu_710_p1 = add_ln14_fu_704_p2;
assign zext_ln14_2_fu_834_p1 = add_ln14_1_fu_829_p2;
assign zext_ln14_3_fu_854_p1 = add_ln14_2_fu_849_p2;
assign zext_ln14_4_fu_952_p1 = or_ln14_5_fu_944_p4;
assign zext_ln14_5_fu_987_p1 = add_ln14_3_fu_982_p2;
assign zext_ln14_6_fu_1089_p1 = add_ln14_4_fu_1084_p2;
assign zext_ln14_7_fu_1113_p1 = add_ln14_5_fu_1108_p2;
assign zext_ln14_8_fu_736_p1 = or_ln14_4_fu_728_p3;
assign zext_ln14_fu_678_p1 = or_ln_fu_670_p3;
assign zext_ln9_fu_662_p1 = lshr_ln9_fu_652_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1249[9:6] <= 4'b0000;
    zext_ln9_reg_1274[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1274_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1274_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1335[0] <= 1'b1;
    zext_ln14_8_reg_1335[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1335_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_8_reg_1335_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1335_pp0_iter2_reg[0] <= 1'b1;
    zext_ln14_8_reg_1335_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_8_reg_1335_pp0_iter3_reg[0] <= 1'b1;
    zext_ln14_8_reg_1335_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 