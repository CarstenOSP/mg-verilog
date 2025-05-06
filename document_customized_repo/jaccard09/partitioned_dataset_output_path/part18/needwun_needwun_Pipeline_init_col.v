
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0);  
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln23_fu_80_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln24_1_fu_124_p1;
wire   [0:0] trunc_ln23_fu_96_p1;
reg   [7:0] b_idx_fu_42;
wire   [7:0] add_ln23_fu_86_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_8;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln24_fu_136_p1;
reg    M_0_ce0_local;
reg    M_1_we0_local;
reg    M_1_ce0_local;
wire   [14:0] p_shl_fu_100_p3;
wire   [14:0] zext_ln24_fu_92_p1;
wire   [14:0] add_ln24_fu_108_p2;
wire   [13:0] lshr_ln1_fu_114_p4;
wire   [7:0] sub_ln24_fu_130_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 b_idx_fu_42 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln23_fu_80_p2 == 1'd0)) begin
            b_idx_fu_42 <= add_ln23_fu_86_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_fu_42 <= 8'd0;
        end
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln23_fu_96_p1 == 1'd0) & (icmp_ln23_fu_80_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln23_fu_96_p1 == 1'd1) & (icmp_ln23_fu_80_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_80_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_b_idx_8 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_8 = b_idx_fu_42;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = zext_ln24_1_fu_124_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_d0 = sext_ln24_fu_136_p1;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = zext_ln24_1_fu_124_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_d0 = sext_ln24_fu_136_p1;
assign M_1_we0 = M_1_we0_local;
assign add_ln23_fu_86_p2 = (ap_sig_allocacmp_b_idx_8 + 8'd1);
assign add_ln24_fu_108_p2 = (p_shl_fu_100_p3 + zext_ln24_fu_92_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_80_p2 = ((ap_sig_allocacmp_b_idx_8 == 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_114_p4 = {{add_ln24_fu_108_p2[14:1]}};
assign p_shl_fu_100_p3 = {{ap_sig_allocacmp_b_idx_8}, {7'd0}};
assign sext_ln24_fu_136_p1 = $signed(sub_ln24_fu_130_p2);
assign sub_ln24_fu_130_p2 = (8'd0 - ap_sig_allocacmp_b_idx_8);
assign trunc_ln23_fu_96_p1 = ap_sig_allocacmp_b_idx_8[0:0];
assign zext_ln24_1_fu_124_p1 = lshr_ln1_fu_114_p4;
assign zext_ln24_fu_92_p1 = ap_sig_allocacmp_b_idx_8;
endmodule 
