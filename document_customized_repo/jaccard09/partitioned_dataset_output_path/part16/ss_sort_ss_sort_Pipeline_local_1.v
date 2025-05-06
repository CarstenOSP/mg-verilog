
module ss_sort_ss_sort_Pipeline_local_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,bucket_address1,bucket_ce1,bucket_we1,bucket_d1,bucket_q1);  
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
output  [10:0] bucket_address1;
output   bucket_ce1;
output   bucket_we1;
output  [31:0] bucket_d1;
input  [31:0] bucket_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln13_fu_223_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
reg   [31:0] reg_207;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state9;
reg   [31:0] reg_211;
wire   [6:0] empty_fu_235_p1;
reg   [6:0] empty_reg_528;
reg   [10:0] bucket_addr_16_reg_551;
wire   [31:0] add_ln16_fu_270_p2;
reg   [31:0] add_ln16_reg_557;
wire    ap_CS_fsm_state2;
reg   [10:0] bucket_addr_17_reg_563;
reg   [10:0] bucket_addr_18_reg_569;
reg   [10:0] bucket_addr_19_reg_575;
reg   [10:0] bucket_addr_20_reg_581;
reg   [31:0] bucket_load_19_reg_587;
wire    ap_CS_fsm_state4;
reg   [31:0] bucket_load_20_reg_592;
reg   [10:0] bucket_addr_21_reg_597;
reg   [10:0] bucket_addr_22_reg_603;
reg   [31:0] bucket_load_21_reg_609;
wire    ap_CS_fsm_state5;
reg   [31:0] bucket_load_22_reg_614;
reg   [10:0] bucket_addr_23_reg_619;
reg   [10:0] bucket_addr_24_reg_625;
reg   [31:0] bucket_load_23_reg_631;
wire    ap_CS_fsm_state6;
reg   [31:0] bucket_load_24_reg_636;
reg   [10:0] bucket_addr_25_reg_641;
reg   [10:0] bucket_addr_26_reg_647;
reg   [31:0] bucket_load_25_reg_653;
wire    ap_CS_fsm_state7;
reg   [31:0] bucket_load_26_reg_658;
reg   [10:0] bucket_addr_27_reg_663;
reg   [10:0] bucket_addr_28_reg_669;
reg   [31:0] bucket_load_27_reg_675;
wire    ap_CS_fsm_state8;
reg   [31:0] bucket_load_28_reg_680;
reg   [10:0] bucket_addr_29_reg_685;
reg   [10:0] bucket_addr_30_reg_691;
wire   [31:0] add_ln16_2_fu_450_p2;
reg   [31:0] add_ln16_2_reg_696;
wire   [31:0] add_ln16_4_fu_461_p2;
reg   [31:0] add_ln16_4_reg_702;
wire    ap_CS_fsm_state10;
wire   [31:0] add_ln16_6_fu_471_p2;
reg   [31:0] add_ln16_6_reg_708;
wire    ap_CS_fsm_state11;
wire   [31:0] add_ln16_8_fu_481_p2;
reg   [31:0] add_ln16_8_reg_714;
wire    ap_CS_fsm_state12;
wire   [31:0] add_ln16_10_fu_491_p2;
reg   [31:0] add_ln16_10_reg_720;
wire    ap_CS_fsm_state13;
wire   [31:0] add_ln16_12_fu_501_p2;
reg   [31:0] add_ln16_12_reg_726;
wire    ap_CS_fsm_state14;
wire   [31:0] add_ln16_14_fu_512_p2;
reg   [31:0] add_ln16_14_reg_732;
wire    ap_CS_fsm_state15;
wire   [63:0] p_cast_fu_247_p1;
wire   [63:0] zext_ln16_fu_260_p1;
wire   [63:0] zext_ln16_1_fu_283_p1;
wire   [63:0] zext_ln16_2_fu_295_p1;
wire   [63:0] zext_ln16_3_fu_307_p1;
wire   [63:0] zext_ln16_4_fu_319_p1;
wire   [63:0] zext_ln16_5_fu_331_p1;
wire   [63:0] zext_ln16_6_fu_343_p1;
wire   [63:0] zext_ln16_7_fu_355_p1;
wire   [63:0] zext_ln16_8_fu_367_p1;
wire   [63:0] zext_ln16_9_fu_379_p1;
wire   [63:0] zext_ln16_10_fu_391_p1;
wire   [63:0] zext_ln16_11_fu_403_p1;
wire   [63:0] zext_ln16_12_fu_415_p1;
wire   [63:0] zext_ln16_13_fu_427_p1;
wire   [63:0] zext_ln16_14_fu_439_p1;
reg   [7:0] radixID_fu_66;
wire   [7:0] add_ln13_fu_229_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_2;
reg    bucket_ce1_local;
reg   [10:0] bucket_address1_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
reg    bucket_we1_local;
reg   [31:0] bucket_d1_local;
reg    bucket_we0_local;
reg   [31:0] bucket_d0_local;
wire   [31:0] add_ln16_1_fu_444_p2;
wire   [31:0] add_ln16_3_fu_456_p2;
wire   [31:0] add_ln16_5_fu_466_p2;
wire   [31:0] add_ln16_7_fu_476_p2;
wire   [31:0] add_ln16_9_fu_486_p2;
wire   [31:0] add_ln16_11_fu_496_p2;
wire   [31:0] add_ln16_13_fu_506_p2;
wire   [10:0] tmp_s_fu_239_p3;
wire   [10:0] or_ln_fu_252_p3;
wire   [10:0] or_ln15_1_fu_276_p3;
wire   [10:0] or_ln15_2_fu_288_p3;
wire   [10:0] or_ln15_3_fu_300_p3;
wire   [10:0] or_ln15_4_fu_312_p3;
wire   [10:0] or_ln15_5_fu_324_p3;
wire   [10:0] or_ln15_6_fu_336_p3;
wire   [10:0] or_ln15_7_fu_348_p3;
wire   [10:0] or_ln15_8_fu_360_p3;
wire   [10:0] or_ln15_9_fu_372_p3;
wire   [10:0] or_ln15_s_fu_384_p3;
wire   [10:0] or_ln15_10_fu_396_p3;
wire   [10:0] or_ln15_11_fu_408_p3;
wire   [10:0] or_ln15_12_fu_420_p3;
wire   [10:0] or_ln15_13_fu_432_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 radixID_fu_66 = 8'd0;
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
        if ((icmp_ln13_fu_223_p2 == 1'd0)) begin
            radixID_fu_66 <= add_ln13_fu_229_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_66 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        add_ln16_10_reg_720 <= add_ln16_10_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln16_12_reg_726 <= add_ln16_12_fu_501_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        add_ln16_14_reg_732 <= add_ln16_14_fu_512_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln16_2_reg_696 <= add_ln16_2_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln16_4_reg_702 <= add_ln16_4_fu_461_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln16_6_reg_708 <= add_ln16_6_fu_471_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln16_8_reg_714 <= add_ln16_8_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln16_reg_557 <= add_ln16_fu_270_p2;
        bucket_addr_17_reg_563[10 : 4] <= zext_ln16_1_fu_283_p1[10 : 4];
        bucket_addr_18_reg_569[10 : 4] <= zext_ln16_2_fu_295_p1[10 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_addr_16_reg_551[10 : 4] <= zext_ln16_fu_260_p1[10 : 4];
        empty_reg_528 <= empty_fu_235_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_addr_19_reg_575[10 : 4] <= zext_ln16_3_fu_307_p1[10 : 4];
        bucket_addr_20_reg_581[10 : 4] <= zext_ln16_4_fu_319_p1[10 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_addr_21_reg_597[10 : 4] <= zext_ln16_5_fu_331_p1[10 : 4];
        bucket_addr_22_reg_603[10 : 4] <= zext_ln16_6_fu_343_p1[10 : 4];
        bucket_load_19_reg_587 <= bucket_q1;
        bucket_load_20_reg_592 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_addr_23_reg_619[10 : 4] <= zext_ln16_7_fu_355_p1[10 : 4];
        bucket_addr_24_reg_625[10 : 4] <= zext_ln16_8_fu_367_p1[10 : 4];
        bucket_load_21_reg_609 <= bucket_q1;
        bucket_load_22_reg_614 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_addr_25_reg_641[10 : 4] <= zext_ln16_9_fu_379_p1[10 : 4];
        bucket_addr_26_reg_647[10 : 4] <= zext_ln16_10_fu_391_p1[10 : 4];
        bucket_load_23_reg_631 <= bucket_q1;
        bucket_load_24_reg_636 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_addr_27_reg_663[10 : 4] <= zext_ln16_11_fu_403_p1[10 : 4];
        bucket_addr_28_reg_669[10 : 4] <= zext_ln16_12_fu_415_p1[10 : 4];
        bucket_load_25_reg_653 <= bucket_q1;
        bucket_load_26_reg_658 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_addr_29_reg_685[10 : 4] <= zext_ln16_13_fu_427_p1[10 : 4];
        bucket_addr_30_reg_691[10 : 4] <= zext_ln16_14_fu_439_p1[10 : 4];
        bucket_load_27_reg_675 <= bucket_q1;
        bucket_load_28_reg_680 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_207 <= bucket_q1;
        reg_211 <= bucket_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
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
    if (((icmp_ln13_fu_223_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID_2 = radixID_fu_66;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_address0_local = bucket_addr_30_reg_691;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address0_local = bucket_addr_29_reg_685;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address0_local = bucket_addr_27_reg_663;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address0_local = bucket_addr_25_reg_641;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address0_local = bucket_addr_23_reg_619;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address0_local = bucket_addr_21_reg_597;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address0_local = bucket_addr_19_reg_575;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address0_local = bucket_addr_17_reg_563;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address0_local = zext_ln16_14_fu_439_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address0_local = zext_ln16_12_fu_415_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address0_local = zext_ln16_10_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address0_local = zext_ln16_8_fu_367_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address0_local = zext_ln16_6_fu_343_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0_local = zext_ln16_4_fu_319_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address0_local = zext_ln16_2_fu_295_p1;
    end else if (((icmp_ln13_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_address0_local = zext_ln16_fu_260_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address1_local = bucket_addr_28_reg_669;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address1_local = bucket_addr_26_reg_647;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address1_local = bucket_addr_24_reg_625;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address1_local = bucket_addr_22_reg_603;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address1_local = bucket_addr_20_reg_581;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address1_local = bucket_addr_18_reg_569;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address1_local = bucket_addr_16_reg_551;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address1_local = zext_ln16_13_fu_427_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address1_local = zext_ln16_11_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address1_local = zext_ln16_9_fu_379_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address1_local = zext_ln16_7_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address1_local = zext_ln16_5_fu_331_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address1_local = zext_ln16_3_fu_307_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address1_local = zext_ln16_1_fu_283_p1;
    end else if (((icmp_ln13_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_address1_local = p_cast_fu_247_p1;
    end else begin
        bucket_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln13_fu_223_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln13_fu_223_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_d0_local = add_ln16_14_reg_732;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_d0_local = add_ln16_13_fu_506_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_d0_local = add_ln16_11_fu_496_p2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d0_local = add_ln16_9_fu_486_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d0_local = add_ln16_7_fu_476_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_d0_local = add_ln16_5_fu_466_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_d0_local = add_ln16_3_fu_456_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d0_local = add_ln16_1_fu_444_p2;
    end else begin
        bucket_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_d1_local = add_ln16_12_reg_726;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_d1_local = add_ln16_10_reg_720;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d1_local = add_ln16_8_reg_714;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d1_local = add_ln16_6_reg_708;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_d1_local = add_ln16_4_reg_702;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_d1_local = add_ln16_2_reg_696;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d1_local = add_ln16_reg_557;
    end else begin
        bucket_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        bucket_we1_local = 1'b1;
    end else begin
        bucket_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln13_fu_223_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_229_p2 = (ap_sig_allocacmp_radixID_2 + 8'd1);
assign add_ln16_10_fu_491_p2 = (bucket_load_26_reg_658 + add_ln16_9_fu_486_p2);
assign add_ln16_11_fu_496_p2 = (bucket_load_27_reg_675 + add_ln16_10_reg_720);
assign add_ln16_12_fu_501_p2 = (bucket_load_28_reg_680 + add_ln16_11_fu_496_p2);
assign add_ln16_13_fu_506_p2 = (reg_207 + add_ln16_12_reg_726);
assign add_ln16_14_fu_512_p2 = (reg_211 + add_ln16_13_fu_506_p2);
assign add_ln16_1_fu_444_p2 = (reg_207 + add_ln16_reg_557);
assign add_ln16_2_fu_450_p2 = (reg_211 + add_ln16_1_fu_444_p2);
assign add_ln16_3_fu_456_p2 = (bucket_load_19_reg_587 + add_ln16_2_reg_696);
assign add_ln16_4_fu_461_p2 = (bucket_load_20_reg_592 + add_ln16_3_fu_456_p2);
assign add_ln16_5_fu_466_p2 = (bucket_load_21_reg_609 + add_ln16_4_reg_702);
assign add_ln16_6_fu_471_p2 = (bucket_load_22_reg_614 + add_ln16_5_fu_466_p2);
assign add_ln16_7_fu_476_p2 = (bucket_load_23_reg_631 + add_ln16_6_reg_708);
assign add_ln16_8_fu_481_p2 = (bucket_load_24_reg_636 + add_ln16_7_fu_476_p2);
assign add_ln16_9_fu_486_p2 = (bucket_load_25_reg_653 + add_ln16_8_reg_714);
assign add_ln16_fu_270_p2 = (bucket_q0 + bucket_q1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_address0 = bucket_address0_local;
assign bucket_address1 = bucket_address1_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_ce1 = bucket_ce1_local;
assign bucket_d0 = bucket_d0_local;
assign bucket_d1 = bucket_d1_local;
assign bucket_we0 = bucket_we0_local;
assign bucket_we1 = bucket_we1_local;
assign empty_fu_235_p1 = ap_sig_allocacmp_radixID_2[6:0];
assign icmp_ln13_fu_223_p2 = ((ap_sig_allocacmp_radixID_2 == 8'd128) ? 1'b1 : 1'b0);
assign or_ln15_10_fu_396_p3 = {{empty_reg_528}, {4'd12}};
assign or_ln15_11_fu_408_p3 = {{empty_reg_528}, {4'd13}};
assign or_ln15_12_fu_420_p3 = {{empty_reg_528}, {4'd14}};
assign or_ln15_13_fu_432_p3 = {{empty_reg_528}, {4'd15}};
assign or_ln15_1_fu_276_p3 = {{empty_reg_528}, {4'd2}};
assign or_ln15_2_fu_288_p3 = {{empty_reg_528}, {4'd3}};
assign or_ln15_3_fu_300_p3 = {{empty_reg_528}, {4'd4}};
assign or_ln15_4_fu_312_p3 = {{empty_reg_528}, {4'd5}};
assign or_ln15_5_fu_324_p3 = {{empty_reg_528}, {4'd6}};
assign or_ln15_6_fu_336_p3 = {{empty_reg_528}, {4'd7}};
assign or_ln15_7_fu_348_p3 = {{empty_reg_528}, {4'd8}};
assign or_ln15_8_fu_360_p3 = {{empty_reg_528}, {4'd9}};
assign or_ln15_9_fu_372_p3 = {{empty_reg_528}, {4'd10}};
assign or_ln15_s_fu_384_p3 = {{empty_reg_528}, {4'd11}};
assign or_ln_fu_252_p3 = {{empty_fu_235_p1}, {4'd1}};
assign p_cast_fu_247_p1 = tmp_s_fu_239_p3;
assign tmp_s_fu_239_p3 = {{empty_fu_235_p1}, {4'd0}};
assign zext_ln16_10_fu_391_p1 = or_ln15_s_fu_384_p3;
assign zext_ln16_11_fu_403_p1 = or_ln15_10_fu_396_p3;
assign zext_ln16_12_fu_415_p1 = or_ln15_11_fu_408_p3;
assign zext_ln16_13_fu_427_p1 = or_ln15_12_fu_420_p3;
assign zext_ln16_14_fu_439_p1 = or_ln15_13_fu_432_p3;
assign zext_ln16_1_fu_283_p1 = or_ln15_1_fu_276_p3;
assign zext_ln16_2_fu_295_p1 = or_ln15_2_fu_288_p3;
assign zext_ln16_3_fu_307_p1 = or_ln15_3_fu_300_p3;
assign zext_ln16_4_fu_319_p1 = or_ln15_4_fu_312_p3;
assign zext_ln16_5_fu_331_p1 = or_ln15_5_fu_324_p3;
assign zext_ln16_6_fu_343_p1 = or_ln15_6_fu_336_p3;
assign zext_ln16_7_fu_355_p1 = or_ln15_7_fu_348_p3;
assign zext_ln16_8_fu_367_p1 = or_ln15_8_fu_360_p3;
assign zext_ln16_9_fu_379_p1 = or_ln15_9_fu_372_p3;
assign zext_ln16_fu_260_p1 = or_ln_fu_252_p3;
always @ (posedge ap_clk) begin
    bucket_addr_16_reg_551[3:0] <= 4'b0001;
    bucket_addr_17_reg_563[3:0] <= 4'b0010;
    bucket_addr_18_reg_569[3:0] <= 4'b0011;
    bucket_addr_19_reg_575[3:0] <= 4'b0100;
    bucket_addr_20_reg_581[3:0] <= 4'b0101;
    bucket_addr_21_reg_597[3:0] <= 4'b0110;
    bucket_addr_22_reg_603[3:0] <= 4'b0111;
    bucket_addr_23_reg_619[3:0] <= 4'b1000;
    bucket_addr_24_reg_625[3:0] <= 4'b1001;
    bucket_addr_25_reg_641[3:0] <= 4'b1010;
    bucket_addr_26_reg_647[3:0] <= 4'b1011;
    bucket_addr_27_reg_663[3:0] <= 4'b1100;
    bucket_addr_28_reg_669[3:0] <= 4'b1101;
    bucket_addr_29_reg_685[3:0] <= 4'b1110;
    bucket_addr_30_reg_691[3:0] <= 4'b1111;
end
endmodule 
