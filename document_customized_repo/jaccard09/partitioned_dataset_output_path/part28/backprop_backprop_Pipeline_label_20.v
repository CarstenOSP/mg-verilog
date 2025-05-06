
module backprop_backprop_Pipeline_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_0_address1,v7_0_ce1,v7_0_q1,v7_1_address0,v7_1_ce0,v7_1_q0,v7_1_address1,v7_1_ce1,v7_1_q1,v7_2_address0,v7_2_ce0,v7_2_q0,v7_2_address1,v7_2_ce1,v7_2_q1,v7_3_address0,v7_3_ce0,v7_3_q0,v7_3_address1,v7_3_ce1,v7_3_q1,v75_4,v75,mul_ln192,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,v14_10_reload,v75_3,v122_out,v122_out_ap_vld,grp_fu_13760_p_din0,grp_fu_13760_p_din1,grp_fu_13760_p_opcode,grp_fu_13760_p_dout0,grp_fu_13760_p_ce,grp_fu_13778_p_din0,grp_fu_13778_p_din1,grp_fu_13778_p_dout0,grp_fu_13778_p_ce);  
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
input  [63:0] v14_5_reload;
input  [63:0] v14_3_reload;
input  [8:0] mul_ln168;
output  [6:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [6:0] v7_0_address1;
output   v7_0_ce1;
input  [63:0] v7_0_q1;
output  [6:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [6:0] v7_1_address1;
output   v7_1_ce1;
input  [63:0] v7_1_q1;
output  [6:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [6:0] v7_2_address1;
output   v7_2_ce1;
input  [63:0] v7_2_q1;
output  [6:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [6:0] v7_3_address1;
output   v7_3_ce1;
input  [63:0] v7_3_q1;
input  [63:0] v75_4;
input  [63:0] v75;
input  [7:0] mul_ln192;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [7:0] v2_address1;
output   v2_ce1;
input  [63:0] v2_q1;
input  [63:0] v14_10_reload;
input  [63:0] v75_3;
output  [63:0] v122_out;
output   v122_out_ap_vld;
output  [63:0] grp_fu_13760_p_din0;
output  [63:0] grp_fu_13760_p_din1;
output  [1:0] grp_fu_13760_p_opcode;
input  [63:0] grp_fu_13760_p_dout0;
output   grp_fu_13760_p_ce;
output  [63:0] grp_fu_13778_p_din0;
output  [63:0] grp_fu_13778_p_din1;
input  [63:0] grp_fu_13778_p_dout0;
output   grp_fu_13778_p_ce;
reg ap_idle;
reg v122_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln192_reg_718;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_291;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [1:0] v111_1_reg_675;
wire   [1:0] trunc_ln194_fu_324_p1;
reg   [1:0] trunc_ln194_reg_682;
wire   [1:0] or_ln3_fu_365_p3;
reg   [1:0] or_ln3_reg_713;
wire   [0:0] icmp_ln192_fu_373_p2;
reg   [0:0] icmp_ln192_reg_718_pp0_iter1_reg;
wire   [0:0] icmp_ln193_fu_407_p2;
reg   [0:0] icmp_ln193_reg_742;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v113_fu_428_p11;
reg   [63:0] v113_reg_748;
reg   [63:0] v2_load_reg_753;
wire   [63:0] v113_1_fu_467_p11;
reg   [63:0] v113_1_reg_758;
wire   [63:0] v112_fu_519_p3;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] xor_ln196_2_fu_537_p2;
reg   [0:0] xor_ln196_2_reg_768;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [62:0] trunc_ln196_fu_543_p1;
reg   [62:0] trunc_ln196_reg_773;
wire   [63:0] v116_fu_547_p3;
reg   [63:0] v116_reg_778;
wire   [63:0] v115_1_fu_558_p1;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] xor_ln196_fu_575_p2;
reg   [0:0] xor_ln196_reg_788;
wire   [62:0] trunc_ln196_1_fu_581_p1;
reg   [62:0] trunc_ln196_1_reg_793;
wire   [63:0] v115_fu_591_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] v118_fu_609_p1;
reg   [63:0] v117_1_reg_813;
reg   [63:0] v2_load_1_reg_818;
wire   [63:0] v118_1_fu_613_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] v119_1_reg_833;
reg   [63:0] v121_2_reg_838;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln194_fu_338_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_fu_352_p1;
wire   [63:0] zext_ln194_1_fu_399_p1;
wire   [63:0] zext_ln199_1_fu_604_p1;
reg   [63:0] v120_fu_94;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg   [1:0] v111_fu_98;
wire   [1:0] xor_ln8_fu_506_p3;
reg   [1:0] ap_sig_allocacmp_v111_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_01001;
reg    v7_0_ce1_local;
reg    v7_0_ce0_local;
reg    v7_1_ce1_local;
reg    v7_1_ce0_local;
reg    v7_2_ce1_local;
reg    v7_2_ce0_local;
reg    v7_3_ce1_local;
reg    v7_3_ce0_local;
reg    v2_ce1_local;
reg    v2_ce0_local;
reg   [63:0] grp_fu_282_p0;
reg   [63:0] grp_fu_282_p1;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_287_p0;
reg   [63:0] grp_fu_287_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage1;
wire   [8:0] zext_ln192_1_fu_314_p1;
wire   [8:0] add_ln194_fu_318_p2;
wire   [6:0] lshr_ln7_fu_328_p4;
wire   [7:0] zext_ln192_fu_310_p1;
wire   [7:0] add_ln199_fu_346_p2;
wire   [0:0] tmp_fu_357_p3;
wire   [8:0] zext_ln192_3_fu_379_p1;
wire   [8:0] add_ln194_1_fu_383_p2;
wire   [6:0] lshr_ln194_1_fu_389_p4;
wire   [63:0] v113_fu_428_p2;
wire   [63:0] v113_fu_428_p4;
wire   [63:0] v113_fu_428_p6;
wire   [63:0] v113_fu_428_p8;
wire   [63:0] v113_fu_428_p9;
wire   [63:0] v113_1_fu_467_p2;
wire   [63:0] v113_1_fu_467_p4;
wire   [63:0] v113_1_fu_467_p6;
wire   [63:0] v113_1_fu_467_p8;
wire   [63:0] v113_1_fu_467_p9;
wire   [0:0] bit_sel2_fu_490_p3;
wire   [0:0] xor_ln192_fu_497_p2;
wire   [0:0] trunc_ln192_fu_503_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln196_fu_525_p1;
wire   [0:0] bit_sel_fu_529_p3;
wire   [63:0] xor_ln7_fu_552_p3;
wire   [63:0] bitcast_ln196_2_fu_563_p1;
wire   [0:0] bit_sel1_fu_567_p3;
wire   [63:0] xor_ln196_1_fu_585_p3;
wire   [7:0] zext_ln192_2_fu_596_p1;
wire   [7:0] add_ln199_1_fu_599_p2;
reg   [1:0] grp_fu_282_opcode;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
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
wire   [1:0] v113_fu_428_p1;
wire   [1:0] v113_fu_428_p3;
wire  signed [1:0] v113_fu_428_p5;
wire  signed [1:0] v113_fu_428_p7;
wire  signed [1:0] v113_1_fu_467_p1;
wire   [1:0] v113_1_fu_467_p3;
wire   [1:0] v113_1_fu_467_p5;
wire  signed [1:0] v113_1_fu_467_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_94 = 64'd0;
#0 v111_fu_98 = 2'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U1146(.din0(v113_fu_428_p2),.din1(v113_fu_428_p4),.din2(v113_fu_428_p6),.din3(v113_fu_428_p8),.def(v113_fu_428_p9),.sel(trunc_ln194_reg_682),.dout(v113_fu_428_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_x_U1147(.din0(v113_1_fu_467_p2),.din1(v113_1_fu_467_p4),.din2(v113_1_fu_467_p6),.din3(v113_1_fu_467_p8),.def(v113_1_fu_467_p9),.sel(trunc_ln194_reg_682),.dout(v113_1_fu_467_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) | ((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_98 <= 2'd0;
    end else if (((icmp_ln192_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_98 <= xor_ln8_fu_506_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_94 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v120_fu_94 <= grp_fu_13760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln192_reg_718 <= icmp_ln192_fu_373_p2;
        icmp_ln192_reg_718_pp0_iter1_reg <= icmp_ln192_reg_718;
        or_ln3_reg_713[1] <= or_ln3_fu_365_p3[1];
        trunc_ln194_reg_682 <= trunc_ln194_fu_324_p1;
        v111_1_reg_675 <= ap_sig_allocacmp_v111_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln193_reg_742 <= icmp_ln193_fu_407_p2;
        v113_1_reg_758 <= v113_1_fu_467_p11;
        v113_reg_748 <= v113_fu_428_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_291 <= grp_fu_13778_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        trunc_ln196_1_reg_793 <= trunc_ln196_1_fu_581_p1;
        xor_ln196_reg_788 <= xor_ln196_fu_575_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        trunc_ln196_reg_773 <= trunc_ln196_fu_543_p1;
        v116_reg_778 <= v116_fu_547_p3;
        xor_ln196_2_reg_768 <= xor_ln196_2_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v117_1_reg_813 <= grp_fu_13778_p_dout0;
        v2_load_1_reg_818 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v119_1_reg_833 <= grp_fu_13778_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v121_2_reg_838 <= grp_fu_13760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_reg_753 <= v2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln192_reg_718 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_718_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_1 = v111_fu_98;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln192_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_282_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_282_opcode = 2'd0;
    end else begin
        grp_fu_282_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p0 = v121_2_reg_838;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_282_p0 = v120_fu_94;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_282_p0 = v14_10_reload;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_282_p0 = v112_fu_519_p3;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p1 = v119_1_reg_833;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_282_p1 = reg_291;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_282_p1 = v113_1_reg_758;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_282_p1 = v113_reg_748;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p0 = v117_1_reg_813;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_287_p0 = reg_291;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_287_p0 = v115_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_287_p0 = v115_1_fu_558_p1;
    end else begin
        grp_fu_287_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p1 = v118_1_fu_613_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_287_p1 = v118_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_287_p1 = v75_3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_287_p1 = v116_reg_778;
    end else begin
        grp_fu_287_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_718_pp0_iter1_reg == 1'd1))) begin
        v122_out_ap_vld = 1'b1;
    end else begin
        v122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_0_ce1_local = 1'b1;
    end else begin
        v7_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_1_ce1_local = 1'b1;
    end else begin
        v7_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_2_ce1_local = 1'b1;
    end else begin
        v7_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_3_ce1_local = 1'b1;
    end else begin
        v7_3_ce1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add_ln194_1_fu_383_p2 = (zext_ln192_3_fu_379_p1 + mul_ln168);
assign add_ln194_fu_318_p2 = (zext_ln192_1_fu_314_p1 + mul_ln168);
assign add_ln199_1_fu_599_p2 = (zext_ln192_2_fu_596_p1 + mul_ln192);
assign add_ln199_fu_346_p2 = (zext_ln192_fu_310_p1 + mul_ln192);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_567_p3 = bitcast_ln196_2_fu_563_p1[64'd63];
assign bit_sel2_fu_490_p3 = v111_1_reg_675[2'd1];
assign bit_sel_fu_529_p3 = bitcast_ln196_fu_525_p1[64'd63];
assign bitcast_ln196_2_fu_563_p1 = grp_fu_13760_p_dout0;
assign bitcast_ln196_fu_525_p1 = grp_fu_13760_p_dout0;
assign grp_fu_13760_p_ce = 1'b1;
assign grp_fu_13760_p_din0 = grp_fu_282_p0;
assign grp_fu_13760_p_din1 = grp_fu_282_p1;
assign grp_fu_13760_p_opcode = grp_fu_282_opcode;
assign grp_fu_13778_p_ce = 1'b1;
assign grp_fu_13778_p_din0 = grp_fu_287_p0;
assign grp_fu_13778_p_din1 = grp_fu_287_p1;
assign icmp_ln192_fu_373_p2 = ((or_ln3_fu_365_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln193_fu_407_p2 = ((v111_1_reg_675 == 2'd2) ? 1'b1 : 1'b0);
assign lshr_ln194_1_fu_389_p4 = {{add_ln194_1_fu_383_p2[8:2]}};
assign lshr_ln7_fu_328_p4 = {{add_ln194_fu_318_p2[8:2]}};
assign or_ln3_fu_365_p3 = {{tmp_fu_357_p3}, {1'd1}};
assign tmp_fu_357_p3 = ap_sig_allocacmp_v111_1[32'd1];
assign trunc_ln192_fu_503_p1 = v111_1_reg_675[0:0];
assign trunc_ln194_fu_324_p1 = add_ln194_fu_318_p2[1:0];
assign trunc_ln196_1_fu_581_p1 = bitcast_ln196_2_fu_563_p1[62:0];
assign trunc_ln196_fu_543_p1 = bitcast_ln196_fu_525_p1[62:0];
assign v112_fu_519_p3 = ((icmp_ln193_reg_742[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v113_1_fu_467_p2 = v7_0_q0;
assign v113_1_fu_467_p4 = v7_1_q0;
assign v113_1_fu_467_p6 = v7_2_q0;
assign v113_1_fu_467_p8 = v7_3_q0;
assign v113_1_fu_467_p9 = 'bx;
assign v113_fu_428_p2 = v7_0_q1;
assign v113_fu_428_p4 = v7_1_q1;
assign v113_fu_428_p6 = v7_2_q1;
assign v113_fu_428_p8 = v7_3_q1;
assign v113_fu_428_p9 = 'bx;
assign v115_1_fu_558_p1 = xor_ln7_fu_552_p3;
assign v115_fu_591_p1 = xor_ln196_1_fu_585_p3;
assign v116_fu_547_p3 = ((icmp_ln193_reg_742[0:0] == 1'b1) ? v75_4 : v75);
assign v118_1_fu_613_p1 = v2_load_1_reg_818;
assign v118_fu_609_p1 = v2_load_reg_753;
assign v122_out = grp_fu_13760_p_dout0;
assign v2_address0 = zext_ln199_1_fu_604_p1;
assign v2_address1 = zext_ln199_fu_352_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v7_0_address0 = zext_ln194_1_fu_399_p1;
assign v7_0_address1 = zext_ln194_fu_338_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_0_ce1 = v7_0_ce1_local;
assign v7_1_address0 = zext_ln194_1_fu_399_p1;
assign v7_1_address1 = zext_ln194_fu_338_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_1_ce1 = v7_1_ce1_local;
assign v7_2_address0 = zext_ln194_1_fu_399_p1;
assign v7_2_address1 = zext_ln194_fu_338_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_2_ce1 = v7_2_ce1_local;
assign v7_3_address0 = zext_ln194_1_fu_399_p1;
assign v7_3_address1 = zext_ln194_fu_338_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_3_ce1 = v7_3_ce1_local;
assign xor_ln192_fu_497_p2 = (bit_sel2_fu_490_p3 ^ 1'd1);
assign xor_ln196_1_fu_585_p3 = {{xor_ln196_reg_788}, {trunc_ln196_1_reg_793}};
assign xor_ln196_2_fu_537_p2 = (bit_sel_fu_529_p3 ^ 1'd1);
assign xor_ln196_fu_575_p2 = (bit_sel1_fu_567_p3 ^ 1'd1);
assign xor_ln7_fu_552_p3 = {{xor_ln196_2_reg_768}, {trunc_ln196_reg_773}};
assign xor_ln8_fu_506_p3 = {{xor_ln192_fu_497_p2}, {trunc_ln192_fu_503_p1}};
assign zext_ln192_1_fu_314_p1 = ap_sig_allocacmp_v111_1;
assign zext_ln192_2_fu_596_p1 = or_ln3_reg_713;
assign zext_ln192_3_fu_379_p1 = or_ln3_fu_365_p3;
assign zext_ln192_fu_310_p1 = ap_sig_allocacmp_v111_1;
assign zext_ln194_1_fu_399_p1 = lshr_ln194_1_fu_389_p4;
assign zext_ln194_fu_338_p1 = lshr_ln7_fu_328_p4;
assign zext_ln199_1_fu_604_p1 = add_ln199_1_fu_599_p2;
assign zext_ln199_fu_352_p1 = add_ln199_fu_346_p2;
always @ (posedge ap_clk) begin
    or_ln3_reg_713[0] <= 1'b1;
end
endmodule 
