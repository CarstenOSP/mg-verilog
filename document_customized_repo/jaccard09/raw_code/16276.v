module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_q1); 
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
output  [5:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [5:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
input  [31:0] bucket_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state4;
reg   [0:0] tmp_reg_426;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_163;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [6:0] radixID_1_reg_372;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [5:0] lshr_ln1_fu_175_p4;
reg   [5:0] lshr_ln1_reg_380;
wire   [63:0] zext_ln23_fu_185_p1;
reg   [63:0] zext_ln23_reg_385;
wire   [10:0] shl_ln_fu_190_p3;
reg   [10:0] shl_ln_reg_390;
wire   [31:0] add_ln27_fu_235_p2;
reg   [31:0] add_ln27_reg_410;
wire   [7:0] add_ln25_1_fu_259_p2;
reg   [7:0] add_ln25_1_reg_421;
wire   [0:0] tmp_fu_265_p3;
wire   [31:0] add_ln27_3_fu_319_p2;
reg   [31:0] add_ln27_3_reg_435;
wire   [63:0] zext_ln27_fu_214_p1;
wire   [63:0] zext_ln27_2_fu_227_p1;
wire   [63:0] zext_ln27_4_fu_254_p1;
wire   [63:0] zext_ln27_5_fu_288_p1;
wire   [63:0] zext_ln27_1_fu_308_p1;
wire   [63:0] zext_ln27_3_fu_330_p1;
wire   [63:0] zext_ln25_fu_344_p1;
reg   [6:0] radixID_fu_68;
wire   [6:0] add_ln25_2_fu_355_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [5:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_1_fu_313_p2;
wire   [31:0] add_ln27_4_fu_349_p2;
reg    bucket_1_ce1_local;
reg   [9:0] bucket_1_address1_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    sum_1_we0_local;
reg   [31:0] sum_1_d0_local;
reg    sum_1_ce0_local;
reg   [5:0] sum_1_address0_local;
wire   [10:0] add_ln26_fu_198_p2;
wire   [9:0] lshr_ln2_fu_204_p4;
wire   [9:0] or_ln_fu_219_p3;
wire   [9:0] shl_ln1_fu_241_p3;
wire   [9:0] add_ln27_2_fu_248_p2;
wire   [7:0] zext_ln15_fu_232_p1;
wire   [10:0] add_ln26_2_fu_273_p2;
wire   [9:0] lshr_ln27_1_fu_278_p4;
wire   [6:0] add_ln25_fu_293_p2;
wire   [5:0] lshr_ln3_fu_298_p4;
wire   [5:0] add_ln26_1_fu_325_p2;
wire   [5:0] lshr_ln4_fu_335_p4;
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
#0 radixID_fu_68 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        radixID_fu_68 <= 7'd1;
    end else if (((tmp_reg_426 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        radixID_fu_68 <= add_ln25_2_fu_355_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln25_1_reg_421 <= add_ln25_1_fu_259_p2;
        add_ln27_reg_410 <= add_ln27_fu_235_p2;
        tmp_reg_426 <= add_ln25_1_fu_259_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_435 <= add_ln27_3_fu_319_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        lshr_ln1_reg_380 <= {{ap_sig_allocacmp_radixID_1[6:1]}};
        radixID_1_reg_372 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_390[10 : 4] <= shl_ln_fu_190_p3[10 : 4];
        zext_ln23_reg_385[5 : 0] <= zext_ln23_fu_185_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_163 <= bucket_1_q0;
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
    if (((tmp_reg_426 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_68;
    end
end
always @ (*) begin
    if (((tmp_fu_265_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        bucket_1_address0_local = zext_ln27_5_fu_288_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_1_address0_local = zext_ln27_2_fu_227_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln27_4_fu_254_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_1_address1_local = zext_ln27_fu_214_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_fu_265_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_426 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_0_address0_local = zext_ln25_fu_344_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_address0_local = zext_ln27_1_fu_308_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_0_address0_local = zext_ln23_fu_185_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_reg_426 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_426 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_0_d0_local = add_ln27_4_fu_349_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_d0_local = add_ln27_1_fu_313_p2;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((tmp_reg_426 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_1_address0_local = zext_ln27_3_fu_330_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_address0_local = zext_ln23_reg_385;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_1_d0_local = add_ln27_3_reg_435;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_d0_local = add_ln27_reg_410;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln25_1_fu_259_p2 = (zext_ln15_fu_232_p1 + 8'd3);
assign add_ln25_2_fu_355_p2 = (radixID_1_reg_372 + 7'd4);
assign add_ln25_fu_293_p2 = (radixID_1_reg_372 + 7'd1);
assign add_ln26_1_fu_325_p2 = (lshr_ln1_reg_380 + 6'd1);
assign add_ln26_2_fu_273_p2 = (shl_ln_reg_390 + 11'd47);
assign add_ln26_fu_198_p2 = ($signed(shl_ln_fu_190_p3) + $signed(11'd2047));
assign add_ln27_1_fu_313_p2 = (reg_163 + add_ln27_reg_410);
assign add_ln27_2_fu_248_p2 = (shl_ln1_fu_241_p3 + 10'd15);
assign add_ln27_3_fu_319_p2 = (bucket_1_q1 + add_ln27_1_fu_313_p2);
assign add_ln27_4_fu_349_p2 = (reg_163 + add_ln27_3_reg_435);
assign add_ln27_fu_235_p2 = (bucket_1_q1 + sum_0_q0);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign lshr_ln1_fu_175_p4 = {{ap_sig_allocacmp_radixID_1[6:1]}};
assign lshr_ln27_1_fu_278_p4 = {{add_ln26_2_fu_273_p2[10:1]}};
assign lshr_ln2_fu_204_p4 = {{add_ln26_fu_198_p2[10:1]}};
assign lshr_ln3_fu_298_p4 = {{add_ln25_fu_293_p2[6:1]}};
assign lshr_ln4_fu_335_p4 = {{add_ln25_1_reg_421[6:1]}};
assign or_ln_fu_219_p3 = {{ap_sig_allocacmp_radixID_1}, {3'd7}};
assign shl_ln1_fu_241_p3 = {{radixID_1_reg_372}, {3'd0}};
assign shl_ln_fu_190_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = sum_0_d0_local;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = sum_1_d0_local;
assign sum_1_we0 = sum_1_we0_local;
assign tmp_fu_265_p3 = add_ln25_1_fu_259_p2[32'd7];
assign zext_ln15_fu_232_p1 = radixID_1_reg_372;
assign zext_ln23_fu_185_p1 = lshr_ln1_fu_175_p4;
assign zext_ln25_fu_344_p1 = lshr_ln4_fu_335_p4;
assign zext_ln27_1_fu_308_p1 = lshr_ln3_fu_298_p4;
assign zext_ln27_2_fu_227_p1 = or_ln_fu_219_p3;
assign zext_ln27_3_fu_330_p1 = add_ln26_1_fu_325_p2;
assign zext_ln27_4_fu_254_p1 = add_ln27_2_fu_248_p2;
assign zext_ln27_5_fu_288_p1 = lshr_ln27_1_fu_278_p4;
assign zext_ln27_fu_214_p1 = lshr_ln2_fu_204_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_385[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_390[3:0] <= 4'b0000;
end
endmodule 