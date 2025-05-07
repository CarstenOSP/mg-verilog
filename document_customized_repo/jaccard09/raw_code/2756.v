module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_15_reload,B_2_reload,D_15_reload,E_15_reload,E_2_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,B_16_out,B_16_out_ap_vld,B_4_out,B_4_out_ap_vld,D_16_out,D_16_out_ap_vld,E_16_out,E_16_out_ap_vld,E_4_out,E_4_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_15_reload;
input  [31:0] B_2_reload;
input  [31:0] D_15_reload;
input  [31:0] E_15_reload;
input  [31:0] E_2_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [31:0] B_16_out;
output   B_16_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] D_16_out;
output   D_16_out_ap_vld;
output  [31:0] E_16_out;
output   E_16_out_ap_vld;
output  [31:0] E_4_out;
output   E_4_out_ap_vld;
reg ap_idle;
reg B_16_out_ap_vld;
reg B_4_out_ap_vld;
reg D_16_out_ap_vld;
reg E_16_out_ap_vld;
reg E_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln120_fu_222_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln120_reg_436;
reg   [0:0] icmp_ln120_reg_436_pp0_iter1_reg;
reg   [0:0] icmp_ln120_reg_436_pp0_iter2_reg;
wire   [0:0] trunc_ln100_fu_228_p1;
reg   [0:0] trunc_ln100_reg_440;
wire   [31:0] select_ln122_fu_259_p3;
reg   [31:0] select_ln122_reg_455;
reg   [31:0] E_reg_460;
reg   [31:0] D_6_reg_466;
wire   [31:0] add_ln122_2_fu_292_p2;
reg   [31:0] add_ln122_2_reg_471;
wire   [63:0] zext_ln100_1_fu_242_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_4_fu_74;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [31:0] B_4_fu_78;
reg   [31:0] ap_sig_allocacmp_B_4_load;
reg   [5:0] i_2_fu_82;
wire   [5:0] add_ln120_fu_248_p2;
reg   [5:0] ap_sig_allocacmp_i;
reg   [31:0] D_fu_86;
reg   [31:0] C_fu_90;
wire   [31:0] C_4_fu_312_p3;
reg   [31:0] A_fu_94;
wire   [31:0] A_7_fu_365_p2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
wire   [4:0] lshr_ln100_1_fu_232_p4;
wire   [31:0] xor_ln122_fu_275_p2;
wire   [31:0] add_ln122_1_fu_287_p2;
wire   [31:0] xor_ln122_1_fu_281_p2;
wire   [1:0] trunc_ln122_1_fu_298_p1;
wire   [29:0] lshr_ln122_1_fu_302_p4;
wire   [26:0] trunc_ln122_fu_337_p1;
wire   [4:0] lshr_ln4_fu_341_p4;
wire   [31:0] or_ln_fu_351_p3;
wire   [31:0] add_ln122_fu_359_p2;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 E_4_fu_74 = 32'd0;
#0 B_4_fu_78 = 32'd0;
#0 i_2_fu_82 = 6'd0;
#0 D_fu_86 = 32'd0;
#0 C_fu_90 = 32'd0;
#0 A_fu_94 = 32'd0;
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            A_fu_94 <= B_15_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd0))) begin
            A_fu_94 <= A_7_fu_365_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_4_fu_78 <= B_2_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd0))) begin
            B_4_fu_78 <= A_fu_94;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            C_fu_90 <= D_15_reload;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln120_reg_436_pp0_iter1_reg == 1'd0))) begin
            C_fu_90 <= C_4_fu_312_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            D_fu_86 <= E_15_reload;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln120_reg_436_pp0_iter1_reg == 1'd0))) begin
            D_fu_86 <= C_fu_90;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            E_4_fu_74 <= E_2_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd0))) begin
            E_4_fu_74 <= E_reg_460;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln120_fu_222_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_82 <= add_ln120_fu_248_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_82 <= 6'd20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        D_6_reg_466 <= C_fu_90;
        E_reg_460 <= D_fu_86;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln122_2_reg_471 <= add_ln122_2_fu_292_p2;
        icmp_ln120_reg_436_pp0_iter2_reg <= icmp_ln120_reg_436_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln120_reg_436 <= icmp_ln120_fu_222_p2;
        icmp_ln120_reg_436_pp0_iter1_reg <= icmp_ln120_reg_436;
        select_ln122_reg_455 <= select_ln122_fu_259_p3;
        trunc_ln100_reg_440 <= trunc_ln100_fu_228_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd1))) begin
        B_16_out_ap_vld = 1'b1;
    end else begin
        B_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd1))) begin
        D_16_out_ap_vld = 1'b1;
    end else begin
        D_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd1))) begin
        E_16_out_ap_vld = 1'b1;
    end else begin
        E_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd1))) begin
        E_4_out_ap_vld = 1'b1;
    end else begin
        E_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
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
    if (((icmp_ln120_fu_222_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_436_pp0_iter2_reg == 1'd0))) begin
        ap_sig_allocacmp_B_4_load = A_fu_94;
    end else begin
        ap_sig_allocacmp_B_4_load = B_4_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_82;
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
assign A_7_fu_365_p2 = (add_ln122_2_reg_471 + add_ln122_fu_359_p2);
assign B_16_out = A_fu_94;
assign B_4_out = B_4_fu_78;
assign C_4_fu_312_p3 = {{trunc_ln122_1_fu_298_p1}, {lshr_ln122_1_fu_302_p4}};
assign D_16_out = D_6_reg_466;
assign E_16_out = E_reg_460;
assign E_4_out = E_4_fu_74;
assign W_1_address0 = zext_ln100_1_fu_242_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_address0 = zext_ln100_1_fu_242_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_248_p2 = (ap_sig_allocacmp_i + 6'd1);
assign add_ln122_1_fu_287_p2 = (select_ln122_reg_455 + 32'd1859775393);
assign add_ln122_2_fu_292_p2 = (add_ln122_1_fu_287_p2 + xor_ln122_1_fu_281_p2);
assign add_ln122_fu_359_p2 = (or_ln_fu_351_p3 + E_4_fu_74);
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
assign icmp_ln120_fu_222_p2 = ((ap_sig_allocacmp_i == 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_232_p4 = {{ap_sig_allocacmp_i[5:1]}};
assign lshr_ln122_1_fu_302_p4 = {{ap_sig_allocacmp_B_4_load[31:2]}};
assign lshr_ln4_fu_341_p4 = {{A_fu_94[31:27]}};
assign or_ln_fu_351_p3 = {{trunc_ln122_fu_337_p1}, {lshr_ln4_fu_341_p4}};
assign select_ln122_fu_259_p3 = ((trunc_ln100_reg_440[0:0] == 1'b1) ? W_1_q0 : W_q0);
assign trunc_ln100_fu_228_p1 = ap_sig_allocacmp_i[0:0];
assign trunc_ln122_1_fu_298_p1 = ap_sig_allocacmp_B_4_load[1:0];
assign trunc_ln122_fu_337_p1 = A_fu_94[26:0];
assign xor_ln122_1_fu_281_p2 = (xor_ln122_fu_275_p2 ^ C_fu_90);
assign xor_ln122_fu_275_p2 = (ap_sig_allocacmp_B_4_load ^ D_fu_86);
assign zext_ln100_1_fu_242_p1 = lshr_ln100_1_fu_232_p4;
endmodule 