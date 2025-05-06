
module backprop_backprop_Pipeline_label_27_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12_address0,v12_ce0,v12_q0,v12_1_address0,v12_1_ce0,v12_1_q0,v12_2_address0,v12_2_ce0,v12_2_q0,v12_3_address0,v12_3_ce0,v12_3_q0,v0_address0,v0_ce0,v0_we0,v0_d0,v0_q0,v150_out,v150_out_ap_vld,grp_fu_2309_p_din0,grp_fu_2309_p_din1,grp_fu_2309_p_opcode,grp_fu_2309_p_dout0,grp_fu_2309_p_ce,grp_fu_2317_p_din0,grp_fu_2317_p_din1,grp_fu_2317_p_dout0,grp_fu_2317_p_ce);  
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
output  [7:0] v12_address0;
output   v12_ce0;
input  [63:0] v12_q0;
output  [7:0] v12_1_address0;
output   v12_1_ce0;
input  [63:0] v12_1_q0;
output  [7:0] v12_2_address0;
output   v12_2_ce0;
input  [63:0] v12_2_q0;
output  [7:0] v12_3_address0;
output   v12_3_ce0;
input  [63:0] v12_3_q0;
output  [9:0] v0_address0;
output   v0_ce0;
output   v0_we0;
output  [63:0] v0_d0;
input  [63:0] v0_q0;
output  [63:0] v150_out;
output   v150_out_ap_vld;
output  [63:0] grp_fu_2309_p_din0;
output  [63:0] grp_fu_2309_p_din1;
output  [1:0] grp_fu_2309_p_opcode;
input  [63:0] grp_fu_2309_p_dout0;
output   grp_fu_2309_p_ce;
output  [63:0] grp_fu_2317_p_din0;
output  [63:0] grp_fu_2317_p_din1;
input  [63:0] grp_fu_2317_p_dout0;
output   grp_fu_2317_p_ce;
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
reg   [0:0] icmp_ln243_reg_394;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln243_fu_202_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln243_reg_394_pp0_iter1_reg;
reg   [0:0] icmp_ln243_reg_394_pp0_iter2_reg;
reg   [0:0] icmp_ln243_reg_394_pp0_iter3_reg;
wire   [1:0] trunc_ln247_fu_260_p1;
reg   [1:0] trunc_ln247_reg_398;
wire   [9:0] add_ln249_fu_264_p2;
reg   [9:0] add_ln249_reg_403;
wire   [63:0] v151_fu_317_p11;
reg   [63:0] v151_reg_428;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [9:0] v0_addr_reg_433;
reg   [9:0] v0_addr_reg_433_pp0_iter2_reg;
reg   [63:0] v152_reg_438;
reg   [63:0] v0_load_reg_443;
wire   [63:0] v153_fu_344_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v154_reg_453;
reg   [63:0] v155_reg_460;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln249_1_fu_288_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln249_fu_340_p1;
reg   [63:0] v148_fu_82;
reg   [63:0] ap_sig_allocacmp_v148_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v149_fu_86;
wire   [6:0] add_ln247_fu_296_p2;
reg   [3:0] v146_fu_90;
wire   [3:0] select_ln243_fu_240_p3;
reg   [9:0] indvar_flatten33_fu_94;
wire   [9:0] add_ln243_fu_208_p2;
wire    ap_block_pp0_stage4_01001;
reg    v12_ce0_local;
reg    v12_1_ce0_local;
reg    v12_2_ce0_local;
reg    v12_3_ce0_local;
reg    v0_ce0_local;
reg   [9:0] v0_address0_local;
reg    v0_we0_local;
wire   [63:0] bitcast_ln253_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_170_p0;
reg   [63:0] grp_fu_170_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_174_p0;
reg   [63:0] grp_fu_174_p1;
wire   [0:0] icmp_ln247_fu_220_p2;
wire   [3:0] add_ln243_1_fu_234_p2;
wire   [6:0] select_ln244_fu_226_p3;
wire   [9:0] zext_ln247_fu_256_p1;
wire   [9:0] tmp_s_fu_248_p3;
wire   [3:0] lshr_ln9_fu_270_p4;
wire   [7:0] add_ln249_1_fu_280_p3;
wire   [63:0] v151_fu_317_p9;
wire    ap_block_pp0_stage2;
reg   [1:0] grp_fu_170_opcode;
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
wire   [1:0] v151_fu_317_p1;
wire   [1:0] v151_fu_317_p3;
wire  signed [1:0] v151_fu_317_p5;
wire  signed [1:0] v151_fu_317_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v148_fu_82 = 64'd0;
#0 v149_fu_86 = 7'd0;
#0 v146_fu_90 = 4'd0;
#0 indvar_flatten33_fu_94 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U496(.din0(v12_q0),.din1(v12_1_q0),.din2(v12_2_q0),.din3(v12_3_q0),.def(v151_fu_317_p9),.sel(trunc_ln247_reg_398),.dout(v151_fu_317_p11));
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
        indvar_flatten33_fu_94 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln243_fu_202_p2 == 1'd0))) begin
        indvar_flatten33_fu_94 <= add_ln243_fu_208_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v146_fu_90 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln243_fu_202_p2 == 1'd0))) begin
        v146_fu_90 <= select_ln243_fu_240_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v148_fu_82 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v148_fu_82 <= grp_fu_2309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v149_fu_86 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln243_fu_202_p2 == 1'd0))) begin
        v149_fu_86 <= add_ln247_fu_296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln249_reg_403 <= add_ln249_fu_264_p2;
        icmp_ln243_reg_394 <= icmp_ln243_fu_202_p2;
        icmp_ln243_reg_394_pp0_iter1_reg <= icmp_ln243_reg_394;
        icmp_ln243_reg_394_pp0_iter2_reg <= icmp_ln243_reg_394_pp0_iter1_reg;
        icmp_ln243_reg_394_pp0_iter3_reg <= icmp_ln243_reg_394_pp0_iter2_reg;
        trunc_ln247_reg_398 <= trunc_ln247_fu_260_p1;
        v0_addr_reg_433 <= zext_ln249_fu_340_p1;
        v0_addr_reg_433_pp0_iter2_reg <= v0_addr_reg_433;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_load_reg_443 <= v0_q0;
        v152_reg_438 <= grp_fu_2317_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v151_reg_428 <= v151_fu_317_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v154_reg_453 <= grp_fu_2309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v155_reg_460 <= grp_fu_2317_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_394 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_394_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_v148_load_1 = grp_fu_2309_p_dout0;
    end else begin
        ap_sig_allocacmp_v148_load_1 = v148_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_170_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_170_opcode = 2'd0;
    end else begin
        grp_fu_170_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_170_p0 = ap_sig_allocacmp_v148_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_170_p0 = v153_fu_344_p1;
    end else begin
        grp_fu_170_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_170_p1 = v155_reg_460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_170_p1 = v152_reg_438;
    end else begin
        grp_fu_170_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p0 = v154_reg_453;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_174_p0 = v151_reg_428;
    end else begin
        grp_fu_174_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p1 = v154_reg_453;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_174_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_174_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_address0_local = v0_addr_reg_433_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_address0_local = zext_ln249_fu_340_p1;
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_we0_local = 1'b1;
    end else begin
        v0_we0_local = 1'b0;
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
        v12_2_ce0_local = 1'b1;
    end else begin
        v12_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_3_ce0_local = 1'b1;
    end else begin
        v12_3_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_394_pp0_iter3_reg == 1'd1))) begin
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
assign add_ln243_1_fu_234_p2 = (v146_fu_90 + 4'd1);
assign add_ln243_fu_208_p2 = (indvar_flatten33_fu_94 + 10'd1);
assign add_ln247_fu_296_p2 = (select_ln244_fu_226_p3 + 7'd1);
assign add_ln249_1_fu_280_p3 = {{select_ln243_fu_240_p3}, {lshr_ln9_fu_270_p4}};
assign add_ln249_fu_264_p2 = (zext_ln247_fu_256_p1 + tmp_s_fu_248_p3);
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
assign bitcast_ln253_fu_348_p1 = v154_reg_453;
assign grp_fu_2309_p_ce = 1'b1;
assign grp_fu_2309_p_din0 = grp_fu_170_p0;
assign grp_fu_2309_p_din1 = grp_fu_170_p1;
assign grp_fu_2309_p_opcode = grp_fu_170_opcode;
assign grp_fu_2317_p_ce = 1'b1;
assign grp_fu_2317_p_din0 = grp_fu_174_p0;
assign grp_fu_2317_p_din1 = grp_fu_174_p1;
assign icmp_ln243_fu_202_p2 = ((indvar_flatten33_fu_94 == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln247_fu_220_p2 = ((v149_fu_86 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_270_p4 = {{select_ln244_fu_226_p3[5:2]}};
assign select_ln243_fu_240_p3 = ((icmp_ln247_fu_220_p2[0:0] == 1'b1) ? add_ln243_1_fu_234_p2 : v146_fu_90);
assign select_ln244_fu_226_p3 = ((icmp_ln247_fu_220_p2[0:0] == 1'b1) ? 7'd0 : v149_fu_86);
assign tmp_s_fu_248_p3 = {{select_ln243_fu_240_p3}, {6'd0}};
assign trunc_ln247_fu_260_p1 = select_ln244_fu_226_p3[1:0];
assign v0_address0 = v0_address0_local;
assign v0_ce0 = v0_ce0_local;
assign v0_d0 = bitcast_ln253_fu_348_p1;
assign v0_we0 = v0_we0_local;
assign v12_1_address0 = zext_ln249_1_fu_288_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_2_address0 = zext_ln249_1_fu_288_p1;
assign v12_2_ce0 = v12_2_ce0_local;
assign v12_3_address0 = zext_ln249_1_fu_288_p1;
assign v12_3_ce0 = v12_3_ce0_local;
assign v12_address0 = zext_ln249_1_fu_288_p1;
assign v12_ce0 = v12_ce0_local;
assign v150_out = v148_fu_82;
assign v151_fu_317_p9 = 'bx;
assign v153_fu_344_p1 = v0_load_reg_443;
assign zext_ln247_fu_256_p1 = select_ln244_fu_226_p3;
assign zext_ln249_1_fu_288_p1 = add_ln249_1_fu_280_p3;
assign zext_ln249_fu_340_p1 = add_ln249_reg_403;
endmodule 
