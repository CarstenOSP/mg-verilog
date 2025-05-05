module backprop_backprop_Pipeline_label_27_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_1_address0,v0_1_ce0,v0_1_we0,v0_1_d0,v0_1_q0,v0_0_address0,v0_0_ce0,v0_0_we0,v0_0_d0,v0_0_q0,v12_address0,v12_ce0,v12_q0,v12_1_address0,v12_1_ce0,v12_1_q0,v150_out,v150_out_ap_vld,grp_fu_32862_p_din0,grp_fu_32862_p_din1,grp_fu_32862_p_opcode,grp_fu_32862_p_dout0,grp_fu_32862_p_ce,grp_fu_32880_p_din0,grp_fu_32880_p_din1,grp_fu_32880_p_dout0,grp_fu_32880_p_ce); 
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
output  [8:0] v0_1_address0;
output   v0_1_ce0;
output   v0_1_we0;
output  [63:0] v0_1_d0;
input  [63:0] v0_1_q0;
output  [8:0] v0_0_address0;
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
output  [63:0] grp_fu_32862_p_din0;
output  [63:0] grp_fu_32862_p_din1;
output  [1:0] grp_fu_32862_p_opcode;
input  [63:0] grp_fu_32862_p_dout0;
output   grp_fu_32862_p_ce;
output  [63:0] grp_fu_32880_p_din0;
output  [63:0] grp_fu_32880_p_din1;
input  [63:0] grp_fu_32880_p_dout0;
output   grp_fu_32880_p_ce;
reg ap_idle;
reg v150_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln243_reg_379;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln243_fu_177_p2;
reg   [0:0] icmp_ln243_reg_379_pp0_iter1_reg;
reg   [0:0] icmp_ln243_reg_379_pp0_iter2_reg;
reg   [0:0] icmp_ln243_reg_379_pp0_iter3_reg;
reg   [0:0] icmp_ln243_reg_379_pp0_iter4_reg;
wire   [6:0] select_ln244_fu_201_p3;
reg   [6:0] select_ln244_reg_383;
wire   [3:0] select_ln243_fu_215_p3;
reg   [3:0] select_ln243_reg_389;
wire   [0:0] trunc_ln247_fu_223_p1;
reg   [0:0] trunc_ln247_reg_396;
reg   [4:0] lshr_ln9_reg_401;
wire   [9:0] add_ln249_fu_252_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln251_fu_282_p2;
reg   [0:0] icmp_ln251_reg_421;
reg   [0:0] icmp_ln251_reg_421_pp0_iter1_reg;
wire   [0:0] icmp_ln253_fu_288_p2;
reg   [0:0] icmp_ln253_reg_426;
reg   [0:0] icmp_ln253_reg_426_pp0_iter1_reg;
reg   [0:0] icmp_ln253_reg_426_pp0_iter2_reg;
reg   [0:0] icmp_ln253_reg_426_pp0_iter3_reg;
wire   [63:0] v151_fu_308_p3;
reg   [63:0] v151_reg_430;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v152_reg_435;
reg   [8:0] v0_0_addr_reg_440;
reg   [8:0] v0_0_addr_reg_440_pp0_iter3_reg;
reg   [8:0] v0_1_addr_reg_445;
reg   [8:0] v0_1_addr_reg_445_pp0_iter3_reg;
wire   [63:0] select_ln251_fu_321_p3;
reg   [63:0] select_ln251_reg_450;
wire   [63:0] v153_fu_328_p1;
reg   [63:0] v154_reg_460;
reg   [63:0] v155_reg_467;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln249_fu_264_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln249_1_fu_315_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v148_fu_70;
reg   [63:0] ap_sig_allocacmp_v148_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter4_stage4;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [6:0] v149_fu_74;
wire   [6:0] add_ln247_fu_294_p2;
reg   [6:0] ap_sig_allocacmp_v149_load;
reg   [3:0] v146_fu_78;
reg   [3:0] ap_sig_allocacmp_v146_load;
reg   [9:0] indvar_flatten33_fu_82;
wire   [9:0] add_ln243_fu_183_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten33_load;
wire    ap_block_pp0_stage4_01001;
reg    v12_ce0_local;
reg    v12_1_ce0_local;
reg    v0_0_ce0_local;
reg   [8:0] v0_0_address0_local;
reg    v0_0_we0_local;
wire   [63:0] bitcast_ln253_fu_332_p1;
wire    ap_block_pp0_stage3;
reg    v0_1_ce0_local;
reg   [8:0] v0_1_address0_local;
reg    v0_1_we0_local;
reg   [63:0] grp_fu_145_p0;
reg   [63:0] grp_fu_145_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_149_p0;
reg   [63:0] grp_fu_149_p1;
wire   [0:0] icmp_ln247_fu_195_p2;
wire   [3:0] add_ln243_1_fu_209_p2;
wire   [9:0] zext_ln247_fu_249_p1;
wire   [9:0] tmp_s_fu_242_p3;
wire   [8:0] add_ln249_1_fu_258_p3;
wire   [9:0] add_ln251_fu_276_p2;
wire   [9:0] grp_fu_270_p2;
reg   [1:0] grp_fu_145_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v148_fu_70 = 64'd0;
#0 v149_fu_74 = 7'd0;
#0 v146_fu_78 = 4'd0;
#0 indvar_flatten33_fu_82 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U4265(.clk(ap_clk),.reset(ap_rst),.din0(add_ln249_fu_252_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_270_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln243_fu_177_p2 == 1'd0))) begin
            indvar_flatten33_fu_82 <= add_ln243_fu_183_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten33_fu_82 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v146_fu_78 <= 4'd0;
    end else if (((icmp_ln243_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v146_fu_78 <= select_ln243_reg_389;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v148_fu_70 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v148_fu_70 <= grp_fu_32862_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v149_fu_74 <= 7'd0;
    end else if (((icmp_ln243_reg_379 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v149_fu_74 <= add_ln247_fu_294_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln243_reg_379 <= icmp_ln243_fu_177_p2;
        icmp_ln243_reg_379_pp0_iter1_reg <= icmp_ln243_reg_379;
        icmp_ln243_reg_379_pp0_iter2_reg <= icmp_ln243_reg_379_pp0_iter1_reg;
        icmp_ln243_reg_379_pp0_iter3_reg <= icmp_ln243_reg_379_pp0_iter2_reg;
        icmp_ln243_reg_379_pp0_iter4_reg <= icmp_ln243_reg_379_pp0_iter3_reg;
        lshr_ln9_reg_401 <= {{select_ln244_fu_201_p3[5:1]}};
        select_ln243_reg_389 <= select_ln243_fu_215_p3;
        select_ln244_reg_383 <= select_ln244_fu_201_p3;
        trunc_ln247_reg_396 <= trunc_ln247_fu_223_p1;
        v0_0_addr_reg_440 <= zext_ln249_1_fu_315_p1;
        v0_0_addr_reg_440_pp0_iter3_reg <= v0_0_addr_reg_440;
        v0_1_addr_reg_445 <= zext_ln249_1_fu_315_p1;
        v0_1_addr_reg_445_pp0_iter3_reg <= v0_1_addr_reg_445;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln251_reg_421 <= icmp_ln251_fu_282_p2;
        icmp_ln251_reg_421_pp0_iter1_reg <= icmp_ln251_reg_421;
        icmp_ln253_reg_426 <= icmp_ln253_fu_288_p2;
        icmp_ln253_reg_426_pp0_iter1_reg <= icmp_ln253_reg_426;
        icmp_ln253_reg_426_pp0_iter2_reg <= icmp_ln253_reg_426_pp0_iter1_reg;
        icmp_ln253_reg_426_pp0_iter3_reg <= icmp_ln253_reg_426_pp0_iter2_reg;
        select_ln251_reg_450 <= select_ln251_fu_321_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v151_reg_430 <= v151_fu_308_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v152_reg_435 <= grp_fu_32880_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v154_reg_460 <= grp_fu_32862_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v155_reg_467 <= grp_fu_32880_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_379 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_379_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten33_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten33_load = indvar_flatten33_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v146_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v146_load = v146_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_v148_load_1 = grp_fu_32862_p_dout0;
    end else begin
        ap_sig_allocacmp_v148_load_1 = v148_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v149_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v149_load = v149_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_145_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_145_opcode = 2'd0;
    end else begin
        grp_fu_145_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_145_p0 = ap_sig_allocacmp_v148_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_145_p0 = v153_fu_328_p1;
    end else begin
        grp_fu_145_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_145_p1 = v155_reg_467;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_145_p1 = v152_reg_435;
    end else begin
        grp_fu_145_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_149_p0 = v154_reg_460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_149_p0 = v151_reg_430;
    end else begin
        grp_fu_149_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_149_p1 = v154_reg_460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_149_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_149_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = v0_0_addr_reg_440_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln249_1_fu_315_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln253_reg_426_pp0_iter3_reg == 1'd1))) begin
        v0_0_we0_local = 1'b1;
    end else begin
        v0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = v0_1_addr_reg_445_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln249_1_fu_315_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln253_reg_426_pp0_iter3_reg == 1'd0))) begin
        v0_1_we0_local = 1'b1;
    end else begin
        v0_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_379_pp0_iter4_reg == 1'd1))) begin
        v150_out_ap_vld = 1'b1;
    end else begin
        v150_out_ap_vld = 1'b0;
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
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
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
assign add_ln243_1_fu_209_p2 = (ap_sig_allocacmp_v146_load + 4'd1);
assign add_ln243_fu_183_p2 = (ap_sig_allocacmp_indvar_flatten33_load + 10'd1);
assign add_ln247_fu_294_p2 = (select_ln244_reg_383 + 7'd1);
assign add_ln249_1_fu_258_p3 = {{select_ln243_reg_389}, {lshr_ln9_reg_401}};
assign add_ln249_fu_252_p2 = (zext_ln247_fu_249_p1 + tmp_s_fu_242_p3);
assign add_ln251_fu_276_p2 = ($signed(add_ln249_fu_252_p2) + $signed(10'd608));
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
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign bitcast_ln253_fu_332_p1 = v154_reg_460;
assign grp_fu_32862_p_ce = 1'b1;
assign grp_fu_32862_p_din0 = grp_fu_145_p0;
assign grp_fu_32862_p_din1 = grp_fu_145_p1;
assign grp_fu_32862_p_opcode = grp_fu_145_opcode;
assign grp_fu_32880_p_ce = 1'b1;
assign grp_fu_32880_p_din0 = grp_fu_149_p0;
assign grp_fu_32880_p_din1 = grp_fu_149_p1;
assign icmp_ln243_fu_177_p2 = ((ap_sig_allocacmp_indvar_flatten33_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln247_fu_195_p2 = ((ap_sig_allocacmp_v149_load == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln251_fu_282_p2 = ((add_ln251_fu_276_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln253_fu_288_p2 = ((add_ln249_fu_252_p2 < 10'd416) ? 1'b1 : 1'b0);
assign select_ln243_fu_215_p3 = ((icmp_ln247_fu_195_p2[0:0] == 1'b1) ? add_ln243_1_fu_209_p2 : ap_sig_allocacmp_v146_load);
assign select_ln244_fu_201_p3 = ((icmp_ln247_fu_195_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v149_load);
assign select_ln251_fu_321_p3 = ((icmp_ln251_reg_421_pp0_iter1_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign tmp_s_fu_242_p3 = {{select_ln243_reg_389}, {6'd0}};
assign trunc_ln247_fu_223_p1 = select_ln244_fu_201_p3[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_d0 = bitcast_ln253_fu_332_p1;
assign v0_0_we0 = v0_0_we0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_d0 = bitcast_ln253_fu_332_p1;
assign v0_1_we0 = v0_1_we0_local;
assign v12_1_address0 = zext_ln249_fu_264_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_address0 = zext_ln249_fu_264_p1;
assign v12_ce0 = v12_ce0_local;
assign v150_out = v148_fu_70;
assign v151_fu_308_p3 = ((trunc_ln247_reg_396[0:0] == 1'b1) ? v12_1_q0 : v12_q0);
assign v153_fu_328_p1 = select_ln251_reg_450;
assign zext_ln247_fu_249_p1 = select_ln244_reg_383;
assign zext_ln249_1_fu_315_p1 = grp_fu_270_p2;
assign zext_ln249_fu_264_p1 = add_ln249_1_fu_258_p3;
endmodule 