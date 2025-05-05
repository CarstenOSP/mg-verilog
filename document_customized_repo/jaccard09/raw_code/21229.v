module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,grp_fu_902_p_din0,grp_fu_902_p_din1,grp_fu_902_p_opcode,grp_fu_902_p_dout0,grp_fu_902_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
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
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [63:0] grp_fu_902_p_din0;
output  [63:0] grp_fu_902_p_din1;
output  [1:0] grp_fu_902_p_opcode;
input  [63:0] grp_fu_902_p_dout0;
output   grp_fu_902_p_ce;
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
reg   [0:0] tmp_147_reg_967;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_584;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_580_p2;
reg   [63:0] reg_596;
wire   [9:0] conv3_udiv_cast_cast_fu_608_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_955;
reg   [6:0] s_1_reg_961;
wire   [3:0] trunc_ln13_fu_628_p1;
reg   [3:0] trunc_ln13_reg_971;
reg   [3:0] trunc_ln13_reg_971_pp0_iter1_reg;
reg   [3:0] trunc_ln13_reg_971_pp0_iter2_reg;
reg   [3:0] trunc_ln13_reg_971_pp0_iter3_reg;
reg   [3:0] trunc_ln13_reg_971_pp0_iter4_reg;
reg   [3:0] trunc_ln13_reg_971_pp0_iter5_reg;
wire   [3:0] lshr_ln9_fu_632_p4;
reg   [3:0] lshr_ln9_reg_975;
reg   [1:0] lshr_ln9_1_reg_1041;
reg   [1:0] lshr_ln9_1_reg_1041_pp0_iter1_reg;
reg   [1:0] lshr_ln9_1_reg_1041_pp0_iter2_reg;
reg   [1:0] lshr_ln9_1_reg_1041_pp0_iter3_reg;
reg   [1:0] lshr_ln9_1_reg_1041_pp0_iter4_reg;
reg   [63:0] init_0_load_reg_1046;
wire   [63:0] tmp_fu_723_p11;
reg   [63:0] tmp_reg_1051;
wire   [63:0] tmp_1_fu_762_p11;
reg   [63:0] tmp_1_reg_1056;
reg   [63:0] init_1_load_reg_1081;
reg   [63:0] init_2_load_reg_1086;
reg   [63:0] init_3_load_reg_1091;
wire   [63:0] bitcast_ln14_fu_835_p1;
wire   [63:0] tmp_2_fu_855_p11;
reg   [63:0] tmp_2_reg_1121;
wire   [63:0] bitcast_ln14_13_fu_878_p1;
wire   [63:0] tmp_3_fu_898_p11;
reg   [63:0] tmp_3_reg_1131;
wire   [63:0] bitcast_ln14_14_fu_921_p1;
wire   [63:0] bitcast_ln14_15_fu_925_p1;
wire   [63:0] zext_ln9_1_fu_929_p1;
reg   [63:0] zext_ln9_1_reg_1146;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_642_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_658_p1;
wire   [63:0] zext_ln14_1_fu_690_p1;
wire   [63:0] zext_ln14_2_fu_797_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_817_p1;
reg   [6:0] s_fu_130;
wire   [6:0] add_ln13_fu_825_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
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
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg   [63:0] grp_fu_576_p0;
reg   [63:0] grp_fu_576_p1;
reg   [63:0] grp_fu_580_p0;
reg   [63:0] grp_fu_580_p1;
wire   [9:0] or_ln_fu_650_p3;
wire   [4:0] tmp_153_fu_666_p4;
wire   [9:0] or_ln14_1_fu_676_p3;
wire   [9:0] add_ln14_fu_684_p2;
wire   [63:0] tmp_fu_723_p2;
wire   [63:0] tmp_fu_723_p4;
wire   [63:0] tmp_fu_723_p6;
wire   [63:0] tmp_fu_723_p8;
wire   [63:0] tmp_fu_723_p9;
wire   [63:0] tmp_1_fu_762_p2;
wire   [63:0] tmp_1_fu_762_p4;
wire   [63:0] tmp_1_fu_762_p6;
wire   [63:0] tmp_1_fu_762_p8;
wire   [63:0] tmp_1_fu_762_p9;
wire   [9:0] or_ln14_2_fu_785_p3;
wire   [9:0] add_ln14_1_fu_792_p2;
wire   [9:0] or_ln14_3_fu_805_p3;
wire   [9:0] add_ln14_2_fu_812_p2;
wire   [63:0] tmp_2_fu_855_p2;
wire   [63:0] tmp_2_fu_855_p4;
wire   [63:0] tmp_2_fu_855_p6;
wire   [63:0] tmp_2_fu_855_p8;
wire   [63:0] tmp_2_fu_855_p9;
wire   [63:0] tmp_3_fu_898_p2;
wire   [63:0] tmp_3_fu_898_p4;
wire   [63:0] tmp_3_fu_898_p6;
wire   [63:0] tmp_3_fu_898_p8;
wire   [63:0] tmp_3_fu_898_p9;
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
wire   [1:0] tmp_fu_723_p1;
wire   [1:0] tmp_fu_723_p3;
wire  signed [1:0] tmp_fu_723_p5;
wire  signed [1:0] tmp_fu_723_p7;
wire   [1:0] tmp_1_fu_762_p1;
wire   [1:0] tmp_1_fu_762_p3;
wire  signed [1:0] tmp_1_fu_762_p5;
wire  signed [1:0] tmp_1_fu_762_p7;
wire   [1:0] tmp_2_fu_855_p1;
wire   [1:0] tmp_2_fu_855_p3;
wire  signed [1:0] tmp_2_fu_855_p5;
wire  signed [1:0] tmp_2_fu_855_p7;
wire   [1:0] tmp_3_fu_898_p1;
wire   [1:0] tmp_3_fu_898_p3;
wire  signed [1:0] tmp_3_fu_898_p5;
wire  signed [1:0] tmp_3_fu_898_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_580_p0),.din1(grp_fu_580_p1),.ce(1'b1),.dout(grp_fu_580_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_723_p2),.din1(tmp_fu_723_p4),.din2(tmp_fu_723_p6),.din3(tmp_fu_723_p8),.def(tmp_fu_723_p9),.sel(empty),.dout(tmp_fu_723_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_762_p2),.din1(tmp_1_fu_762_p4),.din2(tmp_1_fu_762_p6),.din3(tmp_1_fu_762_p8),.def(tmp_1_fu_762_p9),.sel(empty),.dout(tmp_1_fu_762_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_855_p2),.din1(tmp_2_fu_855_p4),.din2(tmp_2_fu_855_p6),.din3(tmp_2_fu_855_p8),.def(tmp_2_fu_855_p9),.sel(empty),.dout(tmp_2_fu_855_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_898_p2),.din1(tmp_3_fu_898_p4),.din2(tmp_3_fu_898_p6),.din3(tmp_3_fu_898_p8),.def(tmp_3_fu_898_p9),.sel(empty),.dout(tmp_3_fu_898_p11));
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
        s_fu_130 <= 7'd0;
    end else if (((tmp_147_reg_967 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_130 <= add_ln13_fu_825_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        init_0_load_reg_1046 <= init_0_q0;
        init_1_load_reg_1081 <= init_1_q0;
        init_2_load_reg_1086 <= init_2_q0;
        init_3_load_reg_1091 <= init_3_q0;
        lshr_ln9_1_reg_1041 <= {{s_1_reg_961[5:4]}};
        lshr_ln9_1_reg_1041_pp0_iter1_reg <= lshr_ln9_1_reg_1041;
        lshr_ln9_1_reg_1041_pp0_iter2_reg <= lshr_ln9_1_reg_1041_pp0_iter1_reg;
        lshr_ln9_1_reg_1041_pp0_iter3_reg <= lshr_ln9_1_reg_1041_pp0_iter2_reg;
        lshr_ln9_1_reg_1041_pp0_iter4_reg <= lshr_ln9_1_reg_1041_pp0_iter3_reg;
        tmp_1_reg_1056 <= tmp_1_fu_762_p11;
        tmp_reg_1051 <= tmp_fu_723_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_955[5 : 0] <= conv3_udiv_cast_cast_fu_608_p1[5 : 0];
        lshr_ln9_reg_975 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_961 <= ap_sig_allocacmp_s_1;
        tmp_147_reg_967 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_2_reg_1121 <= tmp_2_fu_855_p11;
        tmp_3_reg_1131 <= tmp_3_fu_898_p11;
        trunc_ln13_reg_971 <= trunc_ln13_fu_628_p1;
        trunc_ln13_reg_971_pp0_iter1_reg <= trunc_ln13_reg_971;
        trunc_ln13_reg_971_pp0_iter2_reg <= trunc_ln13_reg_971_pp0_iter1_reg;
        trunc_ln13_reg_971_pp0_iter3_reg <= trunc_ln13_reg_971_pp0_iter2_reg;
        trunc_ln13_reg_971_pp0_iter4_reg <= trunc_ln13_reg_971_pp0_iter3_reg;
        trunc_ln13_reg_971_pp0_iter5_reg <= trunc_ln13_reg_971_pp0_iter4_reg;
        zext_ln9_1_reg_1146[1 : 0] <= zext_ln9_1_fu_929_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_584 <= grp_fu_902_p_dout0;
        reg_596 <= grp_fu_580_p2;
    end
end
always @ (*) begin
    if (((tmp_147_reg_967 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_130;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_690_p1;
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
            emission_0_address1_local = zext_ln14_2_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_658_p1;
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
            emission_1_address0_local = zext_ln14_3_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_690_p1;
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
            emission_1_address1_local = zext_ln14_2_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_658_p1;
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
            emission_2_address0_local = zext_ln14_3_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_690_p1;
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
            emission_2_address1_local = zext_ln14_2_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_658_p1;
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
            emission_3_address0_local = zext_ln14_3_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_690_p1;
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
            emission_3_address1_local = zext_ln14_2_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_658_p1;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_576_p0 = bitcast_ln14_14_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_576_p0 = bitcast_ln14_fu_835_p1;
        end else begin
            grp_fu_576_p0 = 'bx;
        end
    end else begin
        grp_fu_576_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_576_p1 = tmp_2_reg_1121;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_576_p1 = tmp_reg_1051;
        end else begin
            grp_fu_576_p1 = 'bx;
        end
    end else begin
        grp_fu_576_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_580_p0 = bitcast_ln14_15_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_580_p0 = bitcast_ln14_13_fu_878_p1;
        end else begin
            grp_fu_580_p0 = 'bx;
        end
    end else begin
        grp_fu_580_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_580_p1 = tmp_3_reg_1131;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_580_p1 = tmp_1_reg_1056;
        end else begin
            grp_fu_580_p1 = 'bx;
        end
    end else begin
        grp_fu_580_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd0) & ~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd4) & ~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd0) & ~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd4) & ~(trunc_ln13_reg_971_pp0_iter4_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd0) & ~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd4) & ~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd8) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd0) & ~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd4) & ~(trunc_ln13_reg_971_pp0_iter5_reg == 4'd8) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter5_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln13_reg_971_pp0_iter4_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln13_fu_825_p2 = (s_1_reg_961 + 7'd4);
