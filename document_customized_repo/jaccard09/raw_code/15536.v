module ss_sort_sum_scan_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_3_address0,bucket_3_ce0,bucket_3_q0,bucket_3_address1,bucket_3_ce1,bucket_3_q1); 
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_reg_1266;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_417;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [6:0] radixID_1_reg_1088;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [4:0] lshr_ln_fu_429_p4;
reg   [4:0] lshr_ln_reg_1104;
wire   [63:0] zext_ln23_fu_439_p1;
reg   [63:0] zext_ln23_reg_1111;
wire   [10:0] shl_ln_fu_444_p3;
reg   [10:0] shl_ln_reg_1118;
wire   [31:0] add_ln27_fu_486_p2;
reg   [31:0] add_ln27_reg_1147;
wire   [8:0] shl_ln1_fu_492_p3;
reg   [8:0] shl_ln1_reg_1153;
wire   [31:0] add_ln27_3_fu_536_p2;
reg   [31:0] add_ln27_3_reg_1170;
wire   [31:0] add_ln27_6_fu_598_p2;
reg   [31:0] add_ln27_6_reg_1186;
wire   [31:0] add_ln27_8_fu_680_p2;
reg   [31:0] add_ln27_8_reg_1202;
wire   [31:0] add_ln27_11_fu_762_p2;
reg   [31:0] add_ln27_11_reg_1218;
wire   [31:0] add_ln27_13_fu_844_p2;
reg   [31:0] add_ln27_13_reg_1234;
wire   [31:0] add_ln27_16_fu_929_p2;
reg   [31:0] add_ln27_16_reg_1250;
wire   [7:0] add_ln25_9_fu_955_p2;
reg   [7:0] add_ln25_9_reg_1261;
wire   [0:0] tmp_fu_961_p3;
wire   [31:0] add_ln27_18_fu_1025_p2;
reg   [31:0] add_ln27_18_reg_1275;
wire   [63:0] zext_ln27_fu_468_p1;
wire   [63:0] zext_ln27_1_fu_481_p1;
wire   [63:0] zext_ln27_2_fu_505_p1;
wire   [63:0] zext_ln27_3_fu_525_p1;
wire   [63:0] zext_ln27_5_fu_547_p1;
wire   [63:0] zext_ln27_6_fu_567_p1;
wire   [63:0] zext_ln27_7_fu_619_p1;
wire   [63:0] zext_ln27_8_fu_639_p1;
wire   [63:0] zext_ln26_fu_587_p1;
wire   [63:0] zext_ln27_10_fu_691_p1;
wire   [63:0] zext_ln27_11_fu_711_p1;
wire   [63:0] zext_ln27_4_fu_649_p1;
wire   [63:0] zext_ln26_1_fu_669_p1;
wire   [63:0] zext_ln27_12_fu_783_p1;
wire   [63:0] zext_ln27_13_fu_803_p1;
wire   [63:0] zext_ln26_2_fu_731_p1;
wire   [63:0] zext_ln26_3_fu_751_p1;
wire   [63:0] zext_ln27_15_fu_855_p1;
wire   [63:0] zext_ln27_16_fu_875_p1;
wire   [63:0] zext_ln27_9_fu_813_p1;
wire   [63:0] zext_ln26_4_fu_833_p1;
wire   [63:0] zext_ln27_17_fu_950_p1;
wire   [63:0] zext_ln26_5_fu_898_p1;
wire   [63:0] zext_ln26_6_fu_918_p1;
wire   [63:0] zext_ln27_18_fu_984_p1;
wire   [63:0] zext_ln27_14_fu_994_p1;
wire   [63:0] zext_ln26_7_fu_1014_p1;
wire   [63:0] zext_ln26_8_fu_1046_p1;
wire   [63:0] zext_ln25_fu_1060_p1;
reg   [6:0] radixID_fu_120;
wire   [6:0] add_ln25_10_fu_1071_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [4:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_4_fu_592_p2;
wire   [31:0] add_ln27_9_fu_756_p2;
wire   [31:0] add_ln27_14_fu_923_p2;
wire   [31:0] add_ln27_19_fu_1065_p2;
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
wire   [31:0] add_ln27_1_fu_530_p2;
reg    sum_2_ce0_local;
reg   [4:0] sum_2_address0_local;
wire   [31:0] add_ln27_7_fu_674_p2;
wire   [31:0] add_ln27_12_fu_838_p2;
wire   [31:0] add_ln27_17_fu_1019_p2;
reg    sum_3_we0_local;
reg   [31:0] sum_3_d0_local;
reg    sum_3_ce0_local;
reg   [4:0] sum_3_address0_local;
wire   [10:0] add_ln26_fu_452_p2;
wire   [8:0] lshr_ln1_fu_458_p4;
wire   [8:0] or_ln_fu_473_p3;
wire   [8:0] add_ln27_2_fu_499_p2;
wire   [10:0] add_ln26_1_fu_510_p2;
wire   [8:0] lshr_ln27_1_fu_515_p4;
wire   [8:0] add_ln27_5_fu_542_p2;
wire   [10:0] add_ln26_3_fu_552_p2;
wire   [8:0] lshr_ln27_2_fu_557_p4;
wire   [6:0] add_ln25_fu_572_p2;
wire   [4:0] lshr_ln2_fu_577_p4;
wire   [10:0] add_ln26_4_fu_604_p2;
wire   [8:0] lshr_ln27_3_fu_609_p4;
wire   [10:0] add_ln26_5_fu_624_p2;
wire   [8:0] lshr_ln27_4_fu_629_p4;
wire   [4:0] add_ln26_2_fu_644_p2;
wire   [6:0] add_ln25_1_fu_654_p2;
wire   [4:0] lshr_ln26_1_fu_659_p4;
wire   [8:0] add_ln27_10_fu_686_p2;
wire   [10:0] add_ln26_7_fu_696_p2;
wire   [8:0] lshr_ln27_5_fu_701_p4;
wire   [6:0] add_ln25_2_fu_716_p2;
wire   [4:0] lshr_ln26_2_fu_721_p4;
wire   [6:0] add_ln25_3_fu_736_p2;
wire   [4:0] lshr_ln26_3_fu_741_p4;
wire   [10:0] add_ln26_8_fu_768_p2;
wire   [8:0] lshr_ln27_6_fu_773_p4;
wire   [10:0] add_ln26_9_fu_788_p2;
wire   [8:0] lshr_ln27_7_fu_793_p4;
wire   [4:0] add_ln26_6_fu_808_p2;
wire   [6:0] add_ln25_4_fu_818_p2;
wire   [4:0] lshr_ln26_4_fu_823_p4;
wire   [8:0] add_ln27_15_fu_850_p2;
wire   [10:0] add_ln26_11_fu_860_p2;
wire   [8:0] lshr_ln27_8_fu_865_p4;
wire   [6:0] add_ln25_5_fu_883_p2;
wire   [4:0] lshr_ln26_5_fu_888_p4;
wire   [6:0] add_ln25_6_fu_903_p2;
wire   [4:0] lshr_ln26_6_fu_908_p4;
wire   [10:0] add_ln26_12_fu_935_p2;
wire   [8:0] lshr_ln27_9_fu_940_p4;
wire   [7:0] zext_ln15_fu_880_p1;
wire   [10:0] add_ln26_13_fu_969_p2;
wire   [8:0] lshr_ln27_s_fu_974_p4;
wire   [4:0] add_ln26_10_fu_989_p2;
wire   [6:0] add_ln25_7_fu_999_p2;
wire   [4:0] lshr_ln26_7_fu_1004_p4;
wire   [6:0] add_ln25_8_fu_1031_p2;
wire   [4:0] lshr_ln26_8_fu_1036_p4;
wire   [4:0] lshr_ln3_fu_1051_p4;
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
#0 radixID_fu_120 = 7'd0;
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
        radixID_fu_120 <= 7'd1;
    end else if (((tmp_reg_1266 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        radixID_fu_120 <= add_ln25_10_fu_1071_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln25_9_reg_1261 <= add_ln25_9_fu_955_p2;
        add_ln27_16_reg_1250 <= add_ln27_16_fu_929_p2;
        tmp_reg_1266 <= add_ln25_9_fu_955_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln27_11_reg_1218 <= add_ln27_11_fu_762_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln27_13_reg_1234 <= add_ln27_13_fu_844_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln27_18_reg_1275 <= add_ln27_18_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_1170 <= add_ln27_3_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln27_6_reg_1186 <= add_ln27_6_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_8_reg_1202 <= add_ln27_8_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_reg_1147 <= add_ln27_fu_486_p2;
        shl_ln1_reg_1153[8 : 2] <= shl_ln1_fu_492_p3[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        lshr_ln_reg_1104 <= {{ap_sig_allocacmp_radixID_1[6:2]}};
        radixID_1_reg_1088 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_1118[10 : 4] <= shl_ln_fu_444_p3[10 : 4];
        zext_ln23_reg_1111[4 : 0] <= zext_ln23_fu_439_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_417 <= bucket_3_q0;
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
    if (((tmp_reg_1266 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
        ap_sig_allocacmp_radixID_1 = radixID_fu_120;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (tmp_fu_961_p3 == 1'd0))) begin
        bucket_3_address0_local = zext_ln27_18_fu_984_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_3_address0_local = zext_ln27_16_fu_875_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_3_address0_local = zext_ln27_13_fu_803_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_3_address0_local = zext_ln27_11_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_address0_local = zext_ln27_8_fu_639_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address0_local = zext_ln27_6_fu_567_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address0_local = zext_ln27_3_fu_525_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_3_address0_local = zext_ln27_1_fu_481_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_3_address1_local = zext_ln27_17_fu_950_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_3_address1_local = zext_ln27_15_fu_855_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_3_address1_local = zext_ln27_12_fu_783_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_3_address1_local = zext_ln27_10_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_3_address1_local = zext_ln27_7_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_3_address1_local = zext_ln27_5_fu_547_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_3_address1_local = zext_ln27_2_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_3_address1_local = zext_ln27_fu_468_p1;
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)) | ((1'b1 == ap_CS_fsm_state8) & (tmp_fu_961_p3 == 1'd0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1266 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_address0_local = zext_ln25_fu_1060_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_0_address0_local = zext_ln26_6_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_address0_local = zext_ln26_3_fu_751_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_address0_local = zext_ln26_fu_587_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_0_address0_local = zext_ln23_fu_439_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | ((tmp_reg_1266 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1266 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_d0_local = add_ln27_19_fu_1065_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_0_d0_local = add_ln27_14_fu_923_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_d0_local = add_ln27_9_fu_756_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_d0_local = add_ln27_4_fu_592_p2;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | ((tmp_reg_1266 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_1_address0_local = zext_ln27_14_fu_994_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_address0_local = zext_ln27_9_fu_813_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_address0_local = zext_ln27_4_fu_649_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_address0_local = zext_ln23_reg_1111;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_1_d0_local = add_ln27_16_reg_1250;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_d0_local = add_ln27_11_reg_1218;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_1_d0_local = add_ln27_6_reg_1186;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_d0_local = add_ln27_reg_1147;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_2_address0_local = zext_ln26_7_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_2_address0_local = zext_ln26_4_fu_833_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_2_address0_local = zext_ln26_1_fu_669_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_address0_local = zext_ln23_reg_1111;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_2_d0_local = add_ln27_17_fu_1019_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_2_d0_local = add_ln27_12_fu_838_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_2_d0_local = add_ln27_7_fu_674_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_d0_local = add_ln27_1_fu_530_p2;
    end else begin
        sum_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_address0_local = zext_ln26_8_fu_1046_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_3_address0_local = zext_ln26_5_fu_898_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_3_address0_local = zext_ln26_2_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_address0_local = zext_ln23_reg_1111;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_3_d0_local = add_ln27_18_reg_1275;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_3_d0_local = add_ln27_13_reg_1234;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_3_d0_local = add_ln27_8_reg_1202;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_d0_local = add_ln27_3_reg_1170;
    end else begin
        sum_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln25_10_fu_1071_p2 = (radixID_1_reg_1088 + 7'd16);
assign add_ln25_1_fu_654_p2 = (radixID_1_reg_1088 + 7'd5);
assign add_ln25_2_fu_716_p2 = (radixID_1_reg_1088 + 7'd6);
assign add_ln25_3_fu_736_p2 = (radixID_1_reg_1088 + 7'd7);
assign add_ln25_4_fu_818_p2 = (radixID_1_reg_1088 + 7'd9);
assign add_ln25_5_fu_883_p2 = (radixID_1_reg_1088 + 7'd10);
assign add_ln25_6_fu_903_p2 = (radixID_1_reg_1088 + 7'd11);
assign add_ln25_7_fu_999_p2 = (radixID_1_reg_1088 + 7'd13);
assign add_ln25_8_fu_1031_p2 = (radixID_1_reg_1088 + 7'd14);
assign add_ln25_9_fu_955_p2 = (zext_ln15_fu_880_p1 + 8'd15);
assign add_ln25_fu_572_p2 = (radixID_1_reg_1088 + 7'd3);
assign add_ln26_10_fu_989_p2 = (lshr_ln_reg_1104 + 5'd3);
assign add_ln26_11_fu_860_p2 = (shl_ln_reg_1118 + 11'd207);
assign add_ln26_12_fu_935_p2 = (shl_ln_reg_1118 + 11'd223);
assign add_ln26_13_fu_969_p2 = (shl_ln_reg_1118 + 11'd239);
assign add_ln26_1_fu_510_p2 = (shl_ln_reg_1118 + 11'd47);
assign add_ln26_2_fu_644_p2 = (lshr_ln_reg_1104 + 5'd1);
assign add_ln26_3_fu_552_p2 = (shl_ln_reg_1118 + 11'd79);
assign add_ln26_4_fu_604_p2 = (shl_ln_reg_1118 + 11'd95);
assign add_ln26_5_fu_624_p2 = (shl_ln_reg_1118 + 11'd111);
assign add_ln26_6_fu_808_p2 = (lshr_ln_reg_1104 + 5'd2);
assign add_ln26_7_fu_696_p2 = (shl_ln_reg_1118 + 11'd143);
assign add_ln26_8_fu_768_p2 = (shl_ln_reg_1118 + 11'd159);
assign add_ln26_9_fu_788_p2 = (shl_ln_reg_1118 + 11'd175);
assign add_ln26_fu_452_p2 = ($signed(shl_ln_fu_444_p3) + $signed(11'd2047));
assign add_ln27_10_fu_686_p2 = (shl_ln1_reg_1153 + 9'd31);
assign add_ln27_11_fu_762_p2 = (bucket_3_q1 + add_ln27_9_fu_756_p2);
assign add_ln27_12_fu_838_p2 = (reg_417 + add_ln27_11_reg_1218);
assign add_ln27_13_fu_844_p2 = (bucket_3_q1 + add_ln27_12_fu_838_p2);
assign add_ln27_14_fu_923_p2 = (reg_417 + add_ln27_13_reg_1234);
assign add_ln27_15_fu_850_p2 = (shl_ln1_reg_1153 + 9'd47);
assign add_ln27_16_fu_929_p2 = (bucket_3_q1 + add_ln27_14_fu_923_p2);
assign add_ln27_17_fu_1019_p2 = (reg_417 + add_ln27_16_reg_1250);
assign add_ln27_18_fu_1025_p2 = (bucket_3_q1 + add_ln27_17_fu_1019_p2);
assign add_ln27_19_fu_1065_p2 = (reg_417 + add_ln27_18_reg_1275);
assign add_ln27_1_fu_530_p2 = (reg_417 + add_ln27_reg_1147);
assign add_ln27_2_fu_499_p2 = (shl_ln1_fu_492_p3 + 9'd7);
assign add_ln27_3_fu_536_p2 = (bucket_3_q1 + add_ln27_1_fu_530_p2);
assign add_ln27_4_fu_592_p2 = (reg_417 + add_ln27_3_reg_1170);
assign add_ln27_5_fu_542_p2 = (shl_ln1_reg_1153 + 9'd15);
assign add_ln27_6_fu_598_p2 = (bucket_3_q1 + add_ln27_4_fu_592_p2);
assign add_ln27_7_fu_674_p2 = (reg_417 + add_ln27_6_reg_1186);
assign add_ln27_8_fu_680_p2 = (bucket_3_q1 + add_ln27_7_fu_674_p2);
assign add_ln27_9_fu_756_p2 = (reg_417 + add_ln27_8_reg_1202);
assign add_ln27_fu_486_p2 = (bucket_3_q1 + sum_0_q0);
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
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign lshr_ln1_fu_458_p4 = {{add_ln26_fu_452_p2[10:2]}};
assign lshr_ln26_1_fu_659_p4 = {{add_ln25_1_fu_654_p2[6:2]}};
assign lshr_ln26_2_fu_721_p4 = {{add_ln25_2_fu_716_p2[6:2]}};
assign lshr_ln26_3_fu_741_p4 = {{add_ln25_3_fu_736_p2[6:2]}};
assign lshr_ln26_4_fu_823_p4 = {{add_ln25_4_fu_818_p2[6:2]}};
assign lshr_ln26_5_fu_888_p4 = {{add_ln25_5_fu_883_p2[6:2]}};
assign lshr_ln26_6_fu_908_p4 = {{add_ln25_6_fu_903_p2[6:2]}};
assign lshr_ln26_7_fu_1004_p4 = {{add_ln25_7_fu_999_p2[6:2]}};
assign lshr_ln26_8_fu_1036_p4 = {{add_ln25_8_fu_1031_p2[6:2]}};
assign lshr_ln27_1_fu_515_p4 = {{add_ln26_1_fu_510_p2[10:2]}};
assign lshr_ln27_2_fu_557_p4 = {{add_ln26_3_fu_552_p2[10:2]}};
assign lshr_ln27_3_fu_609_p4 = {{add_ln26_4_fu_604_p2[10:2]}};
assign lshr_ln27_4_fu_629_p4 = {{add_ln26_5_fu_624_p2[10:2]}};
assign lshr_ln27_5_fu_701_p4 = {{add_ln26_7_fu_696_p2[10:2]}};
assign lshr_ln27_6_fu_773_p4 = {{add_ln26_8_fu_768_p2[10:2]}};
assign lshr_ln27_7_fu_793_p4 = {{add_ln26_9_fu_788_p2[10:2]}};
assign lshr_ln27_8_fu_865_p4 = {{add_ln26_11_fu_860_p2[10:2]}};
assign lshr_ln27_9_fu_940_p4 = {{add_ln26_12_fu_935_p2[10:2]}};
assign lshr_ln27_s_fu_974_p4 = {{add_ln26_13_fu_969_p2[10:2]}};
assign lshr_ln2_fu_577_p4 = {{add_ln25_fu_572_p2[6:2]}};
assign lshr_ln3_fu_1051_p4 = {{add_ln25_9_reg_1261[6:2]}};
assign lshr_ln_fu_429_p4 = {{ap_sig_allocacmp_radixID_1[6:2]}};
assign or_ln_fu_473_p3 = {{ap_sig_allocacmp_radixID_1}, {2'd3}};
assign shl_ln1_fu_492_p3 = {{radixID_1_reg_1088}, {2'd0}};
assign shl_ln_fu_444_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
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
assign tmp_fu_961_p3 = add_ln25_9_fu_955_p2[32'd7];
assign zext_ln15_fu_880_p1 = radixID_1_reg_1088;
assign zext_ln23_fu_439_p1 = lshr_ln_fu_429_p4;
assign zext_ln25_fu_1060_p1 = lshr_ln3_fu_1051_p4;
assign zext_ln26_1_fu_669_p1 = lshr_ln26_1_fu_659_p4;
assign zext_ln26_2_fu_731_p1 = lshr_ln26_2_fu_721_p4;
assign zext_ln26_3_fu_751_p1 = lshr_ln26_3_fu_741_p4;
assign zext_ln26_4_fu_833_p1 = lshr_ln26_4_fu_823_p4;
assign zext_ln26_5_fu_898_p1 = lshr_ln26_5_fu_888_p4;
assign zext_ln26_6_fu_918_p1 = lshr_ln26_6_fu_908_p4;
assign zext_ln26_7_fu_1014_p1 = lshr_ln26_7_fu_1004_p4;
assign zext_ln26_8_fu_1046_p1 = lshr_ln26_8_fu_1036_p4;
assign zext_ln26_fu_587_p1 = lshr_ln2_fu_577_p4;
assign zext_ln27_10_fu_691_p1 = add_ln27_10_fu_686_p2;
assign zext_ln27_11_fu_711_p1 = lshr_ln27_5_fu_701_p4;
assign zext_ln27_12_fu_783_p1 = lshr_ln27_6_fu_773_p4;
assign zext_ln27_13_fu_803_p1 = lshr_ln27_7_fu_793_p4;
assign zext_ln27_14_fu_994_p1 = add_ln26_10_fu_989_p2;
assign zext_ln27_15_fu_855_p1 = add_ln27_15_fu_850_p2;
assign zext_ln27_16_fu_875_p1 = lshr_ln27_8_fu_865_p4;
assign zext_ln27_17_fu_950_p1 = lshr_ln27_9_fu_940_p4;
assign zext_ln27_18_fu_984_p1 = lshr_ln27_s_fu_974_p4;
assign zext_ln27_1_fu_481_p1 = or_ln_fu_473_p3;
assign zext_ln27_2_fu_505_p1 = add_ln27_2_fu_499_p2;
assign zext_ln27_3_fu_525_p1 = lshr_ln27_1_fu_515_p4;
assign zext_ln27_4_fu_649_p1 = add_ln26_2_fu_644_p2;
assign zext_ln27_5_fu_547_p1 = add_ln27_5_fu_542_p2;
assign zext_ln27_6_fu_567_p1 = lshr_ln27_2_fu_557_p4;
assign zext_ln27_7_fu_619_p1 = lshr_ln27_3_fu_609_p4;
assign zext_ln27_8_fu_639_p1 = lshr_ln27_4_fu_629_p4;
assign zext_ln27_9_fu_813_p1 = add_ln26_6_fu_808_p2;
assign zext_ln27_fu_468_p1 = lshr_ln1_fu_458_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_1111[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_1118[3:0] <= 4'b0000;
    shl_ln1_reg_1153[1:0] <= 2'b00;
end
endmodule 