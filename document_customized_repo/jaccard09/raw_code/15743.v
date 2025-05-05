module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln20_fu_143_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state2;
reg   [4:0] tmp_2_reg_272;
wire   [63:0] zext_ln9_fu_109_p1;
wire   [63:0] zext_ln20_fu_149_p1;
wire   [63:0] zext_ln21_1_fu_215_p1;
wire   [63:0] zext_ln21_3_fu_242_p1;
reg   [7:0] a_idx_fu_56;
wire   [7:0] add_ln20_fu_197_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_8;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln21_fu_120_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln21_1_fu_182_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln21_2_fu_230_p1;
wire  signed [31:0] sext_ln21_3_fu_257_p1;
wire   [7:0] sub_ln21_fu_114_p2;
wire   [6:0] tmp_fu_125_p4;
wire   [7:0] or_ln_fu_135_p3;
wire   [5:0] tmp_1_fu_154_p4;
wire   [6:0] or_ln1_fu_164_p3;
wire   [7:0] zext_ln21_fu_172_p1;
wire   [7:0] sub_ln21_1_fu_176_p2;
wire   [6:0] or_ln20_1_fu_208_p3;
wire   [7:0] zext_ln21_2_fu_220_p1;
wire   [7:0] sub_ln21_2_fu_224_p2;
wire   [6:0] or_ln20_2_fu_235_p3;
wire   [7:0] zext_ln21_4_fu_247_p1;
wire   [7:0] sub_ln21_3_fu_251_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 a_idx_fu_56 = 8'd0;
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
        if ((icmp_ln20_fu_143_p2 == 1'd1)) begin
            a_idx_fu_56 <= add_ln20_fu_197_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            a_idx_fu_56 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_2_reg_272 <= {{ap_sig_allocacmp_a_idx_8[6:2]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln21_3_fu_242_p1;
    end else if (((icmp_ln20_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln20_fu_149_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln21_1_fu_215_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln9_fu_109_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_143_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln21_3_fu_257_p1;
    end else if (((icmp_ln20_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln21_1_fu_182_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln21_2_fu_230_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln21_fu_120_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln20_fu_143_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln20_fu_143_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_a_idx_8 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_8 = a_idx_fu_56;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln20_fu_143_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = M_d0_local;
assign M_d1 = M_d1_local;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign add_ln20_fu_197_p2 = (ap_sig_allocacmp_a_idx_8 + 8'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_143_p2 = ((or_ln_fu_135_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln1_fu_164_p3 = {{tmp_1_fu_154_p4}, {1'd1}};
assign or_ln20_1_fu_208_p3 = {{tmp_2_reg_272}, {2'd2}};
assign or_ln20_2_fu_235_p3 = {{tmp_2_reg_272}, {2'd3}};
assign or_ln_fu_135_p3 = {{tmp_fu_125_p4}, {1'd1}};
assign sext_ln21_1_fu_182_p1 = $signed(sub_ln21_1_fu_176_p2);
assign sext_ln21_2_fu_230_p1 = $signed(sub_ln21_2_fu_224_p2);
assign sext_ln21_3_fu_257_p1 = $signed(sub_ln21_3_fu_251_p2);
assign sext_ln21_fu_120_p1 = $signed(sub_ln21_fu_114_p2);
assign sub_ln21_1_fu_176_p2 = (8'd0 - zext_ln21_fu_172_p1);
assign sub_ln21_2_fu_224_p2 = (8'd0 - zext_ln21_2_fu_220_p1);
assign sub_ln21_3_fu_251_p2 = (8'd0 - zext_ln21_4_fu_247_p1);
assign sub_ln21_fu_114_p2 = (8'd0 - ap_sig_allocacmp_a_idx_8);
assign tmp_1_fu_154_p4 = {{ap_sig_allocacmp_a_idx_8[6:1]}};
assign tmp_fu_125_p4 = {{ap_sig_allocacmp_a_idx_8[7:1]}};
assign zext_ln20_fu_149_p1 = or_ln_fu_135_p3;
assign zext_ln21_1_fu_215_p1 = or_ln20_1_fu_208_p3;
assign zext_ln21_2_fu_220_p1 = or_ln20_1_fu_208_p3;
assign zext_ln21_3_fu_242_p1 = or_ln20_2_fu_235_p3;
assign zext_ln21_4_fu_247_p1 = or_ln20_2_fu_235_p3;
assign zext_ln21_fu_172_p1 = or_ln1_fu_164_p3;
assign zext_ln9_fu_109_p1 = ap_sig_allocacmp_a_idx_8;
endmodule 