module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [5:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_246_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state6;
reg   [31:0] reg_230;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [31:0] reg_234;
wire    ap_CS_fsm_state4;
reg   [6:0] i_3_reg_642;
reg   [31:0] W_load_reg_681;
reg   [31:0] W_load_1_reg_686;
wire   [31:0] xor_ln108_2_fu_430_p2;
reg   [31:0] xor_ln108_2_reg_712;
wire   [31:0] xor_ln108_5_fu_528_p2;
reg   [31:0] xor_ln108_5_reg_738;
wire   [31:0] xor_ln108_8_fu_580_p2;
reg   [31:0] xor_ln108_8_reg_748;
wire   [63:0] zext_ln108_8_fu_603_p1;
reg   [63:0] zext_ln108_8_reg_753;
wire    ap_CS_fsm_state5;
wire   [31:0] xor_ln108_11_fu_620_p2;
reg   [31:0] xor_ln108_11_reg_758;
wire   [63:0] zext_ln108_fu_268_p1;
wire   [63:0] zext_ln108_1_fu_289_p1;
wire   [63:0] zext_ln108_2_fu_310_p1;
wire   [63:0] zext_ln108_5_fu_331_p1;
wire   [63:0] zext_ln108_3_fu_355_p1;
wire   [63:0] zext_ln108_4_fu_375_p1;
wire   [63:0] zext_ln108_6_fu_395_p1;
wire   [63:0] zext_ln108_7_fu_415_p1;
wire   [63:0] zext_ln108_9_fu_451_p1;
wire   [63:0] zext_ln108_10_fu_471_p1;
wire   [63:0] zext_ln108_11_fu_491_p1;
wire   [63:0] zext_ln108_12_fu_511_p1;
wire   [63:0] zext_ln99_fu_543_p1;
wire   [63:0] zext_ln108_13_fu_564_p1;
reg   [6:0] i_fu_72;
wire   [6:0] add_ln106_fu_625_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_we0_local;
reg    W_we1_local;
wire   [6:0] add_ln108_fu_252_p2;
wire   [5:0] lshr_ln1_fu_258_p4;
wire   [6:0] add_ln108_1_fu_273_p2;
wire   [5:0] lshr_ln108_1_fu_279_p4;
wire   [6:0] add_ln108_2_fu_294_p2;
wire   [5:0] lshr_ln108_2_fu_300_p4;
wire   [6:0] add_ln108_5_fu_315_p2;
wire   [5:0] lshr_ln108_5_fu_321_p4;
wire   [5:0] trunc_ln106_fu_336_p1;
wire   [5:0] add_ln108_3_fu_339_p2;
wire   [4:0] lshr_ln108_3_fu_345_p4;
wire   [6:0] add_ln108_4_fu_360_p2;
wire   [5:0] lshr_ln108_4_fu_365_p4;
wire   [6:0] add_ln108_6_fu_380_p2;
wire   [5:0] lshr_ln108_6_fu_385_p4;
wire   [6:0] add_ln108_7_fu_400_p2;
wire   [5:0] lshr_ln108_7_fu_405_p4;
wire   [31:0] xor_ln108_1_fu_420_p2;
wire   [31:0] xor_ln108_fu_425_p2;
wire   [6:0] add_ln108_8_fu_436_p2;
wire   [5:0] lshr_ln108_8_fu_441_p4;
wire   [6:0] add_ln108_9_fu_456_p2;
wire   [5:0] lshr_ln108_9_fu_461_p4;
wire   [6:0] add_ln108_10_fu_476_p2;
wire   [5:0] lshr_ln108_s_fu_481_p4;
wire   [6:0] add_ln108_11_fu_496_p2;
wire   [5:0] lshr_ln108_10_fu_501_p4;
wire   [31:0] xor_ln108_4_fu_522_p2;
wire   [31:0] xor_ln108_3_fu_516_p2;
wire   [5:0] lshr_ln_fu_534_p4;
wire   [6:0] add_ln108_12_fu_549_p2;
wire   [5:0] lshr_ln108_11_fu_554_p4;
wire   [31:0] xor_ln108_7_fu_574_p2;
wire   [31:0] xor_ln108_6_fu_569_p2;
wire   [4:0] tmp_fu_586_p4;
wire   [5:0] or_ln_fu_595_p3;
wire   [31:0] xor_ln108_9_fu_608_p2;
wire   [31:0] xor_ln108_10_fu_614_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 i_fu_72 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        i_fu_72 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_72 <= add_ln106_fu_625_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_load_1_reg_686 <= W_q0;
        W_load_reg_681 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_642 <= ap_sig_allocacmp_i_3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_230 <= W_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_234 <= W_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        xor_ln108_11_reg_758 <= xor_ln108_11_fu_620_p2;
        zext_ln108_8_reg_753[5 : 1] <= zext_ln108_8_fu_603_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xor_ln108_2_reg_712 <= xor_ln108_2_fu_430_p2;
        xor_ln108_5_reg_738 <= xor_ln108_5_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        xor_ln108_8_reg_748 <= xor_ln108_8_fu_580_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_address0_local = zext_ln108_8_reg_753;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address0_local = zext_ln99_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address0_local = zext_ln108_12_fu_511_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_7_fu_415_p1;
    end else if (((icmp_ln106_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_5_fu_331_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_address1_local = zext_ln108_13_fu_564_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address1_local = zext_ln108_9_fu_451_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_6_fu_395_p1;
    end else if (((icmp_ln106_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_fu_268_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | ((icmp_ln106_fu_246_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_246_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        W_1_d0_local = xor_ln108_11_reg_758;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        W_1_d0_local = xor_ln108_5_reg_738;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_address0_local = zext_ln99_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address0_local = zext_ln108_11_fu_491_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln108_4_fu_375_p1;
    end else if (((icmp_ln106_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_2_fu_310_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_address1_local = zext_ln108_8_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln108_10_fu_471_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_3_fu_355_p1;
    end else if (((icmp_ln106_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_289_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_246_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((icmp_ln106_fu_246_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        W_we1_local = 1'b1;
    end else begin
        W_we1_local = 1'b0;
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
always @ (*) begin
    if (((icmp_ln106_fu_246_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_72;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_246_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_we0 = W_1_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_reg_712;
assign W_d1 = xor_ln108_8_reg_748;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_fu_625_p2 = (i_3_reg_642 + 7'd4);
assign add_ln108_10_fu_476_p2 = ($signed(i_3_reg_642) + $signed(7'd116));
assign add_ln108_11_fu_496_p2 = ($signed(i_3_reg_642) + $signed(7'd123));
assign add_ln108_12_fu_549_p2 = ($signed(i_3_reg_642) + $signed(7'd117));
assign add_ln108_1_fu_273_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_294_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_339_p2 = ($signed(trunc_ln106_fu_336_p1) + $signed(6'd48));
assign add_ln108_4_fu_360_p2 = ($signed(i_3_reg_642) + $signed(7'd126));
assign add_ln108_5_fu_315_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_6_fu_380_p2 = ($signed(i_3_reg_642) + $signed(7'd115));
assign add_ln108_7_fu_400_p2 = ($signed(i_3_reg_642) + $signed(7'd113));
assign add_ln108_8_fu_436_p2 = ($signed(i_3_reg_642) + $signed(7'd127));
assign add_ln108_9_fu_456_p2 = ($signed(i_3_reg_642) + $signed(7'd122));
assign add_ln108_fu_252_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_246_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_501_p4 = {{add_ln108_11_fu_496_p2[6:1]}};
assign lshr_ln108_11_fu_554_p4 = {{add_ln108_12_fu_549_p2[6:1]}};
assign lshr_ln108_1_fu_279_p4 = {{add_ln108_1_fu_273_p2[6:1]}};
assign lshr_ln108_2_fu_300_p4 = {{add_ln108_2_fu_294_p2[6:1]}};
assign lshr_ln108_3_fu_345_p4 = {{add_ln108_3_fu_339_p2[5:1]}};
assign lshr_ln108_4_fu_365_p4 = {{add_ln108_4_fu_360_p2[6:1]}};
assign lshr_ln108_5_fu_321_p4 = {{add_ln108_5_fu_315_p2[6:1]}};
assign lshr_ln108_6_fu_385_p4 = {{add_ln108_6_fu_380_p2[6:1]}};
assign lshr_ln108_7_fu_405_p4 = {{add_ln108_7_fu_400_p2[6:1]}};
assign lshr_ln108_8_fu_441_p4 = {{add_ln108_8_fu_436_p2[6:1]}};
assign lshr_ln108_9_fu_461_p4 = {{add_ln108_9_fu_456_p2[6:1]}};
assign lshr_ln108_s_fu_481_p4 = {{add_ln108_10_fu_476_p2[6:1]}};
assign lshr_ln1_fu_258_p4 = {{add_ln108_fu_252_p2[6:1]}};
assign lshr_ln_fu_534_p4 = {{i_3_reg_642[6:1]}};
assign or_ln_fu_595_p3 = {{tmp_fu_586_p4}, {1'd1}};
assign tmp_fu_586_p4 = {{i_3_reg_642[6:2]}};
assign trunc_ln106_fu_336_p1 = i_3_reg_642[5:0];
assign xor_ln108_10_fu_614_p2 = (xor_ln108_9_fu_608_p2 ^ W_1_q1);
assign xor_ln108_11_fu_620_p2 = (xor_ln108_2_reg_712 ^ xor_ln108_10_fu_614_p2);
assign xor_ln108_1_fu_420_p2 = (W_q1 ^ W_load_reg_681);
assign xor_ln108_2_fu_430_p2 = (xor_ln108_fu_425_p2 ^ reg_230);
assign xor_ln108_3_fu_516_p2 = (reg_234 ^ W_q0);
assign xor_ln108_4_fu_522_p2 = (W_1_q1 ^ W_1_q0);
assign xor_ln108_5_fu_528_p2 = (xor_ln108_4_fu_522_p2 ^ xor_ln108_3_fu_516_p2);
assign xor_ln108_6_fu_569_p2 = (W_load_1_reg_686 ^ W_1_q1);
assign xor_ln108_7_fu_574_p2 = (W_q1 ^ W_q0);
assign xor_ln108_8_fu_580_p2 = (xor_ln108_7_fu_574_p2 ^ xor_ln108_6_fu_569_p2);
assign xor_ln108_9_fu_608_p2 = (reg_234 ^ reg_230);
assign xor_ln108_fu_425_p2 = (xor_ln108_1_fu_420_p2 ^ W_load_1_reg_686);
assign zext_ln108_10_fu_471_p1 = lshr_ln108_9_fu_461_p4;
assign zext_ln108_11_fu_491_p1 = lshr_ln108_s_fu_481_p4;
assign zext_ln108_12_fu_511_p1 = lshr_ln108_10_fu_501_p4;
assign zext_ln108_13_fu_564_p1 = lshr_ln108_11_fu_554_p4;
assign zext_ln108_1_fu_289_p1 = lshr_ln108_1_fu_279_p4;
assign zext_ln108_2_fu_310_p1 = lshr_ln108_2_fu_300_p4;
assign zext_ln108_3_fu_355_p1 = lshr_ln108_3_fu_345_p4;
assign zext_ln108_4_fu_375_p1 = lshr_ln108_4_fu_365_p4;
assign zext_ln108_5_fu_331_p1 = lshr_ln108_5_fu_321_p4;
assign zext_ln108_6_fu_395_p1 = lshr_ln108_6_fu_385_p4;
assign zext_ln108_7_fu_415_p1 = lshr_ln108_7_fu_405_p4;
assign zext_ln108_8_fu_603_p1 = or_ln_fu_595_p3;
assign zext_ln108_9_fu_451_p1 = lshr_ln108_8_fu_441_p4;
assign zext_ln108_fu_268_p1 = lshr_ln1_fu_258_p4;
assign zext_ln99_fu_543_p1 = lshr_ln_fu_534_p4;
always @ (posedge ap_clk) begin
    zext_ln108_8_reg_753[0] <= 1'b1;
    zext_ln108_8_reg_753[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 