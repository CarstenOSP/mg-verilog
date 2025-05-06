
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_280_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] b_idx_26_reg_657;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] add_ln24_6_fu_298_p2;
reg   [14:0] add_ln24_6_reg_667;
wire   [63:0] zext_ln24_fu_246_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_314_p1;
wire   [63:0] zext_ln24_4_fu_378_p1;
wire   [63:0] zext_ln24_6_fu_430_p1;
wire   [63:0] zext_ln24_8_fu_473_p1;
wire   [63:0] zext_ln24_10_fu_525_p1;
wire   [63:0] zext_ln24_12_fu_579_p1;
wire   [63:0] zext_ln24_14_fu_622_p1;
reg   [7:0] b_idx_fu_110;
wire   [7:0] add_ln23_fu_352_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_26;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln24_fu_257_p1;
reg    M_0_ce0_local;
reg    M_1_we0_local;
wire  signed [31:0] sext_ln24_1_fu_347_p1;
reg    M_1_ce0_local;
reg    M_2_we0_local;
wire  signed [31:0] sext_ln24_2_fu_410_p1;
reg    M_2_ce0_local;
reg    M_3_we0_local;
wire  signed [31:0] sext_ln24_3_fu_453_p1;
reg    M_3_ce0_local;
reg    M_4_we0_local;
wire  signed [31:0] sext_ln24_4_fu_505_p1;
reg    M_4_ce0_local;
reg    M_5_we0_local;
wire  signed [31:0] sext_ln24_5_fu_559_p1;
reg    M_5_ce0_local;
reg    M_6_we0_local;
wire  signed [31:0] sext_ln24_6_fu_602_p1;
reg    M_6_ce0_local;
reg    M_7_we0_local;
wire  signed [31:0] sext_ln24_7_fu_645_p1;
reg    M_7_ce0_local;
wire   [4:0] lshr_ln1_fu_226_p4;
wire   [11:0] tmp_fu_236_p4;
wire   [7:0] sub_ln24_fu_251_p2;
wire   [6:0] tmp_s_fu_262_p4;
wire   [7:0] or_ln2_fu_272_p3;
wire   [14:0] p_shl_fu_290_p3;
wire   [14:0] zext_ln24_1_fu_286_p1;
wire   [11:0] lshr_ln24_1_fu_304_p4;
wire   [5:0] tmp_41_fu_319_p4;
wire   [6:0] or_ln24_6_fu_329_p3;
wire   [7:0] zext_ln24_3_fu_337_p1;
wire   [7:0] sub_ln24_1_fu_341_p2;
wire   [14:0] add_ln24_fu_363_p2;
wire   [11:0] lshr_ln24_2_fu_368_p4;
wire   [4:0] tmp_42_fu_383_p4;
wire   [6:0] or_ln3_fu_392_p3;
wire   [7:0] zext_ln24_5_fu_400_p1;
wire   [7:0] sub_ln24_2_fu_404_p2;
wire   [14:0] add_ln24_1_fu_415_p2;
wire   [11:0] lshr_ln24_3_fu_420_p4;
wire   [6:0] or_ln24_1_fu_435_p3;
wire   [7:0] zext_ln24_7_fu_443_p1;
wire   [7:0] sub_ln24_3_fu_447_p2;
wire   [14:0] add_ln24_2_fu_458_p2;
wire   [11:0] lshr_ln24_4_fu_463_p4;
wire   [3:0] tmp_43_fu_478_p4;
wire   [6:0] or_ln24_2_fu_487_p3;
wire   [7:0] zext_ln24_9_fu_495_p1;
wire   [7:0] sub_ln24_4_fu_499_p2;
wire   [14:0] add_ln24_3_fu_510_p2;
wire   [11:0] lshr_ln24_5_fu_515_p4;
wire   [0:0] tmp_15_fu_530_p3;
wire   [6:0] or_ln24_3_fu_537_p5;
wire   [7:0] zext_ln24_11_fu_549_p1;
wire   [7:0] sub_ln24_5_fu_553_p2;
wire   [14:0] add_ln24_4_fu_564_p2;
wire   [11:0] lshr_ln24_6_fu_569_p4;
wire   [6:0] or_ln24_4_fu_584_p3;
wire   [7:0] zext_ln24_13_fu_592_p1;
wire   [7:0] sub_ln24_6_fu_596_p2;
wire   [14:0] add_ln24_5_fu_607_p2;
wire   [11:0] lshr_ln24_7_fu_612_p4;
wire   [6:0] or_ln24_5_fu_627_p3;
wire   [7:0] zext_ln24_15_fu_635_p1;
wire   [7:0] sub_ln24_7_fu_639_p2;
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
#0 b_idx_fu_110 = 8'd0;
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
        if (((icmp_ln23_fu_280_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            b_idx_fu_110 <= add_ln23_fu_352_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_fu_110 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_6_reg_667[14 : 1] <= add_ln24_6_fu_298_p2[14 : 1];
        b_idx_26_reg_657 <= ap_sig_allocacmp_b_idx_26;
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
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_280_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
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
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
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
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_280_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_b_idx_26 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_26 = b_idx_fu_110;
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
assign M_0_address0 = zext_ln24_fu_246_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_d0 = sext_ln24_fu_257_p1;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = zext_ln24_2_fu_314_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_d0 = sext_ln24_1_fu_347_p1;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = zext_ln24_4_fu_378_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_d0 = sext_ln24_2_fu_410_p1;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = zext_ln24_6_fu_430_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_d0 = sext_ln24_3_fu_453_p1;
assign M_3_we0 = M_3_we0_local;
assign M_4_address0 = zext_ln24_8_fu_473_p1;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_d0 = sext_ln24_4_fu_505_p1;
assign M_4_we0 = M_4_we0_local;
assign M_5_address0 = zext_ln24_10_fu_525_p1;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_d0 = sext_ln24_5_fu_559_p1;
assign M_5_we0 = M_5_we0_local;
assign M_6_address0 = zext_ln24_12_fu_579_p1;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_d0 = sext_ln24_6_fu_602_p1;
assign M_6_we0 = M_6_we0_local;
assign M_7_address0 = zext_ln24_14_fu_622_p1;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_d0 = sext_ln24_7_fu_645_p1;
assign M_7_we0 = M_7_we0_local;
assign add_ln23_fu_352_p2 = (ap_sig_allocacmp_b_idx_26 + 8'd8);
assign add_ln24_1_fu_415_p2 = (add_ln24_6_reg_667 + 15'd258);
assign add_ln24_2_fu_458_p2 = (add_ln24_6_reg_667 + 15'd387);
assign add_ln24_3_fu_510_p2 = (add_ln24_6_reg_667 + 15'd516);
assign add_ln24_4_fu_564_p2 = (add_ln24_6_reg_667 + 15'd645);
assign add_ln24_5_fu_607_p2 = (add_ln24_6_reg_667 + 15'd774);
assign add_ln24_6_fu_298_p2 = (p_shl_fu_290_p3 + zext_ln24_1_fu_286_p1);
assign add_ln24_fu_363_p2 = (add_ln24_6_reg_667 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_280_p2 = ((or_ln2_fu_272_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_226_p4 = {{ap_sig_allocacmp_b_idx_26[7:3]}};
assign lshr_ln24_1_fu_304_p4 = {{add_ln24_6_fu_298_p2[14:3]}};
assign lshr_ln24_2_fu_368_p4 = {{add_ln24_fu_363_p2[14:3]}};
assign lshr_ln24_3_fu_420_p4 = {{add_ln24_1_fu_415_p2[14:3]}};
assign lshr_ln24_4_fu_463_p4 = {{add_ln24_2_fu_458_p2[14:3]}};
assign lshr_ln24_5_fu_515_p4 = {{add_ln24_3_fu_510_p2[14:3]}};
assign lshr_ln24_6_fu_569_p4 = {{add_ln24_4_fu_564_p2[14:3]}};
assign lshr_ln24_7_fu_612_p4 = {{add_ln24_5_fu_607_p2[14:3]}};
assign or_ln24_1_fu_435_p3 = {{tmp_42_fu_383_p4}, {2'd3}};
assign or_ln24_2_fu_487_p3 = {{tmp_43_fu_478_p4}, {3'd4}};
assign or_ln24_3_fu_537_p5 = {{{{tmp_43_fu_478_p4}, {1'd1}}, {tmp_15_fu_530_p3}}, {1'd1}};
assign or_ln24_4_fu_584_p3 = {{tmp_43_fu_478_p4}, {3'd6}};
assign or_ln24_5_fu_627_p3 = {{tmp_43_fu_478_p4}, {3'd7}};
assign or_ln24_6_fu_329_p3 = {{tmp_41_fu_319_p4}, {1'd1}};
assign or_ln2_fu_272_p3 = {{tmp_s_fu_262_p4}, {1'd1}};
assign or_ln3_fu_392_p3 = {{tmp_42_fu_383_p4}, {2'd2}};
assign p_shl_fu_290_p3 = {{tmp_s_fu_262_p4}, {8'd128}};
assign sext_ln24_1_fu_347_p1 = $signed(sub_ln24_1_fu_341_p2);
assign sext_ln24_2_fu_410_p1 = $signed(sub_ln24_2_fu_404_p2);
assign sext_ln24_3_fu_453_p1 = $signed(sub_ln24_3_fu_447_p2);
assign sext_ln24_4_fu_505_p1 = $signed(sub_ln24_4_fu_499_p2);
assign sext_ln24_5_fu_559_p1 = $signed(sub_ln24_5_fu_553_p2);
assign sext_ln24_6_fu_602_p1 = $signed(sub_ln24_6_fu_596_p2);
assign sext_ln24_7_fu_645_p1 = $signed(sub_ln24_7_fu_639_p2);
assign sext_ln24_fu_257_p1 = $signed(sub_ln24_fu_251_p2);
assign sub_ln24_1_fu_341_p2 = (8'd0 - zext_ln24_3_fu_337_p1);
assign sub_ln24_2_fu_404_p2 = (8'd0 - zext_ln24_5_fu_400_p1);
assign sub_ln24_3_fu_447_p2 = (8'd0 - zext_ln24_7_fu_443_p1);
assign sub_ln24_4_fu_499_p2 = (8'd0 - zext_ln24_9_fu_495_p1);
assign sub_ln24_5_fu_553_p2 = (8'd0 - zext_ln24_11_fu_549_p1);
assign sub_ln24_6_fu_596_p2 = (8'd0 - zext_ln24_13_fu_592_p1);
assign sub_ln24_7_fu_639_p2 = (8'd0 - zext_ln24_15_fu_635_p1);
assign sub_ln24_fu_251_p2 = (8'd0 - ap_sig_allocacmp_b_idx_26);
assign tmp_15_fu_530_p3 = b_idx_26_reg_657[32'd1];
assign tmp_41_fu_319_p4 = {{ap_sig_allocacmp_b_idx_26[6:1]}};
assign tmp_42_fu_383_p4 = {{b_idx_26_reg_657[6:2]}};
assign tmp_43_fu_478_p4 = {{b_idx_26_reg_657[6:3]}};
assign tmp_fu_236_p4 = {{{lshr_ln1_fu_226_p4}, {2'd0}}, {lshr_ln1_fu_226_p4}};
assign tmp_s_fu_262_p4 = {{ap_sig_allocacmp_b_idx_26[7:1]}};
assign zext_ln24_10_fu_525_p1 = lshr_ln24_5_fu_515_p4;
assign zext_ln24_11_fu_549_p1 = or_ln24_3_fu_537_p5;
assign zext_ln24_12_fu_579_p1 = lshr_ln24_6_fu_569_p4;
assign zext_ln24_13_fu_592_p1 = or_ln24_4_fu_584_p3;
assign zext_ln24_14_fu_622_p1 = lshr_ln24_7_fu_612_p4;
assign zext_ln24_15_fu_635_p1 = or_ln24_5_fu_627_p3;
assign zext_ln24_1_fu_286_p1 = or_ln2_fu_272_p3;
assign zext_ln24_2_fu_314_p1 = lshr_ln24_1_fu_304_p4;
assign zext_ln24_3_fu_337_p1 = or_ln24_6_fu_329_p3;
assign zext_ln24_4_fu_378_p1 = lshr_ln24_2_fu_368_p4;
assign zext_ln24_5_fu_400_p1 = or_ln3_fu_392_p3;
assign zext_ln24_6_fu_430_p1 = lshr_ln24_3_fu_420_p4;
assign zext_ln24_7_fu_443_p1 = or_ln24_1_fu_435_p3;
assign zext_ln24_8_fu_473_p1 = lshr_ln24_4_fu_463_p4;
assign zext_ln24_9_fu_495_p1 = or_ln24_2_fu_487_p3;
assign zext_ln24_fu_246_p1 = tmp_fu_236_p4;
always @ (posedge ap_clk) begin
    add_ln24_6_reg_667[0] <= 1'b1;
end
endmodule 
