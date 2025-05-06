
module forward_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3838_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,idxprom3_i133,idxprom8_i136,v9256_0_address0,v9256_0_ce0,v9256_0_q0,v9256_1_address0,v9256_1_ce0,v9256_1_q0,v9256_2_address0,v9256_2_ce0,v9256_2_q0,v9256_3_address0,v9256_3_ce0,v9256_3_q0,v2740_3_address0,v2740_3_ce0,v2740_3_we0,v2740_3_d0,v2740_2_address0,v2740_2_ce0,v2740_2_we0,v2740_2_d0,v2740_1_address0,v2740_1_ce0,v2740_1_we0,v2740_1_d0,v2740_address0,v2740_ce0,v2740_we0,v2740_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [5:0] shl_ln;
input  [4:0] idxprom3_i133;
input  [4:0] idxprom8_i136;
output  [13:0] v9256_0_address0;
output   v9256_0_ce0;
input  [7:0] v9256_0_q0;
output  [13:0] v9256_1_address0;
output   v9256_1_ce0;
input  [7:0] v9256_1_q0;
output  [13:0] v9256_2_address0;
output   v9256_2_ce0;
input  [7:0] v9256_2_q0;
output  [13:0] v9256_3_address0;
output   v9256_3_ce0;
input  [7:0] v9256_3_q0;
output  [2:0] v2740_3_address0;
output   v2740_3_ce0;
output   v2740_3_we0;
output  [7:0] v2740_3_d0;
output  [2:0] v2740_2_address0;
output   v2740_2_ce0;
output   v2740_2_we0;
output  [7:0] v2740_2_d0;
output  [2:0] v2740_1_address0;
output   v2740_1_ce0;
output   v2740_1_we0;
output  [7:0] v2740_1_d0;
output  [2:0] v2740_address0;
output   v2740_ce0;
output   v2740_we0;
output  [7:0] v2740_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_314_fu_372_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [13:0] idxprom8_i136_cast_fu_230_p1;
reg  signed [13:0] idxprom8_i136_cast_reg_469;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln_fu_250_p4;
reg   [3:0] lshr_ln_reg_475;
reg   [3:0] lshr_ln_reg_475_pp0_iter1_reg;
wire   [10:0] add_ln3841_1_fu_306_p2;
reg   [10:0] add_ln3841_1_reg_480;
wire   [9:0] trunc_ln3841_fu_312_p1;
reg   [9:0] trunc_ln3841_reg_485;
wire   [10:0] add_ln3843_fu_356_p2;
reg   [10:0] add_ln3843_reg_490;
wire   [9:0] trunc_ln3843_fu_362_p1;
reg   [9:0] trunc_ln3843_reg_495;
wire   [63:0] zext_ln3841_2_fu_414_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln3843_2_fu_448_p1;
wire   [63:0] zext_ln3838_1_fu_455_p1;
reg   [5:0] v272045_fu_94;
wire   [5:0] v2720_fu_366_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v272045_load;
reg    v9256_0_ce0_local;
reg    v9256_1_ce0_local;
reg    v9256_2_ce0_local;
reg    v9256_3_ce0_local;
reg    v2740_3_we0_local;
reg    v2740_3_ce0_local;
reg    v2740_2_we0_local;
reg    v2740_2_ce0_local;
reg    v2740_1_we0_local;
reg    v2740_1_ce0_local;
reg    v2740_we0_local;
reg    v2740_ce0_local;
wire   [7:0] zext_ln3838_fu_246_p1;
wire   [5:0] zext_ln3838_2_fu_260_p1;
wire   [5:0] add_ln3841_fu_270_p2;
wire   [6:0] tmp_fu_284_p3;
wire   [9:0] p_shl22_fu_276_p3;
wire   [9:0] zext_ln3841_fu_292_p1;
wire   [9:0] sub_ln3841_fu_296_p2;
wire   [10:0] zext_ln3841_1_fu_302_p1;
wire  signed [10:0] idxprom3_i133_cast_fu_234_p1;
wire   [7:0] add_ln3840_fu_264_p2;
wire   [5:0] tmp_311_fu_316_p4;
wire   [6:0] tmp_312_fu_334_p3;
wire   [9:0] p_shl18_fu_326_p3;
wire   [9:0] zext_ln3843_fu_342_p1;
wire   [9:0] sub_ln3843_fu_346_p2;
wire   [10:0] zext_ln3843_1_fu_352_p1;
wire   [11:0] tmp_310_fu_392_p3;
wire   [13:0] p_shl_fu_385_p3;
wire  signed [13:0] sext_ln3841_fu_399_p1;
wire   [13:0] sub_ln3841_1_fu_403_p2;
wire   [13:0] add_ln3841_2_fu_409_p2;
wire   [11:0] tmp_313_fu_426_p3;
wire   [13:0] p_shl25_fu_419_p3;
wire  signed [13:0] sext_ln3843_fu_433_p1;
wire   [13:0] sub_ln3843_1_fu_437_p2;
wire   [13:0] add_ln3843_1_fu_443_p2;
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
#0 v272045_fu_94 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v272045_fu_94 <= v2720_fu_366_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v272045_fu_94 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3841_1_reg_480 <= add_ln3841_1_fu_306_p2;
        add_ln3843_reg_490 <= add_ln3843_fu_356_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom8_i136_cast_reg_469 <= idxprom8_i136_cast_fu_230_p1;
        lshr_ln_reg_475 <= {{ap_sig_allocacmp_v272045_load[5:2]}};
        lshr_ln_reg_475_pp0_iter1_reg <= lshr_ln_reg_475;
        trunc_ln3841_reg_485 <= trunc_ln3841_fu_312_p1;
        trunc_ln3843_reg_495 <= trunc_ln3843_fu_362_p1;
    end
