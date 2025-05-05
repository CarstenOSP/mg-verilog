module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104_14,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_address2,W_ce2,W_q2,W_address3,W_ce3,W_q3,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_1_address3,W_1_ce3,W_1_q3,W_1_address4,W_1_ce4,W_1_q4); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] zext_ln104_14;
output  [5:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_address2;
output   W_ce2;
input  [31:0] W_q2;
output  [5:0] W_address3;
output   W_ce3;
input  [31:0] W_q3;
output  [5:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [5:0] W_1_address2;
output   W_1_ce2;
input  [31:0] W_1_q2;
output  [5:0] W_1_address3;
output   W_1_ce3;
input  [31:0] W_1_q3;
output  [5:0] W_1_address4;
output   W_1_ce4;
input  [31:0] W_1_q4;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_197_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_430;
reg   [5:0] lshr_ln_reg_470;
reg   [31:0] W_load_reg_480;
reg   [31:0] W_load_1_reg_485;
reg   [31:0] W_load_2_reg_490;
reg   [31:0] W_1_load_1_reg_495;
reg   [31:0] W_1_load_2_reg_500;
reg   [31:0] W_1_load_3_reg_505;
wire   [63:0] zext_ln99_fu_376_p1;
reg   [63:0] zext_ln99_reg_510;
wire   [31:0] xor_ln108_2_fu_389_p2;
reg   [31:0] xor_ln108_2_reg_515;
wire   [63:0] zext_ln108_1_fu_223_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_2_fu_244_p1;
wire   [63:0] zext_ln108_3_fu_265_p1;
wire   [63:0] zext_ln108_4_fu_286_p1;
wire   [63:0] zext_ln108_5_fu_307_p1;
wire   [63:0] zext_ln108_6_fu_328_p1;
wire   [63:0] zext_ln108_fu_368_p1;
reg   [6:0] i_fu_56;
wire   [6:0] add_ln106_fu_333_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg   [31:0] store_forwarded_fu_60;
wire   [31:0] zext_ln104_14_cast_fu_180_p1;
reg    W_ce3_local;
reg    W_ce2_local;
reg    W_ce1_local;
reg    W_we0_local;
reg    W_ce0_local;
reg    W_1_ce4_local;
reg    W_1_ce3_local;
reg    W_1_ce2_local;
reg    W_1_ce1_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_404_p2;
reg    W_1_ce0_local;
wire   [6:0] add_ln108_1_fu_207_p2;
wire   [5:0] lshr_ln108_1_fu_213_p4;
wire   [6:0] add_ln108_2_fu_228_p2;
wire   [5:0] lshr_ln108_2_fu_234_p4;
wire   [5:0] trunc_ln106_fu_203_p1;
wire   [5:0] add_ln108_3_fu_249_p2;
wire   [4:0] lshr_ln108_3_fu_255_p4;
wire   [6:0] add_ln108_4_fu_270_p2;
wire   [5:0] lshr_ln108_4_fu_276_p4;
wire   [6:0] add_ln108_5_fu_291_p2;
wire   [5:0] lshr_ln108_5_fu_297_p4;
wire   [6:0] add_ln108_6_fu_312_p2;
wire   [5:0] lshr_ln108_6_fu_318_p4;
wire   [6:0] add_ln108_fu_353_p2;
wire   [5:0] lshr_ln1_fu_358_p4;
wire   [31:0] xor_ln108_1_fu_380_p2;
wire   [31:0] xor_ln108_fu_384_p2;
wire   [31:0] xor_ln108_4_fu_399_p2;
wire   [31:0] xor_ln108_3_fu_395_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 i_fu_56 = 7'd0;
#0 store_forwarded_fu_60 = 32'd0;
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln106_fu_197_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_56 <= add_ln106_fu_333_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            store_forwarded_fu_60 <= zext_ln104_14_cast_fu_180_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded_fu_60 <= xor_ln108_2_fu_389_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_load_1_reg_495 <= W_1_q4;
        W_1_load_2_reg_500 <= W_1_q3;
        W_1_load_3_reg_505 <= W_1_q2;
        W_load_1_reg_485 <= W_q2;
        W_load_2_reg_490 <= W_q1;
        W_load_reg_480 <= W_q3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_3_reg_430 <= ap_sig_allocacmp_i_3;
        lshr_ln_reg_470 <= {{i_3_reg_430[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        xor_ln108_2_reg_515 <= xor_ln108_2_fu_389_p2;
        zext_ln99_reg_510[5 : 0] <= zext_ln99_fu_376_p1[5 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce2_local = 1'b1;
    end else begin
        W_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce3_local = 1'b1;
    end else begin
        W_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce4_local = 1'b1;
    end else begin
        W_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce2_local = 1'b1;
    end else begin
        W_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce3_local = 1'b1;
    end else begin
        W_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_56;
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
assign W_1_address0 = zext_ln99_fu_376_p1;
assign W_1_address1 = zext_ln108_fu_368_p1;
assign W_1_address2 = zext_ln108_6_fu_328_p1;
assign W_1_address3 = zext_ln108_5_fu_307_p1;
assign W_1_address4 = zext_ln108_4_fu_286_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_ce3 = W_1_ce3_local;
assign W_1_ce4 = W_1_ce4_local;
assign W_1_d0 = xor_ln108_5_fu_404_p2;
assign W_1_we0 = W_1_we0_local;
assign W_address0 = zext_ln99_reg_510;
assign W_address1 = zext_ln108_3_fu_265_p1;
assign W_address2 = zext_ln108_2_fu_244_p1;
assign W_address3 = zext_ln108_1_fu_223_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_ce2 = W_ce2_local;
assign W_ce3 = W_ce3_local;
assign W_d0 = xor_ln108_2_reg_515;
assign W_we0 = W_we0_local;
assign add_ln106_fu_333_p2 = (ap_sig_allocacmp_i_3 + 7'd2);
assign add_ln108_1_fu_207_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_228_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_249_p2 = ($signed(trunc_ln106_fu_203_p1) + $signed(6'd48));
assign add_ln108_4_fu_270_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_5_fu_291_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_6_fu_312_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd113));
assign add_ln108_fu_353_p2 = ($signed(i_3_reg_430) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_197_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_213_p4 = {{add_ln108_1_fu_207_p2[6:1]}};
assign lshr_ln108_2_fu_234_p4 = {{add_ln108_2_fu_228_p2[6:1]}};
assign lshr_ln108_3_fu_255_p4 = {{add_ln108_3_fu_249_p2[5:1]}};
assign lshr_ln108_4_fu_276_p4 = {{add_ln108_4_fu_270_p2[6:1]}};
assign lshr_ln108_5_fu_297_p4 = {{add_ln108_5_fu_291_p2[6:1]}};
assign lshr_ln108_6_fu_318_p4 = {{add_ln108_6_fu_312_p2[6:1]}};
assign lshr_ln1_fu_358_p4 = {{add_ln108_fu_353_p2[6:1]}};
assign trunc_ln106_fu_203_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_1_fu_380_p2 = (W_load_2_reg_490 ^ W_load_1_reg_485);
assign xor_ln108_2_fu_389_p2 = (xor_ln108_fu_384_p2 ^ W_1_q1);
assign xor_ln108_3_fu_395_p2 = (W_1_load_2_reg_500 ^ W_1_load_1_reg_495);
assign xor_ln108_4_fu_399_p2 = (store_forwarded_fu_60 ^ W_1_load_3_reg_505);
assign xor_ln108_5_fu_404_p2 = (xor_ln108_4_fu_399_p2 ^ xor_ln108_3_fu_395_p2);
assign xor_ln108_fu_384_p2 = (xor_ln108_1_fu_380_p2 ^ W_load_reg_480);
assign zext_ln104_14_cast_fu_180_p1 = zext_ln104_14;
assign zext_ln108_1_fu_223_p1 = lshr_ln108_1_fu_213_p4;
assign zext_ln108_2_fu_244_p1 = lshr_ln108_2_fu_234_p4;
assign zext_ln108_3_fu_265_p1 = lshr_ln108_3_fu_255_p4;
assign zext_ln108_4_fu_286_p1 = lshr_ln108_4_fu_276_p4;
assign zext_ln108_5_fu_307_p1 = lshr_ln108_5_fu_297_p4;
assign zext_ln108_6_fu_328_p1 = lshr_ln108_6_fu_318_p4;
assign zext_ln108_fu_368_p1 = lshr_ln1_fu_358_p4;
assign zext_ln99_fu_376_p1 = lshr_ln_reg_470;
always @ (posedge ap_clk) begin
    zext_ln99_reg_510[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 