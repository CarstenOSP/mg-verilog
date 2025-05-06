
module forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12241_address0,v12241_ce0,v12241_we0,v12241_d0,v12241_1_address0,v12241_1_ce0,v12241_1_we0,v12241_1_d0,v12240_1_address0,v12240_1_ce0,v12240_1_q0,v12239_1_address0,v12239_1_ce0,v12239_1_q0,v12240_address0,v12240_ce0,v12240_q0,v12239_address0,v12239_ce0,v12239_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v12241_address0;
output   v12241_ce0;
output   v12241_we0;
output  [7:0] v12241_d0;
output  [13:0] v12241_1_address0;
output   v12241_1_ce0;
output   v12241_1_we0;
output  [7:0] v12241_1_d0;
output  [13:0] v12240_1_address0;
output   v12240_1_ce0;
input  [7:0] v12240_1_q0;
output  [13:0] v12239_1_address0;
output   v12239_1_ce0;
input  [7:0] v12239_1_q0;
output  [13:0] v12240_address0;
output   v12240_ce0;
input  [7:0] v12240_q0;
output  [13:0] v12239_address0;
output   v12239_ce0;
input  [7:0] v12239_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15649_fu_236_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln15649_reg_525;
reg   [0:0] icmp_ln15649_reg_525_pp0_iter1_reg;
wire   [10:0] add_ln15660_fu_347_p2;
reg   [10:0] add_ln15660_reg_529;
wire   [9:0] trunc_ln15660_fu_353_p1;
reg   [9:0] trunc_ln15660_reg_534;
reg   [3:0] lshr_ln_reg_539;
wire   [0:0] icmp_ln15651_fu_387_p2;
reg   [0:0] icmp_ln15651_reg_544;
wire   [0:0] icmp_ln15650_fu_393_p2;
reg   [0:0] icmp_ln15650_reg_549;
wire   [63:0] zext_ln15660_4_fu_452_p1;
reg   [63:0] zext_ln15660_4_reg_554;
reg   [0:0] ap_phi_mux_icmp_ln1565039_phi_fu_184_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1565138_phi_fu_195_p4;
reg   [13:0] indvar_flatten1233_fu_82;
wire   [13:0] add_ln15649_1_fu_230_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v1219734_fu_86;
wire   [5:0] v12197_fu_287_p3;
reg   [8:0] indvar_flatten35_fu_90;
wire   [8:0] select_ln15650_1_fu_379_p3;
reg   [4:0] v1219836_fu_94;
wire   [4:0] v12198_fu_309_p3;
reg   [4:0] v1219937_fu_98;
wire   [4:0] v12199_fu_367_p2;
reg    v12240_1_ce0_local;
reg    v12239_1_ce0_local;
reg    v12240_ce0_local;
reg    v12239_ce0_local;
reg    v12241_1_we0_local;
wire   [7:0] select_ln15656_fu_466_p3;
reg    v12241_1_ce0_local;
reg    v12241_we0_local;
wire   [7:0] select_ln15660_fu_481_p3;
reg    v12241_ce0_local;
wire   [5:0] add_ln15649_fu_259_p2;
wire   [4:0] select_ln15649_fu_265_p3;
wire   [0:0] or_ln15649_fu_281_p2;
wire   [4:0] select_ln15649_1_fu_273_p3;
wire   [4:0] add_ln15650_fu_295_p2;
wire   [7:0] tmp_fu_325_p3;
wire   [10:0] p_shl47_fu_317_p3;
wire   [10:0] zext_ln15660_fu_333_p1;
wire   [10:0] sub_ln15660_fu_337_p2;
wire   [10:0] zext_ln15660_1_fu_343_p1;
wire   [4:0] v12199_mid2_fu_301_p3;
wire   [8:0] add_ln15650_1_fu_373_p2;
wire   [11:0] tmp_428_fu_419_p3;
wire   [13:0] tmp_429_fu_426_p3;
wire   [13:0] zext_ln15660_2_fu_433_p1;
wire   [13:0] sub_ln15652_fu_437_p2;
wire   [13:0] zext_ln15660_3_fu_443_p1;
wire   [13:0] add_ln15660_1_fu_446_p2;
wire   [0:0] icmp_ln224_fu_460_p2;
wire   [0:0] icmp_ln224_3_fu_475_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_162;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_82 = 14'd0;
#0 v1219734_fu_86 = 6'd0;
#0 indvar_flatten35_fu_90 = 9'd0;
#0 v1219836_fu_94 = 5'd0;
#0 v1219937_fu_98 = 5'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_162)) begin
        indvar_flatten1233_fu_82 <= add_ln15649_1_fu_230_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_90 <= 9'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_90 <= select_ln15650_1_fu_379_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1219734_fu_86 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1219734_fu_86 <= v12197_fu_287_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1219836_fu_94 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1219836_fu_94 <= v12198_fu_309_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1219937_fu_98 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1219937_fu_98 <= v12199_fu_367_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15660_reg_529 <= add_ln15660_fu_347_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln15649_reg_525 <= icmp_ln15649_fu_236_p2;
        icmp_ln15649_reg_525_pp0_iter1_reg <= icmp_ln15649_reg_525;
        lshr_ln_reg_539 <= {{v12199_mid2_fu_301_p3[4:1]}};
        trunc_ln15660_reg_534 <= trunc_ln15660_fu_353_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15650_reg_549 <= icmp_ln15650_fu_393_p2;
        icmp_ln15651_reg_544 <= icmp_ln15651_fu_387_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln15660_4_reg_554[13 : 0] <= zext_ln15660_4_fu_452_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln15649_fu_236_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15649_reg_525_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1565039_phi_fu_184_p4 = icmp_ln15650_reg_549;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1565039_phi_fu_184_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1565039_phi_fu_184_p4 = icmp_ln15650_reg_549;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15649_reg_525_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1565138_phi_fu_195_p4 = icmp_ln15651_reg_544;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1565138_phi_fu_195_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln1565138_phi_fu_195_p4 = icmp_ln15651_reg_544;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12239_1_ce0_local = 1'b1;
    end else begin
        v12239_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12239_ce0_local = 1'b1;
    end else begin
        v12239_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12240_1_ce0_local = 1'b1;
    end else begin
        v12240_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12240_ce0_local = 1'b1;
    end else begin
        v12240_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12241_1_ce0_local = 1'b1;
    end else begin
        v12241_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12241_1_we0_local = 1'b1;
    end else begin
        v12241_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12241_ce0_local = 1'b1;
    end else begin
        v12241_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12241_we0_local = 1'b1;
    end else begin
        v12241_we0_local = 1'b0;
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
assign add_ln15649_1_fu_230_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln15649_fu_259_p2 = (v1219734_fu_86 + 6'd1);
assign add_ln15650_1_fu_373_p2 = (indvar_flatten35_fu_90 + 9'd1);
assign add_ln15650_fu_295_p2 = (select_ln15649_fu_265_p3 + 5'd1);
assign add_ln15660_1_fu_446_p2 = (sub_ln15652_fu_437_p2 + zext_ln15660_3_fu_443_p1);
assign add_ln15660_fu_347_p2 = (sub_ln15660_fu_337_p2 + zext_ln15660_1_fu_343_p1);
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
    ap_condition_162 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln15649_fu_236_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln15650_fu_393_p2 = ((select_ln15650_1_fu_379_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln15651_fu_387_p2 = ((v12199_fu_367_p2 < 5'd28) ? 1'b1 : 1'b0);
assign icmp_ln224_3_fu_475_p2 = (($signed(v12239_q0) < $signed(v12240_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_460_p2 = (($signed(v12239_1_q0) < $signed(v12240_1_q0)) ? 1'b1 : 1'b0);
assign or_ln15649_fu_281_p2 = (ap_phi_mux_icmp_ln1565138_phi_fu_195_p4 | ap_phi_mux_icmp_ln1565039_phi_fu_184_p4);
assign p_shl47_fu_317_p3 = {{v12197_fu_287_p3}, {5'd0}};
assign select_ln15649_1_fu_273_p3 = ((ap_phi_mux_icmp_ln1565039_phi_fu_184_p4[0:0] == 1'b1) ? 5'd0 : v1219937_fu_98);
assign select_ln15649_fu_265_p3 = ((ap_phi_mux_icmp_ln1565039_phi_fu_184_p4[0:0] == 1'b1) ? 5'd0 : v1219836_fu_94);
assign select_ln15650_1_fu_379_p3 = ((ap_phi_mux_icmp_ln1565039_phi_fu_184_p4[0:0] == 1'b1) ? 9'd1 : add_ln15650_1_fu_373_p2);
assign select_ln15656_fu_466_p3 = ((icmp_ln224_fu_460_p2[0:0] == 1'b1) ? v12240_1_q0 : v12239_1_q0);
assign select_ln15660_fu_481_p3 = ((icmp_ln224_3_fu_475_p2[0:0] == 1'b1) ? v12240_q0 : v12239_q0);
assign sub_ln15652_fu_437_p2 = (tmp_429_fu_426_p3 - zext_ln15660_2_fu_433_p1);
assign sub_ln15660_fu_337_p2 = (p_shl47_fu_317_p3 - zext_ln15660_fu_333_p1);
assign tmp_428_fu_419_p3 = {{add_ln15660_reg_529}, {1'd0}};
assign tmp_429_fu_426_p3 = {{trunc_ln15660_reg_534}, {4'd0}};
assign tmp_fu_325_p3 = {{v12197_fu_287_p3}, {2'd0}};
assign trunc_ln15660_fu_353_p1 = add_ln15660_fu_347_p2[9:0];
assign v12197_fu_287_p3 = ((ap_phi_mux_icmp_ln1565039_phi_fu_184_p4[0:0] == 1'b1) ? add_ln15649_fu_259_p2 : v1219734_fu_86);
assign v12198_fu_309_p3 = ((or_ln15649_fu_281_p2[0:0] == 1'b1) ? select_ln15649_fu_265_p3 : add_ln15650_fu_295_p2);
assign v12199_fu_367_p2 = (v12199_mid2_fu_301_p3 + 5'd2);
assign v12199_mid2_fu_301_p3 = ((or_ln15649_fu_281_p2[0:0] == 1'b1) ? select_ln15649_1_fu_273_p3 : 5'd0);
assign v12239_1_address0 = zext_ln15660_4_fu_452_p1;
assign v12239_1_ce0 = v12239_1_ce0_local;
assign v12239_address0 = zext_ln15660_4_fu_452_p1;
assign v12239_ce0 = v12239_ce0_local;
assign v12240_1_address0 = zext_ln15660_4_fu_452_p1;
assign v12240_1_ce0 = v12240_1_ce0_local;
assign v12240_address0 = zext_ln15660_4_fu_452_p1;
assign v12240_ce0 = v12240_ce0_local;
assign v12241_1_address0 = zext_ln15660_4_reg_554;
assign v12241_1_ce0 = v12241_1_ce0_local;
assign v12241_1_d0 = select_ln15656_fu_466_p3;
assign v12241_1_we0 = v12241_1_we0_local;
assign v12241_address0 = zext_ln15660_4_reg_554;
assign v12241_ce0 = v12241_ce0_local;
assign v12241_d0 = select_ln15660_fu_481_p3;
assign v12241_we0 = v12241_we0_local;
assign zext_ln15660_1_fu_343_p1 = v12198_fu_309_p3;
assign zext_ln15660_2_fu_433_p1 = tmp_428_fu_419_p3;
assign zext_ln15660_3_fu_443_p1 = lshr_ln_reg_539;
assign zext_ln15660_4_fu_452_p1 = add_ln15660_1_fu_446_p2;
assign zext_ln15660_fu_333_p1 = tmp_fu_325_p3;
always @ (posedge ap_clk) begin
    zext_ln15660_4_reg_554[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
