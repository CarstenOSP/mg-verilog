module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_594_p_din0,grp_fu_594_p_din1,grp_fu_594_p_opcode,grp_fu_594_p_dout0,grp_fu_594_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
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
output  [63:0] grp_fu_594_p_din0;
output  [63:0] grp_fu_594_p_din1;
output  [1:0] grp_fu_594_p_opcode;
input  [63:0] grp_fu_594_p_dout0;
output   grp_fu_594_p_ce;
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
reg   [0:0] tmp_81_reg_1299;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_612;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_608_p2;
reg   [63:0] reg_617;
wire   [9:0] conv3_udiv_cast_cast_fu_622_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_1284;
reg   [6:0] s_1_reg_1293;
reg   [0:0] tmp_81_reg_1299_pp0_iter1_reg;
reg   [0:0] tmp_81_reg_1299_pp0_iter2_reg;
wire   [3:0] lshr_ln9_fu_642_p4;
reg   [3:0] lshr_ln9_reg_1303;
reg   [3:0] lshr_ln9_reg_1303_pp0_iter1_reg;
reg   [3:0] lshr_ln9_reg_1303_pp0_iter2_reg;
wire   [4:0] lshr_ln9_1_fu_660_p4;
reg   [4:0] lshr_ln9_1_reg_1310;
reg   [4:0] lshr_ln9_1_reg_1310_pp0_iter1_reg;
reg   [4:0] lshr_ln9_1_reg_1310_pp0_iter2_reg;
wire   [2:0] tmp_s_fu_708_p4;
reg   [2:0] tmp_s_reg_1360;
reg   [2:0] tmp_s_reg_1360_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_1360_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_1360_pp0_iter3_reg;
reg   [63:0] init_0_load_reg_1405;
wire   [63:0] tmp_fu_750_p11;
reg   [63:0] tmp_reg_1410;
wire   [63:0] tmp_1_fu_789_p11;
reg   [63:0] tmp_1_reg_1415;
reg   [63:0] init_1_load_reg_1460;
reg   [63:0] init_2_load_reg_1465;
reg   [63:0] init_3_load_reg_1470;
reg   [63:0] init_0_load_1_reg_1475;
reg   [63:0] init_1_load_1_reg_1480;
reg   [63:0] init_2_load_1_reg_1485;
reg   [63:0] init_3_load_1_reg_1490;
wire   [63:0] bitcast_ln14_fu_852_p1;
wire   [63:0] tmp_2_fu_872_p11;
reg   [63:0] tmp_2_reg_1500;
wire   [63:0] tmp_3_fu_911_p11;
reg   [63:0] tmp_3_reg_1505;
wire   [0:0] tmp_82_fu_934_p3;
reg   [0:0] tmp_82_reg_1510;
reg   [0:0] tmp_82_reg_1510_pp0_iter1_reg;
reg   [0:0] tmp_82_reg_1510_pp0_iter2_reg;
wire   [63:0] bitcast_ln14_29_fu_981_p1;
wire   [63:0] tmp_4_fu_1001_p11;
reg   [63:0] tmp_4_reg_1560;
wire   [63:0] tmp_5_fu_1040_p11;
reg   [63:0] tmp_5_reg_1565;
wire   [63:0] bitcast_ln14_30_fu_1083_p1;
wire   [63:0] bitcast_ln14_31_fu_1087_p1;
wire   [63:0] tmp_6_fu_1137_p11;
reg   [63:0] tmp_6_reg_1620;
wire   [63:0] bitcast_ln14_32_fu_1160_p1;
wire   [63:0] bitcast_ln14_33_fu_1164_p1;
wire   [63:0] tmp_7_fu_1184_p11;
reg   [63:0] tmp_7_reg_1635;
wire   [63:0] bitcast_ln14_34_fu_1207_p1;
wire   [63:0] bitcast_ln14_35_fu_1211_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_652_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_678_p1;
wire   [63:0] zext_ln14_1_fu_700_p1;
wire   [63:0] zext_ln14_9_fu_726_p1;
wire   [63:0] zext_ln14_2_fu_824_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_844_p1;
wire   [63:0] zext_ln14_4_fu_949_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_973_p1;
wire   [63:0] zext_ln14_6_fu_1075_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1103_p1;
wire   [63:0] zext_ln9_1_fu_1215_p1;
wire   [63:0] zext_ln14_8_fu_1227_p1;
wire   [63:0] zext_ln14_10_fu_1241_p1;
wire   [63:0] zext_ln14_11_fu_1254_p1;
reg   [6:0] s_fu_116;
wire   [6:0] add_ln13_fu_1111_p2;
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
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_604_p0;
reg   [63:0] grp_fu_604_p1;
reg   [63:0] grp_fu_608_p0;
reg   [63:0] grp_fu_608_p1;
wire   [9:0] or_ln_fu_670_p3;
wire   [9:0] or_ln14_1_fu_686_p3;
wire   [9:0] add_ln14_fu_694_p2;
wire   [3:0] or_ln14_5_fu_718_p3;
wire   [63:0] tmp_fu_750_p2;
wire   [63:0] tmp_fu_750_p4;
wire   [63:0] tmp_fu_750_p6;
wire   [63:0] tmp_fu_750_p8;
wire   [63:0] tmp_fu_750_p9;
wire   [63:0] tmp_1_fu_789_p2;
wire   [63:0] tmp_1_fu_789_p4;
wire   [63:0] tmp_1_fu_789_p6;
wire   [63:0] tmp_1_fu_789_p8;
wire   [63:0] tmp_1_fu_789_p9;
wire   [9:0] or_ln14_3_fu_812_p3;
wire   [9:0] add_ln14_1_fu_819_p2;
wire   [9:0] or_ln14_4_fu_832_p3;
wire   [9:0] add_ln14_2_fu_839_p2;
wire   [63:0] tmp_2_fu_872_p2;
wire   [63:0] tmp_2_fu_872_p4;
wire   [63:0] tmp_2_fu_872_p6;
wire   [63:0] tmp_2_fu_872_p8;
wire   [63:0] tmp_2_fu_872_p9;
wire   [63:0] tmp_3_fu_911_p2;
wire   [63:0] tmp_3_fu_911_p4;
wire   [63:0] tmp_3_fu_911_p6;
wire   [63:0] tmp_3_fu_911_p8;
wire   [63:0] tmp_3_fu_911_p9;
wire   [9:0] or_ln14_7_fu_941_p4;
wire   [9:0] or_ln14_8_fu_957_p5;
wire   [9:0] add_ln14_3_fu_968_p2;
wire   [63:0] tmp_4_fu_1001_p2;
wire   [63:0] tmp_4_fu_1001_p4;
wire   [63:0] tmp_4_fu_1001_p6;
wire   [63:0] tmp_4_fu_1001_p8;
wire   [63:0] tmp_4_fu_1001_p9;
wire   [63:0] tmp_5_fu_1040_p2;
wire   [63:0] tmp_5_fu_1040_p4;
wire   [63:0] tmp_5_fu_1040_p6;
wire   [63:0] tmp_5_fu_1040_p8;
wire   [63:0] tmp_5_fu_1040_p9;
wire   [9:0] or_ln14_s_fu_1063_p3;
wire   [9:0] add_ln14_4_fu_1070_p2;
wire   [9:0] or_ln14_10_fu_1091_p3;
wire   [9:0] add_ln14_5_fu_1098_p2;
wire   [63:0] tmp_6_fu_1137_p2;
wire   [63:0] tmp_6_fu_1137_p4;
wire   [63:0] tmp_6_fu_1137_p6;
wire   [63:0] tmp_6_fu_1137_p8;
wire   [63:0] tmp_6_fu_1137_p9;
wire   [63:0] tmp_7_fu_1184_p2;
wire   [63:0] tmp_7_fu_1184_p4;
wire   [63:0] tmp_7_fu_1184_p6;
wire   [63:0] tmp_7_fu_1184_p8;
wire   [63:0] tmp_7_fu_1184_p9;
wire   [4:0] or_ln14_2_fu_1220_p3;
wire   [4:0] or_ln14_6_fu_1233_p4;
wire   [4:0] or_ln14_9_fu_1247_p3;
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
wire   [1:0] tmp_fu_750_p1;
wire   [1:0] tmp_fu_750_p3;
wire  signed [1:0] tmp_fu_750_p5;
wire  signed [1:0] tmp_fu_750_p7;
wire   [1:0] tmp_1_fu_789_p1;
wire   [1:0] tmp_1_fu_789_p3;
wire  signed [1:0] tmp_1_fu_789_p5;
wire  signed [1:0] tmp_1_fu_789_p7;
wire   [1:0] tmp_2_fu_872_p1;
wire   [1:0] tmp_2_fu_872_p3;
wire  signed [1:0] tmp_2_fu_872_p5;
wire  signed [1:0] tmp_2_fu_872_p7;
wire   [1:0] tmp_3_fu_911_p1;
wire   [1:0] tmp_3_fu_911_p3;
wire  signed [1:0] tmp_3_fu_911_p5;
wire  signed [1:0] tmp_3_fu_911_p7;
wire   [1:0] tmp_4_fu_1001_p1;
wire   [1:0] tmp_4_fu_1001_p3;
wire  signed [1:0] tmp_4_fu_1001_p5;
wire  signed [1:0] tmp_4_fu_1001_p7;
wire   [1:0] tmp_5_fu_1040_p1;
wire   [1:0] tmp_5_fu_1040_p3;
wire  signed [1:0] tmp_5_fu_1040_p5;
wire  signed [1:0] tmp_5_fu_1040_p7;
wire   [1:0] tmp_6_fu_1137_p1;
wire   [1:0] tmp_6_fu_1137_p3;
wire  signed [1:0] tmp_6_fu_1137_p5;
wire  signed [1:0] tmp_6_fu_1137_p7;
wire   [1:0] tmp_7_fu_1184_p1;
wire   [1:0] tmp_7_fu_1184_p3;
wire  signed [1:0] tmp_7_fu_1184_p5;
wire  signed [1:0] tmp_7_fu_1184_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_116 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_608_p0),.din1(grp_fu_608_p1),.ce(1'b1),.dout(grp_fu_608_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_750_p2),.din1(tmp_fu_750_p4),.din2(tmp_fu_750_p6),.din3(tmp_fu_750_p8),.def(tmp_fu_750_p9),.sel(empty),.dout(tmp_fu_750_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_789_p2),.din1(tmp_1_fu_789_p4),.din2(tmp_1_fu_789_p6),.din3(tmp_1_fu_789_p8),.def(tmp_1_fu_789_p9),.sel(empty),.dout(tmp_1_fu_789_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_872_p2),.din1(tmp_2_fu_872_p4),.din2(tmp_2_fu_872_p6),.din3(tmp_2_fu_872_p8),.def(tmp_2_fu_872_p9),.sel(empty),.dout(tmp_2_fu_872_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_911_p2),.din1(tmp_3_fu_911_p4),.din2(tmp_3_fu_911_p6),.din3(tmp_3_fu_911_p8),.def(tmp_3_fu_911_p9),.sel(empty),.dout(tmp_3_fu_911_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1001_p2),.din1(tmp_4_fu_1001_p4),.din2(tmp_4_fu_1001_p6),.din3(tmp_4_fu_1001_p8),.def(tmp_4_fu_1001_p9),.sel(empty),.dout(tmp_4_fu_1001_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1040_p2),.din1(tmp_5_fu_1040_p4),.din2(tmp_5_fu_1040_p6),.din3(tmp_5_fu_1040_p8),.def(tmp_5_fu_1040_p9),.sel(empty),.dout(tmp_5_fu_1040_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1137_p2),.din1(tmp_6_fu_1137_p4),.din2(tmp_6_fu_1137_p6),.din3(tmp_6_fu_1137_p8),.def(tmp_6_fu_1137_p9),.sel(empty),.dout(tmp_6_fu_1137_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1184_p2),.din1(tmp_7_fu_1184_p4),.din2(tmp_7_fu_1184_p6),.din3(tmp_7_fu_1184_p8),.def(tmp_7_fu_1184_p9),.sel(empty),.dout(tmp_7_fu_1184_p11));
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
        s_fu_116 <= 7'd0;
    end else if (((tmp_81_reg_1299 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_116 <= add_ln13_fu_1111_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1284[5 : 0] <= conv3_udiv_cast_cast_fu_622_p1[5 : 0];
        lshr_ln9_1_reg_1310 <= {{ap_sig_allocacmp_s_1[5:1]}};
        lshr_ln9_1_reg_1310_pp0_iter1_reg <= lshr_ln9_1_reg_1310;
        lshr_ln9_1_reg_1310_pp0_iter2_reg <= lshr_ln9_1_reg_1310_pp0_iter1_reg;
        lshr_ln9_reg_1303 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_1303_pp0_iter1_reg <= lshr_ln9_reg_1303;
        lshr_ln9_reg_1303_pp0_iter2_reg <= lshr_ln9_reg_1303_pp0_iter1_reg;
        s_1_reg_1293 <= ap_sig_allocacmp_s_1;
        tmp_6_reg_1620 <= tmp_6_fu_1137_p11;
        tmp_7_reg_1635 <= tmp_7_fu_1184_p11;
        tmp_81_reg_1299 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_81_reg_1299_pp0_iter1_reg <= tmp_81_reg_1299;
        tmp_81_reg_1299_pp0_iter2_reg <= tmp_81_reg_1299_pp0_iter1_reg;
        tmp_s_reg_1360 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_s_reg_1360_pp0_iter1_reg <= tmp_s_reg_1360;
        tmp_s_reg_1360_pp0_iter2_reg <= tmp_s_reg_1360_pp0_iter1_reg;
        tmp_s_reg_1360_pp0_iter3_reg <= tmp_s_reg_1360_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_1475 <= init_0_q0;
        init_0_load_reg_1405 <= init_0_q1;
        init_1_load_1_reg_1480 <= init_1_q0;
        init_1_load_reg_1460 <= init_1_q1;
        init_2_load_1_reg_1485 <= init_2_q0;
        init_2_load_reg_1465 <= init_2_q1;
        init_3_load_1_reg_1490 <= init_3_q0;
        init_3_load_reg_1470 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_612 <= grp_fu_594_p_dout0;
        reg_617 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1415 <= tmp_1_fu_789_p11;
        tmp_reg_1410 <= tmp_fu_750_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_1500 <= tmp_2_fu_872_p11;
        tmp_3_reg_1505 <= tmp_3_fu_911_p11;
        tmp_82_reg_1510 <= s_1_reg_1293[32'd1];
        tmp_82_reg_1510_pp0_iter1_reg <= tmp_82_reg_1510;
        tmp_82_reg_1510_pp0_iter2_reg <= tmp_82_reg_1510_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_1560 <= tmp_4_fu_1001_p11;
        tmp_5_reg_1565 <= tmp_5_fu_1040_p11;
    end
end
always @ (*) begin
    if (((tmp_81_reg_1299 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_81_reg_1299_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_116;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_700_p1;
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
            emission_0_address1_local = zext_ln14_6_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_824_p1;
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
            emission_1_address0_local = zext_ln14_7_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_700_p1;
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
            emission_1_address1_local = zext_ln14_6_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_824_p1;
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
            emission_2_address0_local = zext_ln14_7_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_700_p1;
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
            emission_2_address1_local = zext_ln14_6_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_824_p1;
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
            emission_3_address0_local = zext_ln14_7_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_700_p1;
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
            emission_3_address1_local = zext_ln14_6_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_824_p1;
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
        grp_fu_604_p0 = bitcast_ln14_34_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_p0 = bitcast_ln14_32_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_604_p0 = bitcast_ln14_30_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p0 = bitcast_ln14_fu_852_p1;
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p1 = tmp_6_reg_1620;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_p1 = tmp_4_reg_1560;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_604_p1 = tmp_2_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p1 = tmp_reg_1410;
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p0 = bitcast_ln14_35_fu_1211_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p0 = bitcast_ln14_33_fu_1164_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p0 = bitcast_ln14_31_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p0 = bitcast_ln14_29_fu_981_p1;
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p1 = tmp_7_reg_1635;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p1 = tmp_5_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p1 = tmp_3_reg_1505;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p1 = tmp_1_reg_1415;
    end else begin
        grp_fu_608_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_address0_local = zext_ln14_11_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_10_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_8_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_1_fu_1215_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_11_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_10_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_8_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_1_fu_1215_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln13_fu_1111_p2 = (s_1_reg_1293 + 7'd8);
assign add_ln14_1_fu_819_p2 = (or_ln14_3_fu_812_p3 + conv3_udiv_cast_cast_reg_1284);
assign add_ln14_2_fu_839_p2 = (or_ln14_4_fu_832_p3 + conv3_udiv_cast_cast_reg_1284);
assign add_ln14_3_fu_968_p2 = (or_ln14_8_fu_957_p5 + conv3_udiv_cast_cast_reg_1284);
assign add_ln14_4_fu_1070_p2 = (or_ln14_s_fu_1063_p3 + conv3_udiv_cast_cast_reg_1284);
assign add_ln14_5_fu_1098_p2 = (or_ln14_10_fu_1091_p3 + conv3_udiv_cast_cast_reg_1284);
assign add_ln14_fu_694_p2 = (or_ln14_1_fu_686_p3 + conv3_udiv_cast_cast_fu_622_p1);
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
assign bitcast_ln14_29_fu_981_p1 = init_1_load_reg_1460;
assign bitcast_ln14_30_fu_1083_p1 = init_2_load_reg_1465;
assign bitcast_ln14_31_fu_1087_p1 = init_3_load_reg_1470;
assign bitcast_ln14_32_fu_1160_p1 = init_0_load_1_reg_1475;
assign bitcast_ln14_33_fu_1164_p1 = init_1_load_1_reg_1480;
assign bitcast_ln14_34_fu_1207_p1 = init_2_load_1_reg_1485;
assign bitcast_ln14_35_fu_1211_p1 = init_3_load_1_reg_1490;
assign bitcast_ln14_fu_852_p1 = init_0_load_reg_1405;
assign conv3_udiv_cast_cast_fu_622_p1 = conv3_udiv_cast;
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
assign grp_fu_594_p_ce = 1'b1;
assign grp_fu_594_p_din0 = grp_fu_604_p0;
assign grp_fu_594_p_din1 = grp_fu_604_p1;
assign grp_fu_594_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_9_fu_726_p1;
assign init_0_address1 = zext_ln9_fu_652_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_9_fu_726_p1;
assign init_1_address1 = zext_ln9_fu_652_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_9_fu_726_p1;
assign init_2_address1 = zext_ln9_fu_652_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_9_fu_726_p1;
assign init_3_address1 = zext_ln9_fu_652_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_617;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_612;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_660_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign lshr_ln9_fu_642_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_10_fu_1091_p3 = {{tmp_s_reg_1360}, {7'd112}};
assign or_ln14_1_fu_686_p3 = {{lshr_ln9_1_fu_660_p4}, {5'd16}};
assign or_ln14_2_fu_1220_p3 = {{lshr_ln9_reg_1303_pp0_iter2_reg}, {1'd1}};
assign or_ln14_3_fu_812_p3 = {{lshr_ln9_reg_1303}, {6'd32}};
assign or_ln14_4_fu_832_p3 = {{lshr_ln9_reg_1303}, {6'd48}};
assign or_ln14_5_fu_718_p3 = {{tmp_s_fu_708_p4}, {1'd1}};
assign or_ln14_6_fu_1233_p4 = {{{tmp_s_reg_1360_pp0_iter2_reg}, {1'd1}}, {tmp_82_reg_1510_pp0_iter2_reg}};
assign or_ln14_7_fu_941_p4 = {{{tmp_s_reg_1360}, {1'd1}}, {conv3_udiv}};
assign or_ln14_8_fu_957_p5 = {{{{tmp_s_reg_1360}, {1'd1}}, {tmp_82_fu_934_p3}}, {5'd16}};
assign or_ln14_9_fu_1247_p3 = {{tmp_s_reg_1360_pp0_iter3_reg}, {2'd3}};
assign or_ln14_s_fu_1063_p3 = {{tmp_s_reg_1360}, {7'd96}};
assign or_ln_fu_670_p3 = {{lshr_ln9_fu_642_p4}, {conv3_udiv}};
assign tmp_1_fu_789_p2 = emission_0_q0;
assign tmp_1_fu_789_p4 = emission_1_q0;
assign tmp_1_fu_789_p6 = emission_2_q0;
assign tmp_1_fu_789_p8 = emission_3_q0;
assign tmp_1_fu_789_p9 = 'bx;
assign tmp_2_fu_872_p2 = emission_0_q1;
assign tmp_2_fu_872_p4 = emission_1_q1;
assign tmp_2_fu_872_p6 = emission_2_q1;
assign tmp_2_fu_872_p8 = emission_3_q1;
assign tmp_2_fu_872_p9 = 'bx;
assign tmp_3_fu_911_p2 = emission_0_q0;
assign tmp_3_fu_911_p4 = emission_1_q0;
assign tmp_3_fu_911_p6 = emission_2_q0;
assign tmp_3_fu_911_p8 = emission_3_q0;
assign tmp_3_fu_911_p9 = 'bx;
assign tmp_4_fu_1001_p2 = emission_0_q1;
assign tmp_4_fu_1001_p4 = emission_1_q1;
assign tmp_4_fu_1001_p6 = emission_2_q1;
assign tmp_4_fu_1001_p8 = emission_3_q1;
assign tmp_4_fu_1001_p9 = 'bx;
assign tmp_5_fu_1040_p2 = emission_0_q0;
assign tmp_5_fu_1040_p4 = emission_1_q0;
assign tmp_5_fu_1040_p6 = emission_2_q0;
assign tmp_5_fu_1040_p8 = emission_3_q0;
assign tmp_5_fu_1040_p9 = 'bx;
assign tmp_6_fu_1137_p2 = emission_0_q1;
assign tmp_6_fu_1137_p4 = emission_1_q1;
assign tmp_6_fu_1137_p6 = emission_2_q1;
assign tmp_6_fu_1137_p8 = emission_3_q1;
assign tmp_6_fu_1137_p9 = 'bx;
assign tmp_7_fu_1184_p2 = emission_0_q0;
assign tmp_7_fu_1184_p4 = emission_1_q0;
assign tmp_7_fu_1184_p6 = emission_2_q0;
assign tmp_7_fu_1184_p8 = emission_3_q0;
assign tmp_7_fu_1184_p9 = 'bx;
assign tmp_82_fu_934_p3 = s_1_reg_1293[32'd1];
assign tmp_fu_750_p2 = emission_0_q1;
assign tmp_fu_750_p4 = emission_1_q1;
assign tmp_fu_750_p6 = emission_2_q1;
assign tmp_fu_750_p8 = emission_3_q1;
assign tmp_fu_750_p9 = 'bx;
assign tmp_s_fu_708_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign zext_ln14_10_fu_1241_p1 = or_ln14_6_fu_1233_p4;
assign zext_ln14_11_fu_1254_p1 = or_ln14_9_fu_1247_p3;
assign zext_ln14_1_fu_700_p1 = add_ln14_fu_694_p2;
assign zext_ln14_2_fu_824_p1 = add_ln14_1_fu_819_p2;
assign zext_ln14_3_fu_844_p1 = add_ln14_2_fu_839_p2;
assign zext_ln14_4_fu_949_p1 = or_ln14_7_fu_941_p4;
assign zext_ln14_5_fu_973_p1 = add_ln14_3_fu_968_p2;
assign zext_ln14_6_fu_1075_p1 = add_ln14_4_fu_1070_p2;
assign zext_ln14_7_fu_1103_p1 = add_ln14_5_fu_1098_p2;
assign zext_ln14_8_fu_1227_p1 = or_ln14_2_fu_1220_p3;
assign zext_ln14_9_fu_726_p1 = or_ln14_5_fu_718_p3;
assign zext_ln14_fu_678_p1 = or_ln_fu_670_p3;
assign zext_ln9_1_fu_1215_p1 = lshr_ln9_1_reg_1310_pp0_iter2_reg;
assign zext_ln9_fu_652_p1 = lshr_ln9_fu_642_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1284[9:6] <= 4'b0000;
end
endmodule 