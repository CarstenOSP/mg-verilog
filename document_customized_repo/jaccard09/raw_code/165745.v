module forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4917_address0,v4917_ce0,v4917_we0,v4917_d0,v4917_1_address0,v4917_1_ce0,v4917_1_we0,v4917_1_d0,v4916_1_address0,v4916_1_ce0,v4916_1_q0,v4915_1_address0,v4915_1_ce0,v4915_1_q0,v4916_address0,v4916_ce0,v4916_q0,v4915_address0,v4915_ce0,v4915_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v4917_address0;
output   v4917_ce0;
output   v4917_we0;
output  [7:0] v4917_d0;
output  [9:0] v4917_1_address0;
output   v4917_1_ce0;
output   v4917_1_we0;
output  [7:0] v4917_1_d0;
output  [9:0] v4916_1_address0;
output   v4916_1_ce0;
input  [7:0] v4916_1_q0;
output  [9:0] v4915_1_address0;
output   v4915_1_ce0;
input  [7:0] v4915_1_q0;
output  [9:0] v4916_address0;
output   v4916_ce0;
input  [7:0] v4916_q0;
output  [9:0] v4915_address0;
output   v4915_ce0;
input  [7:0] v4915_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6283_fu_366_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] v4875_mid2_fu_274_p3;
reg   [2:0] v4875_mid2_reg_495;
wire   [6:0] add_ln6294_fu_322_p2;
reg   [6:0] add_ln6294_reg_500;
wire   [0:0] icmp_ln6285_fu_354_p2;
reg   [0:0] icmp_ln6285_reg_506;
wire   [0:0] icmp_ln6284_fu_360_p2;
reg   [0:0] icmp_ln6284_reg_511;
reg   [0:0] icmp_ln6283_reg_516;
wire   [63:0] zext_ln6294_4_fu_422_p1;
reg   [63:0] zext_ln6294_4_reg_520;
reg   [0:0] ap_phi_mux_icmp_ln628439_phi_fu_171_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln628538_phi_fu_181_p4;
reg   [9:0] indvar_flatten1233_fu_70;
wire   [9:0] add_ln6283_1_fu_348_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v487334_fu_74;
wire   [5:0] v4873_fu_254_p3;
reg   [5:0] ap_sig_allocacmp_v487334_load;
reg   [5:0] indvar_flatten35_fu_78;
wire   [5:0] select_ln6284_1_fu_340_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [2:0] v487436_fu_82;
wire   [2:0] v4874_fu_282_p3;
reg   [2:0] ap_sig_allocacmp_v487436_load;
reg   [2:0] v487537_fu_86;
wire   [2:0] v4875_fu_328_p2;
reg   [2:0] ap_sig_allocacmp_v487537_load;
reg    v4916_1_ce0_local;
reg    v4915_1_ce0_local;
reg    v4916_ce0_local;
reg    v4915_ce0_local;
reg    v4917_1_we0_local;
wire   [7:0] select_ln6290_fu_436_p3;
reg    v4917_1_ce0_local;
reg    v4917_we0_local;
wire   [7:0] select_ln6294_fu_451_p3;
reg    v4917_ce0_local;
wire   [0:0] xor_ln6283_fu_242_p2;
wire   [5:0] add_ln6283_fu_228_p2;
wire   [2:0] select_ln6283_fu_234_p3;
wire   [0:0] and_ln6283_fu_248_p2;
wire   [0:0] empty_fu_268_p2;
wire   [2:0] add_ln6284_fu_262_p2;
wire   [3:0] lshr_ln_fu_290_p4;
wire   [6:0] p_shl45_fu_304_p3;
wire   [6:0] zext_ln6294_fu_300_p1;
wire   [6:0] sub_ln6294_fu_312_p2;
wire   [6:0] zext_ln6294_1_fu_318_p1;
wire   [5:0] add_ln6284_1_fu_334_p2;
wire   [9:0] p_shl_fu_400_p3;
wire   [9:0] zext_ln6294_2_fu_397_p1;
wire   [9:0] sub_ln6294_1_fu_407_p2;
wire   [9:0] zext_ln6294_3_fu_413_p1;
wire   [9:0] add_ln6294_1_fu_416_p2;
wire   [0:0] icmp_ln224_fu_430_p2;
wire   [0:0] icmp_ln224_1_fu_445_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_365;
reg    ap_condition_111;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_70 = 10'd0;
#0 v487334_fu_74 = 6'd0;
#0 indvar_flatten35_fu_78 = 6'd0;
#0 v487436_fu_82 = 3'd0;
#0 v487537_fu_86 = 3'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_111)) begin
        indvar_flatten1233_fu_70 <= add_ln6283_1_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    indvar_flatten35_fu_78 <= select_ln6284_1_fu_340_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v487334_fu_74 <= v4873_fu_254_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v487436_fu_82 <= v4874_fu_282_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v487537_fu_86 <= v4875_fu_328_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6294_reg_500 <= add_ln6294_fu_322_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln6283_reg_516 <= icmp_ln6283_fu_366_p2;
        v4875_mid2_reg_495 <= v4875_mid2_fu_274_p3;
        zext_ln6294_4_reg_520[9 : 0] <= zext_ln6294_4_fu_422_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6284_reg_511 <= icmp_ln6284_fu_360_p2;
        icmp_ln6285_reg_506 <= icmp_ln6285_fu_354_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6283_fu_366_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_365)) begin
            ap_phi_mux_icmp_ln628439_phi_fu_171_p4 = icmp_ln6284_reg_511;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln628439_phi_fu_171_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln628439_phi_fu_171_p4 = icmp_ln6284_reg_511;
        end
    end else begin
        ap_phi_mux_icmp_ln628439_phi_fu_171_p4 = icmp_ln6284_reg_511;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_365)) begin
            ap_phi_mux_icmp_ln628538_phi_fu_181_p4 = icmp_ln6285_reg_506;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln628538_phi_fu_181_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln628538_phi_fu_181_p4 = icmp_ln6285_reg_506;
        end
    end else begin
        ap_phi_mux_icmp_ln628538_phi_fu_181_p4 = icmp_ln6285_reg_506;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v487334_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v487334_load = v487334_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v487436_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v487436_load = v487436_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v487537_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v487537_load = v487537_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4915_1_ce0_local = 1'b1;
    end else begin
        v4915_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4915_ce0_local = 1'b1;
    end else begin
        v4915_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4916_1_ce0_local = 1'b1;
    end else begin
        v4916_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4916_ce0_local = 1'b1;
    end else begin
        v4916_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4917_1_ce0_local = 1'b1;
    end else begin
        v4917_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4917_1_we0_local = 1'b1;
    end else begin
        v4917_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4917_ce0_local = 1'b1;
    end else begin
        v4917_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4917_we0_local = 1'b1;
    end else begin
        v4917_we0_local = 1'b0;
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
assign add_ln6283_1_fu_348_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 10'd1);
assign add_ln6283_fu_228_p2 = (ap_sig_allocacmp_v487334_load + 6'd2);
assign add_ln6284_1_fu_334_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 6'd1);
assign add_ln6284_fu_262_p2 = (select_ln6283_fu_234_p3 + 3'd1);
assign add_ln6294_1_fu_416_p2 = (sub_ln6294_1_fu_407_p2 + zext_ln6294_3_fu_413_p1);
assign add_ln6294_fu_322_p2 = (sub_ln6294_fu_312_p2 + zext_ln6294_1_fu_318_p1);
assign and_ln6283_fu_248_p2 = (xor_ln6283_fu_242_p2 & ap_phi_mux_icmp_ln628538_phi_fu_181_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_111 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_365 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln6283_reg_516 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_268_p2 = (ap_phi_mux_icmp_ln628439_phi_fu_171_p4 | and_ln6283_fu_248_p2);
assign icmp_ln224_1_fu_445_p2 = (($signed(v4915_q0) < $signed(v4916_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_430_p2 = (($signed(v4915_1_q0) < $signed(v4916_1_q0)) ? 1'b1 : 1'b0);
assign icmp_ln6283_fu_366_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln6284_fu_360_p2 = ((select_ln6284_1_fu_340_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6285_fu_354_p2 = ((v4875_fu_328_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_290_p4 = {{v4873_fu_254_p3[4:1]}};
assign p_shl45_fu_304_p3 = {{lshr_ln_fu_290_p4}, {3'd0}};
assign p_shl_fu_400_p3 = {{add_ln6294_reg_500}, {3'd0}};
assign select_ln6283_fu_234_p3 = ((ap_phi_mux_icmp_ln628439_phi_fu_171_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v487436_load);
assign select_ln6284_1_fu_340_p3 = ((ap_phi_mux_icmp_ln628439_phi_fu_171_p4[0:0] == 1'b1) ? 6'd1 : add_ln6284_1_fu_334_p2);
assign select_ln6290_fu_436_p3 = ((icmp_ln224_fu_430_p2[0:0] == 1'b1) ? v4916_1_q0 : v4915_1_q0);
assign select_ln6294_fu_451_p3 = ((icmp_ln224_1_fu_445_p2[0:0] == 1'b1) ? v4916_q0 : v4915_q0);
assign sub_ln6294_1_fu_407_p2 = (p_shl_fu_400_p3 - zext_ln6294_2_fu_397_p1);
assign sub_ln6294_fu_312_p2 = (p_shl45_fu_304_p3 - zext_ln6294_fu_300_p1);
assign v4873_fu_254_p3 = ((ap_phi_mux_icmp_ln628439_phi_fu_171_p4[0:0] == 1'b1) ? add_ln6283_fu_228_p2 : ap_sig_allocacmp_v487334_load);
assign v4874_fu_282_p3 = ((and_ln6283_fu_248_p2[0:0] == 1'b1) ? add_ln6284_fu_262_p2 : select_ln6283_fu_234_p3);
assign v4875_fu_328_p2 = (v4875_mid2_fu_274_p3 + 3'd1);
assign v4875_mid2_fu_274_p3 = ((empty_fu_268_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v487537_load);
assign v4915_1_address0 = zext_ln6294_4_fu_422_p1;
assign v4915_1_ce0 = v4915_1_ce0_local;
assign v4915_address0 = zext_ln6294_4_fu_422_p1;
assign v4915_ce0 = v4915_ce0_local;
assign v4916_1_address0 = zext_ln6294_4_fu_422_p1;
assign v4916_1_ce0 = v4916_1_ce0_local;
assign v4916_address0 = zext_ln6294_4_fu_422_p1;
assign v4916_ce0 = v4916_ce0_local;
assign v4917_1_address0 = zext_ln6294_4_reg_520;
assign v4917_1_ce0 = v4917_1_ce0_local;
assign v4917_1_d0 = select_ln6290_fu_436_p3;
assign v4917_1_we0 = v4917_1_we0_local;
assign v4917_address0 = zext_ln6294_4_reg_520;
assign v4917_ce0 = v4917_ce0_local;
assign v4917_d0 = select_ln6294_fu_451_p3;
assign v4917_we0 = v4917_we0_local;
assign xor_ln6283_fu_242_p2 = (ap_phi_mux_icmp_ln628439_phi_fu_171_p4 ^ 1'd1);
assign zext_ln6294_1_fu_318_p1 = v4874_fu_282_p3;
assign zext_ln6294_2_fu_397_p1 = add_ln6294_reg_500;
assign zext_ln6294_3_fu_413_p1 = v4875_mid2_reg_495;
assign zext_ln6294_4_fu_422_p1 = add_ln6294_1_fu_416_p2;
assign zext_ln6294_fu_300_p1 = lshr_ln_fu_290_p4;
always @ (posedge ap_clk) begin
    zext_ln6294_4_reg_520[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 