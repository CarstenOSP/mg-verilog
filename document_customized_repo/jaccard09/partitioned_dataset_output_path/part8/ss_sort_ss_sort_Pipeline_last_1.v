
module ss_sort_ss_sort_Pipeline_last_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,sum_0_address0,sum_0_ce0,sum_0_q0,sum_1_address0,sum_1_ce0,sum_1_q0);  
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
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [5:0] sum_0_address0;
output   sum_0_ce0;
input  [31:0] sum_0_q0;
output  [5:0] sum_1_address0;
output   sum_1_ce0;
input  [31:0] sum_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln34_fu_244_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state8;
wire   [0:0] trunc_ln34_fu_256_p1;
reg   [0:0] trunc_ln34_reg_480;
wire   [6:0] empty_fu_276_p1;
reg   [6:0] empty_reg_495;
reg   [9:0] bucket_0_addr_reg_505;
reg   [9:0] bucket_1_addr_reg_510;
reg   [9:0] bucket_0_addr_9_reg_515;
reg   [9:0] bucket_1_addr_9_reg_520;
wire   [31:0] tmp_3_fu_313_p3;
reg   [31:0] tmp_3_reg_525;
wire    ap_CS_fsm_state2;
reg   [31:0] bucket_0_load_reg_545;
reg   [31:0] bucket_1_load_reg_550;
reg   [31:0] bucket_0_load_9_reg_555;
reg   [31:0] bucket_1_load_9_reg_560;
reg   [9:0] bucket_0_addr_10_reg_565;
reg   [9:0] bucket_1_addr_10_reg_570;
reg   [9:0] bucket_0_addr_11_reg_575;
reg   [9:0] bucket_1_addr_11_reg_580;
reg   [31:0] bucket_0_load_10_reg_585;
wire    ap_CS_fsm_state3;
reg   [31:0] bucket_1_load_10_reg_590;
reg   [31:0] bucket_0_load_11_reg_595;
reg   [31:0] bucket_1_load_11_reg_600;
reg   [9:0] bucket_0_addr_12_reg_605;
reg   [9:0] bucket_1_addr_12_reg_610;
reg   [9:0] bucket_0_addr_13_reg_615;
reg   [9:0] bucket_1_addr_13_reg_620;
reg   [31:0] bucket_0_load_12_reg_625;
wire    ap_CS_fsm_state4;
reg   [31:0] bucket_1_load_12_reg_630;
reg   [31:0] bucket_0_load_13_reg_635;
reg   [31:0] bucket_1_load_13_reg_640;
reg   [9:0] bucket_0_addr_14_reg_645;
reg   [9:0] bucket_1_addr_14_reg_650;
reg   [9:0] bucket_0_addr_15_reg_655;
reg   [9:0] bucket_1_addr_15_reg_660;
wire   [31:0] add_ln37_4_fu_418_p2;
reg   [31:0] add_ln37_4_reg_665;
wire    ap_CS_fsm_state5;
wire   [31:0] add_ln37_5_fu_422_p2;
reg   [31:0] add_ln37_5_reg_670;
wire   [31:0] add_ln37_6_fu_426_p2;
reg   [31:0] add_ln37_6_reg_675;
wire   [31:0] add_ln37_7_fu_430_p2;
reg   [31:0] add_ln37_7_reg_680;
wire   [31:0] add_ln37_8_fu_434_p2;
reg   [31:0] add_ln37_8_reg_685;
wire   [31:0] add_ln37_9_fu_438_p2;
reg   [31:0] add_ln37_9_reg_690;
wire   [31:0] add_ln37_10_fu_442_p2;
reg   [31:0] add_ln37_10_reg_695;
wire   [31:0] add_ln37_11_fu_446_p2;
reg   [31:0] add_ln37_11_reg_700;
wire   [31:0] add_ln37_12_fu_450_p2;
reg   [31:0] add_ln37_12_reg_705;
wire   [31:0] add_ln37_13_fu_455_p2;
reg   [31:0] add_ln37_13_reg_710;
wire   [31:0] add_ln37_14_fu_460_p2;
reg   [31:0] add_ln37_14_reg_715;
wire   [31:0] add_ln37_15_fu_465_p2;
reg   [31:0] add_ln37_15_reg_720;
wire   [63:0] zext_ln33_fu_270_p1;
wire   [63:0] zext_ln37_fu_288_p1;
wire   [63:0] zext_ln37_1_fu_302_p1;
wire   [63:0] zext_ln37_2_fu_327_p1;
wire   [63:0] zext_ln37_3_fu_340_p1;
wire   [63:0] zext_ln37_4_fu_353_p1;
wire   [63:0] zext_ln37_5_fu_366_p1;
wire   [63:0] zext_ln37_6_fu_379_p1;
wire   [63:0] zext_ln37_7_fu_392_p1;
reg   [7:0] radixID_fu_60;
wire   [7:0] add_ln34_fu_250_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_2;
reg    sum_0_ce0_local;
reg    sum_1_ce0_local;
reg    bucket_0_ce1_local;
reg   [9:0] bucket_0_address1_local;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we1_local;
reg   [31:0] bucket_0_d1_local;
wire   [31:0] add_ln37_fu_398_p2;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln37_2_fu_408_p2;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    bucket_1_ce1_local;
reg   [9:0] bucket_1_address1_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we1_local;
reg   [31:0] bucket_1_d1_local;
wire   [31:0] add_ln37_1_fu_403_p2;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln37_3_fu_413_p2;
wire   [5:0] lshr_ln4_fu_260_p4;
wire   [9:0] p_udiv5_fu_280_p3;
wire   [9:0] or_ln_fu_294_p3;
wire   [9:0] or_ln37_1_fu_320_p3;
wire   [9:0] or_ln37_2_fu_333_p3;
wire   [9:0] or_ln37_3_fu_346_p3;
wire   [9:0] or_ln37_4_fu_359_p3;
wire   [9:0] or_ln37_5_fu_372_p3;
wire   [9:0] or_ln37_6_fu_385_p3;
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
#0 radixID_fu_60 = 8'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((icmp_ln34_fu_244_p2 == 1'd0)) begin
            radixID_fu_60 <= add_ln34_fu_250_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_60 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln37_10_reg_695 <= add_ln37_10_fu_442_p2;
        add_ln37_11_reg_700 <= add_ln37_11_fu_446_p2;
        add_ln37_12_reg_705 <= add_ln37_12_fu_450_p2;
        add_ln37_13_reg_710 <= add_ln37_13_fu_455_p2;
        add_ln37_14_reg_715 <= add_ln37_14_fu_460_p2;
        add_ln37_15_reg_720 <= add_ln37_15_fu_465_p2;
        add_ln37_4_reg_665 <= add_ln37_4_fu_418_p2;
        add_ln37_5_reg_670 <= add_ln37_5_fu_422_p2;
        add_ln37_6_reg_675 <= add_ln37_6_fu_426_p2;
        add_ln37_7_reg_680 <= add_ln37_7_fu_430_p2;
        add_ln37_8_reg_685 <= add_ln37_8_fu_434_p2;
        add_ln37_9_reg_690 <= add_ln37_9_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_addr_10_reg_565[9 : 3] <= zext_ln37_2_fu_327_p1[9 : 3];
        bucket_0_addr_11_reg_575[9 : 3] <= zext_ln37_3_fu_340_p1[9 : 3];
        bucket_0_load_9_reg_555 <= bucket_0_q0;
        bucket_0_load_reg_545 <= bucket_0_q1;
        bucket_1_addr_10_reg_570[9 : 3] <= zext_ln37_2_fu_327_p1[9 : 3];
        bucket_1_addr_11_reg_580[9 : 3] <= zext_ln37_3_fu_340_p1[9 : 3];
        bucket_1_load_9_reg_560 <= bucket_1_q0;
        bucket_1_load_reg_550 <= bucket_1_q1;
        tmp_3_reg_525 <= tmp_3_fu_313_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_addr_12_reg_605[9 : 3] <= zext_ln37_4_fu_353_p1[9 : 3];
        bucket_0_addr_13_reg_615[9 : 3] <= zext_ln37_5_fu_366_p1[9 : 3];
        bucket_0_load_10_reg_585 <= bucket_0_q1;
        bucket_0_load_11_reg_595 <= bucket_0_q0;
        bucket_1_addr_12_reg_610[9 : 3] <= zext_ln37_4_fu_353_p1[9 : 3];
        bucket_1_addr_13_reg_620[9 : 3] <= zext_ln37_5_fu_366_p1[9 : 3];
        bucket_1_load_10_reg_590 <= bucket_1_q1;
        bucket_1_load_11_reg_600 <= bucket_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_addr_14_reg_645[9 : 3] <= zext_ln37_6_fu_379_p1[9 : 3];
        bucket_0_addr_15_reg_655[9 : 3] <= zext_ln37_7_fu_392_p1[9 : 3];
        bucket_0_load_12_reg_625 <= bucket_0_q1;
        bucket_0_load_13_reg_635 <= bucket_0_q0;
        bucket_1_addr_14_reg_650[9 : 3] <= zext_ln37_6_fu_379_p1[9 : 3];
        bucket_1_addr_15_reg_660[9 : 3] <= zext_ln37_7_fu_392_p1[9 : 3];
        bucket_1_load_12_reg_630 <= bucket_1_q1;
        bucket_1_load_13_reg_640 <= bucket_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_addr_9_reg_515[9 : 3] <= zext_ln37_1_fu_302_p1[9 : 3];
        bucket_0_addr_reg_505[9 : 3] <= zext_ln37_fu_288_p1[9 : 3];
        bucket_1_addr_9_reg_520[9 : 3] <= zext_ln37_1_fu_302_p1[9 : 3];
        bucket_1_addr_reg_510[9 : 3] <= zext_ln37_fu_288_p1[9 : 3];
        empty_reg_495 <= empty_fu_276_p1;
        trunc_ln34_reg_480 <= trunc_ln34_fu_256_p1;
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
    if (((icmp_ln34_fu_244_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID_2 = radixID_fu_60;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address0_local = bucket_0_addr_15_reg_655;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address0_local = bucket_0_addr_13_reg_615;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address0_local = bucket_0_addr_11_reg_575;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address0_local = bucket_0_addr_9_reg_515;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address0_local = zext_ln37_7_fu_392_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address0_local = zext_ln37_5_fu_366_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address0_local = zext_ln37_3_fu_340_p1;
    end else if (((icmp_ln34_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address0_local = zext_ln37_1_fu_302_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_address1_local = bucket_0_addr_14_reg_645;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_address1_local = bucket_0_addr_12_reg_605;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_address1_local = bucket_0_addr_10_reg_565;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_address1_local = bucket_0_addr_reg_505;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_0_address1_local = zext_ln37_6_fu_379_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_0_address1_local = zext_ln37_4_fu_353_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_0_address1_local = zext_ln37_2_fu_327_p1;
    end else if (((icmp_ln34_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_address1_local = zext_ln37_fu_288_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_244_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_244_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d0_local = add_ln37_14_reg_715;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_d0_local = add_ln37_10_reg_695;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_d0_local = add_ln37_6_reg_675;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_d0_local = add_ln37_2_fu_408_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_0_d1_local = add_ln37_12_reg_705;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_0_d1_local = add_ln37_8_reg_685;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_0_d1_local = add_ln37_4_reg_665;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_0_d1_local = add_ln37_fu_398_p2;
    end else begin
        bucket_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        bucket_0_we1_local = 1'b1;
    end else begin
        bucket_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address0_local = bucket_1_addr_15_reg_660;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address0_local = bucket_1_addr_13_reg_620;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address0_local = bucket_1_addr_11_reg_580;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address0_local = bucket_1_addr_9_reg_520;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address0_local = zext_ln37_7_fu_392_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0_local = zext_ln37_5_fu_366_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address0_local = zext_ln37_3_fu_340_p1;
    end else if (((icmp_ln34_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address0_local = zext_ln37_1_fu_302_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1_local = bucket_1_addr_14_reg_650;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address1_local = bucket_1_addr_12_reg_610;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address1_local = bucket_1_addr_10_reg_570;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address1_local = bucket_1_addr_reg_510;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address1_local = zext_ln37_6_fu_379_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address1_local = zext_ln37_4_fu_353_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln37_2_fu_327_p1;
    end else if (((icmp_ln34_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_address1_local = zext_ln37_fu_288_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_244_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln34_fu_244_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d0_local = add_ln37_15_reg_720;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_d0_local = add_ln37_11_reg_700;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_d0_local = add_ln37_7_reg_680;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_d0_local = add_ln37_3_fu_413_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_d1_local = add_ln37_13_reg_710;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_d1_local = add_ln37_9_reg_690;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_d1_local = add_ln37_5_reg_670;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_d1_local = add_ln37_1_fu_403_p2;
    end else begin
        bucket_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        bucket_1_we1_local = 1'b1;
    end else begin
        bucket_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln34_fu_244_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln34_fu_250_p2 = (ap_sig_allocacmp_radixID_2 + 8'd1);
assign add_ln37_10_fu_442_p2 = (bucket_0_load_13_reg_635 + tmp_3_reg_525);
assign add_ln37_11_fu_446_p2 = (bucket_1_load_13_reg_640 + tmp_3_reg_525);
assign add_ln37_12_fu_450_p2 = (bucket_0_q1 + tmp_3_reg_525);
assign add_ln37_13_fu_455_p2 = (bucket_1_q1 + tmp_3_reg_525);
assign add_ln37_14_fu_460_p2 = (bucket_0_q0 + tmp_3_reg_525);
assign add_ln37_15_fu_465_p2 = (bucket_1_q0 + tmp_3_reg_525);
assign add_ln37_1_fu_403_p2 = (bucket_1_load_reg_550 + tmp_3_reg_525);
assign add_ln37_2_fu_408_p2 = (bucket_0_load_9_reg_555 + tmp_3_reg_525);
assign add_ln37_3_fu_413_p2 = (bucket_1_load_9_reg_560 + tmp_3_reg_525);
assign add_ln37_4_fu_418_p2 = (bucket_0_load_10_reg_585 + tmp_3_reg_525);
assign add_ln37_5_fu_422_p2 = (bucket_1_load_10_reg_590 + tmp_3_reg_525);
assign add_ln37_6_fu_426_p2 = (bucket_0_load_11_reg_595 + tmp_3_reg_525);
assign add_ln37_7_fu_430_p2 = (bucket_1_load_11_reg_600 + tmp_3_reg_525);
assign add_ln37_8_fu_434_p2 = (bucket_0_load_12_reg_625 + tmp_3_reg_525);
assign add_ln37_9_fu_438_p2 = (bucket_1_load_12_reg_630 + tmp_3_reg_525);
assign add_ln37_fu_398_p2 = (bucket_0_load_reg_545 + tmp_3_reg_525);
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
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = bucket_0_address1_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_d1 = bucket_0_d1_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_0_we1 = bucket_0_we1_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_d1 = bucket_1_d1_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_1_we1 = bucket_1_we1_local;
assign empty_fu_276_p1 = ap_sig_allocacmp_radixID_2[6:0];
assign icmp_ln34_fu_244_p2 = ((ap_sig_allocacmp_radixID_2 == 8'd128) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_260_p4 = {{ap_sig_allocacmp_radixID_2[6:1]}};
assign or_ln37_1_fu_320_p3 = {{empty_reg_495}, {3'd2}};
assign or_ln37_2_fu_333_p3 = {{empty_reg_495}, {3'd3}};
assign or_ln37_3_fu_346_p3 = {{empty_reg_495}, {3'd4}};
assign or_ln37_4_fu_359_p3 = {{empty_reg_495}, {3'd5}};
assign or_ln37_5_fu_372_p3 = {{empty_reg_495}, {3'd6}};
assign or_ln37_6_fu_385_p3 = {{empty_reg_495}, {3'd7}};
assign or_ln_fu_294_p3 = {{empty_fu_276_p1}, {3'd1}};
assign p_udiv5_fu_280_p3 = {{empty_fu_276_p1}, {3'd0}};
assign sum_0_address0 = zext_ln33_fu_270_p1;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_1_address0 = zext_ln33_fu_270_p1;
assign sum_1_ce0 = sum_1_ce0_local;
assign tmp_3_fu_313_p3 = ((trunc_ln34_reg_480[0:0] == 1'b1) ? sum_1_q0 : sum_0_q0);
assign trunc_ln34_fu_256_p1 = ap_sig_allocacmp_radixID_2[0:0];
assign zext_ln33_fu_270_p1 = lshr_ln4_fu_260_p4;
assign zext_ln37_1_fu_302_p1 = or_ln_fu_294_p3;
assign zext_ln37_2_fu_327_p1 = or_ln37_1_fu_320_p3;
assign zext_ln37_3_fu_340_p1 = or_ln37_2_fu_333_p3;
assign zext_ln37_4_fu_353_p1 = or_ln37_3_fu_346_p3;
assign zext_ln37_5_fu_366_p1 = or_ln37_4_fu_359_p3;
assign zext_ln37_6_fu_379_p1 = or_ln37_5_fu_372_p3;
assign zext_ln37_7_fu_392_p1 = or_ln37_6_fu_385_p3;
assign zext_ln37_fu_288_p1 = p_udiv5_fu_280_p3;
always @ (posedge ap_clk) begin
    bucket_0_addr_reg_505[2:0] <= 3'b000;
    bucket_1_addr_reg_510[2:0] <= 3'b000;
    bucket_0_addr_9_reg_515[2:0] <= 3'b001;
    bucket_1_addr_9_reg_520[2:0] <= 3'b001;
    bucket_0_addr_10_reg_565[2:0] <= 3'b010;
    bucket_1_addr_10_reg_570[2:0] <= 3'b010;
    bucket_0_addr_11_reg_575[2:0] <= 3'b011;
    bucket_1_addr_11_reg_580[2:0] <= 3'b011;
    bucket_0_addr_12_reg_605[2:0] <= 3'b100;
    bucket_1_addr_12_reg_610[2:0] <= 3'b100;
    bucket_0_addr_13_reg_615[2:0] <= 3'b101;
    bucket_1_addr_13_reg_620[2:0] <= 3'b101;
    bucket_0_addr_14_reg_645[2:0] <= 3'b110;
    bucket_1_addr_14_reg_650[2:0] <= 3'b110;
    bucket_0_addr_15_reg_655[2:0] <= 3'b111;
    bucket_1_addr_15_reg_660[2:0] <= 3'b111;
end
endmodule 