assign add_ln14_1_fu_792_p2 = (or_ln14_2_fu_785_p3 + conv3_udiv_cast_cast_reg_955);
assign add_ln14_2_fu_812_p2 = (or_ln14_3_fu_805_p3 + conv3_udiv_cast_cast_reg_955);
assign add_ln14_fu_684_p2 = (or_ln14_1_fu_676_p3 + conv3_udiv_cast_cast_fu_608_p1);
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
assign bitcast_ln14_13_fu_878_p1 = init_1_load_reg_1081;
assign bitcast_ln14_14_fu_921_p1 = init_2_load_reg_1086;
assign bitcast_ln14_15_fu_925_p1 = init_3_load_reg_1091;
assign bitcast_ln14_fu_835_p1 = init_0_load_reg_1046;
assign conv3_udiv_cast_cast_fu_608_p1 = conv3_udiv_cast;
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
assign grp_fu_902_p_ce = 1'b1;
assign grp_fu_902_p_din0 = grp_fu_576_p0;
assign grp_fu_902_p_din1 = grp_fu_576_p1;
assign grp_fu_902_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_642_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_642_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_642_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_642_p1;
assign init_3_ce0 = init_3_ce0_local;
assign llike_10_address0 = zext_ln9_1_reg_1146;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_584;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_reg_1146;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_596;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_fu_929_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_584;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_fu_929_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_596;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_1_reg_1146;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_584;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_1_reg_1146;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_596;
assign llike_15_we0 = llike_15_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_929_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_596;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_1146;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_584;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_1146;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_596;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_fu_929_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_584;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_fu_929_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_596;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_reg_1146;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_584;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_reg_1146;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_596;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_fu_929_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_584;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_fu_929_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_596;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_929_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_584;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_632_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_1_fu_676_p3 = {{tmp_153_fu_666_p4}, {5'd16}};
assign or_ln14_2_fu_785_p3 = {{lshr_ln9_reg_975}, {6'd32}};
assign or_ln14_3_fu_805_p3 = {{lshr_ln9_reg_975}, {6'd48}};
assign or_ln_fu_650_p3 = {{lshr_ln9_fu_632_p4}, {conv3_udiv}};
assign tmp_153_fu_666_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_1_fu_762_p2 = emission_0_q0;
assign tmp_1_fu_762_p4 = emission_1_q0;
assign tmp_1_fu_762_p6 = emission_2_q0;
assign tmp_1_fu_762_p8 = emission_3_q0;
assign tmp_1_fu_762_p9 = 'bx;
assign tmp_2_fu_855_p2 = emission_0_q1;
assign tmp_2_fu_855_p4 = emission_1_q1;
assign tmp_2_fu_855_p6 = emission_2_q1;
assign tmp_2_fu_855_p8 = emission_3_q1;
assign tmp_2_fu_855_p9 = 'bx;
assign tmp_3_fu_898_p2 = emission_0_q0;
assign tmp_3_fu_898_p4 = emission_1_q0;
assign tmp_3_fu_898_p6 = emission_2_q0;
assign tmp_3_fu_898_p8 = emission_3_q0;
assign tmp_3_fu_898_p9 = 'bx;
assign tmp_fu_723_p2 = emission_0_q1;
assign tmp_fu_723_p4 = emission_1_q1;
assign tmp_fu_723_p6 = emission_2_q1;
assign tmp_fu_723_p8 = emission_3_q1;
assign tmp_fu_723_p9 = 'bx;
assign trunc_ln13_fu_628_p1 = ap_sig_allocacmp_s_1[3:0];
assign zext_ln14_1_fu_690_p1 = add_ln14_fu_684_p2;
assign zext_ln14_2_fu_797_p1 = add_ln14_1_fu_792_p2;
assign zext_ln14_3_fu_817_p1 = add_ln14_2_fu_812_p2;
assign zext_ln14_fu_658_p1 = or_ln_fu_650_p3;
assign zext_ln9_1_fu_929_p1 = lshr_ln9_1_reg_1041_pp0_iter4_reg;
assign zext_ln9_fu_642_p1 = lshr_ln9_fu_632_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_955[9:6] <= 4'b0000;
    zext_ln9_1_reg_1146[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
end
endmodule 