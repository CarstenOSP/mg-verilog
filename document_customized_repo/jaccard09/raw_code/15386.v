module ss_sort_sum_scan_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_address0,sum_ce0,sum_we0,sum_d0,sum_q0,sum_address1,sum_ce1,sum_we1,sum_d1,bucket_address0,bucket_ce0,bucket_q0,bucket_address1,bucket_ce1,bucket_q1); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] sum_address0;
output   sum_ce0;
output   sum_we0;
output  [31:0] sum_d0;
input  [31:0] sum_q0;
output  [6:0] sum_address1;
output   sum_ce1;
output   sum_we1;
output  [31:0] sum_d1;
output  [10:0] bucket_address0;
output   bucket_ce0;
input  [31:0] bucket_q0;
output  [10:0] bucket_address1;
output   bucket_ce1;
input  [31:0] bucket_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_reg_1027;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_388;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [6:0] radixID_1_reg_861;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [10:0] shl_ln_fu_400_p3;
reg   [10:0] shl_ln_reg_882;
wire   [31:0] add_ln27_1_fu_443_p2;
reg   [31:0] add_ln27_1_reg_915;
wire   [31:0] add_ln27_3_fu_489_p2;
reg   [31:0] add_ln27_3_reg_931;
wire   [31:0] add_ln27_5_fu_541_p2;
reg   [31:0] add_ln27_5_reg_947;
wire   [31:0] add_ln27_7_fu_593_p2;
reg   [31:0] add_ln27_7_reg_963;
wire   [31:0] add_ln27_9_fu_645_p2;
reg   [31:0] add_ln27_9_reg_979;
wire   [31:0] add_ln27_11_fu_697_p2;
reg   [31:0] add_ln27_11_reg_995;
wire   [31:0] add_ln27_13_fu_752_p2;
reg   [31:0] add_ln27_13_reg_1011;
wire   [7:0] add_ln25_14_fu_768_p2;
reg   [7:0] add_ln25_14_reg_1022;
wire   [0:0] tmp_fu_774_p3;
wire   [31:0] add_ln27_15_fu_818_p2;
reg   [31:0] add_ln27_15_reg_1036;
wire   [63:0] zext_ln27_1_fu_425_p1;
wire   [63:0] zext_ln27_fu_414_p1;
wire   [63:0] zext_ln27_2_fu_438_p1;
wire   [63:0] zext_ln27_3_fu_454_p1;
wire   [63:0] zext_ln27_4_fu_464_p1;
wire   [63:0] zext_ln11_fu_469_p1;
wire   [63:0] zext_ln26_fu_478_p1;
wire   [63:0] zext_ln27_5_fu_500_p1;
wire   [63:0] zext_ln27_6_fu_510_p1;
wire   [63:0] zext_ln26_1_fu_520_p1;
wire   [63:0] zext_ln26_2_fu_530_p1;
wire   [63:0] zext_ln27_7_fu_552_p1;
wire   [63:0] zext_ln27_8_fu_562_p1;
wire   [63:0] zext_ln26_3_fu_572_p1;
wire   [63:0] zext_ln26_4_fu_582_p1;
wire   [63:0] zext_ln27_9_fu_604_p1;
wire   [63:0] zext_ln27_10_fu_614_p1;
wire   [63:0] zext_ln26_5_fu_624_p1;
wire   [63:0] zext_ln26_6_fu_634_p1;
wire   [63:0] zext_ln27_11_fu_656_p1;
wire   [63:0] zext_ln27_12_fu_666_p1;
wire   [63:0] zext_ln26_7_fu_676_p1;
wire   [63:0] zext_ln26_8_fu_686_p1;
wire   [63:0] zext_ln27_13_fu_708_p1;
wire   [63:0] zext_ln27_14_fu_718_p1;
wire   [63:0] zext_ln26_9_fu_731_p1;
wire   [63:0] zext_ln26_10_fu_741_p1;
wire   [63:0] zext_ln27_15_fu_763_p1;
wire   [63:0] zext_ln27_16_fu_787_p1;
wire   [63:0] zext_ln26_11_fu_797_p1;
wire   [63:0] zext_ln26_12_fu_807_p1;
wire   [63:0] zext_ln26_13_fu_829_p1;
wire   [63:0] zext_ln25_fu_834_p1;
reg   [6:0] radixID_fu_102;
wire   [6:0] add_ln25_15_fu_844_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_ce0_local;
reg   [6:0] sum_address0_local;
reg    sum_we1_local;
reg   [31:0] sum_d1_local;
reg    sum_ce1_local;
reg   [6:0] sum_address1_local;
reg    sum_we0_local;
reg   [31:0] sum_d0_local;
wire   [31:0] add_ln27_2_fu_483_p2;
wire   [31:0] add_ln27_4_fu_535_p2;
wire   [31:0] add_ln27_6_fu_587_p2;
wire   [31:0] add_ln27_8_fu_639_p2;
wire   [31:0] add_ln27_10_fu_691_p2;
wire   [31:0] add_ln27_12_fu_746_p2;
wire   [31:0] add_ln27_14_fu_812_p2;
wire   [31:0] add_ln27_16_fu_838_p2;
reg    bucket_ce1_local;
reg   [10:0] bucket_address1_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
wire   [10:0] add_ln26_fu_408_p2;
wire   [6:0] add_ln27_fu_419_p2;
wire   [10:0] or_ln_fu_430_p3;
wire   [10:0] add_ln26_1_fu_449_p2;
wire   [10:0] add_ln26_2_fu_459_p2;
wire   [6:0] add_ln25_fu_473_p2;
wire   [10:0] add_ln26_3_fu_495_p2;
wire   [10:0] add_ln26_4_fu_505_p2;
wire   [6:0] add_ln25_1_fu_515_p2;
wire   [6:0] add_ln25_2_fu_525_p2;
wire   [10:0] add_ln26_5_fu_547_p2;
wire   [10:0] add_ln26_6_fu_557_p2;
wire   [6:0] add_ln25_3_fu_567_p2;
wire   [6:0] add_ln25_4_fu_577_p2;
wire   [10:0] add_ln26_7_fu_599_p2;
wire   [10:0] add_ln26_8_fu_609_p2;
wire   [6:0] add_ln25_5_fu_619_p2;
wire   [6:0] add_ln25_6_fu_629_p2;
wire   [10:0] add_ln26_9_fu_651_p2;
wire   [10:0] add_ln26_10_fu_661_p2;
wire   [6:0] add_ln25_7_fu_671_p2;
wire   [6:0] add_ln25_8_fu_681_p2;
wire   [10:0] add_ln26_11_fu_703_p2;
wire   [10:0] add_ln26_12_fu_713_p2;
wire   [6:0] add_ln25_9_fu_726_p2;
wire   [6:0] add_ln25_10_fu_736_p2;
wire   [10:0] add_ln26_13_fu_758_p2;
wire   [7:0] zext_ln11_1_fu_723_p1;
wire   [10:0] add_ln26_14_fu_782_p2;
wire   [6:0] add_ln25_11_fu_792_p2;
wire   [6:0] add_ln25_12_fu_802_p2;
wire   [6:0] add_ln25_13_fu_824_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 radixID_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        radixID_fu_102 <= 7'd1;
    end else if (((tmp_reg_1027 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        radixID_fu_102 <= add_ln25_15_fu_844_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln25_14_reg_1022 <= add_ln25_14_fu_768_p2;
        add_ln27_13_reg_1011 <= add_ln27_13_fu_752_p2;
        tmp_reg_1027 <= add_ln25_14_fu_768_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln27_11_reg_995 <= add_ln27_11_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln27_15_reg_1036 <= add_ln27_15_fu_818_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_1_reg_915 <= add_ln27_1_fu_443_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_931 <= add_ln27_3_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln27_5_reg_947 <= add_ln27_5_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_7_reg_963 <= add_ln27_7_fu_593_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln27_9_reg_979 <= add_ln27_9_fu_645_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        radixID_1_reg_861 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_882[10 : 4] <= shl_ln_fu_400_p3[10 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_388 <= bucket_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
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
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_reg_1027 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_102;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (tmp_fu_774_p3 == 1'd0))) begin
        bucket_address0_local = zext_ln27_16_fu_787_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address0_local = zext_ln27_14_fu_718_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address0_local = zext_ln27_12_fu_666_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address0_local = zext_ln27_10_fu_614_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address0_local = zext_ln27_8_fu_562_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0_local = zext_ln27_6_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address0_local = zext_ln27_4_fu_464_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_address0_local = zext_ln27_2_fu_438_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address1_local = zext_ln27_15_fu_763_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address1_local = zext_ln27_13_fu_708_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address1_local = zext_ln27_11_fu_656_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address1_local = zext_ln27_9_fu_604_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address1_local = zext_ln27_7_fu_552_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address1_local = zext_ln27_5_fu_500_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address1_local = zext_ln27_3_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_address1_local = zext_ln27_fu_414_p1;
    end else begin
        bucket_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)) | ((1'b1 == ap_CS_fsm_state8) & (tmp_fu_774_p3 == 1'd0)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_address0_local = zext_ln26_13_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_address0_local = zext_ln26_11_fu_797_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_address0_local = zext_ln26_9_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_address0_local = zext_ln26_7_fu_676_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_address0_local = zext_ln26_5_fu_624_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_address0_local = zext_ln26_3_fu_572_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_address0_local = zext_ln26_1_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_address0_local = zext_ln26_fu_478_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_address0_local = zext_ln27_1_fu_425_p1;
    end else begin
        sum_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1027 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_address1_local = zext_ln25_fu_834_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_address1_local = zext_ln26_12_fu_807_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_address1_local = zext_ln26_10_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_address1_local = zext_ln26_8_fu_686_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_address1_local = zext_ln26_6_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_address1_local = zext_ln26_4_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_address1_local = zext_ln26_2_fu_530_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_address1_local = zext_ln11_fu_469_p1;
    end else begin
        sum_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        sum_ce0_local = 1'b1;
    end else begin
        sum_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((tmp_reg_1027 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_ce1_local = 1'b1;
    end else begin
        sum_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_d0_local = add_ln27_15_reg_1036;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_d0_local = add_ln27_13_reg_1011;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_d0_local = add_ln27_11_reg_995;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_d0_local = add_ln27_9_reg_979;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_d0_local = add_ln27_7_reg_963;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_d0_local = add_ln27_5_reg_947;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_d0_local = add_ln27_3_reg_931;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_d0_local = add_ln27_2_fu_483_p2;
    end else begin
        sum_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1027 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_d1_local = add_ln27_16_fu_838_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_d1_local = add_ln27_14_fu_812_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_d1_local = add_ln27_12_fu_746_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_d1_local = add_ln27_10_fu_691_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_d1_local = add_ln27_8_fu_639_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_d1_local = add_ln27_6_fu_587_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_d1_local = add_ln27_4_fu_535_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_d1_local = add_ln27_1_reg_915;
    end else begin
        sum_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        sum_we0_local = 1'b1;
    end else begin
        sum_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((tmp_reg_1027 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_we1_local = 1'b1;
    end else begin
        sum_we1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_10_fu_736_p2 = (radixID_1_reg_861 + 7'd11);
assign add_ln25_11_fu_792_p2 = (radixID_1_reg_861 + 7'd12);
assign add_ln25_12_fu_802_p2 = (radixID_1_reg_861 + 7'd13);
assign add_ln25_13_fu_824_p2 = (radixID_1_reg_861 + 7'd14);
assign add_ln25_14_fu_768_p2 = (zext_ln11_1_fu_723_p1 + 8'd15);
assign add_ln25_15_fu_844_p2 = (radixID_1_reg_861 + 7'd16);
assign add_ln25_1_fu_515_p2 = (radixID_1_reg_861 + 7'd2);
assign add_ln25_2_fu_525_p2 = (radixID_1_reg_861 + 7'd3);
assign add_ln25_3_fu_567_p2 = (radixID_1_reg_861 + 7'd4);
assign add_ln25_4_fu_577_p2 = (radixID_1_reg_861 + 7'd5);
assign add_ln25_5_fu_619_p2 = (radixID_1_reg_861 + 7'd6);
assign add_ln25_6_fu_629_p2 = (radixID_1_reg_861 + 7'd7);
assign add_ln25_7_fu_671_p2 = (radixID_1_reg_861 + 7'd8);
assign add_ln25_8_fu_681_p2 = (radixID_1_reg_861 + 7'd9);
assign add_ln25_9_fu_726_p2 = (radixID_1_reg_861 + 7'd10);
assign add_ln25_fu_473_p2 = (radixID_1_reg_861 + 7'd1);
assign add_ln26_10_fu_661_p2 = (shl_ln_reg_882 + 11'd175);
assign add_ln26_11_fu_703_p2 = (shl_ln_reg_882 + 11'd191);
assign add_ln26_12_fu_713_p2 = (shl_ln_reg_882 + 11'd207);
assign add_ln26_13_fu_758_p2 = (shl_ln_reg_882 + 11'd223);
assign add_ln26_14_fu_782_p2 = (shl_ln_reg_882 + 11'd239);
assign add_ln26_1_fu_449_p2 = (shl_ln_reg_882 + 11'd31);
assign add_ln26_2_fu_459_p2 = (shl_ln_reg_882 + 11'd47);
assign add_ln26_3_fu_495_p2 = (shl_ln_reg_882 + 11'd63);
assign add_ln26_4_fu_505_p2 = (shl_ln_reg_882 + 11'd79);
assign add_ln26_5_fu_547_p2 = (shl_ln_reg_882 + 11'd95);
assign add_ln26_6_fu_557_p2 = (shl_ln_reg_882 + 11'd111);
assign add_ln26_7_fu_599_p2 = (shl_ln_reg_882 + 11'd127);
assign add_ln26_8_fu_609_p2 = (shl_ln_reg_882 + 11'd143);
assign add_ln26_9_fu_651_p2 = (shl_ln_reg_882 + 11'd159);
assign add_ln26_fu_408_p2 = ($signed(shl_ln_fu_400_p3) + $signed(11'd2047));
assign add_ln27_10_fu_691_p2 = (reg_388 + add_ln27_9_reg_979);
assign add_ln27_11_fu_697_p2 = (bucket_q1 + add_ln27_10_fu_691_p2);
assign add_ln27_12_fu_746_p2 = (reg_388 + add_ln27_11_reg_995);
assign add_ln27_13_fu_752_p2 = (bucket_q1 + add_ln27_12_fu_746_p2);
assign add_ln27_14_fu_812_p2 = (reg_388 + add_ln27_13_reg_1011);
assign add_ln27_15_fu_818_p2 = (bucket_q1 + add_ln27_14_fu_812_p2);
assign add_ln27_16_fu_838_p2 = (reg_388 + add_ln27_15_reg_1036);
assign add_ln27_1_fu_443_p2 = (bucket_q1 + sum_q0);
assign add_ln27_2_fu_483_p2 = (reg_388 + add_ln27_1_reg_915);
assign add_ln27_3_fu_489_p2 = (bucket_q1 + add_ln27_2_fu_483_p2);
assign add_ln27_4_fu_535_p2 = (reg_388 + add_ln27_3_reg_931);
assign add_ln27_5_fu_541_p2 = (bucket_q1 + add_ln27_4_fu_535_p2);
assign add_ln27_6_fu_587_p2 = (reg_388 + add_ln27_5_reg_947);
assign add_ln27_7_fu_593_p2 = (bucket_q1 + add_ln27_6_fu_587_p2);
assign add_ln27_8_fu_639_p2 = (reg_388 + add_ln27_7_reg_963);
assign add_ln27_9_fu_645_p2 = (bucket_q1 + add_ln27_8_fu_639_p2);
assign add_ln27_fu_419_p2 = ($signed(ap_sig_allocacmp_radixID_1) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bucket_address0 = bucket_address0_local;
assign bucket_address1 = bucket_address1_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_ce1 = bucket_ce1_local;
assign or_ln_fu_430_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd15}};
assign shl_ln_fu_400_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_address0 = sum_address0_local;
assign sum_address1 = sum_address1_local;
assign sum_ce0 = sum_ce0_local;
assign sum_ce1 = sum_ce1_local;
assign sum_d0 = sum_d0_local;
assign sum_d1 = sum_d1_local;
assign sum_we0 = sum_we0_local;
assign sum_we1 = sum_we1_local;
assign tmp_fu_774_p3 = add_ln25_14_fu_768_p2[32'd7];
assign zext_ln11_1_fu_723_p1 = radixID_1_reg_861;
assign zext_ln11_fu_469_p1 = radixID_1_reg_861;
assign zext_ln25_fu_834_p1 = add_ln25_14_reg_1022;
assign zext_ln26_10_fu_741_p1 = add_ln25_10_fu_736_p2;
assign zext_ln26_11_fu_797_p1 = add_ln25_11_fu_792_p2;
assign zext_ln26_12_fu_807_p1 = add_ln25_12_fu_802_p2;
assign zext_ln26_13_fu_829_p1 = add_ln25_13_fu_824_p2;
assign zext_ln26_1_fu_520_p1 = add_ln25_1_fu_515_p2;
assign zext_ln26_2_fu_530_p1 = add_ln25_2_fu_525_p2;
assign zext_ln26_3_fu_572_p1 = add_ln25_3_fu_567_p2;
assign zext_ln26_4_fu_582_p1 = add_ln25_4_fu_577_p2;
assign zext_ln26_5_fu_624_p1 = add_ln25_5_fu_619_p2;
assign zext_ln26_6_fu_634_p1 = add_ln25_6_fu_629_p2;
assign zext_ln26_7_fu_676_p1 = add_ln25_7_fu_671_p2;
assign zext_ln26_8_fu_686_p1 = add_ln25_8_fu_681_p2;
assign zext_ln26_9_fu_731_p1 = add_ln25_9_fu_726_p2;
assign zext_ln26_fu_478_p1 = add_ln25_fu_473_p2;
assign zext_ln27_10_fu_614_p1 = add_ln26_8_fu_609_p2;
assign zext_ln27_11_fu_656_p1 = add_ln26_9_fu_651_p2;
assign zext_ln27_12_fu_666_p1 = add_ln26_10_fu_661_p2;
assign zext_ln27_13_fu_708_p1 = add_ln26_11_fu_703_p2;
assign zext_ln27_14_fu_718_p1 = add_ln26_12_fu_713_p2;
assign zext_ln27_15_fu_763_p1 = add_ln26_13_fu_758_p2;
assign zext_ln27_16_fu_787_p1 = add_ln26_14_fu_782_p2;
assign zext_ln27_1_fu_425_p1 = add_ln27_fu_419_p2;
assign zext_ln27_2_fu_438_p1 = or_ln_fu_430_p3;
assign zext_ln27_3_fu_454_p1 = add_ln26_1_fu_449_p2;
assign zext_ln27_4_fu_464_p1 = add_ln26_2_fu_459_p2;
assign zext_ln27_5_fu_500_p1 = add_ln26_3_fu_495_p2;
assign zext_ln27_6_fu_510_p1 = add_ln26_4_fu_505_p2;
assign zext_ln27_7_fu_552_p1 = add_ln26_5_fu_547_p2;
assign zext_ln27_8_fu_562_p1 = add_ln26_6_fu_557_p2;
assign zext_ln27_9_fu_604_p1 = add_ln26_7_fu_599_p2;
assign zext_ln27_fu_414_p1 = add_ln26_fu_408_p2;
always @ (posedge ap_clk) begin
    shl_ln_reg_882[3:0] <= 4'b0000;
end
endmodule 