end
always @ (*) begin
    if (((tmp_314_fu_372_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v272045_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v272045_load = v272045_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_1_ce0_local = 1'b1;
    end else begin
        v2740_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_1_we0_local = 1'b1;
    end else begin
        v2740_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_2_ce0_local = 1'b1;
    end else begin
        v2740_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_2_we0_local = 1'b1;
    end else begin
        v2740_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_3_ce0_local = 1'b1;
    end else begin
        v2740_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_3_we0_local = 1'b1;
    end else begin
        v2740_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_ce0_local = 1'b1;
    end else begin
        v2740_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_we0_local = 1'b1;
    end else begin
        v2740_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9256_0_ce0_local = 1'b1;
    end else begin
        v9256_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9256_1_ce0_local = 1'b1;
    end else begin
        v9256_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9256_2_ce0_local = 1'b1;
    end else begin
        v9256_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9256_3_ce0_local = 1'b1;
    end else begin
        v9256_3_ce0_local = 1'b0;
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
assign add_ln3840_fu_264_p2 = (mul_i + zext_ln3838_fu_246_p1);
assign add_ln3841_1_fu_306_p2 = ($signed(zext_ln3841_1_fu_302_p1) + $signed(idxprom3_i133_cast_fu_234_p1));
assign add_ln3841_2_fu_409_p2 = ($signed(sub_ln3841_1_fu_403_p2) + $signed(idxprom8_i136_cast_reg_469));
assign add_ln3841_fu_270_p2 = (zext_ln3838_2_fu_260_p1 + shl_ln);
assign add_ln3843_1_fu_443_p2 = ($signed(sub_ln3843_1_fu_437_p2) + $signed(idxprom8_i136_cast_reg_469));
assign add_ln3843_fu_356_p2 = ($signed(zext_ln3843_1_fu_352_p1) + $signed(idxprom3_i133_cast_fu_234_p1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom3_i133_cast_fu_234_p1 = $signed(idxprom3_i133);
assign idxprom8_i136_cast_fu_230_p1 = $signed(idxprom8_i136);
assign lshr_ln_fu_250_p4 = {{ap_sig_allocacmp_v272045_load[5:2]}};
assign p_shl18_fu_326_p3 = {{tmp_311_fu_316_p4}, {4'd0}};
assign p_shl22_fu_276_p3 = {{add_ln3841_fu_270_p2}, {4'd0}};
assign p_shl25_fu_419_p3 = {{trunc_ln3843_reg_495}, {4'd0}};
assign p_shl_fu_385_p3 = {{trunc_ln3841_reg_485}, {4'd0}};
assign sext_ln3841_fu_399_p1 = $signed(tmp_310_fu_392_p3);
assign sext_ln3843_fu_433_p1 = $signed(tmp_313_fu_426_p3);
assign sub_ln3841_1_fu_403_p2 = ($signed(p_shl_fu_385_p3) - $signed(sext_ln3841_fu_399_p1));
assign sub_ln3841_fu_296_p2 = (p_shl22_fu_276_p3 - zext_ln3841_fu_292_p1);
assign sub_ln3843_1_fu_437_p2 = ($signed(p_shl25_fu_419_p3) - $signed(sext_ln3843_fu_433_p1));
assign sub_ln3843_fu_346_p2 = (p_shl18_fu_326_p3 - zext_ln3843_fu_342_p1);
assign tmp_310_fu_392_p3 = {{add_ln3841_1_reg_480}, {1'd0}};
assign tmp_311_fu_316_p4 = {{add_ln3840_fu_264_p2[7:2]}};
assign tmp_312_fu_334_p3 = {{tmp_311_fu_316_p4}, {1'd0}};
assign tmp_313_fu_426_p3 = {{add_ln3843_reg_490}, {1'd0}};
assign tmp_314_fu_372_p3 = v2720_fu_366_p2[32'd5];
assign tmp_fu_284_p3 = {{add_ln3841_fu_270_p2}, {1'd0}};
assign trunc_ln3841_fu_312_p1 = add_ln3841_1_fu_306_p2[9:0];
assign trunc_ln3843_fu_362_p1 = add_ln3843_fu_356_p2[9:0];
assign v2720_fu_366_p2 = (ap_sig_allocacmp_v272045_load + 6'd4);
assign v2740_1_address0 = zext_ln3838_1_fu_455_p1;
assign v2740_1_ce0 = v2740_1_ce0_local;
assign v2740_1_d0 = v9256_2_q0;
assign v2740_1_we0 = v2740_1_we0_local;
assign v2740_2_address0 = zext_ln3838_1_fu_455_p1;
assign v2740_2_ce0 = v2740_2_ce0_local;
assign v2740_2_d0 = v9256_1_q0;
assign v2740_2_we0 = v2740_2_we0_local;
assign v2740_3_address0 = zext_ln3838_1_fu_455_p1;
assign v2740_3_ce0 = v2740_3_ce0_local;
assign v2740_3_d0 = v9256_0_q0;
assign v2740_3_we0 = v2740_3_we0_local;
assign v2740_address0 = zext_ln3838_1_fu_455_p1;
assign v2740_ce0 = v2740_ce0_local;
assign v2740_d0 = v9256_3_q0;
assign v2740_we0 = v2740_we0_local;
assign v9256_0_address0 = zext_ln3841_2_fu_414_p1;
assign v9256_0_ce0 = v9256_0_ce0_local;
assign v9256_1_address0 = zext_ln3843_2_fu_448_p1;
assign v9256_1_ce0 = v9256_1_ce0_local;
assign v9256_2_address0 = zext_ln3843_2_fu_448_p1;
assign v9256_2_ce0 = v9256_2_ce0_local;
assign v9256_3_address0 = zext_ln3843_2_fu_448_p1;
assign v9256_3_ce0 = v9256_3_ce0_local;
assign zext_ln3838_1_fu_455_p1 = lshr_ln_reg_475_pp0_iter1_reg;
assign zext_ln3838_2_fu_260_p1 = lshr_ln_fu_250_p4;
assign zext_ln3838_fu_246_p1 = ap_sig_allocacmp_v272045_load;
assign zext_ln3841_1_fu_302_p1 = sub_ln3841_fu_296_p2;
assign zext_ln3841_2_fu_414_p1 = add_ln3841_2_fu_409_p2;
assign zext_ln3841_fu_292_p1 = tmp_fu_284_p3;
assign zext_ln3843_1_fu_352_p1 = sub_ln3843_fu_346_p2;
assign zext_ln3843_2_fu_448_p1 = add_ln3843_1_fu_443_p2;
assign zext_ln3843_fu_342_p1 = tmp_312_fu_334_p3;
endmodule 
