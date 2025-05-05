module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln7,sext_ln7_1,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln7;
input  [31:0] sext_ln7_1;
output  [9:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [9:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [9:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [9:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [9:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [9:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln7_7_reg_824;
reg   [0:0] icmp_ln7_6_reg_815;
reg   [0:0] icmp_ln7_5_reg_806;
reg   [0:0] icmp_ln7_4_reg_797;
reg   [0:0] icmp_ln7_3_reg_768;
reg   [0:0] icmp_ln7_2_reg_744;
reg   [0:0] icmp_ln7_1_reg_720;
reg   [0:0] icmp_ln7_reg_684;
reg    ap_condition_exit_pp0_iter1_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [32:0] sext_ln7_1_cast_fu_348_p1;
reg  signed [32:0] sext_ln7_1_cast_reg_658;
wire    ap_block_pp0_stage0_11001;
reg   [32:0] i_19_reg_670;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln7_fu_364_p2;
reg   [0:0] icmp_ln7_reg_684_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_684_pp0_iter2_reg;
wire   [0:0] trunc_ln7_fu_369_p1;
reg   [0:0] trunc_ln7_reg_688;
reg   [0:0] trunc_ln7_reg_688_pp0_iter1_reg;
reg   [0:0] trunc_ln7_reg_688_pp0_iter2_reg;
reg   [9:0] temp_addr_reg_710;
reg   [9:0] temp_1_addr_reg_715;
wire   [0:0] icmp_ln7_1_fu_417_p2;
reg   [0:0] icmp_ln7_1_reg_720_pp0_iter2_reg;
reg   [9:0] temp_addr_1_reg_734;
reg   [9:0] temp_1_addr_1_reg_739;
wire   [0:0] icmp_ln7_2_fu_444_p2;
reg   [0:0] icmp_ln7_2_reg_744_pp0_iter2_reg;
reg   [9:0] temp_addr_2_reg_758;
reg   [9:0] temp_addr_2_reg_758_pp0_iter2_reg;
reg   [9:0] temp_1_addr_2_reg_763;
reg   [9:0] temp_1_addr_2_reg_763_pp0_iter2_reg;
wire   [0:0] icmp_ln7_3_fu_472_p2;
reg   [0:0] icmp_ln7_3_reg_768_pp0_iter2_reg;
reg   [9:0] temp_addr_3_reg_782;
reg   [9:0] temp_addr_3_reg_782_pp0_iter2_reg;
reg   [9:0] temp_1_addr_3_reg_787;
reg   [9:0] temp_1_addr_3_reg_787_pp0_iter2_reg;
reg   [9:0] lshr_ln7_3_reg_792;
wire   [0:0] icmp_ln7_4_fu_492_p2;
reg   [0:0] icmp_ln7_4_reg_797_pp0_iter2_reg;
reg   [9:0] lshr_ln7_4_reg_801;
wire   [0:0] icmp_ln7_5_fu_512_p2;
reg   [0:0] icmp_ln7_5_reg_806_pp0_iter2_reg;
reg   [9:0] lshr_ln7_5_reg_810;
reg   [9:0] lshr_ln7_5_reg_810_pp0_iter2_reg;
wire   [0:0] icmp_ln7_6_fu_532_p2;
reg   [0:0] icmp_ln7_6_reg_815_pp0_iter2_reg;
reg   [9:0] lshr_ln7_6_reg_819;
reg   [9:0] lshr_ln7_6_reg_819_pp0_iter2_reg;
wire   [0:0] icmp_ln7_7_fu_552_p2;
reg   [0:0] icmp_ln7_7_reg_824_pp0_iter2_reg;
wire   [31:0] select_ln8_fu_567_p3;
reg   [31:0] select_ln8_reg_828;
wire   [31:0] select_ln8_1_fu_574_p3;
reg   [31:0] select_ln8_1_reg_834;
wire   [31:0] select_ln8_2_fu_581_p3;
reg   [31:0] select_ln8_2_reg_840;
wire   [31:0] select_ln8_3_fu_588_p3;
reg   [31:0] select_ln8_3_reg_846;
reg   [9:0] temp_addr_4_reg_862;
reg   [9:0] temp_addr_4_reg_862_pp0_iter2_reg;
reg   [9:0] temp_1_addr_4_reg_867;
reg   [9:0] temp_1_addr_4_reg_867_pp0_iter2_reg;
reg   [9:0] temp_addr_5_reg_882;
reg   [9:0] temp_addr_5_reg_882_pp0_iter2_reg;
reg   [9:0] temp_1_addr_5_reg_887;
reg   [9:0] temp_1_addr_5_reg_887_pp0_iter2_reg;
wire   [31:0] select_ln8_4_fu_609_p3;
reg   [31:0] select_ln8_4_reg_892;
wire   [31:0] select_ln8_5_fu_616_p3;
reg   [31:0] select_ln8_5_reg_898;
reg   [9:0] temp_addr_6_reg_914;
reg   [9:0] temp_1_addr_6_reg_919;
reg   [9:0] temp_addr_7_reg_934;
reg   [9:0] temp_1_addr_7_reg_939;
wire   [31:0] select_ln8_6_fu_637_p3;
reg   [31:0] select_ln8_6_reg_944;
wire   [31:0] select_ln8_7_fu_644_p3;
reg   [31:0] select_ln8_7_reg_950;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_2_fu_385_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_fu_409_p1;
wire   [63:0] zext_ln7_1_fu_436_p1;
wire   [63:0] zext_ln7_2_fu_464_p1;
wire   [63:0] zext_ln7_3_fu_595_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln7_4_fu_602_p1;
wire   [63:0] zext_ln7_5_fu_623_p1;
reg    ap_predicate_pred364_state6;
reg    ap_predicate_pred375_state6;
wire   [63:0] zext_ln7_6_fu_630_p1;
reg    ap_predicate_pred390_state6;
reg    ap_predicate_pred394_state6;
reg   [32:0] i_fu_56;
wire   [32:0] add_ln7_7_fu_557_p2;
wire  signed [32:0] sext_ln7_cast_fu_352_p1;
wire    ap_loop_init;
reg    a_0_ce1_local;
reg   [9:0] a_0_address1_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_ce1_local;
reg   [9:0] a_1_address1_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    ap_predicate_pred372_state6;
reg    temp_we0_local;
reg    ap_predicate_pred500_state7;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred514_state7;
reg    ap_predicate_pred531_state8;
reg    ap_predicate_pred547_state8;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    ap_predicate_pred360_state6;
reg    temp_1_we0_local;
reg    ap_predicate_pred512_state7;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred578_state7;
reg    ap_predicate_pred545_state8;
reg    ap_predicate_pred589_state8;
wire   [9:0] lshr_ln5_fu_376_p4;
wire   [10:0] trunc_ln7_1_fu_373_p1;
wire   [10:0] add_ln7_fu_393_p2;
wire   [9:0] lshr_ln7_fu_399_p4;
wire   [32:0] add_ln7_1_fu_421_p2;
wire   [9:0] lshr_ln7_1_fu_426_p4;
wire   [32:0] add_ln7_2_fu_449_p2;
wire   [9:0] lshr_ln7_2_fu_454_p4;
wire   [32:0] add_ln7_3_fu_477_p2;
wire   [32:0] add_ln7_4_fu_497_p2;
wire   [32:0] add_ln7_5_fu_517_p2;
wire   [32:0] add_ln7_6_fu_537_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_817;
reg    ap_condition_821;
reg    ap_condition_829;
reg    ap_condition_835;
reg    ap_condition_838;
reg    ap_condition_841;
reg    ap_condition_844;
reg    ap_condition_847;
reg    ap_condition_857;
reg    ap_condition_861;
reg    ap_condition_865;
reg    ap_condition_869;
reg    ap_condition_873;
reg    ap_condition_877;
reg    ap_condition_883;
reg    ap_condition_890;
reg    ap_condition_894;
reg    ap_condition_898;
reg    ap_condition_902;
reg    ap_condition_906;
reg    ap_condition_910;
reg    ap_condition_914;
reg    ap_condition_918;
reg    ap_condition_922;
reg    ap_condition_926;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_56 = 33'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage1_11001)) begin
            ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= sext_ln7_cast_fu_352_p1;
        end else if ((1'b1 == ap_condition_857)) begin
            i_fu_56 <= add_ln7_7_fu_557_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        ap_predicate_pred500_state7 <= ((icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred512_state7 <= ((icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred514_state7 <= ((icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred578_state7 <= ((icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        i_19_reg_670 <= i_fu_56;
        icmp_ln7_reg_684 <= icmp_ln7_fu_364_p2;
        icmp_ln7_reg_684_pp0_iter1_reg <= icmp_ln7_reg_684;
        icmp_ln7_reg_684_pp0_iter2_reg <= icmp_ln7_reg_684_pp0_iter1_reg;
        select_ln8_1_reg_834 <= select_ln8_1_fu_574_p3;
        select_ln8_2_reg_840 <= select_ln8_2_fu_581_p3;
        select_ln8_3_reg_846 <= select_ln8_3_fu_588_p3;
        select_ln8_reg_828 <= select_ln8_fu_567_p3;
        temp_1_addr_4_reg_867 <= zext_ln7_3_fu_595_p1;
        temp_1_addr_4_reg_867_pp0_iter2_reg <= temp_1_addr_4_reg_867;
        temp_1_addr_5_reg_887 <= zext_ln7_4_fu_602_p1;
        temp_1_addr_5_reg_887_pp0_iter2_reg <= temp_1_addr_5_reg_887;
        temp_1_addr_6_reg_919 <= zext_ln7_5_fu_623_p1;
        temp_1_addr_7_reg_939 <= zext_ln7_6_fu_630_p1;
        temp_addr_4_reg_862 <= zext_ln7_3_fu_595_p1;
        temp_addr_4_reg_862_pp0_iter2_reg <= temp_addr_4_reg_862;
        temp_addr_5_reg_882 <= zext_ln7_4_fu_602_p1;
        temp_addr_5_reg_882_pp0_iter2_reg <= temp_addr_5_reg_882;
        temp_addr_6_reg_914 <= zext_ln7_5_fu_623_p1;
        temp_addr_7_reg_934 <= zext_ln7_6_fu_630_p1;
        trunc_ln7_reg_688 <= trunc_ln7_fu_369_p1;
        trunc_ln7_reg_688_pp0_iter1_reg <= trunc_ln7_reg_688;
        trunc_ln7_reg_688_pp0_iter2_reg <= trunc_ln7_reg_688_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred360_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred364_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (icmp_ln7_6_reg_815 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred372_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred375_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (icmp_ln7_6_reg_815 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred390_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (icmp_ln7_6_reg_815 == 1'd0) & (icmp_ln7_7_reg_824 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred394_state6 <= ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (icmp_ln7_6_reg_815 == 1'd0) & (icmp_ln7_7_reg_824 == 1'd0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
        ap_predicate_pred531_state8 <= ((icmp_ln7_6_reg_815_pp0_iter2_reg == 1'd0) & (icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter2_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter2_reg == 1'd0));
        ap_predicate_pred545_state8 <= ((icmp_ln7_6_reg_815_pp0_iter2_reg == 1'd0) & (icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter2_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter2_reg == 1'd0));
        ap_predicate_pred547_state8 <= ((icmp_ln7_7_reg_824_pp0_iter2_reg == 1'd0) & (icmp_ln7_6_reg_815_pp0_iter2_reg == 1'd0) & (icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter2_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter2_reg == 1'd0));
        ap_predicate_pred589_state8 <= ((icmp_ln7_7_reg_824_pp0_iter2_reg == 1'd0) & (icmp_ln7_6_reg_815_pp0_iter2_reg == 1'd0) & (icmp_ln7_5_reg_806_pp0_iter2_reg == 1'd0) & (icmp_ln7_4_reg_797_pp0_iter2_reg == 1'd0) & (icmp_ln7_3_reg_768_pp0_iter2_reg == 1'd0) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter2_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter2_reg == 1'd0));
        icmp_ln7_1_reg_720 <= icmp_ln7_1_fu_417_p2;
        icmp_ln7_1_reg_720_pp0_iter2_reg <= icmp_ln7_1_reg_720;
        icmp_ln7_2_reg_744 <= icmp_ln7_2_fu_444_p2;
        icmp_ln7_2_reg_744_pp0_iter2_reg <= icmp_ln7_2_reg_744;
        icmp_ln7_3_reg_768 <= icmp_ln7_3_fu_472_p2;
        icmp_ln7_3_reg_768_pp0_iter2_reg <= icmp_ln7_3_reg_768;
        icmp_ln7_4_reg_797 <= icmp_ln7_4_fu_492_p2;
        icmp_ln7_4_reg_797_pp0_iter2_reg <= icmp_ln7_4_reg_797;
        icmp_ln7_5_reg_806 <= icmp_ln7_5_fu_512_p2;
        icmp_ln7_5_reg_806_pp0_iter2_reg <= icmp_ln7_5_reg_806;
        icmp_ln7_6_reg_815 <= icmp_ln7_6_fu_532_p2;
        icmp_ln7_6_reg_815_pp0_iter2_reg <= icmp_ln7_6_reg_815;
        icmp_ln7_7_reg_824 <= icmp_ln7_7_fu_552_p2;
        icmp_ln7_7_reg_824_pp0_iter2_reg <= icmp_ln7_7_reg_824;
        lshr_ln7_3_reg_792 <= {{add_ln7_3_fu_477_p2[10:1]}};
        lshr_ln7_4_reg_801 <= {{add_ln7_4_fu_497_p2[10:1]}};
        lshr_ln7_5_reg_810 <= {{add_ln7_5_fu_517_p2[10:1]}};
        lshr_ln7_5_reg_810_pp0_iter2_reg <= lshr_ln7_5_reg_810;
        lshr_ln7_6_reg_819 <= {{add_ln7_6_fu_537_p2[10:1]}};
        lshr_ln7_6_reg_819_pp0_iter2_reg <= lshr_ln7_6_reg_819;
        select_ln8_4_reg_892 <= select_ln8_4_fu_609_p3;
        select_ln8_5_reg_898 <= select_ln8_5_fu_616_p3;
        select_ln8_6_reg_944 <= select_ln8_6_fu_637_p3;
        select_ln8_7_reg_950 <= select_ln8_7_fu_644_p3;
        sext_ln7_1_cast_reg_658 <= sext_ln7_1_cast_fu_348_p1;
        temp_1_addr_1_reg_739 <= zext_ln7_fu_409_p1;
        temp_1_addr_2_reg_763 <= zext_ln7_1_fu_436_p1;
        temp_1_addr_2_reg_763_pp0_iter2_reg <= temp_1_addr_2_reg_763;
        temp_1_addr_3_reg_787 <= zext_ln7_2_fu_464_p1;
        temp_1_addr_3_reg_787_pp0_iter2_reg <= temp_1_addr_3_reg_787;
        temp_1_addr_reg_715 <= zext_ln5_2_fu_385_p1;
        temp_addr_1_reg_734 <= zext_ln7_fu_409_p1;
        temp_addr_2_reg_758 <= zext_ln7_1_fu_436_p1;
        temp_addr_2_reg_758_pp0_iter2_reg <= temp_addr_2_reg_758;
        temp_addr_3_reg_782 <= zext_ln7_2_fu_464_p1;
        temp_addr_3_reg_782_pp0_iter2_reg <= temp_addr_3_reg_782;
        temp_addr_reg_710 <= zext_ln5_2_fu_385_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred390_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = zext_ln7_6_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred364_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = zext_ln7_5_fu_623_p1;
    end else if (((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_3_fu_472_p2 == 1'd0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1))) begin
        a_0_address0_local = zext_ln7_2_fu_464_p1;
    end else if (((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0))) begin
        a_0_address0_local = zext_ln7_1_fu_436_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln7_reg_684 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        if ((1'b1 == ap_condition_835)) begin
            a_0_address1_local = zext_ln7_4_fu_602_p1;
        end else if ((1'b1 == ap_condition_829)) begin
            a_0_address1_local = zext_ln7_3_fu_595_p1;
        end else if ((1'b1 == ap_condition_821)) begin
            a_0_address1_local = zext_ln7_fu_409_p1;
        end else if ((1'b1 == ap_condition_817)) begin
            a_0_address1_local = zext_ln5_2_fu_385_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_3_fu_472_p2 == 1'd0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred390_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred364_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln7_reg_684 == 1'd0) & (icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd1)) | ((icmp_ln7_reg_684 == 1'd0) & (icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd0)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred394_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = zext_ln7_6_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_pred375_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = zext_ln7_5_fu_623_p1;
    end else if (((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_3_fu_472_p2 == 1'd0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0))) begin
        a_1_address0_local = zext_ln7_2_fu_464_p1;
    end else if (((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1))) begin
        a_1_address0_local = zext_ln7_1_fu_436_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln7_reg_684 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        if ((1'b1 == ap_condition_847)) begin
            a_1_address1_local = zext_ln7_4_fu_602_p1;
        end else if ((1'b1 == ap_condition_844)) begin
            a_1_address1_local = zext_ln7_3_fu_595_p1;
        end else if ((1'b1 == ap_condition_841)) begin
            a_1_address1_local = zext_ln7_fu_409_p1;
        end else if ((1'b1 == ap_condition_838)) begin
            a_1_address1_local = zext_ln5_2_fu_385_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_3_fu_472_p2 == 1'd0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred394_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_pred375_state6 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln7_reg_684 == 1'd0) & (icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd0)) | ((icmp_ln7_reg_684 == 1'd0) & (icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd1)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0)) | ((icmp_ln7_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688 == 1'd1)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln7_reg_684 == 1'd1) | ((icmp_ln7_1_reg_720 == 1'd0) | ((icmp_ln7_2_reg_744 == 1'd1) | ((icmp_ln7_3_reg_768 == 1'd1) | ((icmp_ln7_4_reg_797 == 1'd1) | ((icmp_ln7_5_reg_806 == 1'd1) | ((icmp_ln7_6_reg_815 == 1'd1) | (icmp_ln7_7_reg_824 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_873)) begin
            temp_1_address0_local = temp_1_addr_7_reg_939;
        end else if ((1'b1 == ap_condition_869)) begin
            temp_1_address0_local = temp_1_addr_6_reg_919;
        end else if ((1'b1 == ap_condition_865)) begin
            temp_1_address0_local = temp_1_addr_5_reg_887_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_861)) begin
            temp_1_address0_local = temp_1_addr_4_reg_867_pp0_iter2_reg;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_894)) begin
            temp_1_address1_local = temp_1_addr_3_reg_787_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_890)) begin
            temp_1_address1_local = temp_1_addr_2_reg_763_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_883)) begin
            temp_1_address1_local = temp_1_addr_1_reg_739;
        end else if ((1'b1 == ap_condition_877)) begin
            temp_1_address1_local = temp_1_addr_reg_715;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred589_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred545_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred578_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred512_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred360_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_873)) begin
            temp_1_d0_local = select_ln8_7_reg_950;
        end else if ((1'b1 == ap_condition_869)) begin
            temp_1_d0_local = select_ln8_6_reg_944;
        end else if ((1'b1 == ap_condition_865)) begin
            temp_1_d0_local = select_ln8_5_reg_898;
        end else if ((1'b1 == ap_condition_861)) begin
            temp_1_d0_local = select_ln8_4_reg_892;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_894)) begin
            temp_1_d1_local = select_ln8_3_reg_846;
        end else if ((1'b1 == ap_condition_890)) begin
            temp_1_d1_local = select_ln8_2_reg_840;
        end else if ((1'b1 == ap_condition_883)) begin
            temp_1_d1_local = select_ln8_1_reg_834;
        end else if ((1'b1 == ap_condition_877)) begin
            temp_1_d1_local = select_ln8_reg_828;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred589_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred545_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred578_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred512_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred360_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            temp_address0_local = temp_addr_7_reg_934;
        end else if ((1'b1 == ap_condition_906)) begin
            temp_address0_local = temp_addr_6_reg_914;
        end else if ((1'b1 == ap_condition_902)) begin
            temp_address0_local = temp_addr_5_reg_882_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_898)) begin
            temp_address0_local = temp_addr_4_reg_862_pp0_iter2_reg;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_926)) begin
            temp_address1_local = temp_addr_3_reg_782_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_922)) begin
            temp_address1_local = temp_addr_2_reg_758_pp0_iter2_reg;
        end else if ((1'b1 == ap_condition_918)) begin
            temp_address1_local = temp_addr_1_reg_734;
        end else if ((1'b1 == ap_condition_914)) begin
            temp_address1_local = temp_addr_reg_710;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred547_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred531_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred514_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred500_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred372_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            temp_d0_local = select_ln8_7_reg_950;
        end else if ((1'b1 == ap_condition_906)) begin
            temp_d0_local = select_ln8_6_reg_944;
        end else if ((1'b1 == ap_condition_902)) begin
            temp_d0_local = select_ln8_5_reg_898;
        end else if ((1'b1 == ap_condition_898)) begin
            temp_d0_local = select_ln8_4_reg_892;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_926)) begin
            temp_d1_local = select_ln8_3_reg_846;
        end else if ((1'b1 == ap_condition_922)) begin
            temp_d1_local = select_ln8_2_reg_840;
        end else if ((1'b1 == ap_condition_918)) begin
            temp_d1_local = select_ln8_1_reg_834;
        end else if ((1'b1 == ap_condition_914)) begin
            temp_d1_local = select_ln8_reg_828;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred547_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred531_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_predicate_pred514_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred500_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred372_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = a_0_address0_local;
assign a_0_address1 = a_0_address1_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_address1 = a_1_address1_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign add_ln7_1_fu_421_p2 = (i_19_reg_670 + 33'd2);
assign add_ln7_2_fu_449_p2 = (i_19_reg_670 + 33'd3);
assign add_ln7_3_fu_477_p2 = (i_19_reg_670 + 33'd4);
assign add_ln7_4_fu_497_p2 = (i_19_reg_670 + 33'd5);
assign add_ln7_5_fu_517_p2 = (i_19_reg_670 + 33'd6);
assign add_ln7_6_fu_537_p2 = (i_19_reg_670 + 33'd7);
assign add_ln7_7_fu_557_p2 = (i_19_reg_670 + 33'd8);
assign add_ln7_fu_393_p2 = (trunc_ln7_1_fu_373_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_817 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688 == 1'd0));
end
always @ (*) begin
    ap_condition_821 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd1));
end
always @ (*) begin
    ap_condition_829 = ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd0));
end
always @ (*) begin
    ap_condition_835 = ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd1));
end
always @ (*) begin
    ap_condition_838 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688 == 1'd1));
end
always @ (*) begin
    ap_condition_841 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_1_fu_417_p2 == 1'd1) & (trunc_ln7_reg_688 == 1'd0));
end
always @ (*) begin
    ap_condition_844 = ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd1));
end
always @ (*) begin
    ap_condition_847 = ((icmp_ln7_1_reg_720 == 1'd1) & (icmp_ln7_2_reg_744 == 1'd0) & (icmp_ln7_3_reg_768 == 1'd0) & (icmp_ln7_4_reg_797 == 1'd0) & (icmp_ln7_5_reg_806 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln7_reg_688 == 1'd0));
end
always @ (*) begin
    ap_condition_857 = ((icmp_ln7_reg_684 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_7_fu_552_p2 == 1'd0) & (icmp_ln7_6_fu_532_p2 == 1'd0) & (icmp_ln7_5_fu_512_p2 == 1'd0) & (icmp_ln7_4_fu_492_p2 == 1'd0) & (icmp_ln7_3_fu_472_p2 == 1'd0) & (icmp_ln7_2_fu_444_p2 == 1'd0) & (icmp_ln7_1_fu_417_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_861 = ((ap_predicate_pred512_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_865 = ((ap_predicate_pred578_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_869 = ((ap_predicate_pred545_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_873 = ((ap_predicate_pred589_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_877 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_883 = ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_890 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_894 = ((ap_predicate_pred360_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_898 = ((ap_predicate_pred500_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_902 = ((ap_predicate_pred514_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_906 = ((ap_predicate_pred531_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_910 = ((ap_predicate_pred547_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_914 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_918 = ((icmp_ln7_1_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd1) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_922 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_2_reg_744_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_720_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_688_pp0_iter1_reg == 1'd0) & (icmp_ln7_reg_684_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_926 = ((ap_predicate_pred372_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_1_fu_417_p2 = (($signed(i_19_reg_670) < $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_444_p2 = (($signed(add_ln7_1_fu_421_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_472_p2 = (($signed(add_ln7_2_fu_449_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_4_fu_492_p2 = (($signed(add_ln7_3_fu_477_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_5_fu_512_p2 = (($signed(add_ln7_4_fu_497_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_6_fu_532_p2 = (($signed(add_ln7_5_fu_517_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_7_fu_552_p2 = (($signed(add_ln7_6_fu_537_p2) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_364_p2 = (($signed(i_fu_56) > $signed(sext_ln7_1_cast_reg_658)) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_376_p4 = {{i_19_reg_670[10:1]}};
assign lshr_ln7_1_fu_426_p4 = {{add_ln7_1_fu_421_p2[10:1]}};
assign lshr_ln7_2_fu_454_p4 = {{add_ln7_2_fu_449_p2[10:1]}};
assign lshr_ln7_fu_399_p4 = {{add_ln7_fu_393_p2[10:1]}};
assign select_ln8_1_fu_574_p3 = ((trunc_ln7_reg_688[0:0] == 1'b1) ? a_0_q1 : a_1_q1);
assign select_ln8_2_fu_581_p3 = ((trunc_ln7_reg_688[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln8_3_fu_588_p3 = ((trunc_ln7_reg_688[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign select_ln8_4_fu_609_p3 = ((trunc_ln7_reg_688_pp0_iter1_reg[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign select_ln8_5_fu_616_p3 = ((trunc_ln7_reg_688_pp0_iter1_reg[0:0] == 1'b1) ? a_0_q1 : a_1_q1);
assign select_ln8_6_fu_637_p3 = ((trunc_ln7_reg_688_pp0_iter2_reg[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln8_7_fu_644_p3 = ((trunc_ln7_reg_688_pp0_iter2_reg[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign select_ln8_fu_567_p3 = ((trunc_ln7_reg_688[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign sext_ln7_1_cast_fu_348_p1 = $signed(sext_ln7_1);
assign sext_ln7_cast_fu_352_p1 = $signed(sext_ln7);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln7_1_fu_373_p1 = i_19_reg_670[10:0];
assign trunc_ln7_fu_369_p1 = i_fu_56[0:0];
assign zext_ln5_2_fu_385_p1 = lshr_ln5_fu_376_p4;
assign zext_ln7_1_fu_436_p1 = lshr_ln7_1_fu_426_p4;
assign zext_ln7_2_fu_464_p1 = lshr_ln7_2_fu_454_p4;
assign zext_ln7_3_fu_595_p1 = lshr_ln7_3_reg_792;
assign zext_ln7_4_fu_602_p1 = lshr_ln7_4_reg_801;
assign zext_ln7_5_fu_623_p1 = lshr_ln7_5_reg_810_pp0_iter2_reg;
assign zext_ln7_6_fu_630_p1 = lshr_ln7_6_reg_819_pp0_iter2_reg;
assign zext_ln7_fu_409_p1 = lshr_ln7_fu_399_p4;
endmodule 