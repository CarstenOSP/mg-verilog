module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_13_reload,B_8_reload,D_15_reload,E_13_reload,E_8_reload,W_address0,W_ce0,W_q0,A_16_out,A_16_out_ap_vld,B_9_out,B_9_out_ap_vld,C_11_out,C_11_out_ap_vld,D_16_out,D_16_out_ap_vld,E_9_out,E_9_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_13_reload;
input  [31:0] B_8_reload;
input  [31:0] D_15_reload;
input  [31:0] E_13_reload;
input  [31:0] E_8_reload;
output  [6:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [31:0] A_16_out;
output   A_16_out_ap_vld;
output  [31:0] B_9_out;
output   B_9_out_ap_vld;
output  [31:0] C_11_out;
output   C_11_out_ap_vld;
output  [31:0] D_16_out;
output   D_16_out_ap_vld;
output  [31:0] E_9_out;
output   E_9_out_ap_vld;
reg ap_idle;
reg A_16_out_ap_vld;
reg B_9_out_ap_vld;
reg C_11_out_ap_vld;
reg D_16_out_ap_vld;
reg E_9_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln128_fu_203_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln128_reg_396;
reg   [0:0] icmp_ln128_reg_396_pp0_iter1_reg;
reg   [31:0] D_3_reg_405;
reg   [31:0] C_reg_410;
reg   [31:0] W_load_reg_415;
wire   [31:0] add_ln130_2_fu_255_p2;
reg   [31:0] add_ln130_2_reg_420;
wire   [63:0] zext_ln128_fu_209_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_68;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_fu_72;
reg   [31:0] ap_sig_allocacmp_B_load_1;
reg   [6:0] i_fu_76;
wire   [6:0] add_ln128_fu_214_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_1_fu_80;
reg   [31:0] D_fu_84;
wire   [31:0] C_1_fu_275_p3;
reg   [31:0] B_1_fu_88;
wire   [31:0] temp_fu_329_p2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce0_local;
wire   [31:0] xor_ln130_fu_237_p2;
wire   [31:0] xor_ln130_1_fu_243_p2;
wire   [31:0] add_ln130_1_fu_249_p2;
wire   [1:0] trunc_ln130_1_fu_261_p1;
wire   [29:0] lshr_ln130_1_fu_265_p4;
wire   [26:0] trunc_ln130_fu_302_p1;
wire   [4:0] lshr_ln3_fu_306_p4;
wire   [31:0] or_ln4_fu_316_p3;
wire   [31:0] add_ln130_fu_324_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_fu_68 = 32'd0;
#0 B_fu_72 = 32'd0;
#0 i_fu_76 = 7'd0;
#0 E_1_fu_80 = 32'd0;
#0 D_fu_84 = 32'd0;
#0 B_1_fu_88 = 32'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_1_fu_88 <= B_13_reload;
        end else if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_1_fu_88 <= temp_fu_329_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_fu_72 <= B_8_reload;
        end else if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_fu_72 <= B_1_fu_88;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_fu_84 <= D_15_reload;
        end else if (((icmp_ln128_reg_396 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_fu_84 <= C_1_fu_275_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_1_fu_80 <= E_13_reload;
        end else if (((icmp_ln128_reg_396 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_1_fu_80 <= D_fu_84;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_fu_68 <= E_8_reload;
        end else if (((icmp_ln128_reg_396 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_fu_68 <= E_1_fu_80;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln128_fu_203_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln128_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 7'd60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_reg_410 <= D_fu_84;
        D_3_reg_405 <= E_1_fu_80;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_load_reg_415 <= W_q0;
        add_ln130_2_reg_420 <= add_ln130_2_fu_255_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln128_reg_396 <= icmp_ln128_fu_203_p2;
        icmp_ln128_reg_396_pp0_iter1_reg <= icmp_ln128_reg_396;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        A_16_out_ap_vld = 1'b1;
    end else begin
        A_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_9_out_ap_vld = 1'b1;
    end else begin
        B_9_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        C_11_out_ap_vld = 1'b1;
    end else begin
        C_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_16_out_ap_vld = 1'b1;
    end else begin
        D_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_9_out_ap_vld = 1'b1;
    end else begin
        E_9_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_203_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_396_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_load_1 = B_1_fu_88;
    end else begin
        ap_sig_allocacmp_B_load_1 = B_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_76;
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
assign A_16_out = B_1_fu_88;
assign B_9_out = B_fu_72;
assign C_11_out = C_reg_410;
assign C_1_fu_275_p3 = {{trunc_ln130_1_fu_261_p1}, {lshr_ln130_1_fu_265_p4}};
assign D_16_out = D_3_reg_405;
assign E_9_out = E_fu_68;
assign W_address0 = zext_ln128_fu_209_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_214_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign add_ln130_1_fu_249_p2 = ($signed(xor_ln130_1_fu_243_p2) + $signed(32'd3395469782));
assign add_ln130_2_fu_255_p2 = (add_ln130_1_fu_249_p2 + E_fu_68);
assign add_ln130_fu_324_p2 = (W_load_reg_415 + or_ln4_fu_316_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_203_p2 = ((ap_sig_allocacmp_i_1 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_1_fu_265_p4 = {{ap_sig_allocacmp_B_load_1[31:2]}};
assign lshr_ln3_fu_306_p4 = {{B_1_fu_88[31:27]}};
assign or_ln4_fu_316_p3 = {{trunc_ln130_fu_302_p1}, {lshr_ln3_fu_306_p4}};
assign temp_fu_329_p2 = (add_ln130_2_reg_420 + add_ln130_fu_324_p2);
assign trunc_ln130_1_fu_261_p1 = ap_sig_allocacmp_B_load_1[1:0];
assign trunc_ln130_fu_302_p1 = B_1_fu_88[26:0];
assign xor_ln130_1_fu_243_p2 = (xor_ln130_fu_237_p2 ^ D_fu_84);
assign xor_ln130_fu_237_p2 = (ap_sig_allocacmp_B_load_1 ^ E_1_fu_80);
assign zext_ln128_fu_209_p1 = ap_sig_allocacmp_i_1;
endmodule 