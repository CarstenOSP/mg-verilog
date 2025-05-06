
module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] empty;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln86_15_fu_839_p2;
wire   [0:0] icmp_ln86_14_fu_808_p2;
wire   [0:0] icmp_ln86_13_fu_787_p2;
wire   [0:0] icmp_ln86_12_fu_756_p2;
wire   [0:0] icmp_ln86_11_fu_735_p2;
wire   [0:0] icmp_ln86_10_fu_704_p2;
wire   [0:0] icmp_ln86_9_fu_683_p2;
wire   [0:0] icmp_ln86_8_fu_652_p2;
wire   [0:0] icmp_ln86_7_fu_631_p2;
wire   [0:0] icmp_ln86_6_fu_600_p2;
reg   [0:0] icmp_ln86_5_reg_1009;
reg   [0:0] icmp_ln86_4_reg_1000;
reg   [0:0] icmp_ln86_3_reg_996;
reg   [0:0] icmp_ln86_2_reg_987;
reg   [0:0] icmp_ln86_1_reg_968;
reg   [0:0] icmp_ln86_reg_959;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_1_reg_938;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln86_fu_388_p2;
reg   [0:0] icmp_ln86_reg_959_pp0_iter1_reg;
reg   [6:0] lshr_ln_reg_963;
wire   [0:0] icmp_ln86_1_fu_420_p2;
reg   [0:0] icmp_ln86_1_reg_968_pp0_iter1_reg;
wire   [0:0] trunc_ln86_fu_426_p1;
reg   [0:0] trunc_ln86_reg_972;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] trunc_ln86_reg_972_pp0_iter1_reg;
wire   [6:0] lshr_ln18_2_fu_429_p4;
reg   [6:0] lshr_ln18_2_reg_976;
reg   [6:0] lshr_ln18_2_reg_976_pp0_iter1_reg;
wire   [0:0] icmp_ln86_2_fu_464_p2;
reg   [0:0] icmp_ln86_2_reg_987_pp0_iter1_reg;
reg   [6:0] lshr_ln86_1_reg_991;
wire   [0:0] icmp_ln86_3_fu_495_p2;
reg   [0:0] icmp_ln86_3_reg_996_pp0_iter1_reg;
wire   [0:0] icmp_ln86_4_fu_532_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] icmp_ln86_4_reg_1000_pp0_iter1_reg;
reg   [6:0] lshr_ln86_2_reg_1004;
wire   [0:0] icmp_ln86_5_fu_563_p2;
reg   [0:0] icmp_ln86_5_reg_1009_pp0_iter1_reg;
reg   [0:0] icmp_ln86_6_reg_1013;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln86_6_reg_1013_pp0_iter1_reg;
reg   [6:0] lshr_ln86_3_reg_1017;
reg   [0:0] icmp_ln86_7_reg_1022;
reg   [0:0] icmp_ln86_7_reg_1022_pp0_iter1_reg;
reg   [0:0] icmp_ln86_8_reg_1026;
reg   [0:0] icmp_ln86_8_reg_1026_pp0_iter1_reg;
reg   [6:0] lshr_ln86_4_reg_1030;
reg   [0:0] icmp_ln86_9_reg_1035;
reg   [0:0] icmp_ln86_9_reg_1035_pp0_iter1_reg;
reg   [0:0] icmp_ln86_10_reg_1039;
reg   [0:0] icmp_ln86_10_reg_1039_pp0_iter1_reg;
reg   [6:0] lshr_ln86_5_reg_1043;
reg   [0:0] icmp_ln86_11_reg_1048;
reg   [0:0] icmp_ln86_11_reg_1048_pp0_iter1_reg;
reg   [0:0] icmp_ln86_12_reg_1052;
reg   [0:0] icmp_ln86_12_reg_1052_pp0_iter1_reg;
reg   [6:0] lshr_ln86_6_reg_1056;
reg   [0:0] icmp_ln86_13_reg_1061;
reg   [0:0] icmp_ln86_13_reg_1061_pp0_iter1_reg;
reg   [0:0] icmp_ln86_14_reg_1065;
reg   [0:0] icmp_ln86_14_reg_1065_pp0_iter1_reg;
reg   [6:0] lshr_ln86_7_reg_1069;
reg   [0:0] icmp_ln86_15_reg_1074;
reg   [0:0] icmp_ln86_15_reg_1074_pp0_iter1_reg;
wire   [63:0] zext_ln86_13_fu_924_p1;
reg   [63:0] zext_ln86_13_reg_1078;
wire   [63:0] zext_ln86_14_fu_928_p1;
reg   [63:0] zext_ln86_14_reg_1084;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln18_fu_438_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_fu_444_p1;
wire   [63:0] zext_ln86_1_fu_506_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln86_2_fu_512_p1;
wire   [63:0] zext_ln86_3_fu_574_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln86_4_fu_580_p1;
wire   [63:0] zext_ln86_5_fu_860_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_6_fu_866_p1;
wire   [63:0] zext_ln86_7_fu_876_p1;
reg    ap_predicate_pred332_state6;
reg    ap_predicate_pred337_state6;
wire   [63:0] zext_ln86_8_fu_882_p1;
reg    ap_predicate_pred344_state6;
reg    ap_predicate_pred349_state6;
wire   [63:0] zext_ln86_9_fu_892_p1;
reg    ap_predicate_pred370_state7;
reg    ap_predicate_pred385_state7;
wire   [63:0] zext_ln86_10_fu_898_p1;
reg    ap_predicate_pred392_state7;
reg    ap_predicate_pred397_state7;
wire   [63:0] zext_ln86_11_fu_908_p1;
reg    ap_predicate_pred421_state8;
reg    ap_predicate_pred439_state8;
wire   [63:0] zext_ln86_12_fu_914_p1;
reg    ap_predicate_pred446_state8;
reg    ap_predicate_pred451_state8;
reg    ap_predicate_pred471_state9;
reg    ap_predicate_pred486_state9;
reg    ap_predicate_pred492_state9;
reg    ap_predicate_pred497_state9;
reg   [31:0] b_str_idx_fu_82;
wire   [31:0] add_ln86_22_fu_845_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_b_str_idx_1;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg   [6:0] alignedB_0_address1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg   [6:0] alignedB_1_address1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [23:0] tmp_1_fu_378_p4;
wire   [31:0] add_ln86_fu_394_p2;
wire   [23:0] tmp_2_fu_410_p4;
wire   [31:0] add_ln86_1_fu_449_p2;
wire   [23:0] tmp_3_fu_454_p4;
wire   [31:0] add_ln86_3_fu_470_p2;
wire   [23:0] tmp_4_fu_485_p4;
wire   [6:0] add_ln86_2_fu_501_p2;
wire   [31:0] add_ln86_4_fu_517_p2;
wire   [23:0] tmp_5_fu_522_p4;
wire   [31:0] add_ln86_6_fu_538_p2;
wire   [23:0] tmp_6_fu_553_p4;
wire   [6:0] add_ln86_5_fu_569_p2;
wire   [31:0] add_ln86_7_fu_585_p2;
wire   [23:0] tmp_7_fu_590_p4;
wire   [31:0] add_ln86_9_fu_606_p2;
wire   [23:0] tmp_8_fu_621_p4;
wire   [31:0] add_ln86_10_fu_637_p2;
wire   [23:0] tmp_9_fu_642_p4;
wire   [31:0] add_ln86_12_fu_658_p2;
wire   [23:0] tmp_10_fu_673_p4;
wire   [31:0] add_ln86_13_fu_689_p2;
wire   [23:0] tmp_11_fu_694_p4;
wire   [31:0] add_ln86_15_fu_710_p2;
wire   [23:0] tmp_12_fu_725_p4;
wire   [31:0] add_ln86_16_fu_741_p2;
wire   [23:0] tmp_13_fu_746_p4;
wire   [31:0] add_ln86_18_fu_762_p2;
wire   [23:0] tmp_14_fu_777_p4;
wire   [31:0] add_ln86_19_fu_793_p2;
wire   [23:0] tmp_15_fu_798_p4;
wire   [31:0] add_ln86_21_fu_814_p2;
wire   [23:0] tmp_16_fu_829_p4;
wire   [6:0] add_ln86_8_fu_855_p2;
wire   [6:0] add_ln86_11_fu_871_p2;
wire   [6:0] add_ln86_14_fu_887_p2;
wire   [6:0] add_ln86_17_fu_903_p2;
wire   [6:0] add_ln86_20_fu_919_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1081;
reg    ap_condition_1087;
reg    ap_condition_1094;
reg    ap_condition_1101;
reg    ap_condition_1108;
reg    ap_condition_1115;
reg    ap_condition_1122;
reg    ap_condition_1127;
reg    ap_condition_1130;
reg    ap_condition_1133;
reg    ap_condition_1136;
reg    ap_condition_1139;
reg    ap_condition_1142;
reg    ap_condition_1145;
reg    ap_condition_1148;
reg    ap_condition_1151;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_82 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_fu_82 <= empty;
    end else if (((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_6_fu_600_p2 == 1'd1) & (icmp_ln86_7_fu_631_p2 == 1'd1) & (icmp_ln86_8_fu_652_p2 == 1'd1) & (icmp_ln86_9_fu_683_p2 == 1'd1) & (icmp_ln86_10_fu_704_p2 == 1'd1) & (icmp_ln86_11_fu_735_p2 == 1'd1) & (icmp_ln86_12_fu_756_p2 == 1'd1) & (icmp_ln86_13_fu_787_p2 == 1'd1) & (icmp_ln86_14_fu_808_p2 == 1'd1) & (icmp_ln86_15_fu_839_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_str_idx_fu_82 <= add_ln86_22_fu_845_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred332_state6 <= ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0));
        ap_predicate_pred337_state6 <= ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1));
        ap_predicate_pred344_state6 <= ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0));
        ap_predicate_pred349_state6 <= ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1));
        b_str_idx_1_reg_938 <= ap_sig_allocacmp_b_str_idx_1;
        icmp_ln86_1_reg_968 <= icmp_ln86_1_fu_420_p2;
        icmp_ln86_1_reg_968_pp0_iter1_reg <= icmp_ln86_1_reg_968;
        icmp_ln86_reg_959 <= icmp_ln86_fu_388_p2;
        icmp_ln86_reg_959_pp0_iter1_reg <= icmp_ln86_reg_959;
        lshr_ln_reg_963 <= {{add_ln86_fu_394_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred370_state7 <= ((icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred385_state7 <= ((icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred392_state7 <= ((icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred397_state7 <= ((icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        icmp_ln86_2_reg_987 <= icmp_ln86_2_fu_464_p2;
        icmp_ln86_2_reg_987_pp0_iter1_reg <= icmp_ln86_2_reg_987;
        icmp_ln86_3_reg_996 <= icmp_ln86_3_fu_495_p2;
        icmp_ln86_3_reg_996_pp0_iter1_reg <= icmp_ln86_3_reg_996;
        lshr_ln18_2_reg_976 <= {{b_str_idx_1_reg_938[7:1]}};
        lshr_ln18_2_reg_976_pp0_iter1_reg <= lshr_ln18_2_reg_976;
        lshr_ln86_1_reg_991 <= {{add_ln86_3_fu_470_p2[7:1]}};
        trunc_ln86_reg_972 <= trunc_ln86_fu_426_p1;
        trunc_ln86_reg_972_pp0_iter1_reg <= trunc_ln86_reg_972;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred421_state8 <= ((icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred439_state8 <= ((icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred446_state8 <= ((icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred451_state8 <= ((icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        icmp_ln86_4_reg_1000 <= icmp_ln86_4_fu_532_p2;
        icmp_ln86_4_reg_1000_pp0_iter1_reg <= icmp_ln86_4_reg_1000;
        icmp_ln86_5_reg_1009 <= icmp_ln86_5_fu_563_p2;
        icmp_ln86_5_reg_1009_pp0_iter1_reg <= icmp_ln86_5_reg_1009;
        lshr_ln86_2_reg_1004 <= {{add_ln86_6_fu_538_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred471_state9 <= ((icmp_ln86_14_reg_1065 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1009_pp0_iter1_reg == 1'd1) & (icmp_ln86_4_reg_1000_pp0_iter1_reg == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred486_state9 <= ((icmp_ln86_14_reg_1065 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1009_pp0_iter1_reg == 1'd1) & (icmp_ln86_4_reg_1000_pp0_iter1_reg == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred492_state9 <= ((icmp_ln86_15_reg_1074 == 1'd1) & (icmp_ln86_14_reg_1065 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1009_pp0_iter1_reg == 1'd1) & (icmp_ln86_4_reg_1000_pp0_iter1_reg == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd0) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        ap_predicate_pred497_state9 <= ((icmp_ln86_15_reg_1074 == 1'd1) & (icmp_ln86_14_reg_1065 == 1'd1) & (icmp_ln86_13_reg_1061 == 1'd1) & (icmp_ln86_12_reg_1052 == 1'd1) & (icmp_ln86_11_reg_1048 == 1'd1) & (icmp_ln86_10_reg_1039 == 1'd1) & (icmp_ln86_9_reg_1035 == 1'd1) & (icmp_ln86_8_reg_1026 == 1'd1) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (icmp_ln86_5_reg_1009_pp0_iter1_reg == 1'd1) & (icmp_ln86_4_reg_1000_pp0_iter1_reg == 1'd1) & (icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd1) & (icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_972_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_959_pp0_iter1_reg == 1'd1));
        icmp_ln86_10_reg_1039 <= icmp_ln86_10_fu_704_p2;
        icmp_ln86_10_reg_1039_pp0_iter1_reg <= icmp_ln86_10_reg_1039;
        icmp_ln86_11_reg_1048 <= icmp_ln86_11_fu_735_p2;
        icmp_ln86_11_reg_1048_pp0_iter1_reg <= icmp_ln86_11_reg_1048;
        icmp_ln86_12_reg_1052 <= icmp_ln86_12_fu_756_p2;
        icmp_ln86_12_reg_1052_pp0_iter1_reg <= icmp_ln86_12_reg_1052;
        icmp_ln86_13_reg_1061 <= icmp_ln86_13_fu_787_p2;
        icmp_ln86_13_reg_1061_pp0_iter1_reg <= icmp_ln86_13_reg_1061;
        icmp_ln86_14_reg_1065 <= icmp_ln86_14_fu_808_p2;
        icmp_ln86_14_reg_1065_pp0_iter1_reg <= icmp_ln86_14_reg_1065;
        icmp_ln86_15_reg_1074 <= icmp_ln86_15_fu_839_p2;
        icmp_ln86_15_reg_1074_pp0_iter1_reg <= icmp_ln86_15_reg_1074;
        icmp_ln86_6_reg_1013 <= icmp_ln86_6_fu_600_p2;
        icmp_ln86_6_reg_1013_pp0_iter1_reg <= icmp_ln86_6_reg_1013;
        icmp_ln86_7_reg_1022 <= icmp_ln86_7_fu_631_p2;
        icmp_ln86_7_reg_1022_pp0_iter1_reg <= icmp_ln86_7_reg_1022;
        icmp_ln86_8_reg_1026 <= icmp_ln86_8_fu_652_p2;
        icmp_ln86_8_reg_1026_pp0_iter1_reg <= icmp_ln86_8_reg_1026;
        icmp_ln86_9_reg_1035 <= icmp_ln86_9_fu_683_p2;
        icmp_ln86_9_reg_1035_pp0_iter1_reg <= icmp_ln86_9_reg_1035;
        lshr_ln86_3_reg_1017 <= {{add_ln86_9_fu_606_p2[7:1]}};
        lshr_ln86_4_reg_1030 <= {{add_ln86_12_fu_658_p2[7:1]}};
        lshr_ln86_5_reg_1043 <= {{add_ln86_15_fu_710_p2[7:1]}};
        lshr_ln86_6_reg_1056 <= {{add_ln86_18_fu_762_p2[7:1]}};
        lshr_ln86_7_reg_1069 <= {{add_ln86_21_fu_814_p2[7:1]}};
        zext_ln86_13_reg_1078[6 : 0] <= zext_ln86_13_fu_924_p1[6 : 0];
        zext_ln86_14_reg_1084[6 : 0] <= zext_ln86_14_fu_928_p1[6 : 0];
    end
end
always @ (*) begin
    if (((ap_predicate_pred497_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_address0_local = zext_ln86_14_reg_1084;
    end else if (((ap_predicate_pred471_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_address0_local = zext_ln86_13_reg_1078;
    end else if (((ap_predicate_pred451_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_0_address0_local = zext_ln86_12_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_predicate_pred421_state8 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_0_address0_local = zext_ln86_11_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_predicate_pred397_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_0_address0_local = zext_ln86_10_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_predicate_pred370_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_0_address0_local = zext_ln86_9_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred349_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_0_address0_local = zext_ln86_8_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred332_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_0_address0_local = zext_ln86_7_fu_876_p1;
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_959 == 1'd1)) begin
        if ((1'b1 == ap_condition_1127)) begin
            alignedB_0_address1_local = zext_ln86_6_fu_866_p1;
        end else if ((1'b1 == ap_condition_1122)) begin
            alignedB_0_address1_local = zext_ln86_5_fu_860_p1;
        end else if ((1'b1 == ap_condition_1115)) begin
            alignedB_0_address1_local = zext_ln86_4_fu_580_p1;
        end else if ((1'b1 == ap_condition_1108)) begin
            alignedB_0_address1_local = zext_ln86_3_fu_574_p1;
        end else if ((1'b1 == ap_condition_1101)) begin
            alignedB_0_address1_local = zext_ln86_2_fu_512_p1;
        end else if ((1'b1 == ap_condition_1094)) begin
            alignedB_0_address1_local = zext_ln86_1_fu_506_p1;
        end else if ((1'b1 == ap_condition_1087)) begin
            alignedB_0_address1_local = zext_ln86_fu_444_p1;
        end else if ((1'b1 == ap_condition_1081)) begin
            alignedB_0_address1_local = zext_ln18_fu_438_p1;
        end else begin
            alignedB_0_address1_local = 'bx;
        end
    end else begin
        alignedB_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred497_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred471_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred451_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred421_state8 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred397_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred370_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred349_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred332_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (trunc_ln86_fu_426_p1 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd0)))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_predicate_pred497_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred471_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred451_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred421_state8 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred397_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred370_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred349_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred332_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (trunc_ln86_fu_426_p1 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd0)))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred492_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_address0_local = zext_ln86_14_reg_1084;
    end else if (((ap_predicate_pred486_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_address0_local = zext_ln86_13_reg_1078;
    end else if (((ap_predicate_pred446_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_1_address0_local = zext_ln86_12_fu_914_p1;
    end else if (((ap_predicate_pred439_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_1_address0_local = zext_ln86_11_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_predicate_pred392_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_1_address0_local = zext_ln86_10_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_predicate_pred385_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_1_address0_local = zext_ln86_9_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred344_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_1_address0_local = zext_ln86_8_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred337_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_1_address0_local = zext_ln86_7_fu_876_p1;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_959 == 1'd1)) begin
        if ((1'b1 == ap_condition_1151)) begin
            alignedB_1_address1_local = zext_ln86_6_fu_866_p1;
        end else if ((1'b1 == ap_condition_1148)) begin
            alignedB_1_address1_local = zext_ln86_5_fu_860_p1;
        end else if ((1'b1 == ap_condition_1145)) begin
            alignedB_1_address1_local = zext_ln86_4_fu_580_p1;
        end else if ((1'b1 == ap_condition_1142)) begin
            alignedB_1_address1_local = zext_ln86_3_fu_574_p1;
        end else if ((1'b1 == ap_condition_1139)) begin
            alignedB_1_address1_local = zext_ln86_2_fu_512_p1;
        end else if ((1'b1 == ap_condition_1136)) begin
            alignedB_1_address1_local = zext_ln86_1_fu_506_p1;
        end else if ((1'b1 == ap_condition_1133)) begin
            alignedB_1_address1_local = zext_ln86_fu_444_p1;
        end else if ((1'b1 == ap_condition_1130)) begin
            alignedB_1_address1_local = zext_ln18_fu_438_p1;
        end else begin
            alignedB_1_address1_local = 'bx;
        end
    end else begin
        alignedB_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred486_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred446_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_predicate_pred439_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred392_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred385_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred344_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred337_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (trunc_ln86_fu_426_p1 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd1)))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_predicate_pred492_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred486_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred446_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_predicate_pred439_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred392_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_pred385_state7 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred344_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred337_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1)) | ((icmp_ln86_reg_959 == 1'd1) & (icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)& (trunc_ln86_fu_426_p1 == 1'd0)) | ((icmp_ln86_reg_959 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd1)))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln86_reg_959 == 1'd0) | ((icmp_ln86_1_reg_968 == 1'd0) | ((icmp_ln86_2_reg_987 == 1'd0) | ((icmp_ln86_3_reg_996 == 1'd0) | ((icmp_ln86_4_reg_1000 == 1'd0) | ((icmp_ln86_5_reg_1009 == 1'd0) | ((icmp_ln86_6_fu_600_p2 == 1'd0) | ((icmp_ln86_7_fu_631_p2 == 1'd0) | ((icmp_ln86_8_fu_652_p2 == 1'd0) | ((icmp_ln86_9_fu_683_p2 == 1'd0) | ((icmp_ln86_10_fu_704_p2 == 1'd0) | ((icmp_ln86_11_fu_735_p2 == 1'd0) | ((icmp_ln86_12_fu_756_p2 == 1'd0) | ((icmp_ln86_13_fu_787_p2 == 1'd0) | ((icmp_ln86_14_fu_808_p2 == 1'd0) | (icmp_ln86_15_fu_839_p2 == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_959_pp0_iter1_reg == 1'd0) | ((icmp_ln86_1_reg_968_pp0_iter1_reg == 1'd0) | ((icmp_ln86_2_reg_987_pp0_iter1_reg == 1'd0) | ((icmp_ln86_3_reg_996_pp0_iter1_reg == 1'd0) | ((icmp_ln86_4_reg_1000_pp0_iter1_reg == 1'd0) | ((icmp_ln86_5_reg_1009_pp0_iter1_reg == 1'd0) | ((icmp_ln86_6_reg_1013_pp0_iter1_reg == 1'd0) | ((icmp_ln86_7_reg_1022_pp0_iter1_reg == 1'd0) | ((icmp_ln86_8_reg_1026_pp0_iter1_reg == 1'd0) | ((icmp_ln86_9_reg_1035_pp0_iter1_reg == 1'd0) | ((icmp_ln86_10_reg_1039_pp0_iter1_reg == 1'd0) | ((icmp_ln86_11_reg_1048_pp0_iter1_reg == 1'd0) | ((icmp_ln86_12_reg_1052_pp0_iter1_reg == 1'd0) | ((icmp_ln86_13_reg_1061_pp0_iter1_reg == 1'd0) | ((icmp_ln86_15_reg_1074_pp0_iter1_reg == 1'd0) | (icmp_ln86_14_reg_1065_pp0_iter1_reg == 1'd0)))))))))))))))))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_str_idx_1 = empty;
    end else begin
        ap_sig_allocacmp_b_str_idx_1 = b_str_idx_fu_82;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln86_10_fu_637_p2 = (b_str_idx_1_reg_938 + 32'd8);
assign add_ln86_11_fu_871_p2 = (lshr_ln18_2_reg_976 + 7'd4);
assign add_ln86_12_fu_658_p2 = (b_str_idx_1_reg_938 + 32'd9);
assign add_ln86_13_fu_689_p2 = (b_str_idx_1_reg_938 + 32'd10);
assign add_ln86_14_fu_887_p2 = (lshr_ln18_2_reg_976_pp0_iter1_reg + 7'd5);
assign add_ln86_15_fu_710_p2 = (b_str_idx_1_reg_938 + 32'd11);
assign add_ln86_16_fu_741_p2 = (b_str_idx_1_reg_938 + 32'd12);
assign add_ln86_17_fu_903_p2 = (lshr_ln18_2_reg_976_pp0_iter1_reg + 7'd6);
assign add_ln86_18_fu_762_p2 = (b_str_idx_1_reg_938 + 32'd13);
assign add_ln86_19_fu_793_p2 = (b_str_idx_1_reg_938 + 32'd14);
assign add_ln86_1_fu_449_p2 = (b_str_idx_1_reg_938 + 32'd2);
assign add_ln86_20_fu_919_p2 = (lshr_ln18_2_reg_976_pp0_iter1_reg + 7'd7);
assign add_ln86_21_fu_814_p2 = (b_str_idx_1_reg_938 + 32'd15);
assign add_ln86_22_fu_845_p2 = (b_str_idx_1_reg_938 + 32'd16);
assign add_ln86_2_fu_501_p2 = (lshr_ln18_2_reg_976 + 7'd1);
assign add_ln86_3_fu_470_p2 = (b_str_idx_1_reg_938 + 32'd3);
assign add_ln86_4_fu_517_p2 = (b_str_idx_1_reg_938 + 32'd4);
assign add_ln86_5_fu_569_p2 = (lshr_ln18_2_reg_976 + 7'd2);
assign add_ln86_6_fu_538_p2 = (b_str_idx_1_reg_938 + 32'd5);
assign add_ln86_7_fu_585_p2 = (b_str_idx_1_reg_938 + 32'd6);
assign add_ln86_8_fu_855_p2 = (lshr_ln18_2_reg_976 + 7'd3);
assign add_ln86_9_fu_606_p2 = (b_str_idx_1_reg_938 + 32'd7);
assign add_ln86_fu_394_p2 = (ap_sig_allocacmp_b_str_idx_1 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = alignedB_0_address1_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = alignedB_1_address1_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
always @ (*) begin
    ap_condition_1081 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_1087 = ((icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_1094 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0));
end
always @ (*) begin
    ap_condition_1101 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1108 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0));
end
always @ (*) begin
    ap_condition_1115 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1122 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0));
end
always @ (*) begin
    ap_condition_1127 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1130 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_1133 = ((icmp_ln86_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_426_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_1136 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1139 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln86_reg_972 == 1'd0));
end
always @ (*) begin
    ap_condition_1142 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1145 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln86_reg_972 == 1'd0));
end
always @ (*) begin
    ap_condition_1148 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd1));
end
always @ (*) begin
    ap_condition_1151 = ((icmp_ln86_1_reg_968 == 1'd1) & (icmp_ln86_2_reg_987 == 1'd1) & (icmp_ln86_3_reg_996 == 1'd1) & (icmp_ln86_4_reg_1000 == 1'd1) & (icmp_ln86_5_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_1022 == 1'd1) & (icmp_ln86_6_reg_1013 == 1'd1) & (trunc_ln86_reg_972 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_10_fu_704_p2 = (($signed(tmp_11_fu_694_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_11_fu_735_p2 = (($signed(tmp_12_fu_725_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_12_fu_756_p2 = (($signed(tmp_13_fu_746_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_13_fu_787_p2 = (($signed(tmp_14_fu_777_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_14_fu_808_p2 = (($signed(tmp_15_fu_798_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_15_fu_839_p2 = (($signed(tmp_16_fu_829_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_1_fu_420_p2 = (($signed(tmp_2_fu_410_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_464_p2 = (($signed(tmp_3_fu_454_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_495_p2 = (($signed(tmp_4_fu_485_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_532_p2 = (($signed(tmp_5_fu_522_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_563_p2 = (($signed(tmp_6_fu_553_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_600_p2 = (($signed(tmp_7_fu_590_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_631_p2 = (($signed(tmp_8_fu_621_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_8_fu_652_p2 = (($signed(tmp_9_fu_642_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_9_fu_683_p2 = (($signed(tmp_10_fu_673_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_388_p2 = (($signed(tmp_1_fu_378_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_429_p4 = {{b_str_idx_1_reg_938[7:1]}};
assign tmp_10_fu_673_p4 = {{add_ln86_12_fu_658_p2[31:8]}};
assign tmp_11_fu_694_p4 = {{add_ln86_13_fu_689_p2[31:8]}};
assign tmp_12_fu_725_p4 = {{add_ln86_15_fu_710_p2[31:8]}};
assign tmp_13_fu_746_p4 = {{add_ln86_16_fu_741_p2[31:8]}};
assign tmp_14_fu_777_p4 = {{add_ln86_18_fu_762_p2[31:8]}};
assign tmp_15_fu_798_p4 = {{add_ln86_19_fu_793_p2[31:8]}};
assign tmp_16_fu_829_p4 = {{add_ln86_21_fu_814_p2[31:8]}};
assign tmp_1_fu_378_p4 = {{ap_sig_allocacmp_b_str_idx_1[31:8]}};
assign tmp_2_fu_410_p4 = {{add_ln86_fu_394_p2[31:8]}};
assign tmp_3_fu_454_p4 = {{add_ln86_1_fu_449_p2[31:8]}};
assign tmp_4_fu_485_p4 = {{add_ln86_3_fu_470_p2[31:8]}};
assign tmp_5_fu_522_p4 = {{add_ln86_4_fu_517_p2[31:8]}};
assign tmp_6_fu_553_p4 = {{add_ln86_6_fu_538_p2[31:8]}};
assign tmp_7_fu_590_p4 = {{add_ln86_7_fu_585_p2[31:8]}};
assign tmp_8_fu_621_p4 = {{add_ln86_9_fu_606_p2[31:8]}};
assign tmp_9_fu_642_p4 = {{add_ln86_10_fu_637_p2[31:8]}};
assign trunc_ln86_fu_426_p1 = b_str_idx_1_reg_938[0:0];
assign zext_ln18_fu_438_p1 = lshr_ln18_2_fu_429_p4;
assign zext_ln86_10_fu_898_p1 = lshr_ln86_5_reg_1043;
assign zext_ln86_11_fu_908_p1 = add_ln86_17_fu_903_p2;
assign zext_ln86_12_fu_914_p1 = lshr_ln86_6_reg_1056;
assign zext_ln86_13_fu_924_p1 = add_ln86_20_fu_919_p2;
assign zext_ln86_14_fu_928_p1 = lshr_ln86_7_reg_1069;
assign zext_ln86_1_fu_506_p1 = add_ln86_2_fu_501_p2;
assign zext_ln86_2_fu_512_p1 = lshr_ln86_1_reg_991;
assign zext_ln86_3_fu_574_p1 = add_ln86_5_fu_569_p2;
assign zext_ln86_4_fu_580_p1 = lshr_ln86_2_reg_1004;
assign zext_ln86_5_fu_860_p1 = add_ln86_8_fu_855_p2;
assign zext_ln86_6_fu_866_p1 = lshr_ln86_3_reg_1017;
assign zext_ln86_7_fu_876_p1 = add_ln86_11_fu_871_p2;
assign zext_ln86_8_fu_882_p1 = lshr_ln86_4_reg_1030;
assign zext_ln86_9_fu_892_p1 = add_ln86_14_fu_887_p2;
assign zext_ln86_fu_444_p1 = lshr_ln_reg_963;
always @ (posedge ap_clk) begin
    zext_ln86_13_reg_1078[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_14_reg_1084[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
