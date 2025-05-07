module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_3_address0,bucket_3_ce0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_q1); 
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
output  [4:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
output  [4:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
output  [4:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [4:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
input  [31:0] bucket_3_q0;
output  [8:0] bucket_3_address1;
output   bucket_3_ce1;
input  [31:0] bucket_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state6;
reg   [0:0] tmp_reg_698;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_257;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [6:0] radixID_1_reg_600;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [4:0] lshr_ln2_fu_269_p4;
reg   [4:0] lshr_ln2_reg_610;
wire   [63:0] zext_ln23_fu_279_p1;
reg   [63:0] zext_ln23_reg_615;
wire   [10:0] shl_ln1_fu_284_p3;
reg   [10:0] shl_ln1_reg_622;
wire   [31:0] add_ln27_fu_326_p2;
reg   [31:0] add_ln27_reg_645;
wire   [8:0] shl_ln2_fu_332_p3;
reg   [8:0] shl_ln2_reg_651;
wire   [31:0] add_ln27_3_fu_376_p2;
reg   [31:0] add_ln27_3_reg_666;
wire   [31:0] add_ln27_6_fu_441_p2;
reg   [31:0] add_ln27_6_reg_682;
wire   [7:0] add_ln25_3_fu_467_p2;
reg   [7:0] add_ln25_3_reg_693;
wire   [0:0] tmp_fu_473_p3;
wire   [31:0] add_ln27_8_fu_537_p2;
reg   [31:0] add_ln27_8_reg_707;
wire   [63:0] zext_ln27_fu_308_p1;
wire   [63:0] zext_ln27_1_fu_321_p1;
wire   [63:0] zext_ln27_2_fu_345_p1;
wire   [63:0] zext_ln27_3_fu_365_p1;
wire   [63:0] zext_ln27_5_fu_387_p1;
wire   [63:0] zext_ln27_6_fu_407_p1;
wire   [63:0] zext_ln27_7_fu_462_p1;
wire   [63:0] zext_ln26_fu_430_p1;
wire   [63:0] zext_ln27_8_fu_496_p1;
wire   [63:0] zext_ln27_4_fu_506_p1;
wire   [63:0] zext_ln26_1_fu_526_p1;
wire   [63:0] zext_ln26_2_fu_558_p1;
wire   [63:0] zext_ln25_fu_572_p1;
reg   [6:0] radixID_fu_88;
wire   [6:0] add_ln25_4_fu_583_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [4:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_4_fu_435_p2;
wire   [31:0] add_ln27_9_fu_577_p2;
reg    bucket_3_ce1_local;
reg   [8:0] bucket_3_address1_local;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    sum_1_we0_local;
reg   [31:0] sum_1_d0_local;
reg    sum_1_ce0_local;
reg   [4:0] sum_1_address0_local;
reg    sum_2_we0_local;
reg   [31:0] sum_2_d0_local;
wire   [31:0] add_ln27_1_fu_370_p2;
reg    sum_2_ce0_local;
reg   [4:0] sum_2_address0_local;
wire   [31:0] add_ln27_7_fu_531_p2;
reg    sum_3_we0_local;
reg   [31:0] sum_3_d0_local;
reg    sum_3_ce0_local;
reg   [4:0] sum_3_address0_local;
wire   [10:0] add_ln26_fu_292_p2;
wire   [8:0] lshr_ln3_fu_298_p4;
wire   [8:0] or_ln_fu_313_p3;
wire   [8:0] add_ln27_2_fu_339_p2;
wire   [10:0] add_ln26_1_fu_350_p2;
wire   [8:0] lshr_ln27_1_fu_355_p4;
wire   [8:0] add_ln27_5_fu_382_p2;
wire   [10:0] add_ln26_3_fu_392_p2;
wire   [8:0] lshr_ln27_2_fu_397_p4;
wire   [6:0] add_ln25_fu_415_p2;
wire   [4:0] lshr_ln4_fu_420_p4;
wire   [10:0] add_ln26_4_fu_447_p2;
wire   [8:0] lshr_ln27_3_fu_452_p4;
wire   [7:0] zext_ln15_fu_412_p1;
wire   [10:0] add_ln26_5_fu_481_p2;
wire   [8:0] lshr_ln27_4_fu_486_p4;
wire   [4:0] add_ln26_2_fu_501_p2;
wire   [6:0] add_ln25_1_fu_511_p2;
wire   [4:0] lshr_ln26_1_fu_516_p4;
wire   [6:0] add_ln25_2_fu_543_p2;
wire   [4:0] lshr_ln26_2_fu_548_p4;
wire   [4:0] lshr_ln5_fu_563_p4;
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
#0 radixID_fu_88 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        radixID_fu_88 <= 7'd1;
    end else if (((tmp_reg_698 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        radixID_fu_88 <= add_ln25_4_fu_583_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln25_3_reg_693 <= add_ln25_3_fu_467_p2;
        add_ln27_6_reg_682 <= add_ln27_6_fu_441_p2;
        tmp_reg_698 <= add_ln25_3_fu_467_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_666 <= add_ln27_3_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_8_reg_707 <= add_ln27_8_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_reg_645 <= add_ln27_fu_326_p2;
        shl_ln2_reg_651[8 : 2] <= shl_ln2_fu_332_p3[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        lshr_ln2_reg_610 <= {{ap_sig_allocacmp_radixID_1[6:2]}};
        radixID_1_reg_600 <= ap_sig_allocacmp_radixID_1;
        shl_ln1_reg_622[10 : 4] <= shl_ln1_fu_284_p3[10 : 4];
        zext_ln23_reg_615[4 : 0] <= zext_ln23_fu_279_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_257 <= bucket_3_q0;
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
    if (((tmp_reg_698 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_88;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_fu_473_p3 == 1'd0))) begin
        bucket_3_address0_local = zext_ln27_8_fu_496_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address0_local = zext_ln27_6_fu_407_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address0_local = zext_ln27_3_fu_365_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_3_address0_local = zext_ln27_1_fu_321_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_address1_local = zext_ln27_7_fu_462_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address1_local = zext_ln27_5_fu_387_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address1_local = zext_ln27_2_fu_345_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_3_address1_local = zext_ln27_fu_308_p1;
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state4) & (tmp_fu_473_p3 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_698 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_0_address0_local = zext_ln25_fu_572_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_address0_local = zext_ln26_fu_430_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_0_address0_local = zext_ln23_fu_279_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)) | ((tmp_reg_698 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_698 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_0_d0_local = add_ln27_9_fu_577_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_d0_local = add_ln27_4_fu_435_p2;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((tmp_reg_698 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_address0_local = zext_ln27_4_fu_506_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_address0_local = zext_ln23_reg_615;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_d0_local = add_ln27_6_reg_682;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_d0_local = add_ln27_reg_645;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_2_address0_local = zext_ln26_1_fu_526_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_address0_local = zext_ln23_reg_615;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_2_d0_local = add_ln27_7_fu_531_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_d0_local = add_ln27_1_fu_370_p2;
    end else begin
        sum_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_3_address0_local = zext_ln26_2_fu_558_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_address0_local = zext_ln23_reg_615;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_3_d0_local = add_ln27_8_reg_707;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_d0_local = add_ln27_3_reg_666;
    end else begin
        sum_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
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
assign add_ln25_1_fu_511_p2 = (radixID_1_reg_600 + 7'd5);
assign add_ln25_2_fu_543_p2 = (radixID_1_reg_600 + 7'd6);
assign add_ln25_3_fu_467_p2 = (zext_ln15_fu_412_p1 + 8'd7);
assign add_ln25_4_fu_583_p2 = (radixID_1_reg_600 + 7'd8);
assign add_ln25_fu_415_p2 = (radixID_1_reg_600 + 7'd3);
assign add_ln26_1_fu_350_p2 = (shl_ln1_reg_622 + 11'd47);
assign add_ln26_2_fu_501_p2 = (lshr_ln2_reg_610 + 5'd1);
assign add_ln26_3_fu_392_p2 = (shl_ln1_reg_622 + 11'd79);
assign add_ln26_4_fu_447_p2 = (shl_ln1_reg_622 + 11'd95);
assign add_ln26_5_fu_481_p2 = (shl_ln1_reg_622 + 11'd111);
assign add_ln26_fu_292_p2 = ($signed(shl_ln1_fu_284_p3) + $signed(11'd2047));
assign add_ln27_1_fu_370_p2 = (reg_257 + add_ln27_reg_645);
assign add_ln27_2_fu_339_p2 = (shl_ln2_fu_332_p3 + 9'd7);
assign add_ln27_3_fu_376_p2 = (bucket_3_q1 + add_ln27_1_fu_370_p2);
assign add_ln27_4_fu_435_p2 = (reg_257 + add_ln27_3_reg_666);
assign add_ln27_5_fu_382_p2 = (shl_ln2_reg_651 + 9'd15);
assign add_ln27_6_fu_441_p2 = (bucket_3_q1 + add_ln27_4_fu_435_p2);
assign add_ln27_7_fu_531_p2 = (reg_257 + add_ln27_6_reg_682);
assign add_ln27_8_fu_537_p2 = (bucket_3_q1 + add_ln27_7_fu_531_p2);
assign add_ln27_9_fu_577_p2 = (reg_257 + add_ln27_8_reg_707);
assign add_ln27_fu_326_p2 = (bucket_3_q1 + sum_0_q0);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign lshr_ln26_1_fu_516_p4 = {{add_ln25_1_fu_511_p2[6:2]}};
assign lshr_ln26_2_fu_548_p4 = {{add_ln25_2_fu_543_p2[6:2]}};
assign lshr_ln27_1_fu_355_p4 = {{add_ln26_1_fu_350_p2[10:2]}};
assign lshr_ln27_2_fu_397_p4 = {{add_ln26_3_fu_392_p2[10:2]}};
assign lshr_ln27_3_fu_452_p4 = {{add_ln26_4_fu_447_p2[10:2]}};
assign lshr_ln27_4_fu_486_p4 = {{add_ln26_5_fu_481_p2[10:2]}};
assign lshr_ln2_fu_269_p4 = {{ap_sig_allocacmp_radixID_1[6:2]}};
assign lshr_ln3_fu_298_p4 = {{add_ln26_fu_292_p2[10:2]}};
assign lshr_ln4_fu_420_p4 = {{add_ln25_fu_415_p2[6:2]}};
assign lshr_ln5_fu_563_p4 = {{add_ln25_3_reg_693[6:2]}};
assign or_ln_fu_313_p3 = {{ap_sig_allocacmp_radixID_1}, {2'd3}};
assign shl_ln1_fu_284_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign shl_ln2_fu_332_p3 = {{radixID_1_reg_600}, {2'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = sum_0_d0_local;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = sum_1_d0_local;
assign sum_1_we0 = sum_1_we0_local;
assign sum_2_address0 = sum_2_address0_local;
assign sum_2_ce0 = sum_2_ce0_local;
assign sum_2_d0 = sum_2_d0_local;
assign sum_2_we0 = sum_2_we0_local;
assign sum_3_address0 = sum_3_address0_local;
assign sum_3_ce0 = sum_3_ce0_local;
assign sum_3_d0 = sum_3_d0_local;
assign sum_3_we0 = sum_3_we0_local;
assign tmp_fu_473_p3 = add_ln25_3_fu_467_p2[32'd7];
assign zext_ln15_fu_412_p1 = radixID_1_reg_600;
assign zext_ln23_fu_279_p1 = lshr_ln2_fu_269_p4;
assign zext_ln25_fu_572_p1 = lshr_ln5_fu_563_p4;
assign zext_ln26_1_fu_526_p1 = lshr_ln26_1_fu_516_p4;
assign zext_ln26_2_fu_558_p1 = lshr_ln26_2_fu_548_p4;
assign zext_ln26_fu_430_p1 = lshr_ln4_fu_420_p4;
assign zext_ln27_1_fu_321_p1 = or_ln_fu_313_p3;
assign zext_ln27_2_fu_345_p1 = add_ln27_2_fu_339_p2;
assign zext_ln27_3_fu_365_p1 = lshr_ln27_1_fu_355_p4;
assign zext_ln27_4_fu_506_p1 = add_ln26_2_fu_501_p2;
assign zext_ln27_5_fu_387_p1 = add_ln27_5_fu_382_p2;
assign zext_ln27_6_fu_407_p1 = lshr_ln27_2_fu_397_p4;
assign zext_ln27_7_fu_462_p1 = lshr_ln27_3_fu_452_p4;
assign zext_ln27_8_fu_496_p1 = lshr_ln27_4_fu_486_p4;
assign zext_ln27_fu_308_p1 = lshr_ln3_fu_298_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_615[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    shl_ln1_reg_622[3:0] <= 4'b0000;
    shl_ln2_reg_651[1:0] <= 2'b00;
end
endmodule 