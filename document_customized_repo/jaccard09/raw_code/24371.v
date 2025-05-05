module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_4_address0,init_4_ce0,init_4_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_5_address0,init_5_ce0,init_5_q0,init_2_address0,init_2_ce0,init_2_q0,init_6_address0,init_6_ce0,init_6_q0,init_3_address0,init_3_ce0,init_3_q0,init_7_address0,init_7_ce0,init_7_q0,grp_fu_992_p_din0,grp_fu_992_p_din1,grp_fu_992_p_opcode,grp_fu_992_p_dout0,grp_fu_992_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
input  [4:0] conv3_udiv;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
input  [4:0] conv3_udiv_cast;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [63:0] grp_fu_992_p_din0;
output  [63:0] grp_fu_992_p_din1;
output  [1:0] grp_fu_992_p_opcode;
input  [63:0] grp_fu_992_p_dout0;
output   grp_fu_992_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_38_reg_1189;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_638;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_634_p2;
reg   [63:0] reg_644;
wire   [8:0] conv3_udiv_cast_cast_fu_650_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_1177;
reg   [6:0] s_1_reg_1183;
wire   [3:0] lshr_ln9_1_fu_692_p4;
reg   [3:0] lshr_ln9_1_reg_1193;
reg   [3:0] lshr_ln9_1_reg_1193_pp0_iter1_reg;
reg   [3:0] lshr_ln9_1_reg_1193_pp0_iter2_reg;
reg   [3:0] lshr_ln9_1_reg_1193_pp0_iter3_reg;
reg   [3:0] lshr_ln9_1_reg_1193_pp0_iter4_reg;
wire   [63:0] select_ln14_fu_767_p3;
reg   [63:0] select_ln14_reg_1320;
wire   [63:0] tmp_1_fu_807_p19;
reg   [63:0] tmp_1_reg_1325;
wire   [63:0] tmp_2_fu_878_p19;
reg   [63:0] tmp_2_reg_1330;
wire   [63:0] select_ln14_1_fu_941_p3;
reg   [63:0] select_ln14_1_reg_1375;
wire   [63:0] select_ln14_2_fu_949_p3;
reg   [63:0] select_ln14_2_reg_1380;
wire   [63:0] select_ln14_3_fu_957_p3;
reg   [63:0] select_ln14_3_reg_1385;
wire   [63:0] bitcast_ln14_fu_999_p1;
wire   [63:0] tmp_3_fu_1035_p19;
reg   [63:0] tmp_3_reg_1435;
wire   [63:0] bitcast_ln14_25_fu_1074_p1;
wire   [63:0] tmp_7_fu_1110_p19;
reg   [63:0] tmp_7_reg_1445;
wire   [63:0] bitcast_ln14_26_fu_1149_p1;
wire   [63:0] bitcast_ln14_27_fu_1153_p1;
wire   [63:0] zext_ln9_1_fu_1157_p1;
reg   [63:0] zext_ln9_1_reg_1460;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_680_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_710_p1;
wire   [63:0] zext_ln14_1_fu_746_p1;
wire   [63:0] zext_ln14_2_fu_929_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_977_p1;
reg   [6:0] s_fu_124;
wire   [6:0] add_ln13_fu_989_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    init_4_ce0_local;
reg    emission_0_ce1_local;
reg   [8:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [8:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [8:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [8:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [8:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [8:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [8:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [8:0] emission_3_address0_local;
reg    emission_4_ce1_local;
reg   [8:0] emission_4_address1_local;
reg    emission_4_ce0_local;
reg   [8:0] emission_4_address0_local;
reg    emission_5_ce1_local;
reg   [8:0] emission_5_address1_local;
reg    emission_5_ce0_local;
reg   [8:0] emission_5_address0_local;
reg    emission_6_ce1_local;
reg   [8:0] emission_6_address1_local;
reg    emission_6_ce0_local;
reg   [8:0] emission_6_address0_local;
reg    emission_7_ce1_local;
reg   [8:0] emission_7_address1_local;
reg    emission_7_ce0_local;
reg   [8:0] emission_7_address0_local;
reg    init_1_ce0_local;
reg    init_5_ce0_local;
reg    init_2_ce0_local;
reg    init_6_ce0_local;
reg    init_3_ce0_local;
reg    init_7_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [63:0] grp_fu_630_p0;
reg   [63:0] grp_fu_630_p1;
reg   [63:0] grp_fu_634_p0;
reg   [63:0] grp_fu_634_p1;
wire   [2:0] lshr_ln9_fu_670_p4;
wire   [8:0] or_ln_fu_702_p3;
wire   [4:0] tmp_s_fu_722_p4;
wire   [8:0] or_ln14_1_fu_732_p3;
wire   [8:0] add_ln14_fu_740_p2;
wire   [2:0] trunc_ln13_fu_758_p1;
wire   [0:0] icmp_ln14_fu_761_p2;
wire   [63:0] tmp_1_fu_807_p2;
wire   [63:0] tmp_1_fu_807_p4;
wire   [63:0] tmp_1_fu_807_p6;
wire   [63:0] tmp_1_fu_807_p8;
wire   [63:0] tmp_1_fu_807_p10;
wire   [63:0] tmp_1_fu_807_p12;
wire   [63:0] tmp_1_fu_807_p14;
wire   [63:0] tmp_1_fu_807_p16;
wire   [63:0] tmp_1_fu_807_p17;
wire   [63:0] tmp_2_fu_878_p2;
wire   [63:0] tmp_2_fu_878_p4;
wire   [63:0] tmp_2_fu_878_p6;
wire   [63:0] tmp_2_fu_878_p8;
wire   [63:0] tmp_2_fu_878_p10;
wire   [63:0] tmp_2_fu_878_p12;
wire   [63:0] tmp_2_fu_878_p14;
wire   [63:0] tmp_2_fu_878_p16;
wire   [63:0] tmp_2_fu_878_p17;
wire   [8:0] or_ln14_2_fu_917_p3;
wire   [8:0] add_ln14_1_fu_924_p2;
wire   [8:0] or_ln14_3_fu_965_p3;
wire   [8:0] add_ln14_2_fu_972_p2;
wire   [63:0] tmp_3_fu_1035_p2;
wire   [63:0] tmp_3_fu_1035_p4;
wire   [63:0] tmp_3_fu_1035_p6;
wire   [63:0] tmp_3_fu_1035_p8;
wire   [63:0] tmp_3_fu_1035_p10;
wire   [63:0] tmp_3_fu_1035_p12;
wire   [63:0] tmp_3_fu_1035_p14;
wire   [63:0] tmp_3_fu_1035_p16;
wire   [63:0] tmp_3_fu_1035_p17;
wire   [63:0] tmp_7_fu_1110_p2;
wire   [63:0] tmp_7_fu_1110_p4;
wire   [63:0] tmp_7_fu_1110_p6;
wire   [63:0] tmp_7_fu_1110_p8;
wire   [63:0] tmp_7_fu_1110_p10;
wire   [63:0] tmp_7_fu_1110_p12;
wire   [63:0] tmp_7_fu_1110_p14;
wire   [63:0] tmp_7_fu_1110_p16;
wire   [63:0] tmp_7_fu_1110_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [2:0] tmp_1_fu_807_p1;
wire   [2:0] tmp_1_fu_807_p3;
wire   [2:0] tmp_1_fu_807_p5;
wire   [2:0] tmp_1_fu_807_p7;
wire  signed [2:0] tmp_1_fu_807_p9;
wire  signed [2:0] tmp_1_fu_807_p11;
wire  signed [2:0] tmp_1_fu_807_p13;
wire  signed [2:0] tmp_1_fu_807_p15;
wire   [2:0] tmp_2_fu_878_p1;
wire   [2:0] tmp_2_fu_878_p3;
wire   [2:0] tmp_2_fu_878_p5;
wire   [2:0] tmp_2_fu_878_p7;
wire  signed [2:0] tmp_2_fu_878_p9;
wire  signed [2:0] tmp_2_fu_878_p11;
wire  signed [2:0] tmp_2_fu_878_p13;
wire  signed [2:0] tmp_2_fu_878_p15;
wire   [2:0] tmp_3_fu_1035_p1;
wire   [2:0] tmp_3_fu_1035_p3;
wire   [2:0] tmp_3_fu_1035_p5;
wire   [2:0] tmp_3_fu_1035_p7;
wire  signed [2:0] tmp_3_fu_1035_p9;
wire  signed [2:0] tmp_3_fu_1035_p11;
wire  signed [2:0] tmp_3_fu_1035_p13;
wire  signed [2:0] tmp_3_fu_1035_p15;
wire   [2:0] tmp_7_fu_1110_p1;
wire   [2:0] tmp_7_fu_1110_p3;
wire   [2:0] tmp_7_fu_1110_p5;
wire   [2:0] tmp_7_fu_1110_p7;
wire  signed [2:0] tmp_7_fu_1110_p9;
wire  signed [2:0] tmp_7_fu_1110_p11;
wire  signed [2:0] tmp_7_fu_1110_p13;
wire  signed [2:0] tmp_7_fu_1110_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_124 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_634_p0),.din1(grp_fu_634_p1),.ce(1'b1),.dout(grp_fu_634_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_1_fu_807_p2),.din1(tmp_1_fu_807_p4),.din2(tmp_1_fu_807_p6),.din3(tmp_1_fu_807_p8),.din4(tmp_1_fu_807_p10),.din5(tmp_1_fu_807_p12),.din6(tmp_1_fu_807_p14),.din7(tmp_1_fu_807_p16),.def(tmp_1_fu_807_p17),.sel(empty),.dout(tmp_1_fu_807_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_2_fu_878_p2),.din1(tmp_2_fu_878_p4),.din2(tmp_2_fu_878_p6),.din3(tmp_2_fu_878_p8),.din4(tmp_2_fu_878_p10),.din5(tmp_2_fu_878_p12),.din6(tmp_2_fu_878_p14),.din7(tmp_2_fu_878_p16),.def(tmp_2_fu_878_p17),.sel(empty),.dout(tmp_2_fu_878_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_3_fu_1035_p2),.din1(tmp_3_fu_1035_p4),.din2(tmp_3_fu_1035_p6),.din3(tmp_3_fu_1035_p8),.din4(tmp_3_fu_1035_p10),.din5(tmp_3_fu_1035_p12),.din6(tmp_3_fu_1035_p14),.din7(tmp_3_fu_1035_p16),.def(tmp_3_fu_1035_p17),.sel(empty),.dout(tmp_3_fu_1035_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_7_fu_1110_p2),.din1(tmp_7_fu_1110_p4),.din2(tmp_7_fu_1110_p6),.din3(tmp_7_fu_1110_p8),.din4(tmp_7_fu_1110_p10),.din5(tmp_7_fu_1110_p12),.din6(tmp_7_fu_1110_p14),.din7(tmp_7_fu_1110_p16),.def(tmp_7_fu_1110_p17),.sel(empty),.dout(tmp_7_fu_1110_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_124 <= 7'd0;
    end else if (((tmp_38_reg_1189 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_124 <= add_ln13_fu_989_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        select_ln14_1_reg_1375 <= select_ln14_1_fu_941_p3;
        select_ln14_2_reg_1380 <= select_ln14_2_fu_949_p3;
        select_ln14_3_reg_1385 <= select_ln14_3_fu_957_p3;
        select_ln14_reg_1320 <= select_ln14_fu_767_p3;
        tmp_1_reg_1325 <= tmp_1_fu_807_p19;
        tmp_2_reg_1330 <= tmp_2_fu_878_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1177[4 : 0] <= conv3_udiv_cast_cast_fu_650_p1[4 : 0];
        lshr_ln9_1_reg_1193 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_1_reg_1193_pp0_iter1_reg <= lshr_ln9_1_reg_1193;
        lshr_ln9_1_reg_1193_pp0_iter2_reg <= lshr_ln9_1_reg_1193_pp0_iter1_reg;
        lshr_ln9_1_reg_1193_pp0_iter3_reg <= lshr_ln9_1_reg_1193_pp0_iter2_reg;
        lshr_ln9_1_reg_1193_pp0_iter4_reg <= lshr_ln9_1_reg_1193_pp0_iter3_reg;
        s_1_reg_1183 <= ap_sig_allocacmp_s_1;
        tmp_38_reg_1189 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_3_reg_1435 <= tmp_3_fu_1035_p19;
        tmp_7_reg_1445 <= tmp_7_fu_1110_p19;
        zext_ln9_1_reg_1460[3 : 0] <= zext_ln9_1_fu_1157_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_638 <= grp_fu_992_p_dout0;
        reg_644 <= grp_fu_634_p2;
    end
end
always @ (*) begin
    if (((tmp_38_reg_1189 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_977_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_746_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_710_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_630_p0 = bitcast_ln14_26_fu_1149_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_630_p0 = bitcast_ln14_fu_999_p1;
        end else begin
            grp_fu_630_p0 = 'bx;
        end
    end else begin
        grp_fu_630_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_630_p1 = tmp_3_reg_1435;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_630_p1 = tmp_1_reg_1325;
        end else begin
            grp_fu_630_p1 = 'bx;
        end
    end else begin
        grp_fu_630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_634_p0 = bitcast_ln14_27_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_634_p0 = bitcast_ln14_25_fu_1074_p1;
        end else begin
            grp_fu_634_p0 = 'bx;
        end
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_634_p1 = tmp_7_reg_1445;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_634_p1 = tmp_2_reg_1330;
        end else begin
            grp_fu_634_p1 = 'bx;
        end
    end else begin
        grp_fu_634_p1 = 'bx;
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
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
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
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_989_p2 = (s_1_reg_1183 + 7'd4);
assign add_ln14_1_fu_924_p2 = (or_ln14_2_fu_917_p3 + conv3_udiv_cast_cast_reg_1177);
assign add_ln14_2_fu_972_p2 = (or_ln14_3_fu_965_p3 + conv3_udiv_cast_cast_reg_1177);
assign add_ln14_fu_740_p2 = (or_ln14_1_fu_732_p3 + conv3_udiv_cast_cast_fu_650_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_25_fu_1074_p1 = select_ln14_1_reg_1375;
assign bitcast_ln14_26_fu_1149_p1 = select_ln14_2_reg_1380;
assign bitcast_ln14_27_fu_1153_p1 = select_ln14_3_reg_1385;
assign bitcast_ln14_fu_999_p1 = select_ln14_reg_1320;
assign conv3_udiv_cast_cast_fu_650_p1 = conv3_udiv_cast;
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
assign emission_4_address0 = emission_4_address0_local;
assign emission_4_address1 = emission_4_address1_local;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = emission_5_address0_local;
assign emission_5_address1 = emission_5_address1_local;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = emission_6_address0_local;
assign emission_6_address1 = emission_6_address1_local;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = emission_7_address0_local;
assign emission_7_address1 = emission_7_address1_local;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_992_p_ce = 1'b1;
assign grp_fu_992_p_din0 = grp_fu_630_p0;
assign grp_fu_992_p_din1 = grp_fu_630_p1;
assign grp_fu_992_p_opcode = 2'd0;
assign icmp_ln14_fu_761_p2 = ((trunc_ln13_fu_758_p1 != 3'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_680_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_680_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_680_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_680_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_680_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_680_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_680_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_680_p1;
assign init_7_ce0 = init_7_ce0_local;
assign llike_1_address0 = zext_ln9_1_fu_1157_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_644;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_1460;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_638;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_1460;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_644;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = zext_ln9_1_fu_1157_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_638;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_692_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign lshr_ln9_fu_670_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_1_fu_732_p3 = {{tmp_s_fu_722_p4}, {4'd8}};
assign or_ln14_2_fu_917_p3 = {{lshr_ln9_1_reg_1193}, {5'd16}};
assign or_ln14_3_fu_965_p3 = {{lshr_ln9_1_reg_1193}, {5'd24}};
assign or_ln_fu_702_p3 = {{lshr_ln9_1_fu_692_p4}, {conv3_udiv}};
assign select_ln14_1_fu_941_p3 = ((icmp_ln14_fu_761_p2[0:0] == 1'b1) ? init_5_q0 : init_1_q0);
assign select_ln14_2_fu_949_p3 = ((icmp_ln14_fu_761_p2[0:0] == 1'b1) ? init_6_q0 : init_2_q0);
assign select_ln14_3_fu_957_p3 = ((icmp_ln14_fu_761_p2[0:0] == 1'b1) ? init_7_q0 : init_3_q0);
assign select_ln14_fu_767_p3 = ((icmp_ln14_fu_761_p2[0:0] == 1'b1) ? init_4_q0 : init_0_q0);
assign tmp_1_fu_807_p10 = emission_4_q1;
assign tmp_1_fu_807_p12 = emission_5_q1;
assign tmp_1_fu_807_p14 = emission_6_q1;
assign tmp_1_fu_807_p16 = emission_7_q1;
assign tmp_1_fu_807_p17 = 'bx;
assign tmp_1_fu_807_p2 = emission_0_q1;
assign tmp_1_fu_807_p4 = emission_1_q1;
assign tmp_1_fu_807_p6 = emission_2_q1;
assign tmp_1_fu_807_p8 = emission_3_q1;
assign tmp_2_fu_878_p10 = emission_4_q0;
assign tmp_2_fu_878_p12 = emission_5_q0;
assign tmp_2_fu_878_p14 = emission_6_q0;
assign tmp_2_fu_878_p16 = emission_7_q0;
assign tmp_2_fu_878_p17 = 'bx;
assign tmp_2_fu_878_p2 = emission_0_q0;
assign tmp_2_fu_878_p4 = emission_1_q0;
assign tmp_2_fu_878_p6 = emission_2_q0;
assign tmp_2_fu_878_p8 = emission_3_q0;
assign tmp_3_fu_1035_p10 = emission_4_q1;
assign tmp_3_fu_1035_p12 = emission_5_q1;
assign tmp_3_fu_1035_p14 = emission_6_q1;
assign tmp_3_fu_1035_p16 = emission_7_q1;
assign tmp_3_fu_1035_p17 = 'bx;
assign tmp_3_fu_1035_p2 = emission_0_q1;
assign tmp_3_fu_1035_p4 = emission_1_q1;
assign tmp_3_fu_1035_p6 = emission_2_q1;
assign tmp_3_fu_1035_p8 = emission_3_q1;
assign tmp_7_fu_1110_p10 = emission_4_q0;
assign tmp_7_fu_1110_p12 = emission_5_q0;
assign tmp_7_fu_1110_p14 = emission_6_q0;
assign tmp_7_fu_1110_p16 = emission_7_q0;
assign tmp_7_fu_1110_p17 = 'bx;
assign tmp_7_fu_1110_p2 = emission_0_q0;
assign tmp_7_fu_1110_p4 = emission_1_q0;
assign tmp_7_fu_1110_p6 = emission_2_q0;
assign tmp_7_fu_1110_p8 = emission_3_q0;
assign tmp_s_fu_722_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_758_p1 = s_1_reg_1183[2:0];
assign zext_ln14_1_fu_746_p1 = add_ln14_fu_740_p2;
assign zext_ln14_2_fu_929_p1 = add_ln14_1_fu_924_p2;
assign zext_ln14_3_fu_977_p1 = add_ln14_2_fu_972_p2;
assign zext_ln14_fu_710_p1 = or_ln_fu_702_p3;
assign zext_ln9_1_fu_1157_p1 = lshr_ln9_1_reg_1193_pp0_iter4_reg;
assign zext_ln9_fu_680_p1 = lshr_ln9_fu_670_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1177[8:5] <= 4'b0000;
    zext_ln9_1_reg_1460[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 