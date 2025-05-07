module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,phi_mul131,v6_0_address0,v6_0_ce0,v6_0_q0,v6_0_address1,v6_0_ce1,v6_0_q1,v6_1_address0,v6_1_ce0,v6_1_q0,v6_1_address1,v6_1_ce1,v6_1_q1,v6_2_address0,v6_2_ce0,v6_2_q0,v6_2_address1,v6_2_ce1,v6_2_q1,v6_3_address0,v6_3_ce0,v6_3_q0,v6_3_address1,v6_3_ce1,v6_3_q1,v6_4_address0,v6_4_ce0,v6_4_q0,v6_4_address1,v6_4_ce1,v6_4_q1,v6_5_address0,v6_5_ce0,v6_5_q0,v6_5_address1,v6_5_ce1,v6_5_q1,v6_6_address0,v6_6_ce0,v6_6_q0,v6_6_address1,v6_6_ce1,v6_6_q1,v6_7_address0,v6_7_ce0,v6_7_q0,v6_7_address1,v6_7_ce1,v6_7_q1,v29_2_out,v29_2_out_ap_vld,grp_fu_17580_p_din0,grp_fu_17580_p_din1,grp_fu_17580_p_opcode,grp_fu_17580_p_dout0,grp_fu_17580_p_ce,grp_fu_7495_p_din0,grp_fu_7495_p_din1,grp_fu_7495_p_dout0,grp_fu_7495_p_ce); 
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
input  [9:0] phi_mul;
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
output  [9:0] v0_address1;
output   v0_ce1;
input  [63:0] v0_q1;
input  [11:0] phi_mul131;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_0_address1;
output   v6_0_ce1;
input  [63:0] v6_0_q1;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_1_address1;
output   v6_1_ce1;
input  [63:0] v6_1_q1;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_2_address1;
output   v6_2_ce1;
input  [63:0] v6_2_q1;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_3_address1;
output   v6_3_ce1;
input  [63:0] v6_3_q1;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_4_address1;
output   v6_4_ce1;
input  [63:0] v6_4_q1;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_5_address1;
output   v6_5_ce1;
input  [63:0] v6_5_q1;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_6_address1;
output   v6_6_ce1;
input  [63:0] v6_6_q1;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [8:0] v6_7_address1;
output   v6_7_ce1;
input  [63:0] v6_7_q1;
output  [63:0] v29_2_out;
output   v29_2_out_ap_vld;
output  [63:0] grp_fu_17580_p_din0;
output  [63:0] grp_fu_17580_p_din1;
output  [0:0] grp_fu_17580_p_opcode;
input  [63:0] grp_fu_17580_p_dout0;
output   grp_fu_17580_p_ce;
output  [63:0] grp_fu_7495_p_din0;
output  [63:0] grp_fu_7495_p_din1;
input  [63:0] grp_fu_7495_p_dout0;
output   grp_fu_7495_p_ce;
reg ap_idle;
reg v29_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln68_reg_729;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_673;
wire   [2:0] trunc_ln70_fu_393_p1;
reg   [2:0] trunc_ln70_reg_683;
wire   [0:0] icmp_ln68_fu_437_p2;
reg   [0:0] icmp_ln68_reg_729_pp0_iter1_reg;
reg   [63:0] v0_load_reg_778;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v26_fu_522_p19;
reg   [63:0] v26_reg_783;
reg   [63:0] v0_load_1_reg_788;
wire   [63:0] v26_1_fu_593_p19;
reg   [63:0] v26_1_reg_793;
wire   [63:0] v25_fu_632_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v25_1_fu_636_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v27_reg_808;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v27_1_reg_818;
reg   [63:0] v29_2_reg_823;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln69_fu_382_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_407_p1;
wire   [63:0] zext_ln69_1_fu_457_p1;
wire   [63:0] zext_ln70_1_fu_478_p1;
reg   [63:0] v28_fu_94;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [3:0] v24_fu_98;
wire   [3:0] add_ln68_fu_644_p2;
wire    ap_block_pp0_stage15_11001;
reg   [3:0] ap_sig_allocacmp_v24_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    v0_ce1_local;
reg    v0_ce0_local;
reg    v6_0_ce1_local;
reg    v6_0_ce0_local;
reg    v6_1_ce1_local;
reg    v6_1_ce0_local;
reg    v6_2_ce1_local;
reg    v6_2_ce0_local;
reg    v6_3_ce1_local;
reg    v6_3_ce0_local;
reg    v6_4_ce1_local;
reg    v6_4_ce0_local;
reg    v6_5_ce1_local;
reg    v6_5_ce0_local;
reg    v6_6_ce1_local;
reg    v6_6_ce0_local;
reg    v6_7_ce1_local;
reg    v6_7_ce0_local;
reg   [63:0] grp_fu_346_p0;
reg   [63:0] grp_fu_346_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_351_p0;
reg   [63:0] grp_fu_351_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [9:0] zext_ln68_1_fu_372_p1;
wire   [9:0] add_ln69_fu_376_p2;
wire   [11:0] zext_ln68_fu_368_p1;
wire   [11:0] add_ln70_fu_387_p2;
wire   [8:0] lshr_ln1_fu_397_p4;
wire   [2:0] tmp_1_fu_419_p4;
wire   [3:0] or_ln_fu_429_p3;
wire   [9:0] zext_ln68_3_fu_447_p1;
wire   [9:0] add_ln69_1_fu_451_p2;
wire   [11:0] zext_ln68_2_fu_443_p1;
wire   [11:0] add_ln70_1_fu_462_p2;
wire   [8:0] lshr_ln70_1_fu_468_p4;
wire   [63:0] v26_fu_522_p2;
wire   [63:0] v26_fu_522_p4;
wire   [63:0] v26_fu_522_p6;
wire   [63:0] v26_fu_522_p8;
wire   [63:0] v26_fu_522_p10;
wire   [63:0] v26_fu_522_p12;
wire   [63:0] v26_fu_522_p14;
wire   [63:0] v26_fu_522_p16;
wire   [63:0] v26_fu_522_p17;
wire   [63:0] v26_1_fu_593_p2;
wire   [63:0] v26_1_fu_593_p4;
wire   [63:0] v26_1_fu_593_p6;
wire   [63:0] v26_1_fu_593_p8;
wire   [63:0] v26_1_fu_593_p10;
wire   [63:0] v26_1_fu_593_p12;
wire   [63:0] v26_1_fu_593_p14;
wire   [63:0] v26_1_fu_593_p16;
wire   [63:0] v26_1_fu_593_p17;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire   [2:0] v26_fu_522_p1;
wire   [2:0] v26_fu_522_p3;
wire   [2:0] v26_fu_522_p5;
wire   [2:0] v26_fu_522_p7;
wire  signed [2:0] v26_fu_522_p9;
wire  signed [2:0] v26_fu_522_p11;
wire  signed [2:0] v26_fu_522_p13;
wire  signed [2:0] v26_fu_522_p15;
wire  signed [2:0] v26_1_fu_593_p1;
wire   [2:0] v26_1_fu_593_p3;
wire   [2:0] v26_1_fu_593_p5;
wire   [2:0] v26_1_fu_593_p7;
wire   [2:0] v26_1_fu_593_p9;
wire  signed [2:0] v26_1_fu_593_p11;
wire  signed [2:0] v26_1_fu_593_p13;
wire  signed [2:0] v26_1_fu_593_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_94 = 64'd0;
#0 v24_fu_98 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(v26_fu_522_p2),.din1(v26_fu_522_p4),.din2(v26_fu_522_p6),.din3(v26_fu_522_p8),.din4(v26_fu_522_p10),.din5(v26_fu_522_p12),.din6(v26_fu_522_p14),.din7(v26_fu_522_p16),.def(v26_fu_522_p17),.sel(trunc_ln70_reg_683),.dout(v26_fu_522_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(v26_1_fu_593_p2),.din1(v26_1_fu_593_p4),.din2(v26_1_fu_593_p6),.din3(v26_1_fu_593_p8),.din4(v26_1_fu_593_p10),.din5(v26_1_fu_593_p12),.din6(v26_1_fu_593_p14),.din7(v26_1_fu_593_p16),.def(v26_1_fu_593_p17),.sel(trunc_ln70_reg_683),.dout(v26_1_fu_593_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_98 <= 4'd0;
    end else if (((icmp_ln68_reg_729 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v24_fu_98 <= add_ln68_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_94 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln68_reg_729_pp0_iter1_reg == 1'd1))) begin
        v28_fu_94 <= grp_fu_17580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln68_reg_729 <= icmp_ln68_fu_437_p2;
        icmp_ln68_reg_729_pp0_iter1_reg <= icmp_ln68_reg_729;
        trunc_ln70_reg_683 <= trunc_ln70_fu_393_p1;
        v24_1_reg_673 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_load_1_reg_788 <= v0_q0;
        v0_load_reg_778 <= v0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_793 <= v26_1_fu_593_p19;
        v26_reg_783 <= v26_fu_522_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_818 <= grp_fu_7495_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_reg_808 <= grp_fu_7495_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_2_reg_823 <= grp_fu_17580_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_729 == 1'd0) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_729 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p0 = v29_2_reg_823;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_346_p0 = v28_fu_94;
    end else begin
        grp_fu_346_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p1 = v27_1_reg_818;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_346_p1 = v27_reg_808;
    end else begin
        grp_fu_346_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_351_p0 = v25_1_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_351_p0 = v25_fu_632_p1;
        end else begin
            grp_fu_351_p0 = 'bx;
        end
    end else begin
        grp_fu_351_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_351_p1 = v26_1_reg_793;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_351_p1 = v26_reg_783;
        end else begin
            grp_fu_351_p1 = 'bx;
        end
    end else begin
        grp_fu_351_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_729 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_2_out_ap_vld = 1'b1;
    end else begin
        v29_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce1_local = 1'b1;
    end else begin
        v6_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce1_local = 1'b1;
    end else begin
        v6_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce1_local = 1'b1;
    end else begin
        v6_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce1_local = 1'b1;
    end else begin
        v6_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce1_local = 1'b1;
    end else begin
        v6_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce1_local = 1'b1;
    end else begin
        v6_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce1_local = 1'b1;
    end else begin
        v6_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce1_local = 1'b1;
    end else begin
        v6_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln68_fu_644_p2 = (v24_1_reg_673 + 4'd2);
assign add_ln69_1_fu_451_p2 = (zext_ln68_3_fu_447_p1 + phi_mul);
assign add_ln69_fu_376_p2 = (zext_ln68_1_fu_372_p1 + phi_mul);
assign add_ln70_1_fu_462_p2 = (zext_ln68_2_fu_443_p1 + phi_mul131);
assign add_ln70_fu_387_p2 = (zext_ln68_fu_368_p1 + phi_mul131);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign grp_fu_17580_p_ce = 1'b1;
assign grp_fu_17580_p_din0 = grp_fu_346_p0;
assign grp_fu_17580_p_din1 = grp_fu_346_p1;
assign grp_fu_17580_p_opcode = 2'd0;
assign grp_fu_7495_p_ce = 1'b1;
assign grp_fu_7495_p_din0 = grp_fu_351_p0;
assign grp_fu_7495_p_din1 = grp_fu_351_p1;
assign icmp_ln68_fu_437_p2 = ((or_ln_fu_429_p3 < 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_397_p4 = {{add_ln70_fu_387_p2[11:3]}};
assign lshr_ln70_1_fu_468_p4 = {{add_ln70_1_fu_462_p2[11:3]}};
assign or_ln_fu_429_p3 = {{tmp_1_fu_419_p4}, {1'd1}};
assign tmp_1_fu_419_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign trunc_ln70_fu_393_p1 = add_ln70_fu_387_p2[2:0];
assign v0_address0 = zext_ln69_1_fu_457_p1;
assign v0_address1 = zext_ln69_fu_382_p1;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v25_1_fu_636_p1 = v0_load_1_reg_788;
assign v25_fu_632_p1 = v0_load_reg_778;
assign v26_1_fu_593_p10 = v6_4_q0;
assign v26_1_fu_593_p12 = v6_5_q0;
assign v26_1_fu_593_p14 = v6_6_q0;
assign v26_1_fu_593_p16 = v6_7_q0;
assign v26_1_fu_593_p17 = 'bx;
assign v26_1_fu_593_p2 = v6_0_q0;
assign v26_1_fu_593_p4 = v6_1_q0;
assign v26_1_fu_593_p6 = v6_2_q0;
assign v26_1_fu_593_p8 = v6_3_q0;
assign v26_fu_522_p10 = v6_4_q1;
assign v26_fu_522_p12 = v6_5_q1;
assign v26_fu_522_p14 = v6_6_q1;
assign v26_fu_522_p16 = v6_7_q1;
assign v26_fu_522_p17 = 'bx;
assign v26_fu_522_p2 = v6_0_q1;
assign v26_fu_522_p4 = v6_1_q1;
assign v26_fu_522_p6 = v6_2_q1;
assign v26_fu_522_p8 = v6_3_q1;
assign v29_2_out = grp_fu_17580_p_dout0;
assign v6_0_address0 = zext_ln70_1_fu_478_p1;
assign v6_0_address1 = zext_ln70_fu_407_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_0_ce1 = v6_0_ce1_local;
assign v6_1_address0 = zext_ln70_1_fu_478_p1;
assign v6_1_address1 = zext_ln70_fu_407_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_1_ce1 = v6_1_ce1_local;
assign v6_2_address0 = zext_ln70_1_fu_478_p1;
assign v6_2_address1 = zext_ln70_fu_407_p1;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_2_ce1 = v6_2_ce1_local;
assign v6_3_address0 = zext_ln70_1_fu_478_p1;
assign v6_3_address1 = zext_ln70_fu_407_p1;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_3_ce1 = v6_3_ce1_local;
assign v6_4_address0 = zext_ln70_1_fu_478_p1;
assign v6_4_address1 = zext_ln70_fu_407_p1;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_4_ce1 = v6_4_ce1_local;
assign v6_5_address0 = zext_ln70_1_fu_478_p1;
assign v6_5_address1 = zext_ln70_fu_407_p1;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_5_ce1 = v6_5_ce1_local;
assign v6_6_address0 = zext_ln70_1_fu_478_p1;
assign v6_6_address1 = zext_ln70_fu_407_p1;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_6_ce1 = v6_6_ce1_local;
assign v6_7_address0 = zext_ln70_1_fu_478_p1;
assign v6_7_address1 = zext_ln70_fu_407_p1;
assign v6_7_ce0 = v6_7_ce0_local;
assign v6_7_ce1 = v6_7_ce1_local;
assign zext_ln68_1_fu_372_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_443_p1 = or_ln_fu_429_p3;
assign zext_ln68_3_fu_447_p1 = or_ln_fu_429_p3;
assign zext_ln68_fu_368_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_457_p1 = add_ln69_1_fu_451_p2;
assign zext_ln69_fu_382_p1 = add_ln69_fu_376_p2;
assign zext_ln70_1_fu_478_p1 = lshr_ln70_1_fu_468_p4;
assign zext_ln70_fu_407_p1 = lshr_ln1_fu_397_p4;
endmodule 