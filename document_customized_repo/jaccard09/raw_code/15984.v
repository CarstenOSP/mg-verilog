module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln23_fu_225_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
reg   [7:0] b_idx_14_reg_517;
wire   [14:0] tmp_16_fu_183_p3;
reg   [14:0] tmp_16_reg_525;
wire   [3:0] tmp_4_fu_360_p4;
reg   [3:0] tmp_4_reg_538;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln24_fu_191_p1;
wire   [63:0] zext_ln24_1_fu_237_p1;
wire   [63:0] zext_ln24_3_fu_280_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln24_5_fu_322_p1;
wire   [63:0] zext_ln24_7_fu_355_p1;
wire   [63:0] zext_ln24_9_fu_397_p1;
wire   [63:0] zext_ln24_11_fu_441_p1;
wire   [63:0] zext_ln24_13_fu_473_p1;
reg   [7:0] b_idx_fu_88;
wire   [7:0] add_ln23_fu_500_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_14;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln24_fu_202_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln24_1_fu_270_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln24_2_fu_312_p1;
wire  signed [31:0] sext_ln24_3_fu_345_p1;
wire  signed [31:0] sext_ln24_4_fu_387_p1;
wire  signed [31:0] sext_ln24_5_fu_431_p1;
wire  signed [31:0] sext_ln24_6_fu_463_p1;
wire  signed [31:0] sext_ln24_7_fu_495_p1;
wire   [6:0] tmp_fu_173_p4;
wire   [7:0] sub_ln24_fu_196_p2;
wire   [6:0] tmp_s_fu_207_p4;
wire   [7:0] or_ln2_fu_217_p3;
wire   [14:0] add_ln24_fu_231_p2;
wire   [5:0] tmp_2_fu_242_p4;
wire   [6:0] or_ln24_6_fu_252_p3;
wire   [7:0] zext_ln24_2_fu_260_p1;
wire   [7:0] sub_ln24_1_fu_264_p2;
wire   [14:0] add_ln24_1_fu_275_p2;
wire   [4:0] tmp_3_fu_285_p4;
wire   [6:0] or_ln3_fu_294_p3;
wire   [7:0] zext_ln24_4_fu_302_p1;
wire   [7:0] sub_ln24_2_fu_306_p2;
wire   [14:0] add_ln24_2_fu_317_p2;
wire   [6:0] or_ln24_1_fu_327_p3;
wire   [7:0] zext_ln24_6_fu_335_p1;
wire   [7:0] sub_ln24_3_fu_339_p2;
wire   [14:0] add_ln24_3_fu_350_p2;
wire   [6:0] or_ln24_2_fu_369_p3;
wire   [7:0] zext_ln24_8_fu_377_p1;
wire   [7:0] sub_ln24_4_fu_381_p2;
wire   [14:0] add_ln24_4_fu_392_p2;
wire   [0:0] tmp_17_fu_402_p3;
wire   [6:0] or_ln24_3_fu_409_p5;
wire   [7:0] zext_ln24_10_fu_421_p1;
wire   [7:0] sub_ln24_5_fu_425_p2;
wire   [14:0] add_ln24_5_fu_436_p2;
wire   [6:0] or_ln24_4_fu_446_p3;
wire   [7:0] zext_ln24_12_fu_453_p1;
wire   [7:0] sub_ln24_6_fu_457_p2;
wire   [14:0] add_ln24_6_fu_468_p2;
wire   [6:0] or_ln24_5_fu_478_p3;
wire   [7:0] zext_ln24_14_fu_485_p1;
wire   [7:0] sub_ln24_7_fu_489_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 b_idx_fu_88 = 8'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_88 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        b_idx_fu_88 <= add_ln23_fu_500_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_14_reg_517 <= ap_sig_allocacmp_b_idx_14;
        tmp_16_reg_525 <= tmp_16_fu_183_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_4_reg_538 <= {{b_idx_14_reg_517[6:3]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0_local = zext_ln24_13_fu_473_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address0_local = zext_ln24_9_fu_397_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln24_5_fu_322_p1;
    end else if (((icmp_ln23_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln24_1_fu_237_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1_local = zext_ln24_11_fu_441_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address1_local = zext_ln24_7_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln24_3_fu_280_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln24_fu_191_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_fu_225_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0_local = sext_ln24_7_fu_495_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d0_local = sext_ln24_5_fu_431_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln24_3_fu_345_p1;
    end else if (((icmp_ln23_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln24_1_fu_270_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1_local = sext_ln24_6_fu_463_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d1_local = sext_ln24_4_fu_387_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln24_2_fu_312_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln24_fu_202_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_fu_225_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln23_fu_225_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_b_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_14 = b_idx_fu_88;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln23_fu_225_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
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
assign add_ln23_fu_500_p2 = (b_idx_14_reg_517 + 8'd8);
assign add_ln24_1_fu_275_p2 = (tmp_16_reg_525 + 15'd258);
assign add_ln24_2_fu_317_p2 = (tmp_16_reg_525 + 15'd387);
assign add_ln24_3_fu_350_p2 = (tmp_16_reg_525 + 15'd516);
assign add_ln24_4_fu_392_p2 = (tmp_16_reg_525 + 15'd645);
assign add_ln24_5_fu_436_p2 = (tmp_16_reg_525 + 15'd774);
assign add_ln24_6_fu_468_p2 = (tmp_16_reg_525 + 15'd903);
assign add_ln24_fu_231_p2 = (tmp_16_fu_183_p3 + 15'd129);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_225_p2 = ((or_ln2_fu_217_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln24_1_fu_327_p3 = {{tmp_3_fu_285_p4}, {2'd3}};
assign or_ln24_2_fu_369_p3 = {{tmp_4_fu_360_p4}, {3'd4}};
assign or_ln24_3_fu_409_p5 = {{{{tmp_4_fu_360_p4}, {1'd1}}, {tmp_17_fu_402_p3}}, {1'd1}};
assign or_ln24_4_fu_446_p3 = {{tmp_4_reg_538}, {3'd6}};
assign or_ln24_5_fu_478_p3 = {{tmp_4_reg_538}, {3'd7}};
assign or_ln24_6_fu_252_p3 = {{tmp_2_fu_242_p4}, {1'd1}};
assign or_ln2_fu_217_p3 = {{tmp_s_fu_207_p4}, {1'd1}};
assign or_ln3_fu_294_p3 = {{tmp_3_fu_285_p4}, {2'd2}};
assign sext_ln24_1_fu_270_p1 = $signed(sub_ln24_1_fu_264_p2);
assign sext_ln24_2_fu_312_p1 = $signed(sub_ln24_2_fu_306_p2);
assign sext_ln24_3_fu_345_p1 = $signed(sub_ln24_3_fu_339_p2);
assign sext_ln24_4_fu_387_p1 = $signed(sub_ln24_4_fu_381_p2);
assign sext_ln24_5_fu_431_p1 = $signed(sub_ln24_5_fu_425_p2);
assign sext_ln24_6_fu_463_p1 = $signed(sub_ln24_6_fu_457_p2);
assign sext_ln24_7_fu_495_p1 = $signed(sub_ln24_7_fu_489_p2);
assign sext_ln24_fu_202_p1 = $signed(sub_ln24_fu_196_p2);
assign sub_ln24_1_fu_264_p2 = (8'd0 - zext_ln24_2_fu_260_p1);
assign sub_ln24_2_fu_306_p2 = (8'd0 - zext_ln24_4_fu_302_p1);
assign sub_ln24_3_fu_339_p2 = (8'd0 - zext_ln24_6_fu_335_p1);
assign sub_ln24_4_fu_381_p2 = (8'd0 - zext_ln24_8_fu_377_p1);
assign sub_ln24_5_fu_425_p2 = (8'd0 - zext_ln24_10_fu_421_p1);
assign sub_ln24_6_fu_457_p2 = (8'd0 - zext_ln24_12_fu_453_p1);
assign sub_ln24_7_fu_489_p2 = (8'd0 - zext_ln24_14_fu_485_p1);
assign sub_ln24_fu_196_p2 = (8'd0 - ap_sig_allocacmp_b_idx_14);
assign tmp_16_fu_183_p3 = {{tmp_fu_173_p4}, {ap_sig_allocacmp_b_idx_14}};
assign tmp_17_fu_402_p3 = b_idx_14_reg_517[32'd1];
assign tmp_2_fu_242_p4 = {{ap_sig_allocacmp_b_idx_14[6:1]}};
assign tmp_3_fu_285_p4 = {{b_idx_14_reg_517[6:2]}};
assign tmp_4_fu_360_p4 = {{b_idx_14_reg_517[6:3]}};
assign tmp_fu_173_p4 = {{ap_sig_allocacmp_b_idx_14[7:1]}};
assign tmp_s_fu_207_p4 = {{ap_sig_allocacmp_b_idx_14[7:1]}};
assign zext_ln24_10_fu_421_p1 = or_ln24_3_fu_409_p5;
assign zext_ln24_11_fu_441_p1 = add_ln24_5_fu_436_p2;
assign zext_ln24_12_fu_453_p1 = or_ln24_4_fu_446_p3;
assign zext_ln24_13_fu_473_p1 = add_ln24_6_fu_468_p2;
assign zext_ln24_14_fu_485_p1 = or_ln24_5_fu_478_p3;
assign zext_ln24_1_fu_237_p1 = add_ln24_fu_231_p2;
assign zext_ln24_2_fu_260_p1 = or_ln24_6_fu_252_p3;
assign zext_ln24_3_fu_280_p1 = add_ln24_1_fu_275_p2;
assign zext_ln24_4_fu_302_p1 = or_ln3_fu_294_p3;
assign zext_ln24_5_fu_322_p1 = add_ln24_2_fu_317_p2;
assign zext_ln24_6_fu_335_p1 = or_ln24_1_fu_327_p3;
assign zext_ln24_7_fu_355_p1 = add_ln24_3_fu_350_p2;
assign zext_ln24_8_fu_377_p1 = or_ln24_2_fu_369_p3;
assign zext_ln24_9_fu_397_p1 = add_ln24_4_fu_392_p2;
assign zext_ln24_fu_191_p1 = tmp_16_fu_183_p3;
endmodule 