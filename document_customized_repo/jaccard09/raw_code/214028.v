module SgdLR_sw_SgdLR_sw_Pipeline_label_323 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,v5_1,v0_0_address0,v0_0_ce0,v0_0_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v22_5,v0_1_address0,v0_1_ce0,v0_1_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_7_address0,v0_7_ce0,v0_7_q0,grp_fu_10140_p_din0,grp_fu_10140_p_din1,grp_fu_10140_p_dout0,grp_fu_10140_p_ce,grp_fu_10144_p_din0,grp_fu_10144_p_din1,grp_fu_10144_p_dout0,grp_fu_10144_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [12:0] v5_1;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
input  [31:0] v22_5;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [31:0] grp_fu_10140_p_din0;
output  [31:0] grp_fu_10140_p_din1;
input  [31:0] grp_fu_10140_p_dout0;
output   grp_fu_10140_p_ce;
output  [31:0] grp_fu_10144_p_din0;
output  [31:0] grp_fu_10144_p_din1;
input  [31:0] grp_fu_10144_p_dout0;
output   grp_fu_10144_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_282_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v19_reg_467;
wire   [0:0] icmp_ln53_fu_338_p2;
reg   [0:0] icmp_ln53_reg_517;
reg   [0:0] icmp_ln53_reg_517_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_517_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_517_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_517_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_517_pp0_iter5_reg;
reg   [7:0] lshr_ln48_5_reg_521;
reg   [7:0] lshr_ln48_5_reg_521_pp0_iter2_reg;
reg   [7:0] lshr_ln48_5_reg_521_pp0_iter3_reg;
reg   [7:0] lshr_ln48_5_reg_521_pp0_iter4_reg;
reg   [7:0] lshr_ln48_5_reg_521_pp0_iter5_reg;
wire   [31:0] v23_fu_383_p11;
reg   [31:0] v23_reg_526;
wire   [31:0] v23_26_fu_423_p11;
reg   [31:0] v23_26_reg_531;
reg   [31:0] v24_reg_536;
reg   [31:0] v24_26_reg_542;
wire   [63:0] zext_ln51_5_fu_326_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_fu_447_p1;
reg   [10:0] v19_5_fu_94;
wire   [10:0] add_ln47_fu_344_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19;
reg    v0_0_ce0_local;
reg    v0_2_ce0_local;
reg    v0_4_ce0_local;
reg    v0_6_ce0_local;
reg    v0_1_ce0_local;
reg    v0_3_ce0_local;
reg    v0_5_ce0_local;
reg    v0_7_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
wire   [6:0] lshr_ln51_5_fu_294_p4;
wire   [9:0] tmp_s_fu_308_p4;
wire   [9:0] zext_ln51_fu_304_p1;
wire   [19:0] add_ln51_5_fu_318_p3;
wire   [1:0] trunc_ln47_28_fu_290_p1;
wire   [31:0] v23_fu_383_p2;
wire   [31:0] v23_fu_383_p4;
wire   [31:0] v23_fu_383_p6;
wire   [31:0] v23_fu_383_p8;
wire   [31:0] v23_fu_383_p9;
wire   [2:0] trunc_ln47_fu_355_p1;
wire   [31:0] v23_26_fu_423_p2;
wire   [31:0] v23_26_fu_423_p4;
wire   [31:0] v23_26_fu_423_p6;
wire   [31:0] v23_26_fu_423_p8;
wire   [31:0] v23_26_fu_423_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v23_fu_383_p1;
wire   [2:0] v23_fu_383_p3;
wire  signed [2:0] v23_fu_383_p5;
wire  signed [2:0] v23_fu_383_p7;
wire   [2:0] v23_26_fu_423_p1;
wire   [2:0] v23_26_fu_423_p3;
wire  signed [2:0] v23_26_fu_423_p5;
wire  signed [2:0] v23_26_fu_423_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v19_5_fu_94 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U509(.din0(v23_fu_383_p2),.din1(v23_fu_383_p4),.din2(v23_fu_383_p6),.din3(v23_fu_383_p8),.def(v23_fu_383_p9),.sel(trunc_ln47_fu_355_p1),.dout(v23_fu_383_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U510(.din0(v23_26_fu_423_p2),.din1(v23_26_fu_423_p4),.din2(v23_26_fu_423_p6),.din3(v23_26_fu_423_p8),.def(v23_26_fu_423_p9),.sel(trunc_ln47_fu_355_p1),.dout(v23_26_fu_423_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_282_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_5_fu_94 <= add_ln47_fu_344_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_5_fu_94 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln53_reg_517 <= icmp_ln53_fu_338_p2;
        icmp_ln53_reg_517_pp0_iter1_reg <= icmp_ln53_reg_517;
        lshr_ln48_5_reg_521 <= {{v19_reg_467[9:2]}};
        v19_reg_467 <= ap_sig_allocacmp_v19;
        v23_26_reg_531 <= v23_26_fu_423_p11;
        v23_reg_526 <= v23_fu_383_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln53_reg_517_pp0_iter2_reg <= icmp_ln53_reg_517_pp0_iter1_reg;
        icmp_ln53_reg_517_pp0_iter3_reg <= icmp_ln53_reg_517_pp0_iter2_reg;
        icmp_ln53_reg_517_pp0_iter4_reg <= icmp_ln53_reg_517_pp0_iter3_reg;
        icmp_ln53_reg_517_pp0_iter5_reg <= icmp_ln53_reg_517_pp0_iter4_reg;
        lshr_ln48_5_reg_521_pp0_iter2_reg <= lshr_ln48_5_reg_521;
        lshr_ln48_5_reg_521_pp0_iter3_reg <= lshr_ln48_5_reg_521_pp0_iter2_reg;
        lshr_ln48_5_reg_521_pp0_iter4_reg <= lshr_ln48_5_reg_521_pp0_iter3_reg;
        lshr_ln48_5_reg_521_pp0_iter5_reg <= lshr_ln48_5_reg_521_pp0_iter4_reg;
        v24_26_reg_542 <= grp_fu_10144_p_dout0;
        v24_reg_536 <= grp_fu_10140_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_fu_282_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19 = v19_5_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_517_pp0_iter5_reg == 1'd1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_517_pp0_iter5_reg == 1'd0))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_517_pp0_iter5_reg == 1'd0))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_517_pp0_iter5_reg == 1'd1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_344_p2 = (ap_sig_allocacmp_v19 + 11'd2);
assign add_ln51_5_fu_318_p3 = {{tmp_s_fu_308_p4}, {zext_ln51_fu_304_p1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_10140_p_ce = 1'b1;
assign grp_fu_10140_p_din0 = v22_5;
assign grp_fu_10140_p_din1 = v23_reg_526;
assign grp_fu_10144_p_ce = 1'b1;
assign grp_fu_10144_p_din0 = v22_5;
assign grp_fu_10144_p_din1 = v23_26_reg_531;
assign icmp_ln53_fu_338_p2 = ((trunc_ln47_28_fu_290_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln51_5_fu_294_p4 = {{ap_sig_allocacmp_v19[9:3]}};
assign tmp_fu_282_p3 = ap_sig_allocacmp_v19[32'd10];
assign tmp_s_fu_308_p4 = {{v5_1[12:3]}};
assign trunc_ln47_28_fu_290_p1 = ap_sig_allocacmp_v19[1:0];
assign trunc_ln47_fu_355_p1 = v19_reg_467[2:0];
assign v0_0_address0 = zext_ln51_5_fu_326_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln51_5_fu_326_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln51_5_fu_326_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln51_5_fu_326_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = zext_ln51_5_fu_326_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = zext_ln51_5_fu_326_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = zext_ln51_5_fu_326_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = zext_ln51_5_fu_326_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v23_26_fu_423_p2 = v0_1_q0;
assign v23_26_fu_423_p4 = v0_3_q0;
assign v23_26_fu_423_p6 = v0_5_q0;
assign v23_26_fu_423_p8 = v0_7_q0;
assign v23_26_fu_423_p9 = 'bx;
assign v23_fu_383_p2 = v0_0_q0;
assign v23_fu_383_p4 = v0_2_q0;
assign v23_fu_383_p6 = v0_4_q0;
assign v23_fu_383_p8 = v0_6_q0;
assign v23_fu_383_p9 = 'bx;
assign v3_1_address0 = zext_ln48_fu_447_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = v24_26_reg_542;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_447_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = v24_reg_536;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_fu_447_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = v24_26_reg_542;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_fu_447_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_536;
assign v3_we0 = v3_we0_local;
assign zext_ln48_fu_447_p1 = lshr_ln48_5_reg_521_pp0_iter5_reg;
assign zext_ln51_5_fu_326_p1 = add_ln51_5_fu_318_p3;
assign zext_ln51_fu_304_p1 = lshr_ln51_5_fu_294_p4;
endmodule 