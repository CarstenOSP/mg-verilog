
module backprop_backprop_Pipeline_activations1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,i_25,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,add113_i_out,add113_i_out_ap_vld,grp_fu_5581_p_din0,grp_fu_5581_p_din1,grp_fu_5581_p_opcode,grp_fu_5581_p_dout0,grp_fu_5581_p_ce,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [1:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [1:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [1:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [1:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [1:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [1:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [1:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
input  [5:0] i_25;
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [1:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [1:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [1:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [1:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [1:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [1:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [1:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [1:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [63:0] add113_i_out;
output   add113_i_out_ap_vld;
output  [63:0] grp_fu_5581_p_din0;
output  [63:0] grp_fu_5581_p_din1;
output  [0:0] grp_fu_5581_p_opcode;
input  [63:0] grp_fu_5581_p_dout0;
output   grp_fu_5581_p_ce;
output  [63:0] grp_fu_3932_p_din0;
output  [63:0] grp_fu_3932_p_din1;
input  [63:0] grp_fu_3932_p_dout0;
output   grp_fu_3932_p_ce;
reg ap_idle;
reg add113_i_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_921;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_592_p3;
wire   [3:0] trunc_ln104_fu_600_p1;
reg   [3:0] trunc_ln104_reg_925;
wire   [63:0] tmp_s_fu_673_p19;
reg   [63:0] tmp_s_reg_1093;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_81_fu_744_p19;
reg   [63:0] tmp_81_reg_1098;
wire   [63:0] tmp_82_fu_783_p19;
reg   [63:0] tmp_82_reg_1103;
wire   [63:0] tmp_83_fu_854_p19;
reg   [63:0] tmp_83_reg_1108;
reg   [63:0] mul8_i3_reg_1113;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i3_reg_1123;
reg   [63:0] add11_i3_reg_1128;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln101_fu_614_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln105_fu_642_p1;
reg   [63:0] add113_i_fu_134;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] j_fu_138;
wire   [6:0] add_ln104_fu_662_p2;
reg   [6:0] ap_sig_allocacmp_j_3;
wire    ap_block_pp0_stage8_01001;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    weights2_0_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_12_ce0_local;
reg    weights2_14_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    weights2_1_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_13_ce0_local;
reg    weights2_15_ce0_local;
reg   [63:0] grp_fu_571_p0;
reg   [63:0] grp_fu_571_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_575_p0;
reg   [63:0] grp_fu_575_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] lshr_ln_fu_604_p4;
wire   [7:0] add_ln3_fu_634_p3;
wire   [63:0] tmp_s_fu_673_p17;
wire   [63:0] tmp_81_fu_744_p2;
wire   [63:0] tmp_81_fu_744_p4;
wire   [63:0] tmp_81_fu_744_p6;
wire   [63:0] tmp_81_fu_744_p8;
wire   [63:0] tmp_81_fu_744_p10;
wire   [63:0] tmp_81_fu_744_p12;
wire   [63:0] tmp_81_fu_744_p14;
wire   [63:0] tmp_81_fu_744_p16;
wire   [63:0] tmp_81_fu_744_p17;
wire   [63:0] tmp_82_fu_783_p17;
wire   [63:0] tmp_83_fu_854_p2;
wire   [63:0] tmp_83_fu_854_p4;
wire   [63:0] tmp_83_fu_854_p6;
wire   [63:0] tmp_83_fu_854_p8;
wire   [63:0] tmp_83_fu_854_p10;
wire   [63:0] tmp_83_fu_854_p12;
wire   [63:0] tmp_83_fu_854_p14;
wire   [63:0] tmp_83_fu_854_p16;
wire   [63:0] tmp_83_fu_854_p17;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_673_p1;
wire   [3:0] tmp_s_fu_673_p3;
wire   [3:0] tmp_s_fu_673_p5;
wire   [3:0] tmp_s_fu_673_p7;
wire  signed [3:0] tmp_s_fu_673_p9;
wire  signed [3:0] tmp_s_fu_673_p11;
wire  signed [3:0] tmp_s_fu_673_p13;
wire  signed [3:0] tmp_s_fu_673_p15;
wire   [3:0] tmp_81_fu_744_p1;
wire   [3:0] tmp_81_fu_744_p3;
wire   [3:0] tmp_81_fu_744_p5;
wire   [3:0] tmp_81_fu_744_p7;
wire  signed [3:0] tmp_81_fu_744_p9;
wire  signed [3:0] tmp_81_fu_744_p11;
wire  signed [3:0] tmp_81_fu_744_p13;
wire  signed [3:0] tmp_81_fu_744_p15;
wire   [3:0] tmp_82_fu_783_p1;
wire   [3:0] tmp_82_fu_783_p3;
wire   [3:0] tmp_82_fu_783_p5;
wire   [3:0] tmp_82_fu_783_p7;
wire  signed [3:0] tmp_82_fu_783_p9;
wire  signed [3:0] tmp_82_fu_783_p11;
wire  signed [3:0] tmp_82_fu_783_p13;
wire  signed [3:0] tmp_82_fu_783_p15;
wire   [3:0] tmp_83_fu_854_p1;
wire   [3:0] tmp_83_fu_854_p3;
wire   [3:0] tmp_83_fu_854_p5;
wire   [3:0] tmp_83_fu_854_p7;
wire  signed [3:0] tmp_83_fu_854_p9;
wire  signed [3:0] tmp_83_fu_854_p11;
wire  signed [3:0] tmp_83_fu_854_p13;
wire  signed [3:0] tmp_83_fu_854_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add113_i_fu_134 = 64'd0;
#0 j_fu_138 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U731(.din0(oracle_activations2_q0),.din1(oracle_activations2_2_q0),.din2(oracle_activations2_4_q0),.din3(oracle_activations2_6_q0),.din4(oracle_activations2_8_q0),.din5(oracle_activations2_10_q0),.din6(oracle_activations2_12_q0),.din7(oracle_activations2_14_q0),.def(tmp_s_fu_673_p17),.sel(trunc_ln104_reg_925),.dout(tmp_s_fu_673_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U732(.din0(tmp_81_fu_744_p2),.din1(tmp_81_fu_744_p4),.din2(tmp_81_fu_744_p6),.din3(tmp_81_fu_744_p8),.din4(tmp_81_fu_744_p10),.din5(tmp_81_fu_744_p12),.din6(tmp_81_fu_744_p14),.din7(tmp_81_fu_744_p16),.def(tmp_81_fu_744_p17),.sel(trunc_ln104_reg_925),.dout(tmp_81_fu_744_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U733(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_3_q0),.din2(oracle_activations2_5_q0),.din3(oracle_activations2_7_q0),.din4(oracle_activations2_9_q0),.din5(oracle_activations2_11_q0),.din6(oracle_activations2_13_q0),.din7(oracle_activations2_15_q0),.def(tmp_82_fu_783_p17),.sel(trunc_ln104_reg_925),.dout(tmp_82_fu_783_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h2 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h6 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hC ),.din6_WIDTH( 64 ),.CASE7( 4'hE ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_17_4_64_1_1_x_U734(.din0(tmp_83_fu_854_p2),.din1(tmp_83_fu_854_p4),.din2(tmp_83_fu_854_p6),.din3(tmp_83_fu_854_p8),.din4(tmp_83_fu_854_p10),.din5(tmp_83_fu_854_p12),.din6(tmp_83_fu_854_p14),.din7(tmp_83_fu_854_p16),.def(tmp_83_fu_854_p17),.sel(trunc_ln104_reg_925),.dout(tmp_83_fu_854_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add113_i_fu_134 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_fu_134 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_592_p3 == 1'd0))) begin
            j_fu_138 <= add_ln104_fu_662_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_138 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i3_reg_1128 <= grp_fu_5581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i3_reg_1123 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i3_reg_1113 <= grp_fu_3932_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_81_reg_1098 <= tmp_81_fu_744_p19;
        tmp_82_reg_1103 <= tmp_82_fu_783_p19;
        tmp_83_reg_1108 <= tmp_83_fu_854_p19;
        tmp_s_reg_1093 <= tmp_s_fu_673_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_921 <= ap_sig_allocacmp_j_3[32'd6];
        trunc_ln104_reg_925 <= trunc_ln104_fu_600_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_921 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add113_i_out_ap_vld = 1'b1;
    end else begin
        add113_i_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_921 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_3 = j_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_571_p0 = add11_i3_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_571_p0 = add113_i_fu_134;
    end else begin
        grp_fu_571_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_571_p1 = mul8_1_i3_reg_1123;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_571_p1 = mul8_i3_reg_1113;
    end else begin
        grp_fu_571_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p0 = tmp_82_reg_1103;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_575_p0 = tmp_s_reg_1093;
        end else begin
            grp_fu_575_p0 = 'bx;
        end
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p1 = tmp_83_reg_1108;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_575_p1 = tmp_81_reg_1098;
        end else begin
            grp_fu_575_p1 = 'bx;
        end
    end else begin
        grp_fu_575_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add113_i_out = add113_i_fu_134;
assign add_ln104_fu_662_p2 = (ap_sig_allocacmp_j_3 + 7'd2);
assign add_ln3_fu_634_p3 = {{i_25}, {lshr_ln_fu_604_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = grp_fu_575_p0;
assign grp_fu_3932_p_din1 = grp_fu_575_p1;
assign grp_fu_5581_p_ce = 1'b1;
assign grp_fu_5581_p_din0 = grp_fu_571_p0;
assign grp_fu_5581_p_din1 = grp_fu_571_p1;
assign grp_fu_5581_p_opcode = 2'd0;
assign lshr_ln_fu_604_p4 = {{ap_sig_allocacmp_j_3[5:4]}};
assign oracle_activations2_10_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_1_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_2_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_3_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln101_fu_614_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign tmp_81_fu_744_p10 = weights2_8_q0;
assign tmp_81_fu_744_p12 = weights2_10_q0;
assign tmp_81_fu_744_p14 = weights2_12_q0;
assign tmp_81_fu_744_p16 = weights2_14_q0;
assign tmp_81_fu_744_p17 = 'bx;
assign tmp_81_fu_744_p2 = weights2_0_q0;
assign tmp_81_fu_744_p4 = weights2_2_q0;
assign tmp_81_fu_744_p6 = weights2_4_q0;
assign tmp_81_fu_744_p8 = weights2_6_q0;
assign tmp_82_fu_783_p17 = 'bx;
assign tmp_83_fu_854_p10 = weights2_9_q0;
assign tmp_83_fu_854_p12 = weights2_11_q0;
assign tmp_83_fu_854_p14 = weights2_13_q0;
assign tmp_83_fu_854_p16 = weights2_15_q0;
assign tmp_83_fu_854_p17 = 'bx;
assign tmp_83_fu_854_p2 = weights2_1_q0;
assign tmp_83_fu_854_p4 = weights2_3_q0;
assign tmp_83_fu_854_p6 = weights2_5_q0;
assign tmp_83_fu_854_p8 = weights2_7_q0;
assign tmp_fu_592_p3 = ap_sig_allocacmp_j_3[32'd6];
assign tmp_s_fu_673_p17 = 'bx;
assign trunc_ln104_fu_600_p1 = ap_sig_allocacmp_j_3[3:0];
assign weights2_0_address0 = zext_ln105_fu_642_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln105_fu_642_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln105_fu_642_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln105_fu_642_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln105_fu_642_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln105_fu_642_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln105_fu_642_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_1_address0 = zext_ln105_fu_642_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_2_address0 = zext_ln105_fu_642_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_3_address0 = zext_ln105_fu_642_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_4_address0 = zext_ln105_fu_642_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_5_address0 = zext_ln105_fu_642_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_6_address0 = zext_ln105_fu_642_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln105_fu_642_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln105_fu_642_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln105_fu_642_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln101_fu_614_p1 = lshr_ln_fu_604_p4;
assign zext_ln105_fu_642_p1 = add_ln3_fu_634_p3;
endmodule 
