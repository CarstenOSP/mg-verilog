module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_address0,M_ce0,M_we0,M_d0,M_address1,M_ce1,M_we1,M_d1); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln20_fu_277_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state8;
reg   [7:0] a_idx_4_reg_787;
wire   [3:0] tmp_5_fu_397_p4;
reg   [3:0] tmp_5_reg_800;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_33_fu_434_p3;
reg   [0:0] tmp_33_reg_806;
reg   [2:0] tmp_s_reg_811;
reg   [1:0] tmp_3_reg_823;
reg   [0:0] tmp_34_reg_828;
wire   [63:0] zext_ln9_fu_243_p1;
wire   [63:0] zext_ln20_fu_283_p1;
wire   [63:0] zext_ln21_1_fu_349_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln21_3_fu_377_p1;
wire   [63:0] zext_ln21_5_fu_414_p1;
wire   [63:0] zext_ln21_7_fu_453_p1;
wire   [63:0] zext_ln21_9_fu_505_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln21_11_fu_532_p1;
wire   [63:0] zext_ln21_13_fu_559_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln21_15_fu_589_p1;
wire   [63:0] zext_ln21_17_fu_619_p1;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln21_19_fu_649_p1;
wire   [63:0] zext_ln21_21_fu_676_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln21_23_fu_706_p1;
wire   [63:0] zext_ln21_25_fu_733_p1;
wire   [63:0] zext_ln21_27_fu_760_p1;
reg   [7:0] a_idx_fu_94;
wire   [7:0] add_ln20_fu_321_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_4;
reg    M_we1_local;
reg   [31:0] M_d1_local;
wire  signed [31:0] sext_ln21_fu_254_p1;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire  signed [31:0] sext_ln21_1_fu_316_p1;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
wire  signed [31:0] sext_ln21_2_fu_364_p1;
wire  signed [31:0] sext_ln21_3_fu_392_p1;
wire  signed [31:0] sext_ln21_4_fu_429_p1;
wire  signed [31:0] sext_ln21_5_fu_468_p1;
wire  signed [31:0] sext_ln21_6_fu_520_p1;
wire  signed [31:0] sext_ln21_7_fu_547_p1;
wire  signed [31:0] sext_ln21_8_fu_574_p1;
wire  signed [31:0] sext_ln21_9_fu_604_p1;
wire  signed [31:0] sext_ln21_10_fu_634_p1;
wire  signed [31:0] sext_ln21_11_fu_664_p1;
wire  signed [31:0] sext_ln21_12_fu_691_p1;
wire  signed [31:0] sext_ln21_13_fu_721_p1;
wire  signed [31:0] sext_ln21_14_fu_748_p1;
wire  signed [31:0] sext_ln21_15_fu_775_p1;
wire   [7:0] sub_ln21_fu_248_p2;
wire   [6:0] tmp_fu_259_p4;
wire   [7:0] or_ln_fu_269_p3;
wire   [5:0] tmp_1_fu_288_p4;
wire   [6:0] or_ln1_fu_298_p3;
wire   [7:0] zext_ln21_fu_306_p1;
wire   [7:0] sub_ln21_1_fu_310_p2;
wire   [4:0] tmp_2_fu_332_p4;
wire   [6:0] or_ln20_1_fu_341_p3;
wire   [7:0] zext_ln21_2_fu_354_p1;
wire   [7:0] sub_ln21_2_fu_358_p2;
wire   [6:0] or_ln20_2_fu_369_p3;
wire   [7:0] zext_ln21_4_fu_382_p1;
wire   [7:0] sub_ln21_3_fu_386_p2;
wire   [6:0] or_ln20_3_fu_406_p3;
wire   [7:0] zext_ln21_6_fu_419_p1;
wire   [7:0] sub_ln21_4_fu_423_p2;
wire   [6:0] or_ln20_4_fu_441_p5;
wire   [7:0] zext_ln21_8_fu_458_p1;
wire   [7:0] sub_ln21_5_fu_462_p2;
wire   [6:0] or_ln20_5_fu_498_p3;
wire   [7:0] zext_ln21_10_fu_510_p1;
wire   [7:0] sub_ln21_6_fu_514_p2;
wire   [6:0] or_ln20_6_fu_525_p3;
wire   [7:0] zext_ln21_12_fu_537_p1;
wire   [7:0] sub_ln21_7_fu_541_p2;
wire   [6:0] or_ln20_7_fu_552_p3;
wire   [7:0] zext_ln21_14_fu_564_p1;
wire   [7:0] sub_ln21_8_fu_568_p2;
wire   [6:0] or_ln20_8_fu_579_p5;
wire   [7:0] zext_ln21_16_fu_594_p1;
wire   [7:0] sub_ln21_9_fu_598_p2;
wire   [6:0] or_ln20_9_fu_609_p5;
wire   [7:0] zext_ln21_18_fu_624_p1;
wire   [7:0] sub_ln21_10_fu_628_p2;
wire   [6:0] or_ln20_s_fu_639_p5;
wire   [7:0] zext_ln21_20_fu_654_p1;
wire   [7:0] sub_ln21_11_fu_658_p2;
wire   [6:0] or_ln20_10_fu_669_p3;
wire   [7:0] zext_ln21_22_fu_681_p1;
wire   [7:0] sub_ln21_12_fu_685_p2;
wire   [6:0] or_ln20_11_fu_696_p5;
wire   [7:0] zext_ln21_24_fu_711_p1;
wire   [7:0] sub_ln21_13_fu_715_p2;
wire   [6:0] or_ln20_12_fu_726_p3;
wire   [7:0] zext_ln21_26_fu_738_p1;
wire   [7:0] sub_ln21_14_fu_742_p2;
wire   [6:0] or_ln20_13_fu_753_p3;
wire   [7:0] zext_ln21_28_fu_765_p1;
wire   [7:0] sub_ln21_15_fu_769_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 a_idx_fu_94 = 8'd0;
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
        if ((icmp_ln20_fu_277_p2 == 1'd1)) begin
            a_idx_fu_94 <= add_ln20_fu_321_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            a_idx_fu_94 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_4_reg_787 <= ap_sig_allocacmp_a_idx_4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_33_reg_806 <= a_idx_4_reg_787[32'd1];
        tmp_34_reg_828 <= a_idx_4_reg_787[32'd2];
        tmp_3_reg_823 <= {{a_idx_4_reg_787[2:1]}};
        tmp_5_reg_800 <= {{a_idx_4_reg_787[6:3]}};
        tmp_s_reg_811 <= {{a_idx_4_reg_787[6:4]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0_local = zext_ln21_27_fu_760_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address0_local = zext_ln21_23_fu_706_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address0_local = zext_ln21_19_fu_649_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address0_local = zext_ln21_15_fu_589_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0_local = zext_ln21_11_fu_532_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address0_local = zext_ln21_7_fu_453_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0_local = zext_ln21_3_fu_377_p1;
    end else if (((icmp_ln20_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_address0_local = zext_ln20_fu_283_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address1_local = zext_ln21_25_fu_733_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_address1_local = zext_ln21_21_fu_676_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_address1_local = zext_ln21_17_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_address1_local = zext_ln21_13_fu_559_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1_local = zext_ln21_9_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_address1_local = zext_ln21_5_fu_414_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1_local = zext_ln21_1_fu_349_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_address1_local = zext_ln9_fu_243_p1;
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln20_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0_local = sext_ln21_15_fu_775_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d0_local = sext_ln21_13_fu_721_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d0_local = sext_ln21_11_fu_664_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d0_local = sext_ln21_9_fu_604_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0_local = sext_ln21_7_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d0_local = sext_ln21_5_fu_468_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0_local = sext_ln21_3_fu_392_p1;
    end else if (((icmp_ln20_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        M_d0_local = sext_ln21_1_fu_316_p1;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d1_local = sext_ln21_14_fu_748_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        M_d1_local = sext_ln21_12_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        M_d1_local = sext_ln21_10_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        M_d1_local = sext_ln21_8_fu_574_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1_local = sext_ln21_6_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        M_d1_local = sext_ln21_4_fu_429_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1_local = sext_ln21_2_fu_364_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        M_d1_local = sext_ln21_fu_254_p1;
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln20_fu_277_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln20_fu_277_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_a_idx_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_4 = a_idx_fu_94;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln20_fu_277_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
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
assign add_ln20_fu_321_p2 = (ap_sig_allocacmp_a_idx_4 + 8'd16);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_277_p2 = ((or_ln_fu_269_p3 < 8'd129) ? 1'b1 : 1'b0);
assign or_ln1_fu_298_p3 = {{tmp_1_fu_288_p4}, {1'd1}};
assign or_ln20_10_fu_669_p3 = {{tmp_s_reg_811}, {4'd12}};
assign or_ln20_11_fu_696_p5 = {{{{tmp_s_reg_811}, {2'd3}}, {tmp_33_reg_806}}, {1'd1}};
assign or_ln20_12_fu_726_p3 = {{tmp_s_reg_811}, {4'd14}};
assign or_ln20_13_fu_753_p3 = {{tmp_s_reg_811}, {4'd15}};
assign or_ln20_1_fu_341_p3 = {{tmp_2_fu_332_p4}, {2'd2}};
assign or_ln20_2_fu_369_p3 = {{tmp_2_fu_332_p4}, {2'd3}};
assign or_ln20_3_fu_406_p3 = {{tmp_5_fu_397_p4}, {3'd4}};
assign or_ln20_4_fu_441_p5 = {{{{tmp_5_fu_397_p4}, {1'd1}}, {tmp_33_fu_434_p3}}, {1'd1}};
assign or_ln20_5_fu_498_p3 = {{tmp_5_reg_800}, {3'd6}};
assign or_ln20_6_fu_525_p3 = {{tmp_5_reg_800}, {3'd7}};
assign or_ln20_7_fu_552_p3 = {{tmp_s_reg_811}, {4'd8}};
assign or_ln20_8_fu_579_p5 = {{{{tmp_s_reg_811}, {1'd1}}, {tmp_3_reg_823}}, {1'd1}};
assign or_ln20_9_fu_609_p5 = {{{{tmp_s_reg_811}, {1'd1}}, {tmp_34_reg_828}}, {2'd2}};
assign or_ln20_s_fu_639_p5 = {{{{tmp_s_reg_811}, {1'd1}}, {tmp_34_reg_828}}, {2'd3}};
assign or_ln_fu_269_p3 = {{tmp_fu_259_p4}, {1'd1}};
assign sext_ln21_10_fu_634_p1 = $signed(sub_ln21_10_fu_628_p2);
assign sext_ln21_11_fu_664_p1 = $signed(sub_ln21_11_fu_658_p2);
assign sext_ln21_12_fu_691_p1 = $signed(sub_ln21_12_fu_685_p2);
assign sext_ln21_13_fu_721_p1 = $signed(sub_ln21_13_fu_715_p2);
assign sext_ln21_14_fu_748_p1 = $signed(sub_ln21_14_fu_742_p2);
assign sext_ln21_15_fu_775_p1 = $signed(sub_ln21_15_fu_769_p2);
assign sext_ln21_1_fu_316_p1 = $signed(sub_ln21_1_fu_310_p2);
assign sext_ln21_2_fu_364_p1 = $signed(sub_ln21_2_fu_358_p2);
assign sext_ln21_3_fu_392_p1 = $signed(sub_ln21_3_fu_386_p2);
assign sext_ln21_4_fu_429_p1 = $signed(sub_ln21_4_fu_423_p2);
assign sext_ln21_5_fu_468_p1 = $signed(sub_ln21_5_fu_462_p2);
assign sext_ln21_6_fu_520_p1 = $signed(sub_ln21_6_fu_514_p2);
assign sext_ln21_7_fu_547_p1 = $signed(sub_ln21_7_fu_541_p2);
assign sext_ln21_8_fu_574_p1 = $signed(sub_ln21_8_fu_568_p2);
assign sext_ln21_9_fu_604_p1 = $signed(sub_ln21_9_fu_598_p2);
assign sext_ln21_fu_254_p1 = $signed(sub_ln21_fu_248_p2);
assign sub_ln21_10_fu_628_p2 = (8'd0 - zext_ln21_18_fu_624_p1);
assign sub_ln21_11_fu_658_p2 = (8'd0 - zext_ln21_20_fu_654_p1);
assign sub_ln21_12_fu_685_p2 = (8'd0 - zext_ln21_22_fu_681_p1);
assign sub_ln21_13_fu_715_p2 = (8'd0 - zext_ln21_24_fu_711_p1);
assign sub_ln21_14_fu_742_p2 = (8'd0 - zext_ln21_26_fu_738_p1);
assign sub_ln21_15_fu_769_p2 = (8'd0 - zext_ln21_28_fu_765_p1);
assign sub_ln21_1_fu_310_p2 = (8'd0 - zext_ln21_fu_306_p1);
assign sub_ln21_2_fu_358_p2 = (8'd0 - zext_ln21_2_fu_354_p1);
assign sub_ln21_3_fu_386_p2 = (8'd0 - zext_ln21_4_fu_382_p1);
assign sub_ln21_4_fu_423_p2 = (8'd0 - zext_ln21_6_fu_419_p1);
assign sub_ln21_5_fu_462_p2 = (8'd0 - zext_ln21_8_fu_458_p1);
assign sub_ln21_6_fu_514_p2 = (8'd0 - zext_ln21_10_fu_510_p1);
assign sub_ln21_7_fu_541_p2 = (8'd0 - zext_ln21_12_fu_537_p1);
assign sub_ln21_8_fu_568_p2 = (8'd0 - zext_ln21_14_fu_564_p1);
assign sub_ln21_9_fu_598_p2 = (8'd0 - zext_ln21_16_fu_594_p1);
assign sub_ln21_fu_248_p2 = (8'd0 - ap_sig_allocacmp_a_idx_4);
assign tmp_1_fu_288_p4 = {{ap_sig_allocacmp_a_idx_4[6:1]}};
assign tmp_2_fu_332_p4 = {{a_idx_4_reg_787[6:2]}};
assign tmp_33_fu_434_p3 = a_idx_4_reg_787[32'd1];
assign tmp_5_fu_397_p4 = {{a_idx_4_reg_787[6:3]}};
assign tmp_fu_259_p4 = {{ap_sig_allocacmp_a_idx_4[7:1]}};
assign zext_ln20_fu_283_p1 = or_ln_fu_269_p3;
assign zext_ln21_10_fu_510_p1 = or_ln20_5_fu_498_p3;
assign zext_ln21_11_fu_532_p1 = or_ln20_6_fu_525_p3;
assign zext_ln21_12_fu_537_p1 = or_ln20_6_fu_525_p3;
assign zext_ln21_13_fu_559_p1 = or_ln20_7_fu_552_p3;
assign zext_ln21_14_fu_564_p1 = or_ln20_7_fu_552_p3;
assign zext_ln21_15_fu_589_p1 = or_ln20_8_fu_579_p5;
assign zext_ln21_16_fu_594_p1 = or_ln20_8_fu_579_p5;
assign zext_ln21_17_fu_619_p1 = or_ln20_9_fu_609_p5;
assign zext_ln21_18_fu_624_p1 = or_ln20_9_fu_609_p5;
assign zext_ln21_19_fu_649_p1 = or_ln20_s_fu_639_p5;
assign zext_ln21_1_fu_349_p1 = or_ln20_1_fu_341_p3;
assign zext_ln21_20_fu_654_p1 = or_ln20_s_fu_639_p5;
assign zext_ln21_21_fu_676_p1 = or_ln20_10_fu_669_p3;
assign zext_ln21_22_fu_681_p1 = or_ln20_10_fu_669_p3;
assign zext_ln21_23_fu_706_p1 = or_ln20_11_fu_696_p5;
assign zext_ln21_24_fu_711_p1 = or_ln20_11_fu_696_p5;
assign zext_ln21_25_fu_733_p1 = or_ln20_12_fu_726_p3;
assign zext_ln21_26_fu_738_p1 = or_ln20_12_fu_726_p3;
assign zext_ln21_27_fu_760_p1 = or_ln20_13_fu_753_p3;
assign zext_ln21_28_fu_765_p1 = or_ln20_13_fu_753_p3;
assign zext_ln21_2_fu_354_p1 = or_ln20_1_fu_341_p3;
assign zext_ln21_3_fu_377_p1 = or_ln20_2_fu_369_p3;
assign zext_ln21_4_fu_382_p1 = or_ln20_2_fu_369_p3;
assign zext_ln21_5_fu_414_p1 = or_ln20_3_fu_406_p3;
assign zext_ln21_6_fu_419_p1 = or_ln20_3_fu_406_p3;
assign zext_ln21_7_fu_453_p1 = or_ln20_4_fu_441_p5;
assign zext_ln21_8_fu_458_p1 = or_ln20_4_fu_441_p5;
assign zext_ln21_9_fu_505_p1 = or_ln20_5_fu_498_p3;
assign zext_ln21_fu_306_p1 = or_ln1_fu_298_p3;
assign zext_ln9_fu_243_p1 = ap_sig_allocacmp_a_idx_4;
endmodule 