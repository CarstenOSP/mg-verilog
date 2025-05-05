module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln20_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln17_fu_96_p1;
reg   [7:0] a_idx_fu_48;
wire   [7:0] add_ln20_fu_160_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_8;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln21_fu_108_p1;
reg    M_0_ce0_local;
reg    M_1_we0_local;
wire  signed [31:0] sext_ln21_1_fu_155_p1;
reg    M_1_ce0_local;
wire   [6:0] lshr_ln_fu_86_p4;
wire   [7:0] sub_ln21_fu_102_p2;
wire   [7:0] or_ln_fu_113_p3;
wire   [5:0] tmp_2_fu_127_p4;
wire   [6:0] or_ln1_fu_137_p3;
wire   [7:0] zext_ln21_fu_145_p1;
wire   [7:0] sub_ln21_1_fu_149_p2;
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
#0 a_idx_fu_48 = 8'd0;
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
        if ((icmp_ln20_fu_121_p2 == 1'd1)) begin
            a_idx_fu_48 <= add_ln20_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            a_idx_fu_48 <= 8'd0;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((icmp_ln20_fu_121_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((icmp_ln20_fu_121_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_a_idx_8 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_8 = a_idx_fu_48;
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
assign M_0_address0 = zext_ln17_fu_96_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_d0 = sext_ln21_fu_108_p1;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = zext_ln17_fu_96_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_d0 = sext_ln21_1_fu_155_p1;
assign M_1_we0 = M_1_we0_local;
assign add_ln20_fu_160_p2 = (ap_sig_allocacmp_a_idx_8 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_121_p2 = ((or_ln_fu_113_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln_fu_86_p4 = {{ap_sig_allocacmp_a_idx_8[7:1]}};
assign or_ln1_fu_137_p3 = {{tmp_2_fu_127_p4}, {1'd1}};
assign or_ln_fu_113_p3 = {{lshr_ln_fu_86_p4}, {1'd1}};
assign sext_ln21_1_fu_155_p1 = $signed(sub_ln21_1_fu_149_p2);
assign sext_ln21_fu_108_p1 = $signed(sub_ln21_fu_102_p2);
assign sub_ln21_1_fu_149_p2 = (8'd0 - zext_ln21_fu_145_p1);
assign sub_ln21_fu_102_p2 = (8'd0 - ap_sig_allocacmp_a_idx_8);
assign tmp_2_fu_127_p4 = {{ap_sig_allocacmp_a_idx_8[6:1]}};
assign zext_ln17_fu_96_p1 = lshr_ln_fu_86_p4;
assign zext_ln21_fu_145_p1 = or_ln1_fu_137_p3;
endmodule 