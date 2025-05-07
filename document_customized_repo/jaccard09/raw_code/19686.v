module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [12:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [12:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [12:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [12:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_268_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] b_idx_8_reg_624;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] add_ln24_6_fu_286_p2;
reg   [14:0] add_ln24_6_reg_634;
wire   [63:0] zext_ln24_fu_234_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_302_p1;
wire   [63:0] zext_ln24_8_fu_346_p1;
wire   [63:0] zext_ln24_4_fu_388_p1;
wire   [63:0] zext_ln24_6_fu_440_p1;
wire   [63:0] zext_ln24_9_fu_483_p1;
wire   [63:0] zext_ln24_11_fu_546_p1;
wire   [63:0] zext_ln24_13_fu_589_p1;
reg   [7:0] b_idx_fu_102;
wire   [7:0] add_ln23_fu_362_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_8;
reg    M_0_we1_local;
wire  signed [31:0] sext_ln24_fu_245_p1;
reg    M_0_ce1_local;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln24_4_fu_357_p1;
reg    M_0_ce0_local;
reg    M_1_we1_local;
wire  signed [31:0] sext_ln24_1_fu_335_p1;
reg    M_1_ce1_local;
reg    M_1_we0_local;
wire  signed [31:0] sext_ln24_5_fu_526_p1;
reg    M_1_ce0_local;
reg    M_2_we1_local;
wire  signed [31:0] sext_ln24_2_fu_420_p1;
reg    M_2_ce1_local;
reg    M_2_we0_local;
wire  signed [31:0] sext_ln24_6_fu_569_p1;
reg    M_2_ce0_local;
reg    M_3_we1_local;
wire  signed [31:0] sext_ln24_3_fu_463_p1;
reg    M_3_ce1_local;
reg    M_3_we0_local;
wire  signed [31:0] sext_ln24_7_fu_612_p1;
reg    M_3_ce0_local;
wire   [5:0] lshr_ln1_fu_214_p4;
wire   [12:0] tmp_fu_224_p4;
wire   [7:0] sub_ln24_fu_239_p2;
wire   [6:0] tmp_s_fu_250_p4;
wire   [7:0] or_ln2_fu_260_p3;
wire   [14:0] p_shl_fu_278_p3;
wire   [14:0] zext_ln24_1_fu_274_p1;
wire   [12:0] lshr_ln24_1_fu_292_p4;
wire   [5:0] tmp_8_fu_307_p4;
wire   [6:0] or_ln24_5_fu_317_p3;
wire   [7:0] zext_ln24_3_fu_325_p1;
wire   [7:0] sub_ln24_1_fu_329_p2;
wire   [12:0] add_ln24_2_fu_340_p2;
wire   [7:0] sub_ln24_4_fu_351_p2;
wire   [14:0] add_ln24_fu_373_p2;
wire   [12:0] lshr_ln24_2_fu_378_p4;
wire   [4:0] tmp_9_fu_393_p4;
wire   [6:0] or_ln3_fu_402_p3;
wire   [7:0] zext_ln24_5_fu_410_p1;
wire   [7:0] sub_ln24_2_fu_414_p2;
wire   [14:0] add_ln24_1_fu_425_p2;
wire   [12:0] lshr_ln24_3_fu_430_p4;
wire   [6:0] or_ln24_1_fu_445_p3;
wire   [7:0] zext_ln24_7_fu_453_p1;
wire   [7:0] sub_ln24_3_fu_457_p2;
wire   [14:0] add_ln24_3_fu_468_p2;
wire   [12:0] lshr_ln24_4_fu_473_p4;
wire   [3:0] tmp_10_fu_488_p4;
wire   [0:0] tmp_15_fu_497_p3;
wire   [6:0] or_ln24_2_fu_504_p5;
wire   [7:0] zext_ln24_10_fu_516_p1;
wire   [7:0] sub_ln24_5_fu_520_p2;
wire   [14:0] add_ln24_4_fu_531_p2;
wire   [12:0] lshr_ln24_5_fu_536_p4;
wire   [6:0] or_ln24_3_fu_551_p3;
wire   [7:0] zext_ln24_12_fu_559_p1;
wire   [7:0] sub_ln24_6_fu_563_p2;
wire   [14:0] add_ln24_5_fu_574_p2;
wire   [12:0] lshr_ln24_6_fu_579_p4;
wire   [6:0] or_ln24_4_fu_594_p3;
wire   [7:0] zext_ln24_14_fu_602_p1;
wire   [7:0] sub_ln24_7_fu_606_p2;
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
#0 b_idx_fu_102 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_268_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            b_idx_fu_102 <= add_ln23_fu_362_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_fu_102 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_6_reg_634[14 : 1] <= add_ln24_6_fu_286_p2[14 : 1];
        b_idx_8_reg_624 <= ap_sig_allocacmp_b_idx_8;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_268_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_268_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_b_idx_8 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_8 = b_idx_fu_102;
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
assign M_0_address0 = zext_ln24_8_fu_346_p1;
assign M_0_address1 = zext_ln24_fu_234_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = sext_ln24_4_fu_357_p1;
assign M_0_d1 = sext_ln24_fu_245_p1;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = zext_ln24_9_fu_483_p1;
assign M_1_address1 = zext_ln24_2_fu_302_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = sext_ln24_5_fu_526_p1;
assign M_1_d1 = sext_ln24_1_fu_335_p1;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign M_2_address0 = zext_ln24_11_fu_546_p1;
assign M_2_address1 = zext_ln24_4_fu_388_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = sext_ln24_6_fu_569_p1;
assign M_2_d1 = sext_ln24_2_fu_420_p1;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = zext_ln24_13_fu_589_p1;
assign M_3_address1 = zext_ln24_6_fu_440_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = sext_ln24_7_fu_612_p1;
assign M_3_d1 = sext_ln24_3_fu_463_p1;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign add_ln23_fu_362_p2 = (ap_sig_allocacmp_b_idx_8 + 8'd8);
assign add_ln24_1_fu_425_p2 = (add_ln24_6_reg_634 + 15'd258);
assign add_ln24_2_fu_340_p2 = (tmp_fu_224_p4 + 13'd129);
assign add_ln24_3_fu_468_p2 = (add_ln24_6_reg_634 + 15'd516);
assign add_ln24_4_fu_531_p2 = (add_ln24_6_reg_634 + 15'd645);
assign add_ln24_5_fu_574_p2 = (add_ln24_6_reg_634 + 15'd774);
assign add_ln24_6_fu_286_p2 = (p_shl_fu_278_p3 + zext_ln24_1_fu_274_p1);
assign add_ln24_fu_373_p2 = (add_ln24_6_reg_634 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_268_p2 = ((or_ln2_fu_260_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_214_p4 = {{ap_sig_allocacmp_b_idx_8[7:2]}};
assign lshr_ln24_1_fu_292_p4 = {{add_ln24_6_fu_286_p2[14:2]}};
assign lshr_ln24_2_fu_378_p4 = {{add_ln24_fu_373_p2[14:2]}};
assign lshr_ln24_3_fu_430_p4 = {{add_ln24_1_fu_425_p2[14:2]}};
assign lshr_ln24_4_fu_473_p4 = {{add_ln24_3_fu_468_p2[14:2]}};
assign lshr_ln24_5_fu_536_p4 = {{add_ln24_4_fu_531_p2[14:2]}};
assign lshr_ln24_6_fu_579_p4 = {{add_ln24_5_fu_574_p2[14:2]}};
assign or_ln24_1_fu_445_p3 = {{tmp_9_fu_393_p4}, {2'd3}};
assign or_ln24_2_fu_504_p5 = {{{{tmp_10_fu_488_p4}, {1'd1}}, {tmp_15_fu_497_p3}}, {1'd1}};
assign or_ln24_3_fu_551_p3 = {{tmp_10_fu_488_p4}, {3'd6}};
assign or_ln24_4_fu_594_p3 = {{tmp_10_fu_488_p4}, {3'd7}};
assign or_ln24_5_fu_317_p3 = {{tmp_8_fu_307_p4}, {1'd1}};
assign or_ln2_fu_260_p3 = {{tmp_s_fu_250_p4}, {1'd1}};
assign or_ln3_fu_402_p3 = {{tmp_9_fu_393_p4}, {2'd2}};
assign p_shl_fu_278_p3 = {{tmp_s_fu_250_p4}, {8'd128}};
assign sext_ln24_1_fu_335_p1 = $signed(sub_ln24_1_fu_329_p2);
assign sext_ln24_2_fu_420_p1 = $signed(sub_ln24_2_fu_414_p2);
assign sext_ln24_3_fu_463_p1 = $signed(sub_ln24_3_fu_457_p2);
assign sext_ln24_4_fu_357_p1 = $signed(sub_ln24_4_fu_351_p2);
assign sext_ln24_5_fu_526_p1 = $signed(sub_ln24_5_fu_520_p2);
assign sext_ln24_6_fu_569_p1 = $signed(sub_ln24_6_fu_563_p2);
assign sext_ln24_7_fu_612_p1 = $signed(sub_ln24_7_fu_606_p2);
assign sext_ln24_fu_245_p1 = $signed(sub_ln24_fu_239_p2);
assign sub_ln24_1_fu_329_p2 = (8'd0 - zext_ln24_3_fu_325_p1);
assign sub_ln24_2_fu_414_p2 = (8'd0 - zext_ln24_5_fu_410_p1);
assign sub_ln24_3_fu_457_p2 = (8'd0 - zext_ln24_7_fu_453_p1);
assign sub_ln24_4_fu_351_p2 = ($signed(8'd252) - $signed(ap_sig_allocacmp_b_idx_8));
assign sub_ln24_5_fu_520_p2 = (8'd0 - zext_ln24_10_fu_516_p1);
assign sub_ln24_6_fu_563_p2 = (8'd0 - zext_ln24_12_fu_559_p1);
assign sub_ln24_7_fu_606_p2 = (8'd0 - zext_ln24_14_fu_602_p1);
assign sub_ln24_fu_239_p2 = (8'd0 - ap_sig_allocacmp_b_idx_8);
assign tmp_10_fu_488_p4 = {{b_idx_8_reg_624[6:3]}};
assign tmp_15_fu_497_p3 = b_idx_8_reg_624[32'd1];
assign tmp_8_fu_307_p4 = {{ap_sig_allocacmp_b_idx_8[6:1]}};
assign tmp_9_fu_393_p4 = {{b_idx_8_reg_624[6:2]}};
assign tmp_fu_224_p4 = {{{lshr_ln1_fu_214_p4}, {1'd0}}, {lshr_ln1_fu_214_p4}};
assign tmp_s_fu_250_p4 = {{ap_sig_allocacmp_b_idx_8[7:1]}};
assign zext_ln24_10_fu_516_p1 = or_ln24_2_fu_504_p5;
assign zext_ln24_11_fu_546_p1 = lshr_ln24_5_fu_536_p4;
assign zext_ln24_12_fu_559_p1 = or_ln24_3_fu_551_p3;
assign zext_ln24_13_fu_589_p1 = lshr_ln24_6_fu_579_p4;
assign zext_ln24_14_fu_602_p1 = or_ln24_4_fu_594_p3;
assign zext_ln24_1_fu_274_p1 = or_ln2_fu_260_p3;
assign zext_ln24_2_fu_302_p1 = lshr_ln24_1_fu_292_p4;
assign zext_ln24_3_fu_325_p1 = or_ln24_5_fu_317_p3;
assign zext_ln24_4_fu_388_p1 = lshr_ln24_2_fu_378_p4;
assign zext_ln24_5_fu_410_p1 = or_ln3_fu_402_p3;
assign zext_ln24_6_fu_440_p1 = lshr_ln24_3_fu_430_p4;
assign zext_ln24_7_fu_453_p1 = or_ln24_1_fu_445_p3;
assign zext_ln24_8_fu_346_p1 = add_ln24_2_fu_340_p2;
assign zext_ln24_9_fu_483_p1 = lshr_ln24_4_fu_473_p4;
assign zext_ln24_fu_234_p1 = tmp_fu_224_p4;
always @ (posedge ap_clk) begin
    add_ln24_6_reg_634[0] <= 1'b1;
end
endmodule 