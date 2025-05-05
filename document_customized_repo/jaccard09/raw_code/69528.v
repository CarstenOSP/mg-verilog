module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,m,a_address0,a_ce0,a_q0,a_address1,a_ce1,a_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] start_r;
input  [31:0] m;
output  [10:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [10:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [10:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln7_15_reg_806;
reg   [0:0] icmp_ln7_14_reg_797;
reg   [0:0] icmp_ln7_13_reg_788;
reg   [0:0] icmp_ln7_12_reg_779;
reg   [0:0] icmp_ln7_11_reg_770;
reg   [0:0] icmp_ln7_10_reg_761;
reg   [0:0] icmp_ln7_9_reg_752;
reg   [0:0] icmp_ln7_8_reg_743;
reg   [0:0] icmp_ln7_7_reg_734;
reg   [0:0] icmp_ln7_6_reg_725;
reg   [0:0] icmp_ln7_5_reg_716;
reg   [0:0] icmp_ln7_4_reg_707;
reg   [0:0] icmp_ln7_3_reg_693;
reg   [0:0] icmp_ln7_2_reg_679;
reg   [0:0] icmp_ln7_1_reg_665;
reg   [0:0] icmp_ln7_reg_646;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] i_35_reg_627;
wire   [0:0] icmp_ln7_fu_362_p2;
wire   [63:0] zext_ln7_fu_368_p1;
reg   [63:0] zext_ln7_reg_650;
wire   [63:0] zext_ln7_1_fu_383_p1;
reg   [63:0] zext_ln7_1_reg_660;
wire   [0:0] icmp_ln7_1_fu_388_p2;
wire   [63:0] zext_ln7_2_fu_399_p1;
reg   [63:0] zext_ln7_2_reg_674;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln7_2_fu_404_p2;
wire   [63:0] zext_ln7_3_fu_414_p1;
reg   [63:0] zext_ln7_3_reg_688;
wire   [0:0] icmp_ln7_3_fu_419_p2;
wire   [31:0] add_ln7_3_fu_424_p2;
reg   [31:0] add_ln7_3_reg_702;
wire   [0:0] icmp_ln7_4_fu_429_p2;
wire   [31:0] add_ln7_4_fu_434_p2;
reg   [31:0] add_ln7_4_reg_711;
wire   [0:0] icmp_ln7_5_fu_439_p2;
wire   [31:0] add_ln7_5_fu_444_p2;
reg   [31:0] add_ln7_5_reg_720;
wire   [0:0] icmp_ln7_6_fu_449_p2;
wire   [31:0] add_ln7_6_fu_454_p2;
reg   [31:0] add_ln7_6_reg_729;
wire   [0:0] icmp_ln7_7_fu_459_p2;
wire   [31:0] add_ln7_7_fu_464_p2;
reg   [31:0] add_ln7_7_reg_738;
wire   [0:0] icmp_ln7_8_fu_469_p2;
wire   [31:0] add_ln7_8_fu_474_p2;
reg   [31:0] add_ln7_8_reg_747;
wire   [0:0] icmp_ln7_9_fu_479_p2;
wire   [31:0] add_ln7_9_fu_484_p2;
reg   [31:0] add_ln7_9_reg_756;
wire   [0:0] icmp_ln7_10_fu_489_p2;
wire   [31:0] add_ln7_10_fu_494_p2;
reg   [31:0] add_ln7_10_reg_765;
wire   [0:0] icmp_ln7_11_fu_499_p2;
wire   [31:0] add_ln7_11_fu_504_p2;
reg   [31:0] add_ln7_11_reg_774;
wire   [0:0] icmp_ln7_12_fu_509_p2;
wire   [31:0] add_ln7_12_fu_514_p2;
reg   [31:0] add_ln7_12_reg_783;
wire   [0:0] icmp_ln7_13_fu_519_p2;
wire   [31:0] add_ln7_13_fu_524_p2;
reg   [31:0] add_ln7_13_reg_792;
wire   [0:0] icmp_ln7_14_fu_529_p2;
wire   [31:0] add_ln7_14_fu_534_p2;
reg   [31:0] add_ln7_14_reg_801;
wire   [0:0] icmp_ln7_15_fu_539_p2;
wire   [63:0] zext_ln7_4_fu_554_p1;
reg   [63:0] zext_ln7_4_reg_810;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln7_5_fu_558_p1;
reg   [63:0] zext_ln7_5_reg_820;
wire   [63:0] zext_ln7_6_fu_562_p1;
reg   [63:0] zext_ln7_6_reg_830;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] zext_ln7_7_fu_566_p1;
reg   [63:0] zext_ln7_7_reg_840;
wire   [63:0] zext_ln7_8_fu_570_p1;
reg   [63:0] zext_ln7_8_reg_850;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] zext_ln7_9_fu_574_p1;
reg   [63:0] zext_ln7_9_reg_860;
wire   [63:0] zext_ln7_10_fu_578_p1;
reg   [63:0] zext_ln7_10_reg_870;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln7_11_fu_582_p1;
reg   [63:0] zext_ln7_11_reg_880;
wire   [63:0] zext_ln7_12_fu_586_p1;
reg   [63:0] zext_ln7_12_reg_890;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln7_13_fu_590_p1;
reg   [63:0] zext_ln7_13_reg_900;
wire   [63:0] zext_ln7_14_fu_594_p1;
reg   [63:0] zext_ln7_14_reg_910;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] zext_ln7_15_fu_598_p1;
reg   [63:0] zext_ln7_15_reg_920;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg    ap_predicate_pred342_state4;
reg    ap_predicate_pred345_state4;
wire    ap_block_pp0_stage4;
reg    ap_predicate_pred361_state5;
reg    ap_predicate_pred366_state5;
wire    ap_block_pp0_stage5;
reg    ap_predicate_pred384_state6;
reg    ap_predicate_pred389_state6;
wire    ap_block_pp0_stage6;
reg    ap_predicate_pred407_state7;
reg    ap_predicate_pred412_state7;
wire    ap_block_pp0_stage7;
reg    ap_predicate_pred430_state8;
reg    ap_predicate_pred435_state8;
reg    ap_predicate_pred453_state9;
reg    ap_predicate_pred458_state9;
reg   [31:0] i_fu_62;
wire   [31:0] add_ln7_15_fu_544_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_i_35;
reg    a_ce1_local;
reg   [10:0] a_address1_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
reg    temp_we1_local;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_we0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
wire   [10:0] trunc_ln7_fu_373_p1;
wire   [10:0] add_ln7_fu_377_p2;
wire   [31:0] add_ln7_1_fu_394_p2;
wire   [31:0] add_ln7_2_fu_409_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_62 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_62 <= start_r;
    end else if (((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_15_fu_539_p2 == 1'd0) & (icmp_ln7_14_fu_529_p2 == 1'd0) & (icmp_ln7_13_fu_519_p2 == 1'd0) & (icmp_ln7_12_fu_509_p2 == 1'd0) & (icmp_ln7_11_fu_499_p2 == 1'd0) & (icmp_ln7_10_fu_489_p2 == 1'd0) & (icmp_ln7_9_fu_479_p2 == 1'd0) & (icmp_ln7_8_fu_469_p2 == 1'd0) & (icmp_ln7_7_fu_459_p2 == 1'd0) & (icmp_ln7_6_fu_449_p2 == 1'd0) & (icmp_ln7_5_fu_439_p2 == 1'd0) & (icmp_ln7_4_fu_429_p2 == 1'd0) & (icmp_ln7_3_fu_419_p2 == 1'd0) & (icmp_ln7_2_fu_404_p2 == 1'd0))) begin
        i_fu_62 <= add_ln7_15_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln7_10_reg_765 <= add_ln7_10_fu_494_p2;
        add_ln7_11_reg_774 <= add_ln7_11_fu_504_p2;
        add_ln7_12_reg_783 <= add_ln7_12_fu_514_p2;
        add_ln7_13_reg_792 <= add_ln7_13_fu_524_p2;
        add_ln7_14_reg_801 <= add_ln7_14_fu_534_p2;
        add_ln7_3_reg_702 <= add_ln7_3_fu_424_p2;
        add_ln7_4_reg_711 <= add_ln7_4_fu_434_p2;
        add_ln7_5_reg_720 <= add_ln7_5_fu_444_p2;
        add_ln7_6_reg_729 <= add_ln7_6_fu_454_p2;
        add_ln7_7_reg_738 <= add_ln7_7_fu_464_p2;
        add_ln7_8_reg_747 <= add_ln7_8_fu_474_p2;
        add_ln7_9_reg_756 <= add_ln7_9_fu_484_p2;
        icmp_ln7_10_reg_761 <= icmp_ln7_10_fu_489_p2;
        icmp_ln7_11_reg_770 <= icmp_ln7_11_fu_499_p2;
        icmp_ln7_12_reg_779 <= icmp_ln7_12_fu_509_p2;
        icmp_ln7_13_reg_788 <= icmp_ln7_13_fu_519_p2;
        icmp_ln7_14_reg_797 <= icmp_ln7_14_fu_529_p2;
        icmp_ln7_15_reg_806 <= icmp_ln7_15_fu_539_p2;
        icmp_ln7_2_reg_679 <= icmp_ln7_2_fu_404_p2;
        icmp_ln7_3_reg_693 <= icmp_ln7_3_fu_419_p2;
        icmp_ln7_4_reg_707 <= icmp_ln7_4_fu_429_p2;
        icmp_ln7_5_reg_716 <= icmp_ln7_5_fu_439_p2;
        icmp_ln7_6_reg_725 <= icmp_ln7_6_fu_449_p2;
        icmp_ln7_7_reg_734 <= icmp_ln7_7_fu_459_p2;
        icmp_ln7_8_reg_743 <= icmp_ln7_8_fu_469_p2;
        icmp_ln7_9_reg_752 <= icmp_ln7_9_fu_479_p2;
        zext_ln7_2_reg_674[31 : 0] <= zext_ln7_2_fu_399_p1[31 : 0];
        zext_ln7_3_reg_688[31 : 0] <= zext_ln7_3_fu_414_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred342_state4 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0));
        ap_predicate_pred345_state4 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0));
        zext_ln7_4_reg_810[31 : 0] <= zext_ln7_4_fu_554_p1[31 : 0];
        zext_ln7_5_reg_820[31 : 0] <= zext_ln7_5_fu_558_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred361_state5 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0));
        ap_predicate_pred366_state5 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0));
        zext_ln7_6_reg_830[31 : 0] <= zext_ln7_6_fu_562_p1[31 : 0];
        zext_ln7_7_reg_840[31 : 0] <= zext_ln7_7_fu_566_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_predicate_pred384_state6 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0));
        ap_predicate_pred389_state6 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0));
        zext_ln7_8_reg_850[31 : 0] <= zext_ln7_8_fu_570_p1[31 : 0];
        zext_ln7_9_reg_860[31 : 0] <= zext_ln7_9_fu_574_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_predicate_pred407_state7 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0));
        ap_predicate_pred412_state7 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0) & (icmp_ln7_11_reg_770 == 1'd0));
        zext_ln7_10_reg_870[31 : 0] <= zext_ln7_10_fu_578_p1[31 : 0];
        zext_ln7_11_reg_880[31 : 0] <= zext_ln7_11_fu_582_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_predicate_pred430_state8 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0) & (icmp_ln7_11_reg_770 == 1'd0) & (icmp_ln7_12_reg_779 == 1'd0));
        ap_predicate_pred435_state8 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0) & (icmp_ln7_11_reg_770 == 1'd0) & (icmp_ln7_12_reg_779 == 1'd0) & (icmp_ln7_13_reg_788 == 1'd0));
        zext_ln7_12_reg_890[31 : 0] <= zext_ln7_12_fu_586_p1[31 : 0];
        zext_ln7_13_reg_900[31 : 0] <= zext_ln7_13_fu_590_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_predicate_pred453_state9 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0) & (icmp_ln7_11_reg_770 == 1'd0) & (icmp_ln7_12_reg_779 == 1'd0) & (icmp_ln7_13_reg_788 == 1'd0) & (icmp_ln7_14_reg_797 == 1'd0));
        ap_predicate_pred458_state9 <= ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (icmp_ln7_4_reg_707 == 1'd0) & (icmp_ln7_5_reg_716 == 1'd0) & (icmp_ln7_6_reg_725 == 1'd0) & (icmp_ln7_7_reg_734 == 1'd0) & (icmp_ln7_8_reg_743 == 1'd0) & (icmp_ln7_9_reg_752 == 1'd0) & (icmp_ln7_10_reg_761 == 1'd0) & (icmp_ln7_11_reg_770 == 1'd0) & (icmp_ln7_12_reg_779 == 1'd0) & (icmp_ln7_13_reg_788 == 1'd0) & (icmp_ln7_14_reg_797 == 1'd0) & (icmp_ln7_15_reg_806 == 1'd0));
        zext_ln7_14_reg_910[31 : 0] <= zext_ln7_14_fu_594_p1[31 : 0];
        zext_ln7_15_reg_920[31 : 0] <= zext_ln7_15_fu_598_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_35_reg_627 <= ap_sig_allocacmp_i_35;
        icmp_ln7_1_reg_665 <= icmp_ln7_1_fu_388_p2;
        icmp_ln7_reg_646 <= icmp_ln7_fu_362_p2;
        zext_ln7_1_reg_660[10 : 0] <= zext_ln7_1_fu_383_p1[10 : 0];
        zext_ln7_reg_650[31 : 0] <= zext_ln7_fu_368_p1[31 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            a_address0_local = zext_ln7_15_fu_598_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            a_address0_local = zext_ln7_13_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            a_address0_local = zext_ln7_11_fu_582_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            a_address0_local = zext_ln7_9_fu_574_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address0_local = zext_ln7_7_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address0_local = zext_ln7_5_fu_558_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0_local = zext_ln7_3_fu_414_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0_local = zext_ln7_1_fu_383_p1;
        end else begin
            a_address0_local = 'bx;
        end
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            a_address1_local = zext_ln7_14_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            a_address1_local = zext_ln7_12_fu_586_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            a_address1_local = zext_ln7_10_fu_578_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            a_address1_local = zext_ln7_8_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address1_local = zext_ln7_6_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address1_local = zext_ln7_4_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address1_local = zext_ln7_2_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address1_local = zext_ln7_fu_368_p1;
        end else begin
            a_address1_local = 'bx;
        end
    end else begin
        a_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_ce1_local = 1'b1;
    end else begin
        a_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln7_reg_646 == 1'd1) | ((icmp_ln7_1_reg_665 == 1'd0) | ((icmp_ln7_2_reg_679 == 1'd1) | ((icmp_ln7_3_reg_693 == 1'd1) | ((icmp_ln7_4_reg_707 == 1'd1) | ((icmp_ln7_5_reg_716 == 1'd1) | ((icmp_ln7_6_reg_725 == 1'd1) | ((icmp_ln7_7_reg_734 == 1'd1) | ((icmp_ln7_8_reg_743 == 1'd1) | ((icmp_ln7_9_reg_752 == 1'd1) | ((icmp_ln7_10_reg_761 == 1'd1) | ((icmp_ln7_11_reg_770 == 1'd1) | ((icmp_ln7_12_reg_779 == 1'd1) | ((icmp_ln7_13_reg_788 == 1'd1) | ((icmp_ln7_14_reg_797 == 1'd1) | (icmp_ln7_15_reg_806 == 1'd1)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln7_reg_646 == 1'd1) | ((icmp_ln7_1_reg_665 == 1'd0) | ((icmp_ln7_2_reg_679 == 1'd1) | ((icmp_ln7_3_reg_693 == 1'd1) | ((icmp_ln7_4_reg_707 == 1'd1) | ((icmp_ln7_5_reg_716 == 1'd1) | ((icmp_ln7_6_reg_725 == 1'd1) | ((icmp_ln7_7_reg_734 == 1'd1) | ((icmp_ln7_8_reg_743 == 1'd1) | ((icmp_ln7_9_reg_752 == 1'd1) | ((icmp_ln7_10_reg_761 == 1'd1) | ((icmp_ln7_11_reg_770 == 1'd1) | ((icmp_ln7_12_reg_779 == 1'd1) | ((icmp_ln7_13_reg_788 == 1'd1) | ((icmp_ln7_14_reg_797 == 1'd1) | (icmp_ln7_15_reg_806 == 1'd1)))))))))))))))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_35 = start_r;
    end else begin
        ap_sig_allocacmp_i_35 = i_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln7_15_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        temp_address0_local = zext_ln7_13_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_address0_local = zext_ln7_11_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_address0_local = zext_ln7_9_reg_860;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_address0_local = zext_ln7_7_reg_840;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address0_local = zext_ln7_5_reg_820;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address0_local = zext_ln7_3_reg_688;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address0_local = zext_ln7_1_reg_660;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln7_14_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        temp_address1_local = zext_ln7_12_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_address1_local = zext_ln7_10_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_address1_local = zext_ln7_8_reg_850;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_address1_local = zext_ln7_6_reg_830;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address1_local = zext_ln7_4_reg_810;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address1_local = zext_ln7_2_reg_674;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address1_local = zext_ln7_reg_650;
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_predicate_pred458_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred435_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (icmp_ln7_3_reg_693 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_predicate_pred412_state7 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_predicate_pred389_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001)& (ap_predicate_pred366_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred345_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_predicate_pred453_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred430_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln7_reg_646 == 1'd0) & (icmp_ln7_1_reg_665 == 1'd1) & (icmp_ln7_2_reg_679 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln7_reg_646 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_predicate_pred407_state7 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_predicate_pred384_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_predicate_pred361_state5 == 1'b1) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred342_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_address1 = a_address1_local;
assign a_ce0 = a_ce0_local;
assign a_ce1 = a_ce1_local;
assign add_ln7_10_fu_494_p2 = (i_35_reg_627 + 32'd11);
assign add_ln7_11_fu_504_p2 = (i_35_reg_627 + 32'd12);
assign add_ln7_12_fu_514_p2 = (i_35_reg_627 + 32'd13);
assign add_ln7_13_fu_524_p2 = (i_35_reg_627 + 32'd14);
assign add_ln7_14_fu_534_p2 = (i_35_reg_627 + 32'd15);
assign add_ln7_15_fu_544_p2 = (i_35_reg_627 + 32'd16);
assign add_ln7_1_fu_394_p2 = (i_35_reg_627 + 32'd2);
assign add_ln7_2_fu_409_p2 = (i_35_reg_627 + 32'd3);
assign add_ln7_3_fu_424_p2 = (i_35_reg_627 + 32'd4);
assign add_ln7_4_fu_434_p2 = (i_35_reg_627 + 32'd5);
assign add_ln7_5_fu_444_p2 = (i_35_reg_627 + 32'd6);
assign add_ln7_6_fu_454_p2 = (i_35_reg_627 + 32'd7);
assign add_ln7_7_fu_464_p2 = (i_35_reg_627 + 32'd8);
assign add_ln7_8_fu_474_p2 = (i_35_reg_627 + 32'd9);
assign add_ln7_9_fu_484_p2 = (i_35_reg_627 + 32'd10);
assign add_ln7_fu_377_p2 = (trunc_ln7_fu_373_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_10_fu_489_p2 = (($signed(add_ln7_9_fu_484_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_11_fu_499_p2 = (($signed(add_ln7_10_fu_494_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_12_fu_509_p2 = (($signed(add_ln7_11_fu_504_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_13_fu_519_p2 = (($signed(add_ln7_12_fu_514_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_14_fu_529_p2 = (($signed(add_ln7_13_fu_524_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_15_fu_539_p2 = (($signed(add_ln7_14_fu_534_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_1_fu_388_p2 = (($signed(ap_sig_allocacmp_i_35) < $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_404_p2 = (($signed(add_ln7_1_fu_394_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_419_p2 = (($signed(add_ln7_2_fu_409_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_4_fu_429_p2 = (($signed(add_ln7_3_fu_424_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_5_fu_439_p2 = (($signed(add_ln7_4_fu_434_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_6_fu_449_p2 = (($signed(add_ln7_5_fu_444_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_7_fu_459_p2 = (($signed(add_ln7_6_fu_454_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_8_fu_469_p2 = (($signed(add_ln7_7_fu_464_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_9_fu_479_p2 = (($signed(add_ln7_8_fu_474_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_362_p2 = (($signed(ap_sig_allocacmp_i_35) > $signed(m)) ? 1'b1 : 1'b0);
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = a_q0;
assign temp_d1 = a_q1;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln7_fu_373_p1 = ap_sig_allocacmp_i_35[10:0];
assign zext_ln7_10_fu_578_p1 = add_ln7_9_reg_756;
assign zext_ln7_11_fu_582_p1 = add_ln7_10_reg_765;
assign zext_ln7_12_fu_586_p1 = add_ln7_11_reg_774;
assign zext_ln7_13_fu_590_p1 = add_ln7_12_reg_783;
assign zext_ln7_14_fu_594_p1 = add_ln7_13_reg_792;
assign zext_ln7_15_fu_598_p1 = add_ln7_14_reg_801;
assign zext_ln7_1_fu_383_p1 = add_ln7_fu_377_p2;
assign zext_ln7_2_fu_399_p1 = add_ln7_1_fu_394_p2;
assign zext_ln7_3_fu_414_p1 = add_ln7_2_fu_409_p2;
assign zext_ln7_4_fu_554_p1 = add_ln7_3_reg_702;
assign zext_ln7_5_fu_558_p1 = add_ln7_4_reg_711;
assign zext_ln7_6_fu_562_p1 = add_ln7_5_reg_720;
assign zext_ln7_7_fu_566_p1 = add_ln7_6_reg_729;
assign zext_ln7_8_fu_570_p1 = add_ln7_7_reg_738;
assign zext_ln7_9_fu_574_p1 = add_ln7_8_reg_747;
assign zext_ln7_fu_368_p1 = ap_sig_allocacmp_i_35;
always @ (posedge ap_clk) begin
    zext_ln7_reg_650[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_1_reg_660[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln7_2_reg_674[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_3_reg_688[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_4_reg_810[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_5_reg_820[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_6_reg_830[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_7_reg_840[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_8_reg_850[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_9_reg_860[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_10_reg_870[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_11_reg_880[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_12_reg_890[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_13_reg_900[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_14_reg_910[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_15_reg_920[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule 