
module ss_sort_sum_scan_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_7_address0,sum_7_ce0,sum_7_we0,sum_7_d0,sum_6_address0,sum_6_ce0,sum_6_we0,sum_6_d0,sum_5_address0,sum_5_ce0,sum_5_we0,sum_5_d0,sum_4_address0,sum_4_ce0,sum_4_we0,sum_4_d0,sum_3_address0,sum_3_ce0,sum_3_we0,sum_3_d0,sum_2_address0,sum_2_ce0,sum_2_we0,sum_2_d0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,bucket_7_address0,bucket_7_ce0,bucket_7_q0,bucket_7_address1,bucket_7_ce1,bucket_7_q1);  
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
output  [3:0] sum_7_address0;
output   sum_7_ce0;
output   sum_7_we0;
output  [31:0] sum_7_d0;
output  [3:0] sum_6_address0;
output   sum_6_ce0;
output   sum_6_we0;
output  [31:0] sum_6_d0;
output  [3:0] sum_5_address0;
output   sum_5_ce0;
output   sum_5_we0;
output  [31:0] sum_5_d0;
output  [3:0] sum_4_address0;
output   sum_4_ce0;
output   sum_4_we0;
output  [31:0] sum_4_d0;
output  [3:0] sum_3_address0;
output   sum_3_ce0;
output   sum_3_we0;
output  [31:0] sum_3_d0;
output  [3:0] sum_2_address0;
output   sum_2_ce0;
output   sum_2_we0;
output  [31:0] sum_2_d0;
output  [3:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [3:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
input  [31:0] bucket_7_q0;
output  [7:0] bucket_7_address1;
output   bucket_7_ce1;
input  [31:0] bucket_7_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_reg_1204;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_435;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [6:0] radixID_1_reg_1027;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [3:0] lshr_ln_fu_447_p4;
reg   [3:0] lshr_ln_reg_1041;
wire   [63:0] zext_ln23_fu_457_p1;
reg   [63:0] zext_ln23_reg_1046;
wire   [10:0] shl_ln_fu_462_p3;
reg   [10:0] shl_ln_reg_1057;
wire   [31:0] add_ln27_fu_504_p2;
reg   [31:0] add_ln27_reg_1084;
wire   [7:0] shl_ln1_fu_510_p3;
reg   [7:0] shl_ln1_reg_1090;
wire   [31:0] add_ln27_3_fu_545_p2;
reg   [31:0] add_ln27_3_reg_1108;
wire   [31:0] add_ln27_7_fu_577_p2;
reg   [31:0] add_ln27_7_reg_1124;
wire   [31:0] add_ln27_11_fu_619_p2;
reg   [31:0] add_ln27_11_reg_1140;
wire   [31:0] add_ln27_14_fu_681_p2;
reg   [31:0] add_ln27_14_reg_1156;
wire   [31:0] add_ln27_16_fu_763_p2;
reg   [31:0] add_ln27_16_reg_1172;
wire   [31:0] add_ln27_18_fu_858_p2;
reg   [31:0] add_ln27_18_reg_1188;
wire   [7:0] add_ln25_7_fu_884_p2;
reg   [7:0] add_ln25_7_reg_1199;
wire   [0:0] tmp_fu_890_p3;
wire   [31:0] add_ln27_20_fu_964_p2;
reg   [31:0] add_ln27_20_reg_1213;
wire   [63:0] zext_ln27_fu_486_p1;
wire   [63:0] zext_ln27_1_fu_499_p1;
wire   [63:0] zext_ln27_2_fu_523_p1;
wire   [63:0] zext_ln27_3_fu_534_p1;
wire   [63:0] zext_ln27_4_fu_556_p1;
wire   [63:0] zext_ln27_5_fu_566_p1;
wire   [63:0] zext_ln27_6_fu_588_p1;
wire   [63:0] zext_ln27_7_fu_608_p1;
wire   [63:0] zext_ln27_9_fu_630_p1;
wire   [63:0] zext_ln27_10_fu_650_p1;
wire   [63:0] zext_ln27_11_fu_702_p1;
wire   [63:0] zext_ln27_12_fu_722_p1;
wire   [63:0] zext_ln26_fu_670_p1;
wire   [63:0] zext_ln27_13_fu_784_p1;
wire   [63:0] zext_ln27_14_fu_804_p1;
wire   [63:0] zext_ln27_8_fu_732_p1;
wire   [63:0] zext_ln26_1_fu_752_p1;
wire   [63:0] zext_ln27_15_fu_879_p1;
wire   [63:0] zext_ln26_2_fu_827_p1;
wire   [63:0] zext_ln26_3_fu_847_p1;
wire   [63:0] zext_ln27_16_fu_913_p1;
wire   [63:0] zext_ln26_4_fu_933_p1;
wire   [63:0] zext_ln26_5_fu_953_p1;
wire   [63:0] zext_ln26_6_fu_985_p1;
wire   [63:0] zext_ln25_fu_999_p1;
reg   [6:0] radixID_fu_118;
wire   [6:0] add_ln25_8_fu_1010_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_0_ce0_local;
reg   [3:0] sum_0_address0_local;
reg    sum_0_we0_local;
reg   [31:0] sum_0_d0_local;
wire   [31:0] add_ln27_12_fu_675_p2;
wire   [31:0] add_ln27_21_fu_1004_p2;
reg    bucket_7_ce1_local;
reg   [7:0] bucket_7_address1_local;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    sum_1_we0_local;
reg   [31:0] sum_1_d0_local;
reg    sum_1_ce0_local;
reg   [3:0] sum_1_address0_local;
reg    sum_2_we0_local;
reg   [31:0] sum_2_d0_local;
wire   [31:0] add_ln27_1_fu_539_p2;
reg    sum_2_ce0_local;
reg   [3:0] sum_2_address0_local;
wire   [31:0] add_ln27_15_fu_757_p2;
reg    sum_3_we0_local;
reg   [31:0] sum_3_d0_local;
reg    sum_3_ce0_local;
reg   [3:0] sum_3_address0_local;
reg    sum_4_we0_local;
reg   [31:0] sum_4_d0_local;
wire   [31:0] add_ln27_5_fu_571_p2;
reg    sum_4_ce0_local;
reg   [3:0] sum_4_address0_local;
wire   [31:0] add_ln27_17_fu_852_p2;
reg    sum_5_we0_local;
reg   [31:0] sum_5_d0_local;
reg    sum_5_ce0_local;
reg   [3:0] sum_5_address0_local;
reg    sum_6_we0_local;
reg   [31:0] sum_6_d0_local;
wire   [31:0] add_ln27_9_fu_613_p2;
reg    sum_6_ce0_local;
reg   [3:0] sum_6_address0_local;
wire   [31:0] add_ln27_19_fu_958_p2;
reg    sum_7_we0_local;
reg   [31:0] sum_7_d0_local;
reg    sum_7_ce0_local;
reg   [3:0] sum_7_address0_local;
wire   [10:0] add_ln26_fu_470_p2;
wire   [7:0] lshr_ln2_fu_476_p4;
wire   [7:0] or_ln_fu_491_p3;
wire   [7:0] add_ln27_2_fu_517_p2;
wire   [7:0] add_ln27_4_fu_528_p2;
wire   [7:0] add_ln27_6_fu_551_p2;
wire   [7:0] add_ln27_8_fu_561_p2;
wire   [7:0] add_ln27_10_fu_583_p2;
wire   [10:0] add_ln26_1_fu_593_p2;
wire   [7:0] lshr_ln27_1_fu_598_p4;
wire   [7:0] add_ln27_13_fu_625_p2;
wire   [10:0] add_ln26_3_fu_635_p2;
wire   [7:0] lshr_ln27_2_fu_640_p4;
wire   [6:0] add_ln25_fu_655_p2;
wire   [3:0] lshr_ln3_fu_660_p4;
wire   [10:0] add_ln26_4_fu_687_p2;
wire   [7:0] lshr_ln27_3_fu_692_p4;
wire   [10:0] add_ln26_5_fu_707_p2;
wire   [7:0] lshr_ln27_4_fu_712_p4;
wire   [3:0] add_ln26_2_fu_727_p2;
wire   [6:0] add_ln25_1_fu_737_p2;
wire   [3:0] lshr_ln26_1_fu_742_p4;
wire   [10:0] add_ln26_6_fu_769_p2;
wire   [7:0] lshr_ln27_5_fu_774_p4;
wire   [10:0] add_ln26_7_fu_789_p2;
wire   [7:0] lshr_ln27_6_fu_794_p4;
wire   [6:0] add_ln25_2_fu_812_p2;
wire   [3:0] lshr_ln26_2_fu_817_p4;
wire   [6:0] add_ln25_3_fu_832_p2;
wire   [3:0] lshr_ln26_3_fu_837_p4;
wire   [10:0] add_ln26_8_fu_864_p2;
wire   [7:0] lshr_ln27_7_fu_869_p4;
wire   [7:0] zext_ln15_fu_809_p1;
wire   [10:0] add_ln26_9_fu_898_p2;
wire   [7:0] lshr_ln27_8_fu_903_p4;
wire   [6:0] add_ln25_4_fu_918_p2;
wire   [3:0] lshr_ln26_4_fu_923_p4;
wire   [6:0] add_ln25_5_fu_938_p2;
wire   [3:0] lshr_ln26_5_fu_943_p4;
wire   [6:0] add_ln25_6_fu_970_p2;
wire   [3:0] lshr_ln26_6_fu_975_p4;
wire   [3:0] lshr_ln4_fu_990_p4;
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
#0 radixID_fu_118 = 7'd0;
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
        radixID_fu_118 <= 7'd1;
    end else if (((tmp_reg_1204 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        radixID_fu_118 <= add_ln25_8_fu_1010_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln25_7_reg_1199 <= add_ln25_7_fu_884_p2;
        add_ln27_18_reg_1188 <= add_ln27_18_fu_858_p2;
        tmp_reg_1204 <= add_ln25_7_fu_884_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln27_11_reg_1140 <= add_ln27_11_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln27_14_reg_1156 <= add_ln27_14_fu_681_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln27_16_reg_1172 <= add_ln27_16_fu_763_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln27_20_reg_1213 <= add_ln27_20_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln27_3_reg_1108 <= add_ln27_3_fu_545_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln27_7_reg_1124 <= add_ln27_7_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_reg_1084 <= add_ln27_fu_504_p2;
        shl_ln1_reg_1090[7 : 1] <= shl_ln1_fu_510_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0))) begin
        lshr_ln_reg_1041 <= {{ap_sig_allocacmp_radixID_1[6:3]}};
        radixID_1_reg_1027 <= ap_sig_allocacmp_radixID_1;
        shl_ln_reg_1057[10 : 4] <= shl_ln_fu_462_p3[10 : 4];
        zext_ln23_reg_1046[3 : 0] <= zext_ln23_fu_457_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_435 <= bucket_7_q0;
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
    if (((tmp_reg_1204 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
        ap_sig_allocacmp_radixID_1 = radixID_fu_118;
    end
end
always @ (*) begin
    if (((tmp_fu_890_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        bucket_7_address0_local = zext_ln27_16_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_7_address0_local = zext_ln27_14_fu_804_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_7_address0_local = zext_ln27_12_fu_722_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_7_address0_local = zext_ln27_10_fu_650_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_7_address0_local = zext_ln27_7_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_address0_local = zext_ln27_5_fu_566_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_7_address0_local = zext_ln27_3_fu_534_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_7_address0_local = zext_ln27_1_fu_499_p1;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_7_address1_local = zext_ln27_15_fu_879_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_7_address1_local = zext_ln27_13_fu_784_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_7_address1_local = zext_ln27_11_fu_702_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_7_address1_local = zext_ln27_9_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_7_address1_local = zext_ln27_6_fu_588_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_7_address1_local = zext_ln27_4_fu_556_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_7_address1_local = zext_ln27_2_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bucket_7_address1_local = zext_ln27_fu_486_p1;
    end else begin
        bucket_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((tmp_fu_890_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        bucket_7_ce1_local = 1'b1;
    end else begin
        bucket_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1204 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_address0_local = zext_ln25_fu_999_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_address0_local = zext_ln26_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_0_address0_local = zext_ln23_fu_457_p1;
    end else begin
        sum_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((tmp_reg_1204 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_pp0_stage0_iter0)))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_1204 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        sum_0_d0_local = add_ln27_21_fu_1004_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_0_d0_local = add_ln27_12_fu_675_p2;
    end else begin
        sum_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((tmp_reg_1204 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_address0_local = zext_ln27_8_fu_732_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_ce0_local = 1'b1;
    end else begin
        sum_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_1_d0_local = add_ln27_14_reg_1156;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_1_d0_local = add_ln27_reg_1084;
    end else begin
        sum_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_1_we0_local = 1'b1;
    end else begin
        sum_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_2_address0_local = zext_ln26_1_fu_752_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_ce0_local = 1'b1;
    end else begin
        sum_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_2_d0_local = add_ln27_15_fu_757_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_2_d0_local = add_ln27_1_fu_539_p2;
    end else begin
        sum_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        sum_2_we0_local = 1'b1;
    end else begin
        sum_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_3_address0_local = zext_ln26_2_fu_827_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_ce0_local = 1'b1;
    end else begin
        sum_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_3_d0_local = add_ln27_16_reg_1172;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_3_d0_local = add_ln27_3_reg_1108;
    end else begin
        sum_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_we0_local = 1'b1;
    end else begin
        sum_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_4_address0_local = zext_ln26_3_fu_847_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_4_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_ce0_local = 1'b1;
    end else begin
        sum_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_4_d0_local = add_ln27_17_fu_852_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_4_d0_local = add_ln27_5_fu_571_p2;
    end else begin
        sum_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_we0_local = 1'b1;
    end else begin
        sum_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_5_address0_local = zext_ln26_4_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_5_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_5_ce0_local = 1'b1;
    end else begin
        sum_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_5_d0_local = add_ln27_18_reg_1188;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_5_d0_local = add_ln27_7_reg_1124;
    end else begin
        sum_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_5_we0_local = 1'b1;
    end else begin
        sum_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_6_address0_local = zext_ln26_5_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_6_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_6_ce0_local = 1'b1;
    end else begin
        sum_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sum_6_d0_local = add_ln27_19_fu_958_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_6_d0_local = add_ln27_9_fu_613_p2;
    end else begin
        sum_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
        sum_6_we0_local = 1'b1;
    end else begin
        sum_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_7_address0_local = zext_ln26_6_fu_985_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_7_address0_local = zext_ln23_reg_1046;
    end else begin
        sum_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        sum_7_ce0_local = 1'b1;
    end else begin
        sum_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_7_d0_local = add_ln27_20_reg_1213;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_7_d0_local = add_ln27_11_reg_1140;
    end else begin
        sum_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        sum_7_we0_local = 1'b1;
    end else begin
        sum_7_we0_local = 1'b0;
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
assign add_ln25_1_fu_737_p2 = (radixID_1_reg_1027 + 7'd9);
assign add_ln25_2_fu_812_p2 = (radixID_1_reg_1027 + 7'd10);
assign add_ln25_3_fu_832_p2 = (radixID_1_reg_1027 + 7'd11);
assign add_ln25_4_fu_918_p2 = (radixID_1_reg_1027 + 7'd12);
assign add_ln25_5_fu_938_p2 = (radixID_1_reg_1027 + 7'd13);
assign add_ln25_6_fu_970_p2 = (radixID_1_reg_1027 + 7'd14);
assign add_ln25_7_fu_884_p2 = (zext_ln15_fu_809_p1 + 8'd15);
assign add_ln25_8_fu_1010_p2 = (radixID_1_reg_1027 + 7'd16);
assign add_ln25_fu_655_p2 = (radixID_1_reg_1027 + 7'd7);
assign add_ln26_1_fu_593_p2 = (shl_ln_reg_1057 + 11'd111);
assign add_ln26_2_fu_727_p2 = (lshr_ln_reg_1041 + 4'd1);
assign add_ln26_3_fu_635_p2 = (shl_ln_reg_1057 + 11'd143);
assign add_ln26_4_fu_687_p2 = (shl_ln_reg_1057 + 11'd159);
assign add_ln26_5_fu_707_p2 = (shl_ln_reg_1057 + 11'd175);
assign add_ln26_6_fu_769_p2 = (shl_ln_reg_1057 + 11'd191);
assign add_ln26_7_fu_789_p2 = (shl_ln_reg_1057 + 11'd207);
assign add_ln26_8_fu_864_p2 = (shl_ln_reg_1057 + 11'd223);
assign add_ln26_9_fu_898_p2 = (shl_ln_reg_1057 + 11'd239);
assign add_ln26_fu_470_p2 = ($signed(shl_ln_fu_462_p3) + $signed(11'd2047));
assign add_ln27_10_fu_583_p2 = (shl_ln1_reg_1090 + 8'd11);
assign add_ln27_11_fu_619_p2 = (bucket_7_q1 + add_ln27_9_fu_613_p2);
assign add_ln27_12_fu_675_p2 = (reg_435 + add_ln27_11_reg_1140);
assign add_ln27_13_fu_625_p2 = (shl_ln1_reg_1090 + 8'd15);
assign add_ln27_14_fu_681_p2 = (bucket_7_q1 + add_ln27_12_fu_675_p2);
assign add_ln27_15_fu_757_p2 = (reg_435 + add_ln27_14_reg_1156);
assign add_ln27_16_fu_763_p2 = (bucket_7_q1 + add_ln27_15_fu_757_p2);
assign add_ln27_17_fu_852_p2 = (reg_435 + add_ln27_16_reg_1172);
assign add_ln27_18_fu_858_p2 = (bucket_7_q1 + add_ln27_17_fu_852_p2);
assign add_ln27_19_fu_958_p2 = (reg_435 + add_ln27_18_reg_1188);
assign add_ln27_1_fu_539_p2 = (reg_435 + add_ln27_reg_1084);
assign add_ln27_20_fu_964_p2 = (bucket_7_q1 + add_ln27_19_fu_958_p2);
assign add_ln27_21_fu_1004_p2 = (reg_435 + add_ln27_20_reg_1213);
assign add_ln27_2_fu_517_p2 = (shl_ln1_fu_510_p3 + 8'd3);
assign add_ln27_3_fu_545_p2 = (bucket_7_q1 + add_ln27_1_fu_539_p2);
assign add_ln27_4_fu_528_p2 = (shl_ln1_fu_510_p3 + 8'd5);
assign add_ln27_5_fu_571_p2 = (reg_435 + add_ln27_3_reg_1108);
assign add_ln27_6_fu_551_p2 = (shl_ln1_reg_1090 + 8'd7);
assign add_ln27_7_fu_577_p2 = (bucket_7_q1 + add_ln27_5_fu_571_p2);
assign add_ln27_8_fu_561_p2 = (shl_ln1_reg_1090 + 8'd9);
assign add_ln27_9_fu_613_p2 = (reg_435 + add_ln27_7_reg_1124);
assign add_ln27_fu_504_p2 = (bucket_7_q1 + sum_0_q0);
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
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_address1 = bucket_7_address1_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_ce1 = bucket_7_ce1_local;
assign lshr_ln26_1_fu_742_p4 = {{add_ln25_1_fu_737_p2[6:3]}};
assign lshr_ln26_2_fu_817_p4 = {{add_ln25_2_fu_812_p2[6:3]}};
assign lshr_ln26_3_fu_837_p4 = {{add_ln25_3_fu_832_p2[6:3]}};
assign lshr_ln26_4_fu_923_p4 = {{add_ln25_4_fu_918_p2[6:3]}};
assign lshr_ln26_5_fu_943_p4 = {{add_ln25_5_fu_938_p2[6:3]}};
assign lshr_ln26_6_fu_975_p4 = {{add_ln25_6_fu_970_p2[6:3]}};
assign lshr_ln27_1_fu_598_p4 = {{add_ln26_1_fu_593_p2[10:3]}};
assign lshr_ln27_2_fu_640_p4 = {{add_ln26_3_fu_635_p2[10:3]}};
assign lshr_ln27_3_fu_692_p4 = {{add_ln26_4_fu_687_p2[10:3]}};
assign lshr_ln27_4_fu_712_p4 = {{add_ln26_5_fu_707_p2[10:3]}};
assign lshr_ln27_5_fu_774_p4 = {{add_ln26_6_fu_769_p2[10:3]}};
assign lshr_ln27_6_fu_794_p4 = {{add_ln26_7_fu_789_p2[10:3]}};
assign lshr_ln27_7_fu_869_p4 = {{add_ln26_8_fu_864_p2[10:3]}};
assign lshr_ln27_8_fu_903_p4 = {{add_ln26_9_fu_898_p2[10:3]}};
assign lshr_ln2_fu_476_p4 = {{add_ln26_fu_470_p2[10:3]}};
assign lshr_ln3_fu_660_p4 = {{add_ln25_fu_655_p2[6:3]}};
assign lshr_ln4_fu_990_p4 = {{add_ln25_7_reg_1199[6:3]}};
assign lshr_ln_fu_447_p4 = {{ap_sig_allocacmp_radixID_1[6:3]}};
assign or_ln_fu_491_p3 = {{ap_sig_allocacmp_radixID_1}, {1'd1}};
assign shl_ln1_fu_510_p3 = {{radixID_1_reg_1027}, {1'd0}};
assign shl_ln_fu_462_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
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
assign sum_4_address0 = sum_4_address0_local;
assign sum_4_ce0 = sum_4_ce0_local;
assign sum_4_d0 = sum_4_d0_local;
assign sum_4_we0 = sum_4_we0_local;
assign sum_5_address0 = sum_5_address0_local;
assign sum_5_ce0 = sum_5_ce0_local;
assign sum_5_d0 = sum_5_d0_local;
assign sum_5_we0 = sum_5_we0_local;
assign sum_6_address0 = sum_6_address0_local;
assign sum_6_ce0 = sum_6_ce0_local;
assign sum_6_d0 = sum_6_d0_local;
assign sum_6_we0 = sum_6_we0_local;
assign sum_7_address0 = sum_7_address0_local;
assign sum_7_ce0 = sum_7_ce0_local;
assign sum_7_d0 = sum_7_d0_local;
assign sum_7_we0 = sum_7_we0_local;
assign tmp_fu_890_p3 = add_ln25_7_fu_884_p2[32'd7];
assign zext_ln15_fu_809_p1 = radixID_1_reg_1027;
assign zext_ln23_fu_457_p1 = lshr_ln_fu_447_p4;
assign zext_ln25_fu_999_p1 = lshr_ln4_fu_990_p4;
assign zext_ln26_1_fu_752_p1 = lshr_ln26_1_fu_742_p4;
assign zext_ln26_2_fu_827_p1 = lshr_ln26_2_fu_817_p4;
assign zext_ln26_3_fu_847_p1 = lshr_ln26_3_fu_837_p4;
assign zext_ln26_4_fu_933_p1 = lshr_ln26_4_fu_923_p4;
assign zext_ln26_5_fu_953_p1 = lshr_ln26_5_fu_943_p4;
assign zext_ln26_6_fu_985_p1 = lshr_ln26_6_fu_975_p4;
assign zext_ln26_fu_670_p1 = lshr_ln3_fu_660_p4;
assign zext_ln27_10_fu_650_p1 = lshr_ln27_2_fu_640_p4;
assign zext_ln27_11_fu_702_p1 = lshr_ln27_3_fu_692_p4;
assign zext_ln27_12_fu_722_p1 = lshr_ln27_4_fu_712_p4;
assign zext_ln27_13_fu_784_p1 = lshr_ln27_5_fu_774_p4;
assign zext_ln27_14_fu_804_p1 = lshr_ln27_6_fu_794_p4;
assign zext_ln27_15_fu_879_p1 = lshr_ln27_7_fu_869_p4;
assign zext_ln27_16_fu_913_p1 = lshr_ln27_8_fu_903_p4;
assign zext_ln27_1_fu_499_p1 = or_ln_fu_491_p3;
assign zext_ln27_2_fu_523_p1 = add_ln27_2_fu_517_p2;
assign zext_ln27_3_fu_534_p1 = add_ln27_4_fu_528_p2;
assign zext_ln27_4_fu_556_p1 = add_ln27_6_fu_551_p2;
assign zext_ln27_5_fu_566_p1 = add_ln27_8_fu_561_p2;
assign zext_ln27_6_fu_588_p1 = add_ln27_10_fu_583_p2;
assign zext_ln27_7_fu_608_p1 = lshr_ln27_1_fu_598_p4;
assign zext_ln27_8_fu_732_p1 = add_ln26_2_fu_727_p2;
assign zext_ln27_9_fu_630_p1 = add_ln27_13_fu_625_p2;
assign zext_ln27_fu_486_p1 = lshr_ln2_fu_476_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_1046[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    shl_ln_reg_1057[3:0] <= 4'b0000;
    shl_ln1_reg_1090[0] <= 1'b0;
end
endmodule 
