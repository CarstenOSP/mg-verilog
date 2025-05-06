
module ss_sort_ss_sort_Pipeline_last_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_address0,sum_ce0,sum_q0,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,bucket_address1,bucket_ce1,bucket_we1,bucket_d1,bucket_q1);  
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
output  [6:0] sum_address0;
output   sum_ce0;
input  [31:0] sum_q0;
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
wire   [0:0] icmp_ln34_fu_230_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state16;
wire   [6:0] empty_fu_247_p1;
reg   [6:0] empty_reg_528;
reg   [10:0] bucket_addr_reg_551;
reg   [10:0] bucket_addr_79_reg_556;
reg   [31:0] sum_load_reg_561;
wire    ap_CS_fsm_state2;
reg   [31:0] bucket_load_reg_581;
reg   [31:0] bucket_load_79_reg_586;
reg   [10:0] bucket_addr_80_reg_591;
reg   [10:0] bucket_addr_81_reg_596;
reg   [31:0] bucket_load_80_reg_601;
wire    ap_CS_fsm_state3;
reg   [31:0] bucket_load_81_reg_606;
reg   [10:0] bucket_addr_82_reg_611;
reg   [10:0] bucket_addr_83_reg_616;
reg   [31:0] bucket_load_82_reg_621;
wire    ap_CS_fsm_state4;
reg   [31:0] bucket_load_83_reg_626;
reg   [10:0] bucket_addr_84_reg_631;
reg   [10:0] bucket_addr_85_reg_636;
reg   [31:0] bucket_load_84_reg_641;
wire    ap_CS_fsm_state5;
reg   [31:0] bucket_load_85_reg_646;
reg   [10:0] bucket_addr_86_reg_651;
reg   [10:0] bucket_addr_87_reg_656;
reg   [31:0] bucket_load_86_reg_661;
wire    ap_CS_fsm_state6;
reg   [31:0] bucket_load_87_reg_666;
reg   [10:0] bucket_addr_88_reg_671;
reg   [10:0] bucket_addr_89_reg_676;
reg   [31:0] bucket_load_88_reg_681;
wire    ap_CS_fsm_state7;
reg   [31:0] bucket_load_89_reg_686;
reg   [10:0] bucket_addr_90_reg_691;
reg   [10:0] bucket_addr_91_reg_696;
reg   [31:0] bucket_load_90_reg_701;
wire    ap_CS_fsm_state8;
reg   [31:0] bucket_load_91_reg_706;
reg   [10:0] bucket_addr_92_reg_711;
reg   [10:0] bucket_addr_93_reg_716;
wire   [31:0] add_ln37_2_fu_460_p2;
reg   [31:0] add_ln37_2_reg_721;
wire    ap_CS_fsm_state9;
wire   [31:0] add_ln37_3_fu_464_p2;
reg   [31:0] add_ln37_3_reg_726;
wire   [31:0] add_ln37_4_fu_468_p2;
reg   [31:0] add_ln37_4_reg_731;
wire   [31:0] add_ln37_5_fu_472_p2;
reg   [31:0] add_ln37_5_reg_736;
wire   [31:0] add_ln37_6_fu_476_p2;
reg   [31:0] add_ln37_6_reg_741;
wire   [31:0] add_ln37_7_fu_480_p2;
reg   [31:0] add_ln37_7_reg_746;
wire   [31:0] add_ln37_8_fu_484_p2;
reg   [31:0] add_ln37_8_reg_751;
wire   [31:0] add_ln37_9_fu_488_p2;
reg   [31:0] add_ln37_9_reg_756;
wire   [31:0] add_ln37_10_fu_492_p2;
reg   [31:0] add_ln37_10_reg_761;
wire   [31:0] add_ln37_11_fu_496_p2;
reg   [31:0] add_ln37_11_reg_766;
wire   [31:0] add_ln37_12_fu_500_p2;
reg   [31:0] add_ln37_12_reg_771;
wire   [31:0] add_ln37_13_fu_504_p2;
reg   [31:0] add_ln37_13_reg_776;
wire   [31:0] add_ln37_14_fu_508_p2;
reg   [31:0] add_ln37_14_reg_781;
wire   [31:0] add_ln37_15_fu_513_p2;
reg   [31:0] add_ln37_15_reg_786;
wire   [63:0] zext_ln34_fu_242_p1;
wire   [63:0] p_cast4_fu_259_p1;
wire   [63:0] zext_ln37_fu_272_p1;
wire   [63:0] zext_ln37_1_fu_289_p1;
wire   [63:0] zext_ln37_2_fu_301_p1;
wire   [63:0] zext_ln37_3_fu_313_p1;
wire   [63:0] zext_ln37_4_fu_325_p1;
wire   [63:0] zext_ln37_5_fu_337_p1;
wire   [63:0] zext_ln37_6_fu_349_p1;
wire   [63:0] zext_ln37_7_fu_361_p1;
wire   [63:0] zext_ln37_8_fu_373_p1;
wire   [63:0] zext_ln37_9_fu_385_p1;
wire   [63:0] zext_ln37_10_fu_397_p1;
wire   [63:0] zext_ln37_11_fu_409_p1;
wire   [63:0] zext_ln37_12_fu_421_p1;
wire   [63:0] zext_ln37_13_fu_433_p1;
wire   [63:0] zext_ln37_14_fu_445_p1;
reg   [7:0] radixID_2_fu_68;
wire   [7:0] add_ln34_fu_236_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID;
reg    sum_ce0_local;
reg    bucket_ce1_local;
reg   [10:0] bucket_address1_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
reg    bucket_we1_local;
reg   [31:0] bucket_d1_local;
wire   [31:0] add_ln37_fu_450_p2;
reg    bucket_we0_local;
reg   [31:0] bucket_d0_local;
wire   [31:0] add_ln37_1_fu_455_p2;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire   [10:0] tmp_s_fu_251_p3;
wire   [10:0] or_ln1_fu_264_p3;
wire   [10:0] or_ln36_1_fu_282_p3;
wire   [10:0] or_ln36_2_fu_294_p3;
wire   [10:0] or_ln36_3_fu_306_p3;
wire   [10:0] or_ln36_4_fu_318_p3;
wire   [10:0] or_ln36_5_fu_330_p3;
wire   [10:0] or_ln36_6_fu_342_p3;
wire   [10:0] or_ln36_7_fu_354_p3;
wire   [10:0] or_ln36_8_fu_366_p3;
wire   [10:0] or_ln36_9_fu_378_p3;
wire   [10:0] or_ln36_s_fu_390_p3;
wire   [10:0] or_ln36_10_fu_402_p3;
wire   [10:0] or_ln36_11_fu_414_p3;
wire   [10:0] or_ln36_12_fu_426_p3;
wire   [10:0] or_ln36_13_fu_438_p3;
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
#0 radixID_2_fu_68 = 8'd0;
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
        if ((icmp_ln34_fu_230_p2 == 1'd0)) begin
            radixID_2_fu_68 <= add_ln34_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_2_fu_68 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln37_10_reg_761 <= add_ln37_10_fu_492_p2;
        add_ln37_11_reg_766 <= add_ln37_11_fu_496_p2;
        add_ln37_12_reg_771 <= add_ln37_12_fu_500_p2;
        add_ln37_13_reg_776 <= add_ln37_13_fu_504_p2;
        add_ln37_14_reg_781 <= add_ln37_14_fu_508_p2;
        add_ln37_15_reg_786 <= add_ln37_15_fu_513_p2;
        add_ln37_2_reg_721 <= add_ln37_2_fu_460_p2;
        add_ln37_3_reg_726 <= add_ln37_3_fu_464_p2;
        add_ln37_4_reg_731 <= add_ln37_4_fu_468_p2;
        add_ln37_5_reg_736 <= add_ln37_5_fu_472_p2;
        add_ln37_6_reg_741 <= add_ln37_6_fu_476_p2;
        add_ln37_7_reg_746 <= add_ln37_7_fu_480_p2;
        add_ln37_8_reg_751 <= add_ln37_8_fu_484_p2;
        add_ln37_9_reg_756 <= add_ln37_9_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_addr_79_reg_556[10 : 4] <= zext_ln37_fu_272_p1[10 : 4];
        bucket_addr_reg_551[10 : 4] <= p_cast4_fu_259_p1[10 : 4];
        empty_reg_528 <= empty_fu_247_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_addr_80_reg_591[10 : 4] <= zext_ln37_1_fu_289_p1[10 : 4];
        bucket_addr_81_reg_596[10 : 4] <= zext_ln37_2_fu_301_p1[10 : 4];
        bucket_load_79_reg_586 <= bucket_q0;
        bucket_load_reg_581 <= bucket_q1;
        sum_load_reg_561 <= sum_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_addr_82_reg_611[10 : 4] <= zext_ln37_3_fu_313_p1[10 : 4];
        bucket_addr_83_reg_616[10 : 4] <= zext_ln37_4_fu_325_p1[10 : 4];
        bucket_load_80_reg_601 <= bucket_q1;
        bucket_load_81_reg_606 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_addr_84_reg_631[10 : 4] <= zext_ln37_5_fu_337_p1[10 : 4];
        bucket_addr_85_reg_636[10 : 4] <= zext_ln37_6_fu_349_p1[10 : 4];
        bucket_load_82_reg_621 <= bucket_q1;
        bucket_load_83_reg_626 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_addr_86_reg_651[10 : 4] <= zext_ln37_7_fu_361_p1[10 : 4];
        bucket_addr_87_reg_656[10 : 4] <= zext_ln37_8_fu_373_p1[10 : 4];
        bucket_load_84_reg_641 <= bucket_q1;
        bucket_load_85_reg_646 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_addr_88_reg_671[10 : 4] <= zext_ln37_9_fu_385_p1[10 : 4];
        bucket_addr_89_reg_676[10 : 4] <= zext_ln37_10_fu_397_p1[10 : 4];
        bucket_load_86_reg_661 <= bucket_q1;
        bucket_load_87_reg_666 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_addr_90_reg_691[10 : 4] <= zext_ln37_11_fu_409_p1[10 : 4];
        bucket_addr_91_reg_696[10 : 4] <= zext_ln37_12_fu_421_p1[10 : 4];
        bucket_load_88_reg_681 <= bucket_q1;
        bucket_load_89_reg_686 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_addr_92_reg_711[10 : 4] <= zext_ln37_13_fu_433_p1[10 : 4];
        bucket_addr_93_reg_716[10 : 4] <= zext_ln37_14_fu_445_p1[10 : 4];
        bucket_load_90_reg_701 <= bucket_q1;
        bucket_load_91_reg_706 <= bucket_q0;
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
    if (((icmp_ln34_fu_230_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_radixID = 8'd0;
    end else begin
        ap_sig_allocacmp_radixID = radixID_2_fu_68;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_address0_local = bucket_addr_93_reg_716;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address0_local = bucket_addr_91_reg_696;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address0_local = bucket_addr_89_reg_676;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address0_local = bucket_addr_87_reg_656;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address0_local = bucket_addr_85_reg_636;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address0_local = bucket_addr_83_reg_616;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address0_local = bucket_addr_81_reg_596;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address0_local = bucket_addr_79_reg_556;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address0_local = zext_ln37_14_fu_445_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address0_local = zext_ln37_12_fu_421_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address0_local = zext_ln37_10_fu_397_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address0_local = zext_ln37_8_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address0_local = zext_ln37_6_fu_349_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0_local = zext_ln37_4_fu_325_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address0_local = zext_ln37_2_fu_301_p1;
    end else if (((icmp_ln34_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_address0_local = zext_ln37_fu_272_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_address1_local = bucket_addr_92_reg_711;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_address1_local = bucket_addr_90_reg_691;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_address1_local = bucket_addr_88_reg_671;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address1_local = bucket_addr_86_reg_651;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address1_local = bucket_addr_84_reg_631;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address1_local = bucket_addr_82_reg_611;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address1_local = bucket_addr_80_reg_591;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address1_local = bucket_addr_reg_551;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address1_local = zext_ln37_13_fu_433_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address1_local = zext_ln37_11_fu_409_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        bucket_address1_local = zext_ln37_9_fu_385_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address1_local = zext_ln37_7_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bucket_address1_local = zext_ln37_5_fu_337_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address1_local = zext_ln37_3_fu_313_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bucket_address1_local = zext_ln37_1_fu_289_p1;
    end else if (((icmp_ln34_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_address1_local = p_cast4_fu_259_p1;
    end else begin
        bucket_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln34_fu_230_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln34_fu_230_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_d0_local = add_ln37_15_reg_786;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_d0_local = add_ln37_13_reg_776;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_d0_local = add_ln37_11_reg_766;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d0_local = add_ln37_9_reg_756;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d0_local = add_ln37_7_reg_746;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_d0_local = add_ln37_5_reg_736;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_d0_local = add_ln37_3_reg_726;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d0_local = add_ln37_1_fu_455_p2;
    end else begin
        bucket_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bucket_d1_local = add_ln37_14_reg_781;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        bucket_d1_local = add_ln37_12_reg_771;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        bucket_d1_local = add_ln37_10_reg_761;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d1_local = add_ln37_8_reg_751;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d1_local = add_ln37_6_reg_741;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_d1_local = add_ln37_4_reg_731;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_d1_local = add_ln37_2_reg_721;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d1_local = add_ln37_fu_450_p2;
    end else begin
        bucket_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        bucket_we1_local = 1'b1;
    end else begin
        bucket_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_ce0_local = 1'b1;
    end else begin
        sum_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln34_fu_230_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln34_fu_236_p2 = (ap_sig_allocacmp_radixID + 8'd1);
assign add_ln37_10_fu_492_p2 = (bucket_load_88_reg_681 + sum_load_reg_561);
assign add_ln37_11_fu_496_p2 = (bucket_load_89_reg_686 + sum_load_reg_561);
assign add_ln37_12_fu_500_p2 = (bucket_load_90_reg_701 + sum_load_reg_561);
assign add_ln37_13_fu_504_p2 = (bucket_load_91_reg_706 + sum_load_reg_561);
assign add_ln37_14_fu_508_p2 = (bucket_q1 + sum_load_reg_561);
assign add_ln37_15_fu_513_p2 = (bucket_q0 + sum_load_reg_561);
assign add_ln37_1_fu_455_p2 = (bucket_load_79_reg_586 + sum_load_reg_561);
assign add_ln37_2_fu_460_p2 = (bucket_load_80_reg_601 + sum_load_reg_561);
assign add_ln37_3_fu_464_p2 = (bucket_load_81_reg_606 + sum_load_reg_561);
assign add_ln37_4_fu_468_p2 = (bucket_load_82_reg_621 + sum_load_reg_561);
assign add_ln37_5_fu_472_p2 = (bucket_load_83_reg_626 + sum_load_reg_561);
assign add_ln37_6_fu_476_p2 = (bucket_load_84_reg_641 + sum_load_reg_561);
assign add_ln37_7_fu_480_p2 = (bucket_load_85_reg_646 + sum_load_reg_561);
assign add_ln37_8_fu_484_p2 = (bucket_load_86_reg_661 + sum_load_reg_561);
assign add_ln37_9_fu_488_p2 = (bucket_load_87_reg_666 + sum_load_reg_561);
assign add_ln37_fu_450_p2 = (bucket_load_reg_581 + sum_load_reg_561);
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
assign empty_fu_247_p1 = ap_sig_allocacmp_radixID[6:0];
assign icmp_ln34_fu_230_p2 = ((ap_sig_allocacmp_radixID == 8'd128) ? 1'b1 : 1'b0);
assign or_ln1_fu_264_p3 = {{empty_fu_247_p1}, {4'd1}};
assign or_ln36_10_fu_402_p3 = {{empty_reg_528}, {4'd12}};
assign or_ln36_11_fu_414_p3 = {{empty_reg_528}, {4'd13}};
assign or_ln36_12_fu_426_p3 = {{empty_reg_528}, {4'd14}};
assign or_ln36_13_fu_438_p3 = {{empty_reg_528}, {4'd15}};
assign or_ln36_1_fu_282_p3 = {{empty_reg_528}, {4'd2}};
assign or_ln36_2_fu_294_p3 = {{empty_reg_528}, {4'd3}};
assign or_ln36_3_fu_306_p3 = {{empty_reg_528}, {4'd4}};
assign or_ln36_4_fu_318_p3 = {{empty_reg_528}, {4'd5}};
assign or_ln36_5_fu_330_p3 = {{empty_reg_528}, {4'd6}};
assign or_ln36_6_fu_342_p3 = {{empty_reg_528}, {4'd7}};
assign or_ln36_7_fu_354_p3 = {{empty_reg_528}, {4'd8}};
assign or_ln36_8_fu_366_p3 = {{empty_reg_528}, {4'd9}};
assign or_ln36_9_fu_378_p3 = {{empty_reg_528}, {4'd10}};
assign or_ln36_s_fu_390_p3 = {{empty_reg_528}, {4'd11}};
assign p_cast4_fu_259_p1 = tmp_s_fu_251_p3;
assign sum_address0 = zext_ln34_fu_242_p1;
assign sum_ce0 = sum_ce0_local;
assign tmp_s_fu_251_p3 = {{empty_fu_247_p1}, {4'd0}};
assign zext_ln34_fu_242_p1 = ap_sig_allocacmp_radixID;
assign zext_ln37_10_fu_397_p1 = or_ln36_s_fu_390_p3;
assign zext_ln37_11_fu_409_p1 = or_ln36_10_fu_402_p3;
assign zext_ln37_12_fu_421_p1 = or_ln36_11_fu_414_p3;
assign zext_ln37_13_fu_433_p1 = or_ln36_12_fu_426_p3;
assign zext_ln37_14_fu_445_p1 = or_ln36_13_fu_438_p3;
assign zext_ln37_1_fu_289_p1 = or_ln36_1_fu_282_p3;
assign zext_ln37_2_fu_301_p1 = or_ln36_2_fu_294_p3;
assign zext_ln37_3_fu_313_p1 = or_ln36_3_fu_306_p3;
assign zext_ln37_4_fu_325_p1 = or_ln36_4_fu_318_p3;
assign zext_ln37_5_fu_337_p1 = or_ln36_5_fu_330_p3;
assign zext_ln37_6_fu_349_p1 = or_ln36_6_fu_342_p3;
assign zext_ln37_7_fu_361_p1 = or_ln36_7_fu_354_p3;
assign zext_ln37_8_fu_373_p1 = or_ln36_8_fu_366_p3;
assign zext_ln37_9_fu_385_p1 = or_ln36_9_fu_378_p3;
assign zext_ln37_fu_272_p1 = or_ln1_fu_264_p3;
always @ (posedge ap_clk) begin
    bucket_addr_reg_551[3:0] <= 4'b0000;
    bucket_addr_79_reg_556[3:0] <= 4'b0001;
    bucket_addr_80_reg_591[3:0] <= 4'b0010;
    bucket_addr_81_reg_596[3:0] <= 4'b0011;
    bucket_addr_82_reg_611[3:0] <= 4'b0100;
    bucket_addr_83_reg_616[3:0] <= 4'b0101;
    bucket_addr_84_reg_631[3:0] <= 4'b0110;
    bucket_addr_85_reg_636[3:0] <= 4'b0111;
    bucket_addr_86_reg_651[3:0] <= 4'b1000;
    bucket_addr_87_reg_656[3:0] <= 4'b1001;
    bucket_addr_88_reg_671[3:0] <= 4'b1010;
    bucket_addr_89_reg_676[3:0] <= 4'b1011;
    bucket_addr_90_reg_691[3:0] <= 4'b1100;
    bucket_addr_91_reg_696[3:0] <= 4'b1101;
    bucket_addr_92_reg_711[3:0] <= 4'b1110;
    bucket_addr_93_reg_716[3:0] <= 4'b1111;
end
endmodule 
