module ss_sort_sum_scan_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_q1); 
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_reg_1222;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_403;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [6:0] radixID_1_reg_1044;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [5:0] lshr_ln_fu_415_p4;
reg   [5:0] lshr_ln_reg_1058;
wire   [63:0] zext_ln23_fu_425_p1;
reg   [63:0] zext_ln23_reg_1069;
wire   [10:0] shl_ln_fu_430_p3;
reg   [10:0] shl_ln_reg_1074;
wire   [31:0] add_ln27_fu_472_p2;
reg   [31:0] add_ln27_reg_1100;
wire   [9:0] shl_ln1_fu_478_p3;
reg   [9:0] shl_ln1_reg_1106;
wire   [31:0] add_ln27_3_fu_542_p2;
reg   [31:0] add_ln27_3_reg_1126;
wire   [31:0] add_ln27_6_fu_614_p2;
reg   [31:0] add_ln27_6_reg_1142;
wire   [31:0] add_ln27_9_fu_686_p2;
reg   [31:0] add_ln27_9_reg_1158;
wire   [31:0] add_ln27_12_fu_758_p2;
reg   [31:0] add_ln27_12_reg_1174;
wire   [31:0] add_ln27_15_fu_830_p2;
reg   [31:0] add_ln27_15_reg_1190;
wire   [31:0] add_ln27_18_fu_905_p2;
reg   [31:0] add_ln27_18_reg_1206;
wire   [7:0] add_ln25_7_fu_921_p2;
reg   [7:0] add_ln25_7_reg_1217;
wire   [0:0] tmp_fu_927_p3;
wire   [31:0] add_ln27_21_fu_991_p2;
reg   [31:0] add_ln27_21_reg_1231;
wire   [63:0] zext_ln27_fu_454_p1;
wire   [63:0] zext_ln27_2_fu_467_p1;
wire   [63:0] zext_ln27_4_fu_491_p1;
wire   [63:0] zext_ln27_5_fu_511_p1;
wire   [63:0] zext_ln27_7_fu_553_p1;
wire   [63:0] zext_ln27_8_fu_573_p1;
wire   [63:0] zext_ln27_1_fu_531_p1;
wire   [63:0] zext_ln27_10_fu_625_p1;
wire   [63:0] zext_ln27_11_fu_645_p1;
wire   [63:0] zext_ln27_3_fu_583_p1;
wire   [63:0] zext_ln26_fu_603_p1;
wire   [63:0] zext_ln27_13_fu_697_p1;
wire   [63:0] zext_ln27_14_fu_717_p1;
wire   [63:0] zext_ln27_6_fu_655_p1;
wire   [63:0] zext_ln26_1_fu_675_p1;
wire   [63:0] zext_ln27_16_fu_769_p1;
wire   [63:0] zext_ln27_17_fu_789_p1;
wire   [63:0] zext_ln27_9_fu_727_p1;
wire   [63:0] zext_ln26_2_fu_747_p1;
wire   [63:0] zext_ln27_19_fu_841_p1;
wire   [63:0] zext_ln27_20_fu_861_p1;
wire   [63:0] zext_ln27_12_fu_799_p1;
wire   [63:0] zext_ln26_3_fu_819_p1;
wire   [63:0] zext_ln27_22_fu_916_p1;
wire   [63:0] zext_ln27_15_fu_874_p1;
wire   [63:0] zext_ln26_4_fu_894_p1;
wire   [63:0] zext_ln27_23_fu_950_p1;
wire   [63:0] zext_ln27_18_fu_960_p1;
wire   [63:0] zext_ln26_5_fu_980_p1;
wire   [63:0] zext_ln27_21_fu_1002_p1;
wire   [63:0] zext_ln25_fu_1016_p1;
reg   [6:0] radixID_fu_116;
wire   [6:0] add_ln25_8_fu_1027_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [5:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_1_fu_536_p2;
wire   [31:0] add_ln27_4_fu_608_p2;
wire   [31:0] add_ln27_7_fu_680_p2;
wire   [31:0] add_ln27_10_fu_752_p2;
wire   [31:0] add_ln27_13_fu_824_p2;
wire   [31:0] add_ln27_16_fu_899_p2;
wire   [31:0] add_ln27_19_fu_985_p2;
wire   [31:0] add_ln27_22_fu_1021_p2;
reg    bucket_1_ce1_local;
reg   [9:0] bucket_1_address1_local;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    sum_1_we0_local;
reg   [31:0] sum_1_d0_local;
reg    sum_1_ce0_local;
reg   [5:0] sum_1_address0_local;
wire   [10:0] add_ln26_fu_438_p2;
wire   [9:0] lshr_ln1_fu_444_p4;
wire   [9:0] or_ln_fu_459_p3;
wire   [9:0] add_ln27_2_fu_485_p2;
wire   [10:0] add_ln26_2_fu_496_p2;
wire   [9:0] lshr_ln27_1_fu_501_p4;
wire   [6:0] add_ln25_fu_516_p2;
wire   [5:0] lshr_ln2_fu_521_p4;
wire   [9:0] add_ln27_5_fu_548_p2;
wire   [10:0] add_ln26_4_fu_558_p2;
wire   [9:0] lshr_ln27_2_fu_563_p4;
wire   [5:0] add_ln26_1_fu_578_p2;
wire   [6:0] add_ln25_1_fu_588_p2;
wire   [5:0] lshr_ln26_1_fu_593_p4;
wire   [9:0] add_ln27_8_fu_620_p2;
wire   [10:0] add_ln26_6_fu_630_p2;
wire   [9:0] lshr_ln27_3_fu_635_p4;
wire   [5:0] add_ln26_3_fu_650_p2;
wire   [6:0] add_ln25_2_fu_660_p2;
wire   [5:0] lshr_ln26_2_fu_665_p4;
wire   [9:0] add_ln27_11_fu_692_p2;
wire   [10:0] add_ln26_8_fu_702_p2;
wire   [9:0] lshr_ln27_4_fu_707_p4;
wire   [5:0] add_ln26_5_fu_722_p2;
wire   [6:0] add_ln25_3_fu_732_p2;
wire   [5:0] lshr_ln26_3_fu_737_p4;
wire   [9:0] add_ln27_14_fu_764_p2;
wire   [10:0] add_ln26_10_fu_774_p2;
wire   [9:0] lshr_ln27_5_fu_779_p4;
wire   [5:0] add_ln26_7_fu_794_p2;
wire   [6:0] add_ln25_4_fu_804_p2;
wire   [5:0] lshr_ln26_4_fu_809_p4;
wire   [9:0] add_ln27_17_fu_836_p2;
wire   [10:0] add_ln26_12_fu_846_p2;
wire   [9:0] lshr_ln27_6_fu_851_p4;
wire   [5:0] add_ln26_9_fu_869_p2;
wire   [6:0] add_ln25_5_fu_879_p2;
wire   [5:0] lshr_ln26_5_fu_884_p4;
wire   [9:0] add_ln27_20_fu_911_p2;
wire   [7:0] zext_ln15_fu_866_p1;
wire   [10:0] add_ln26_14_fu_935_p2;
wire   [9:0] lshr_ln27_7_fu_940_p4;
wire   [5:0] add_ln26_11_fu_955_p2;
wire   [6:0] add_ln25_6_fu_965_p2;
wire   [5:0] lshr_ln26_6_fu_970_p4;
wire   [5:0] add_ln26_13_fu_997_p2;
wire   [5:0] lshr_ln3_fu_1007_p4;
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
#0 radixID_fu_116 = 7'd0;
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
        radixID_fu_116 <= 7'd1;
    end else if (((tmp_reg_1222 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        radixID_fu_116 <= add_ln25_8_fu_1027_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln25_7_reg_1217 <= add_ln25_7_fu_921_p2;
        add_ln27_18_reg_1206 <= add_ln27_18_fu_905_p2;
        tmp_reg_1222 <= add_ln25_7_fu_921_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln27_12_reg_1174 <= add_ln27_12_fu_758_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln27_15_reg_1190 <= add_ln27_15_fu_830_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln27_21_reg_1231 <= add_ln27_21_fu_991_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_1126 <= add_ln27_3_fu_542_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln27_6_reg_1142 <= add_ln27_6_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_9_reg_1158 <= add_ln27_9_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_reg_1100 <= add_ln27_fu_472_p2;
        shl_ln1_reg_1106[9 : 3] <= shl_ln1_fu_478_p3[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        lshr_ln_reg_1058 <= {{ap_sig_allocacmp_radixID_1[6:1]}};
        radixID_1_reg_1044 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_1074[10 : 4] <= shl_ln_fu_430_p3[10 : 4];
        zext_ln23_reg_1069[5 : 0] <= zext_ln23_fu_425_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_403 <= bucket_1_q0;
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
    if (((tmp_reg_1222 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
        ap_sig_allocacmp_radixID_1 = radixID_fu_116;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (tmp_fu_927_p3 == 1'd0))) begin
        bucket_1_address0_local = zext_ln27_23_fu_950_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address0_local = zext_ln27_20_fu_861_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address0_local = zext_ln27_17_fu_789_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address0_local = zext_ln27_14_fu_717_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address0_local = zext_ln27_11_fu_645_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address0_local = zext_ln27_8_fu_573_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address0_local = zext_ln27_5_fu_511_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_1_address0_local = zext_ln27_2_fu_467_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_1_address1_local = zext_ln27_22_fu_916_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_1_address1_local = zext_ln27_19_fu_841_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_1_address1_local = zext_ln27_16_fu_769_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_1_address1_local = zext_ln27_13_fu_697_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_1_address1_local = zext_ln27_10_fu_625_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_1_address1_local = zext_ln27_7_fu_553_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_1_address1_local = zext_ln27_4_fu_491_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_1_address1_local = zext_ln27_fu_454_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)) | ((1'b1 == ap_CS_fsm_state8) & (tmp_fu_927_p3 == 1'd0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1222 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_address0_local = zext_ln25_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_0_address0_local = zext_ln26_5_fu_980_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_0_address0_local = zext_ln26_4_fu_894_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_0_address0_local = zext_ln26_3_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_address0_local = zext_ln26_2_fu_747_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_0_address0_local = zext_ln26_1_fu_675_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_address0_local = zext_ln26_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_address0_local = zext_ln27_1_fu_531_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_0_address0_local = zext_ln23_fu_425_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)) | ((tmp_reg_1222 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1222 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_d0_local = add_ln27_22_fu_1021_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_0_d0_local = add_ln27_19_fu_985_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_0_d0_local = add_ln27_16_fu_899_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_0_d0_local = add_ln27_13_fu_824_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_d0_local = add_ln27_10_fu_752_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_0_d0_local = add_ln27_7_fu_680_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_d0_local = add_ln27_4_fu_608_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_d0_local = add_ln27_1_fu_536_p2;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | ((tmp_reg_1222 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_address0_local = zext_ln27_21_fu_1002_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_1_address0_local = zext_ln27_18_fu_960_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_1_address0_local = zext_ln27_15_fu_874_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_address0_local = zext_ln27_12_fu_799_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_1_address0_local = zext_ln27_9_fu_727_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_address0_local = zext_ln27_6_fu_655_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_1_address0_local = zext_ln27_3_fu_583_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_address0_local = zext_ln23_reg_1069;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_d0_local = add_ln27_21_reg_1231;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_1_d0_local = add_ln27_18_reg_1206;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_1_d0_local = add_ln27_15_reg_1190;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_d0_local = add_ln27_12_reg_1174;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_1_d0_local = add_ln27_9_reg_1158;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_d0_local = add_ln27_6_reg_1142;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_1_d0_local = add_ln27_3_reg_1126;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_d0_local = add_ln27_reg_1100;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
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
assign add_ln25_1_fu_588_p2 = (radixID_1_reg_1044 + 7'd3);
assign add_ln25_2_fu_660_p2 = (radixID_1_reg_1044 + 7'd5);
assign add_ln25_3_fu_732_p2 = (radixID_1_reg_1044 + 7'd7);
assign add_ln25_4_fu_804_p2 = (radixID_1_reg_1044 + 7'd9);
assign add_ln25_5_fu_879_p2 = (radixID_1_reg_1044 + 7'd11);
assign add_ln25_6_fu_965_p2 = (radixID_1_reg_1044 + 7'd13);
assign add_ln25_7_fu_921_p2 = (zext_ln15_fu_866_p1 + 8'd15);
assign add_ln25_8_fu_1027_p2 = (radixID_1_reg_1044 + 7'd16);
assign add_ln25_fu_516_p2 = (radixID_1_reg_1044 + 7'd1);
assign add_ln26_10_fu_774_p2 = (shl_ln_reg_1074 + 11'd175);
assign add_ln26_11_fu_955_p2 = (lshr_ln_reg_1058 + 6'd6);
assign add_ln26_12_fu_846_p2 = (shl_ln_reg_1074 + 11'd207);
assign add_ln26_13_fu_997_p2 = (lshr_ln_reg_1058 + 6'd7);
assign add_ln26_14_fu_935_p2 = (shl_ln_reg_1074 + 11'd239);
assign add_ln26_1_fu_578_p2 = (lshr_ln_reg_1058 + 6'd1);
assign add_ln26_2_fu_496_p2 = (shl_ln_reg_1074 + 11'd47);
assign add_ln26_3_fu_650_p2 = (lshr_ln_reg_1058 + 6'd2);
assign add_ln26_4_fu_558_p2 = (shl_ln_reg_1074 + 11'd79);
assign add_ln26_5_fu_722_p2 = (lshr_ln_reg_1058 + 6'd3);
assign add_ln26_6_fu_630_p2 = (shl_ln_reg_1074 + 11'd111);
assign add_ln26_7_fu_794_p2 = (lshr_ln_reg_1058 + 6'd4);
assign add_ln26_8_fu_702_p2 = (shl_ln_reg_1074 + 11'd143);
assign add_ln26_9_fu_869_p2 = (lshr_ln_reg_1058 + 6'd5);
assign add_ln26_fu_438_p2 = ($signed(shl_ln_fu_430_p3) + $signed(11'd2047));
assign add_ln27_10_fu_752_p2 = (reg_403 + add_ln27_9_reg_1158);
assign add_ln27_11_fu_692_p2 = (shl_ln1_reg_1106 + 10'd63);
assign add_ln27_12_fu_758_p2 = (bucket_1_q1 + add_ln27_10_fu_752_p2);
assign add_ln27_13_fu_824_p2 = (reg_403 + add_ln27_12_reg_1174);
assign add_ln27_14_fu_764_p2 = (shl_ln1_reg_1106 + 10'd79);
assign add_ln27_15_fu_830_p2 = (bucket_1_q1 + add_ln27_13_fu_824_p2);
assign add_ln27_16_fu_899_p2 = (reg_403 + add_ln27_15_reg_1190);
assign add_ln27_17_fu_836_p2 = (shl_ln1_reg_1106 + 10'd95);
assign add_ln27_18_fu_905_p2 = (bucket_1_q1 + add_ln27_16_fu_899_p2);
assign add_ln27_19_fu_985_p2 = (reg_403 + add_ln27_18_reg_1206);
assign add_ln27_1_fu_536_p2 = (reg_403 + add_ln27_reg_1100);
assign add_ln27_20_fu_911_p2 = (shl_ln1_reg_1106 + 10'd111);
assign add_ln27_21_fu_991_p2 = (bucket_1_q1 + add_ln27_19_fu_985_p2);
assign add_ln27_22_fu_1021_p2 = (reg_403 + add_ln27_21_reg_1231);
assign add_ln27_2_fu_485_p2 = (shl_ln1_fu_478_p3 + 10'd15);
assign add_ln27_3_fu_542_p2 = (bucket_1_q1 + add_ln27_1_fu_536_p2);
assign add_ln27_4_fu_608_p2 = (reg_403 + add_ln27_3_reg_1126);
assign add_ln27_5_fu_548_p2 = (shl_ln1_reg_1106 + 10'd31);
assign add_ln27_6_fu_614_p2 = (bucket_1_q1 + add_ln27_4_fu_608_p2);
assign add_ln27_7_fu_680_p2 = (reg_403 + add_ln27_6_reg_1142);
assign add_ln27_8_fu_620_p2 = (shl_ln1_reg_1106 + 10'd47);
assign add_ln27_9_fu_686_p2 = (bucket_1_q1 + add_ln27_7_fu_680_p2);
assign add_ln27_fu_472_p2 = (bucket_1_q1 + sum_0_q0);
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
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign lshr_ln1_fu_444_p4 = {{add_ln26_fu_438_p2[10:1]}};
assign lshr_ln26_1_fu_593_p4 = {{add_ln25_1_fu_588_p2[6:1]}};
assign lshr_ln26_2_fu_665_p4 = {{add_ln25_2_fu_660_p2[6:1]}};
assign lshr_ln26_3_fu_737_p4 = {{add_ln25_3_fu_732_p2[6:1]}};
assign lshr_ln26_4_fu_809_p4 = {{add_ln25_4_fu_804_p2[6:1]}};
assign lshr_ln26_5_fu_884_p4 = {{add_ln25_5_fu_879_p2[6:1]}};
assign lshr_ln26_6_fu_970_p4 = {{add_ln25_6_fu_965_p2[6:1]}};
assign lshr_ln27_1_fu_501_p4 = {{add_ln26_2_fu_496_p2[10:1]}};
assign lshr_ln27_2_fu_563_p4 = {{add_ln26_4_fu_558_p2[10:1]}};
assign lshr_ln27_3_fu_635_p4 = {{add_ln26_6_fu_630_p2[10:1]}};
assign lshr_ln27_4_fu_707_p4 = {{add_ln26_8_fu_702_p2[10:1]}};
assign lshr_ln27_5_fu_779_p4 = {{add_ln26_10_fu_774_p2[10:1]}};
assign lshr_ln27_6_fu_851_p4 = {{add_ln26_12_fu_846_p2[10:1]}};
assign lshr_ln27_7_fu_940_p4 = {{add_ln26_14_fu_935_p2[10:1]}};
assign lshr_ln2_fu_521_p4 = {{add_ln25_fu_516_p2[6:1]}};
assign lshr_ln3_fu_1007_p4 = {{add_ln25_7_reg_1217[6:1]}};
assign lshr_ln_fu_415_p4 = {{ap_sig_allocacmp_radixID_1[6:1]}};
assign or_ln_fu_459_p3 = {{ap_sig_allocacmp_radixID_1}, {3'd7}};
assign shl_ln1_fu_478_p3 = {{radixID_1_reg_1044}, {3'd0}};
assign shl_ln_fu_430_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_0_address0 = sum_0_address0_local;
assign sum_0_ce0 = sum_0_ce0_local;
assign sum_0_d0 = sum_0_d0_local;
assign sum_0_we0 = sum_0_we0_local;
assign sum_1_address0 = sum_1_address0_local;
assign sum_1_ce0 = sum_1_ce0_local;
assign sum_1_d0 = sum_1_d0_local;
assign sum_1_we0 = sum_1_we0_local;
assign tmp_fu_927_p3 = add_ln25_7_fu_921_p2[32'd7];
assign zext_ln15_fu_866_p1 = radixID_1_reg_1044;
assign zext_ln23_fu_425_p1 = lshr_ln_fu_415_p4;
assign zext_ln25_fu_1016_p1 = lshr_ln3_fu_1007_p4;
assign zext_ln26_1_fu_675_p1 = lshr_ln26_2_fu_665_p4;
assign zext_ln26_2_fu_747_p1 = lshr_ln26_3_fu_737_p4;
assign zext_ln26_3_fu_819_p1 = lshr_ln26_4_fu_809_p4;
assign zext_ln26_4_fu_894_p1 = lshr_ln26_5_fu_884_p4;
assign zext_ln26_5_fu_980_p1 = lshr_ln26_6_fu_970_p4;
assign zext_ln26_fu_603_p1 = lshr_ln26_1_fu_593_p4;
assign zext_ln27_10_fu_625_p1 = add_ln27_8_fu_620_p2;
assign zext_ln27_11_fu_645_p1 = lshr_ln27_3_fu_635_p4;
assign zext_ln27_12_fu_799_p1 = add_ln26_7_fu_794_p2;
assign zext_ln27_13_fu_697_p1 = add_ln27_11_fu_692_p2;
assign zext_ln27_14_fu_717_p1 = lshr_ln27_4_fu_707_p4;
assign zext_ln27_15_fu_874_p1 = add_ln26_9_fu_869_p2;
assign zext_ln27_16_fu_769_p1 = add_ln27_14_fu_764_p2;
assign zext_ln27_17_fu_789_p1 = lshr_ln27_5_fu_779_p4;
assign zext_ln27_18_fu_960_p1 = add_ln26_11_fu_955_p2;
assign zext_ln27_19_fu_841_p1 = add_ln27_17_fu_836_p2;
assign zext_ln27_1_fu_531_p1 = lshr_ln2_fu_521_p4;
assign zext_ln27_20_fu_861_p1 = lshr_ln27_6_fu_851_p4;
assign zext_ln27_21_fu_1002_p1 = add_ln26_13_fu_997_p2;
assign zext_ln27_22_fu_916_p1 = add_ln27_20_fu_911_p2;
assign zext_ln27_23_fu_950_p1 = lshr_ln27_7_fu_940_p4;
assign zext_ln27_2_fu_467_p1 = or_ln_fu_459_p3;
assign zext_ln27_3_fu_583_p1 = add_ln26_1_fu_578_p2;
assign zext_ln27_4_fu_491_p1 = add_ln27_2_fu_485_p2;
assign zext_ln27_5_fu_511_p1 = lshr_ln27_1_fu_501_p4;
assign zext_ln27_6_fu_655_p1 = add_ln26_3_fu_650_p2;
assign zext_ln27_7_fu_553_p1 = add_ln27_5_fu_548_p2;
assign zext_ln27_8_fu_573_p1 = lshr_ln27_2_fu_563_p4;
assign zext_ln27_9_fu_727_p1 = add_ln26_5_fu_722_p2;
assign zext_ln27_fu_454_p1 = lshr_ln1_fu_444_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_1069[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_1074[3:0] <= 4'b0000;
    shl_ln1_reg_1106[2:0] <= 3'b000;
end
endmodule 