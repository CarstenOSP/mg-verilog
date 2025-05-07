module forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5774_address0,v5774_ce0,v5774_we0,v5774_d0,v5774_1_address0,v5774_1_ce0,v5774_1_we0,v5774_1_d0,v5773_1_address0,v5773_1_ce0,v5773_1_q0,v5772_1_address0,v5772_1_ce0,v5772_1_q0,v5773_address0,v5773_ce0,v5773_q0,v5772_address0,v5772_ce0,v5772_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v5774_address0;
output   v5774_ce0;
output   v5774_we0;
output  [7:0] v5774_d0;
output  [8:0] v5774_1_address0;
output   v5774_1_ce0;
output   v5774_1_we0;
output  [7:0] v5774_1_d0;
output  [8:0] v5773_1_address0;
output   v5773_1_ce0;
input  [7:0] v5773_1_q0;
output  [8:0] v5772_1_address0;
output   v5772_1_ce0;
input  [7:0] v5772_1_q0;
output  [8:0] v5773_address0;
output   v5773_ce0;
input  [7:0] v5773_q0;
output  [8:0] v5772_address0;
output   v5772_ce0;
input  [7:0] v5772_q0;
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
wire   [0:0] icmp_ln7121_fu_376_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [1:0] v5732_mid2_fu_280_p3;
reg   [1:0] v5732_mid2_reg_499;
wire   [8:0] add_ln7132_fu_332_p2;
reg   [8:0] add_ln7132_reg_504;
wire   [0:0] icmp_ln7123_fu_364_p2;
reg   [0:0] icmp_ln7123_reg_510;
wire   [0:0] icmp_ln7122_fu_370_p2;
reg   [0:0] icmp_ln7122_reg_515;
reg   [0:0] icmp_ln7121_reg_520;
wire   [63:0] zext_ln7132_4_fu_426_p1;
reg   [63:0] zext_ln7132_4_reg_524;
reg   [0:0] ap_phi_mux_icmp_ln712239_phi_fu_177_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln712338_phi_fu_187_p4;
reg   [8:0] indvar_flatten1233_fu_76;
wire   [8:0] add_ln7121_1_fu_358_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v573034_fu_80;
wire   [5:0] v5730_fu_260_p3;
reg   [5:0] ap_sig_allocacmp_v573034_load;
reg   [4:0] indvar_flatten35_fu_84;
wire   [4:0] select_ln7122_1_fu_350_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [3:0] v573136_fu_88;
wire   [3:0] v5731_fu_288_p3;
reg   [3:0] ap_sig_allocacmp_v573136_load;
reg   [1:0] v573237_fu_92;
wire   [1:0] v5732_fu_338_p2;
reg   [1:0] ap_sig_allocacmp_v573237_load;
reg    v5773_1_ce0_local;
reg    v5772_1_ce0_local;
reg    v5773_ce0_local;
reg    v5772_ce0_local;
reg    v5774_1_we0_local;
wire   [7:0] select_ln7128_fu_440_p3;
reg    v5774_1_ce0_local;
reg    v5774_we0_local;
wire   [7:0] select_ln7132_fu_455_p3;
reg    v5774_ce0_local;
wire   [0:0] xor_ln7121_fu_248_p2;
wire   [5:0] add_ln7121_fu_234_p2;
wire   [3:0] select_ln7121_fu_240_p3;
wire   [0:0] and_ln7121_fu_254_p2;
wire   [0:0] empty_fu_274_p2;
wire   [3:0] add_ln7122_fu_268_p2;
wire   [7:0] tmp_fu_300_p3;
wire   [8:0] zext_ln7132_1_fu_308_p1;
wire   [8:0] zext_ln7132_fu_296_p1;
wire   [2:0] lshr_ln_fu_318_p4;
wire   [8:0] add_ln7132_2_fu_312_p2;
wire   [8:0] zext_ln7132_2_fu_328_p1;
wire   [4:0] add_ln7122_1_fu_344_p2;
wire   [8:0] shl_ln7132_fu_407_p2;
wire   [8:0] sub_ln7123_fu_412_p2;
wire   [8:0] zext_ln7132_3_fu_417_p1;
wire   [8:0] add_ln7132_1_fu_420_p2;
wire   [0:0] icmp_ln224_fu_434_p2;
wire   [0:0] icmp_ln224_2_fu_449_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_369;
reg    ap_condition_111;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_76 = 9'd0;
#0 v573034_fu_80 = 6'd0;
#0 indvar_flatten35_fu_84 = 5'd0;
#0 v573136_fu_88 = 4'd0;
#0 v573237_fu_92 = 2'd0;
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
        indvar_flatten1233_fu_76 <= add_ln7121_1_fu_358_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    indvar_flatten35_fu_84 <= select_ln7122_1_fu_350_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v573034_fu_80 <= v5730_fu_260_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v573136_fu_88 <= v5731_fu_288_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v573237_fu_92 <= v5732_fu_338_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7132_reg_504 <= add_ln7132_fu_332_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln7121_reg_520 <= icmp_ln7121_fu_376_p2;
        v5732_mid2_reg_499 <= v5732_mid2_fu_280_p3;
        zext_ln7132_4_reg_524[8 : 0] <= zext_ln7132_4_fu_426_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7122_reg_515 <= icmp_ln7122_fu_370_p2;
        icmp_ln7123_reg_510 <= icmp_ln7123_fu_364_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7121_fu_376_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_369)) begin
            ap_phi_mux_icmp_ln712239_phi_fu_177_p4 = icmp_ln7122_reg_515;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln712239_phi_fu_177_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln712239_phi_fu_177_p4 = icmp_ln7122_reg_515;
        end
    end else begin
        ap_phi_mux_icmp_ln712239_phi_fu_177_p4 = icmp_ln7122_reg_515;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_369)) begin
            ap_phi_mux_icmp_ln712338_phi_fu_187_p4 = icmp_ln7123_reg_510;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln712338_phi_fu_187_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln712338_phi_fu_187_p4 = icmp_ln7123_reg_510;
        end
    end else begin
        ap_phi_mux_icmp_ln712338_phi_fu_187_p4 = icmp_ln7123_reg_510;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v573034_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v573034_load = v573034_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v573136_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v573136_load = v573136_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v573237_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v573237_load = v573237_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5772_1_ce0_local = 1'b1;
    end else begin
        v5772_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5772_ce0_local = 1'b1;
    end else begin
        v5772_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5773_1_ce0_local = 1'b1;
    end else begin
        v5773_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5773_ce0_local = 1'b1;
    end else begin
        v5773_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5774_1_ce0_local = 1'b1;
    end else begin
        v5774_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5774_1_we0_local = 1'b1;
    end else begin
        v5774_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5774_ce0_local = 1'b1;
    end else begin
        v5774_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5774_we0_local = 1'b1;
    end else begin
        v5774_we0_local = 1'b0;
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
assign add_ln7121_1_fu_358_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 9'd1);
assign add_ln7121_fu_234_p2 = (ap_sig_allocacmp_v573034_load + 6'd1);
assign add_ln7122_1_fu_344_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 5'd1);
assign add_ln7122_fu_268_p2 = (select_ln7121_fu_240_p3 + 4'd2);
assign add_ln7132_1_fu_420_p2 = (sub_ln7123_fu_412_p2 + zext_ln7132_3_fu_417_p1);
assign add_ln7132_2_fu_312_p2 = (zext_ln7132_1_fu_308_p1 + zext_ln7132_fu_296_p1);
assign add_ln7132_fu_332_p2 = (add_ln7132_2_fu_312_p2 + zext_ln7132_2_fu_328_p1);
assign and_ln7121_fu_254_p2 = (xor_ln7121_fu_248_p2 & ap_phi_mux_icmp_ln712338_phi_fu_187_p4);
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
    ap_condition_369 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7121_reg_520 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_274_p2 = (ap_phi_mux_icmp_ln712239_phi_fu_177_p4 | and_ln7121_fu_254_p2);
assign icmp_ln224_2_fu_449_p2 = (($signed(v5772_q0) < $signed(v5773_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_434_p2 = (($signed(v5772_1_q0) < $signed(v5773_1_q0)) ? 1'b1 : 1'b0);
assign icmp_ln7121_fu_376_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln7122_fu_370_p2 = ((select_ln7122_1_fu_350_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln7123_fu_364_p2 = ((v5732_fu_338_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_318_p4 = {{v5731_fu_288_p3[3:1]}};
assign select_ln7121_fu_240_p3 = ((ap_phi_mux_icmp_ln712239_phi_fu_177_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v573136_load);
assign select_ln7122_1_fu_350_p3 = ((ap_phi_mux_icmp_ln712239_phi_fu_177_p4[0:0] == 1'b1) ? 5'd1 : add_ln7122_1_fu_344_p2);
assign select_ln7128_fu_440_p3 = ((icmp_ln224_fu_434_p2[0:0] == 1'b1) ? v5773_1_q0 : v5772_1_q0);
assign select_ln7132_fu_455_p3 = ((icmp_ln224_2_fu_449_p2[0:0] == 1'b1) ? v5773_q0 : v5772_q0);
assign shl_ln7132_fu_407_p2 = add_ln7132_reg_504 << 9'd2;
assign sub_ln7123_fu_412_p2 = (shl_ln7132_fu_407_p2 - add_ln7132_reg_504);
assign tmp_fu_300_p3 = {{v5730_fu_260_p3}, {2'd0}};
assign v5730_fu_260_p3 = ((ap_phi_mux_icmp_ln712239_phi_fu_177_p4[0:0] == 1'b1) ? add_ln7121_fu_234_p2 : ap_sig_allocacmp_v573034_load);
assign v5731_fu_288_p3 = ((and_ln7121_fu_254_p2[0:0] == 1'b1) ? add_ln7122_fu_268_p2 : select_ln7121_fu_240_p3);
assign v5732_fu_338_p2 = (v5732_mid2_fu_280_p3 + 2'd1);
assign v5732_mid2_fu_280_p3 = ((empty_fu_274_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v573237_load);
assign v5772_1_address0 = zext_ln7132_4_fu_426_p1;
assign v5772_1_ce0 = v5772_1_ce0_local;
assign v5772_address0 = zext_ln7132_4_fu_426_p1;
assign v5772_ce0 = v5772_ce0_local;
assign v5773_1_address0 = zext_ln7132_4_fu_426_p1;
assign v5773_1_ce0 = v5773_1_ce0_local;
assign v5773_address0 = zext_ln7132_4_fu_426_p1;
assign v5773_ce0 = v5773_ce0_local;
assign v5774_1_address0 = zext_ln7132_4_reg_524;
assign v5774_1_ce0 = v5774_1_ce0_local;
assign v5774_1_d0 = select_ln7128_fu_440_p3;
assign v5774_1_we0 = v5774_1_we0_local;
assign v5774_address0 = zext_ln7132_4_reg_524;
assign v5774_ce0 = v5774_ce0_local;
assign v5774_d0 = select_ln7132_fu_455_p3;
assign v5774_we0 = v5774_we0_local;
assign xor_ln7121_fu_248_p2 = (ap_phi_mux_icmp_ln712239_phi_fu_177_p4 ^ 1'd1);
assign zext_ln7132_1_fu_308_p1 = tmp_fu_300_p3;
assign zext_ln7132_2_fu_328_p1 = lshr_ln_fu_318_p4;
assign zext_ln7132_3_fu_417_p1 = v5732_mid2_reg_499;
assign zext_ln7132_4_fu_426_p1 = add_ln7132_1_fu_420_p2;
assign zext_ln7132_fu_296_p1 = v5730_fu_260_p3;
always @ (posedge ap_clk) begin
    zext_ln7132_4_reg_524[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 