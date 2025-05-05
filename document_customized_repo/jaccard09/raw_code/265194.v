module backprop_backprop_Pipeline_label_27_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_7_address0,v0_7_ce0,v0_7_we0,v0_7_d0,v0_7_q0,v0_6_address0,v0_6_ce0,v0_6_we0,v0_6_d0,v0_6_q0,v0_5_address0,v0_5_ce0,v0_5_we0,v0_5_d0,v0_5_q0,v0_4_address0,v0_4_ce0,v0_4_we0,v0_4_d0,v0_4_q0,v0_3_address0,v0_3_ce0,v0_3_we0,v0_3_d0,v0_3_q0,v0_2_address0,v0_2_ce0,v0_2_we0,v0_2_d0,v0_2_q0,v0_1_address0,v0_1_ce0,v0_1_we0,v0_1_d0,v0_1_q0,v0_0_address0,v0_0_ce0,v0_0_we0,v0_0_d0,v0_0_q0,v12_address0,v12_ce0,v12_q0,v12_1_address0,v12_1_ce0,v12_1_q0,v150_out,v150_out_ap_vld,grp_fu_3424_p_din0,grp_fu_3424_p_din1,grp_fu_3424_p_opcode,grp_fu_3424_p_dout0,grp_fu_3424_p_ce,grp_fu_3442_p_din0,grp_fu_3442_p_din1,grp_fu_3442_p_dout0,grp_fu_3442_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
output   v0_7_we0;
output  [63:0] v0_7_d0;
input  [63:0] v0_7_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
output   v0_6_we0;
output  [63:0] v0_6_d0;
input  [63:0] v0_6_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
output   v0_5_we0;
output  [63:0] v0_5_d0;
input  [63:0] v0_5_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
output   v0_4_we0;
output  [63:0] v0_4_d0;
input  [63:0] v0_4_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
output   v0_3_we0;
output  [63:0] v0_3_d0;
input  [63:0] v0_3_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
output   v0_2_we0;
output  [63:0] v0_2_d0;
input  [63:0] v0_2_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
output   v0_1_we0;
output  [63:0] v0_1_d0;
input  [63:0] v0_1_q0;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
output   v0_0_we0;
output  [63:0] v0_0_d0;
input  [63:0] v0_0_q0;
output  [8:0] v12_address0;
output   v12_ce0;
input  [63:0] v12_q0;
output  [8:0] v12_1_address0;
output   v12_1_ce0;
input  [63:0] v12_1_q0;
output  [63:0] v150_out;
output   v150_out_ap_vld;
output  [63:0] grp_fu_3424_p_din0;
output  [63:0] grp_fu_3424_p_din1;
output  [1:0] grp_fu_3424_p_opcode;
input  [63:0] grp_fu_3424_p_dout0;
output   grp_fu_3424_p_ce;
output  [63:0] grp_fu_3442_p_din0;
output  [63:0] grp_fu_3442_p_din1;
input  [63:0] grp_fu_3442_p_dout0;
output   grp_fu_3442_p_ce;
reg ap_idle;
reg v150_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln243_reg_551;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln243_fu_287_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln243_reg_551_pp0_iter1_reg;
reg   [0:0] icmp_ln243_reg_551_pp0_iter2_reg;
reg   [0:0] icmp_ln243_reg_551_pp0_iter3_reg;
wire   [9:0] add_ln243_fu_293_p2;
reg   [9:0] add_ln243_reg_555;
wire   [6:0] select_ln244_fu_311_p3;
reg   [6:0] select_ln244_reg_560;
wire   [3:0] select_ln243_fu_325_p3;
reg   [3:0] select_ln243_reg_565;
wire   [2:0] trunc_ln247_fu_333_p1;
reg   [2:0] trunc_ln247_reg_571;
reg   [2:0] trunc_ln247_reg_571_pp0_iter1_reg;
reg   [2:0] trunc_ln247_reg_571_pp0_iter2_reg;
wire   [0:0] trunc_ln247_1_fu_337_p1;
reg   [0:0] trunc_ln247_1_reg_576;
reg   [3:0] lshr_ln249_1_reg_581;
wire   [6:0] add_ln249_fu_385_p2;
reg   [6:0] add_ln249_reg_596;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v151_fu_391_p3;
reg   [63:0] v151_reg_601;
reg   [6:0] v0_0_addr_reg_606;
reg   [6:0] v0_0_addr_reg_606_pp0_iter2_reg;
reg   [6:0] v0_1_addr_reg_611;
reg   [6:0] v0_1_addr_reg_611_pp0_iter2_reg;
reg   [6:0] v0_2_addr_reg_616;
reg   [6:0] v0_2_addr_reg_616_pp0_iter2_reg;
reg   [6:0] v0_3_addr_reg_621;
reg   [6:0] v0_3_addr_reg_621_pp0_iter2_reg;
reg   [6:0] v0_4_addr_reg_626;
reg   [6:0] v0_4_addr_reg_626_pp0_iter2_reg;
reg   [6:0] v0_5_addr_reg_631;
reg   [6:0] v0_5_addr_reg_631_pp0_iter2_reg;
reg   [6:0] v0_6_addr_reg_636;
reg   [6:0] v0_6_addr_reg_636_pp0_iter2_reg;
reg   [6:0] v0_7_addr_reg_641;
reg   [6:0] v0_7_addr_reg_641_pp0_iter2_reg;
reg   [63:0] v152_reg_646;
wire   [63:0] v153_fu_459_p19;
reg   [63:0] v153_reg_651;
reg   [63:0] v154_reg_656;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v155_reg_663;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln249_fu_359_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln249_2_fu_416_p1;
reg   [63:0] v148_fu_102;
reg   [63:0] ap_sig_allocacmp_v148_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v149_fu_106;
wire   [6:0] add_ln247_fu_398_p2;
reg   [3:0] v146_fu_110;
reg   [9:0] indvar_flatten19_fu_114;
wire    ap_block_pp0_stage4_01001;
reg    v12_ce0_local;
reg    v12_1_ce0_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_0_we0_local;
wire   [63:0] bitcast_ln253_fu_498_p1;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_1_we0_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_2_we0_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_3_we0_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_4_we0_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_5_we0_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_6_we0_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v0_7_we0_local;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_255_p0;
reg   [63:0] grp_fu_255_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_259_p0;
reg   [63:0] grp_fu_259_p1;
wire   [0:0] icmp_ln247_fu_305_p2;
wire   [3:0] add_ln243_1_fu_319_p2;
wire   [4:0] lshr_ln_fu_341_p4;
wire   [8:0] add_ln3_fu_351_p3;
wire    ap_block_pp0_stage2;
wire   [6:0] zext_ln249_1_fu_382_p1;
wire   [6:0] p_udiv2_fu_375_p3;
wire   [63:0] v153_fu_459_p2;
wire   [63:0] v153_fu_459_p4;
wire   [63:0] v153_fu_459_p6;
wire   [63:0] v153_fu_459_p8;
wire   [63:0] v153_fu_459_p10;
wire   [63:0] v153_fu_459_p12;
wire   [63:0] v153_fu_459_p14;
wire   [63:0] v153_fu_459_p16;
wire   [63:0] v153_fu_459_p17;
reg   [1:0] grp_fu_255_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v153_fu_459_p1;
wire   [2:0] v153_fu_459_p3;
wire   [2:0] v153_fu_459_p5;
wire   [2:0] v153_fu_459_p7;
wire  signed [2:0] v153_fu_459_p9;
wire  signed [2:0] v153_fu_459_p11;
wire  signed [2:0] v153_fu_459_p13;
wire  signed [2:0] v153_fu_459_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v148_fu_102 = 64'd0;
#0 v149_fu_106 = 7'd0;
#0 v146_fu_110 = 4'd0;
#0 indvar_flatten19_fu_114 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U571(.din0(v153_fu_459_p2),.din1(v153_fu_459_p4),.din2(v153_fu_459_p6),.din3(v153_fu_459_p8),.din4(v153_fu_459_p10),.din5(v153_fu_459_p12),.din6(v153_fu_459_p14),.din7(v153_fu_459_p16),.def(v153_fu_459_p17),.sel(trunc_ln247_reg_571_pp0_iter1_reg),.dout(v153_fu_459_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_114 <= 10'd0;
    end else if (((icmp_ln243_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_114 <= add_ln243_reg_555;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v146_fu_110 <= 4'd0;
    end else if (((icmp_ln243_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v146_fu_110 <= select_ln243_reg_565;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v148_fu_102 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v148_fu_102 <= grp_fu_3424_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v149_fu_106 <= 7'd0;
    end else if (((icmp_ln243_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v149_fu_106 <= add_ln247_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln243_reg_555 <= add_ln243_fu_293_p2;
        icmp_ln243_reg_551 <= icmp_ln243_fu_287_p2;
        icmp_ln243_reg_551_pp0_iter1_reg <= icmp_ln243_reg_551;
        icmp_ln243_reg_551_pp0_iter2_reg <= icmp_ln243_reg_551_pp0_iter1_reg;
        icmp_ln243_reg_551_pp0_iter3_reg <= icmp_ln243_reg_551_pp0_iter2_reg;
        lshr_ln249_1_reg_581 <= {{select_ln244_fu_311_p3[6:3]}};
        select_ln243_reg_565 <= select_ln243_fu_325_p3;
        select_ln244_reg_560 <= select_ln244_fu_311_p3;
        trunc_ln247_1_reg_576 <= trunc_ln247_1_fu_337_p1;
        trunc_ln247_reg_571 <= trunc_ln247_fu_333_p1;
        trunc_ln247_reg_571_pp0_iter1_reg <= trunc_ln247_reg_571;
        trunc_ln247_reg_571_pp0_iter2_reg <= trunc_ln247_reg_571_pp0_iter1_reg;
        v0_0_addr_reg_606 <= zext_ln249_2_fu_416_p1;
        v0_0_addr_reg_606_pp0_iter2_reg <= v0_0_addr_reg_606;
        v0_1_addr_reg_611 <= zext_ln249_2_fu_416_p1;
        v0_1_addr_reg_611_pp0_iter2_reg <= v0_1_addr_reg_611;
        v0_2_addr_reg_616 <= zext_ln249_2_fu_416_p1;
        v0_2_addr_reg_616_pp0_iter2_reg <= v0_2_addr_reg_616;
        v0_3_addr_reg_621 <= zext_ln249_2_fu_416_p1;
        v0_3_addr_reg_621_pp0_iter2_reg <= v0_3_addr_reg_621;
        v0_4_addr_reg_626 <= zext_ln249_2_fu_416_p1;
        v0_4_addr_reg_626_pp0_iter2_reg <= v0_4_addr_reg_626;
        v0_5_addr_reg_631 <= zext_ln249_2_fu_416_p1;
        v0_5_addr_reg_631_pp0_iter2_reg <= v0_5_addr_reg_631;
        v0_6_addr_reg_636 <= zext_ln249_2_fu_416_p1;
        v0_6_addr_reg_636_pp0_iter2_reg <= v0_6_addr_reg_636;
        v0_7_addr_reg_641 <= zext_ln249_2_fu_416_p1;
        v0_7_addr_reg_641_pp0_iter2_reg <= v0_7_addr_reg_641;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln249_reg_596 <= add_ln249_fu_385_p2;
        v151_reg_601 <= v151_fu_391_p3;
        v153_reg_651 <= v153_fu_459_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v152_reg_646 <= grp_fu_3442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v154_reg_656 <= grp_fu_3424_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v155_reg_663 <= grp_fu_3442_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_551_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_v148_load_1 = grp_fu_3424_p_dout0;
    end else begin
        ap_sig_allocacmp_v148_load_1 = v148_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_255_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_255_opcode = 2'd0;
    end else begin
        grp_fu_255_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_255_p0 = ap_sig_allocacmp_v148_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_255_p0 = v153_reg_651;
    end else begin
        grp_fu_255_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_255_p1 = v155_reg_663;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_255_p1 = v152_reg_646;
    end else begin
        grp_fu_255_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p0 = v154_reg_656;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = v151_reg_601;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p1 = v154_reg_656;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_259_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = v0_0_addr_reg_606_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd0))) begin
        v0_0_we0_local = 1'b1;
    end else begin
        v0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = v0_1_addr_reg_611_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd1))) begin
        v0_1_we0_local = 1'b1;
    end else begin
        v0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address0_local = v0_2_addr_reg_616_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd2))) begin
        v0_2_we0_local = 1'b1;
    end else begin
        v0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address0_local = v0_3_addr_reg_621_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd3))) begin
        v0_3_we0_local = 1'b1;
    end else begin
        v0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_address0_local = v0_4_addr_reg_626_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd4))) begin
        v0_4_we0_local = 1'b1;
    end else begin
        v0_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_address0_local = v0_5_addr_reg_631_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd5))) begin
        v0_5_we0_local = 1'b1;
    end else begin
        v0_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_address0_local = v0_6_addr_reg_636_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd6))) begin
        v0_6_we0_local = 1'b1;
    end else begin
        v0_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_address0_local = v0_7_addr_reg_641_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln249_2_fu_416_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln247_reg_571_pp0_iter2_reg == 3'd7))) begin
        v0_7_we0_local = 1'b1;
    end else begin
        v0_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_551_pp0_iter3_reg == 1'd1))) begin
        v150_out_ap_vld = 1'b1;
    end else begin
        v150_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln243_1_fu_319_p2 = (v146_fu_110 + 4'd1);
assign add_ln243_fu_293_p2 = (indvar_flatten19_fu_114 + 10'd1);
assign add_ln247_fu_398_p2 = (select_ln244_reg_560 + 7'd1);
assign add_ln249_fu_385_p2 = (zext_ln249_1_fu_382_p1 + p_udiv2_fu_375_p3);
assign add_ln3_fu_351_p3 = {{select_ln243_fu_325_p3}, {lshr_ln_fu_341_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln253_fu_498_p1 = v154_reg_656;
assign grp_fu_3424_p_ce = 1'b1;
assign grp_fu_3424_p_din0 = grp_fu_255_p0;
assign grp_fu_3424_p_din1 = grp_fu_255_p1;
assign grp_fu_3424_p_opcode = grp_fu_255_opcode;
assign grp_fu_3442_p_ce = 1'b1;
assign grp_fu_3442_p_din0 = grp_fu_259_p0;
assign grp_fu_3442_p_din1 = grp_fu_259_p1;
assign icmp_ln243_fu_287_p2 = ((indvar_flatten19_fu_114 == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln247_fu_305_p2 = ((v149_fu_106 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_341_p4 = {{select_ln244_fu_311_p3[5:1]}};
assign p_udiv2_fu_375_p3 = {{select_ln243_reg_565}, {3'd0}};
assign select_ln243_fu_325_p3 = ((icmp_ln247_fu_305_p2[0:0] == 1'b1) ? add_ln243_1_fu_319_p2 : v146_fu_110);
assign select_ln244_fu_311_p3 = ((icmp_ln247_fu_305_p2[0:0] == 1'b1) ? 7'd0 : v149_fu_106);
assign trunc_ln247_1_fu_337_p1 = select_ln244_fu_311_p3[0:0];
assign trunc_ln247_fu_333_p1 = select_ln244_fu_311_p3[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_d0 = bitcast_ln253_fu_498_p1;
assign v0_0_we0 = v0_0_we0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_d0 = bitcast_ln253_fu_498_p1;
assign v0_1_we0 = v0_1_we0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_d0 = bitcast_ln253_fu_498_p1;
assign v0_2_we0 = v0_2_we0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_d0 = bitcast_ln253_fu_498_p1;
assign v0_3_we0 = v0_3_we0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_d0 = bitcast_ln253_fu_498_p1;
assign v0_4_we0 = v0_4_we0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_d0 = bitcast_ln253_fu_498_p1;
assign v0_5_we0 = v0_5_we0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_d0 = bitcast_ln253_fu_498_p1;
assign v0_6_we0 = v0_6_we0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_d0 = bitcast_ln253_fu_498_p1;
assign v0_7_we0 = v0_7_we0_local;
assign v12_1_address0 = zext_ln249_fu_359_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_address0 = zext_ln249_fu_359_p1;
assign v12_ce0 = v12_ce0_local;
assign v150_out = v148_fu_102;
assign v151_fu_391_p3 = ((trunc_ln247_1_reg_576[0:0] == 1'b1) ? v12_1_q0 : v12_q0);
assign v153_fu_459_p10 = v0_4_q0;
assign v153_fu_459_p12 = v0_5_q0;
assign v153_fu_459_p14 = v0_6_q0;
assign v153_fu_459_p16 = v0_7_q0;
assign v153_fu_459_p17 = 'bx;
assign v153_fu_459_p2 = v0_0_q0;
assign v153_fu_459_p4 = v0_1_q0;
assign v153_fu_459_p6 = v0_2_q0;
assign v153_fu_459_p8 = v0_3_q0;
assign zext_ln249_1_fu_382_p1 = lshr_ln249_1_reg_581;
assign zext_ln249_2_fu_416_p1 = add_ln249_reg_596;
assign zext_ln249_fu_359_p1 = add_ln3_fu_351_p3;
endmodule 