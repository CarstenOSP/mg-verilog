module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_address0,a_ce0,a_q0,a_address1,a_ce1,a_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
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
input  [31:0] j;
input  [31:0] stop;
output  [10:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [10:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
input  [10:0] add9;
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
reg   [0:0] icmp_ln11_15_reg_1093;
reg   [0:0] icmp_ln11_14_reg_1079;
reg   [0:0] icmp_ln11_13_reg_1065;
reg   [0:0] icmp_ln11_12_reg_1051;
reg   [0:0] icmp_ln11_11_reg_1037;
reg   [0:0] icmp_ln11_10_reg_1023;
reg   [0:0] icmp_ln11_9_reg_1009;
reg   [0:0] icmp_ln11_8_reg_995;
reg   [0:0] icmp_ln11_7_reg_981;
reg   [0:0] icmp_ln11_6_reg_967;
reg   [0:0] icmp_ln11_5_reg_948;
reg   [0:0] icmp_ln11_4_reg_934;
reg   [0:0] icmp_ln11_3_reg_925;
reg   [0:0] icmp_ln11_2_reg_911;
reg   [0:0] icmp_ln11_1_reg_897;
reg   [0:0] icmp_ln11_reg_878;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_34_reg_859;
wire   [0:0] icmp_ln11_fu_372_p2;
wire   [10:0] trunc_ln11_fu_383_p1;
reg   [10:0] trunc_ln11_reg_882;
wire   [10:0] add_ln11_fu_387_p2;
reg   [10:0] add_ln11_reg_892;
wire   [0:0] icmp_ln11_1_fu_398_p2;
wire   [10:0] trunc_ln11_1_fu_432_p1;
reg   [10:0] trunc_ln11_1_reg_906;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln11_2_fu_436_p2;
wire   [10:0] trunc_ln11_2_fu_451_p1;
reg   [10:0] trunc_ln11_2_reg_920;
wire   [0:0] icmp_ln11_3_fu_455_p2;
wire   [0:0] icmp_ln11_4_fu_492_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [10:0] sub_ln12_4_fu_497_p2;
reg   [10:0] sub_ln12_4_reg_943;
wire   [0:0] icmp_ln11_5_fu_516_p2;
wire   [10:0] sub_ln12_5_fu_521_p2;
reg   [10:0] sub_ln12_5_reg_957;
wire   [31:0] add_ln11_5_fu_526_p2;
reg   [31:0] add_ln11_5_reg_962;
wire   [0:0] icmp_ln11_6_fu_535_p2;
wire   [10:0] sub_ln12_6_fu_540_p2;
reg   [10:0] sub_ln12_6_reg_971;
wire   [31:0] add_ln11_6_fu_545_p2;
reg   [31:0] add_ln11_6_reg_976;
wire   [0:0] icmp_ln11_7_fu_554_p2;
wire   [10:0] sub_ln12_7_fu_559_p2;
reg   [10:0] sub_ln12_7_reg_985;
wire   [31:0] add_ln11_7_fu_564_p2;
reg   [31:0] add_ln11_7_reg_990;
wire   [0:0] icmp_ln11_8_fu_573_p2;
wire   [10:0] sub_ln12_8_fu_578_p2;
reg   [10:0] sub_ln12_8_reg_999;
wire   [31:0] add_ln11_8_fu_583_p2;
reg   [31:0] add_ln11_8_reg_1004;
wire   [0:0] icmp_ln11_9_fu_592_p2;
wire   [10:0] sub_ln12_9_fu_597_p2;
reg   [10:0] sub_ln12_9_reg_1013;
wire   [31:0] add_ln11_9_fu_602_p2;
reg   [31:0] add_ln11_9_reg_1018;
wire   [0:0] icmp_ln11_10_fu_611_p2;
wire   [10:0] sub_ln12_10_fu_616_p2;
reg   [10:0] sub_ln12_10_reg_1027;
wire   [31:0] add_ln11_10_fu_621_p2;
reg   [31:0] add_ln11_10_reg_1032;
wire   [0:0] icmp_ln11_11_fu_630_p2;
wire   [10:0] sub_ln12_11_fu_635_p2;
reg   [10:0] sub_ln12_11_reg_1041;
wire   [31:0] add_ln11_11_fu_640_p2;
reg   [31:0] add_ln11_11_reg_1046;
wire   [0:0] icmp_ln11_12_fu_649_p2;
wire   [10:0] sub_ln12_12_fu_654_p2;
reg   [10:0] sub_ln12_12_reg_1055;
wire   [31:0] add_ln11_12_fu_659_p2;
reg   [31:0] add_ln11_12_reg_1060;
wire   [0:0] icmp_ln11_13_fu_668_p2;
wire   [10:0] sub_ln12_13_fu_673_p2;
reg   [10:0] sub_ln12_13_reg_1069;
wire   [31:0] add_ln11_13_fu_678_p2;
reg   [31:0] add_ln11_13_reg_1074;
wire   [0:0] icmp_ln11_14_fu_687_p2;
wire   [10:0] sub_ln12_14_fu_692_p2;
reg   [10:0] sub_ln12_14_reg_1083;
wire   [31:0] add_ln11_14_fu_697_p2;
reg   [31:0] add_ln11_14_reg_1088;
wire   [0:0] icmp_ln11_15_fu_706_p2;
wire   [10:0] sub_ln12_15_fu_711_p2;
reg   [10:0] sub_ln12_15_reg_1097;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln11_fu_378_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_1_fu_393_p1;
wire   [63:0] zext_ln12_fu_408_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_417_p1;
wire   [63:0] zext_ln11_2_fu_427_p1;
wire   [63:0] zext_ln11_3_fu_446_p1;
wire   [63:0] zext_ln12_2_fu_464_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_3_fu_473_p1;
wire   [63:0] zext_ln11_4_fu_483_p1;
wire   [63:0] zext_ln11_5_fu_507_p1;
wire   [63:0] zext_ln12_4_fu_726_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_5_fu_730_p1;
wire   [63:0] zext_ln11_6_fu_734_p1;
wire   [63:0] zext_ln11_7_fu_738_p1;
wire   [63:0] zext_ln12_6_fu_742_p1;
wire    ap_block_pp0_stage4;
reg    ap_predicate_pred373_state5;
wire   [63:0] zext_ln12_7_fu_746_p1;
reg    ap_predicate_pred377_state5;
wire   [63:0] zext_ln11_8_fu_750_p1;
wire   [63:0] zext_ln11_9_fu_754_p1;
wire   [63:0] zext_ln12_8_fu_758_p1;
wire    ap_block_pp0_stage5;
reg    ap_predicate_pred396_state6;
wire   [63:0] zext_ln12_9_fu_762_p1;
reg    ap_predicate_pred402_state6;
wire   [63:0] zext_ln11_10_fu_766_p1;
wire   [63:0] zext_ln11_11_fu_770_p1;
wire   [63:0] zext_ln12_10_fu_774_p1;
wire    ap_block_pp0_stage6;
reg    ap_predicate_pred423_state7;
wire   [63:0] zext_ln12_11_fu_778_p1;
reg    ap_predicate_pred429_state7;
wire   [63:0] zext_ln11_12_fu_782_p1;
wire   [63:0] zext_ln11_13_fu_786_p1;
wire   [63:0] zext_ln12_12_fu_790_p1;
wire    ap_block_pp0_stage7;
reg    ap_predicate_pred450_state8;
wire   [63:0] zext_ln12_13_fu_794_p1;
reg    ap_predicate_pred456_state8;
wire   [63:0] zext_ln11_14_fu_798_p1;
wire   [63:0] zext_ln11_15_fu_802_p1;
wire   [63:0] zext_ln12_14_fu_806_p1;
reg    ap_predicate_pred477_state9;
wire   [63:0] zext_ln12_15_fu_810_p1;
reg    ap_predicate_pred483_state9;
reg   [31:0] j_1_fu_66;
wire   [31:0] add_ln11_15_fu_716_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_j_34;
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
wire   [10:0] sub_ln12_fu_404_p2;
wire   [10:0] sub_ln12_1_fu_413_p2;
wire   [31:0] add_ln11_1_fu_422_p2;
wire   [31:0] add_ln11_2_fu_441_p2;
wire   [10:0] sub_ln12_2_fu_460_p2;
wire   [10:0] sub_ln12_3_fu_469_p2;
wire   [31:0] add_ln11_3_fu_478_p2;
wire   [10:0] trunc_ln11_3_fu_488_p1;
wire   [31:0] add_ln11_4_fu_502_p2;
wire   [10:0] trunc_ln11_4_fu_512_p1;
wire   [10:0] trunc_ln11_5_fu_531_p1;
wire   [10:0] trunc_ln11_6_fu_550_p1;
wire   [10:0] trunc_ln11_7_fu_569_p1;
wire   [10:0] trunc_ln11_8_fu_588_p1;
wire   [10:0] trunc_ln11_9_fu_607_p1;
wire   [10:0] trunc_ln11_10_fu_626_p1;
wire   [10:0] trunc_ln11_11_fu_645_p1;
wire   [10:0] trunc_ln11_12_fu_664_p1;
wire   [10:0] trunc_ln11_13_fu_683_p1;
wire   [10:0] trunc_ln11_14_fu_702_p1;
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
#0 j_1_fu_66 = 32'd0;
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
        j_1_fu_66 <= j;
    end else if (((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln11_15_fu_706_p2 == 1'd0) & (icmp_ln11_14_fu_687_p2 == 1'd0) & (icmp_ln11_13_fu_668_p2 == 1'd0) & (icmp_ln11_12_fu_649_p2 == 1'd0) & (icmp_ln11_11_fu_630_p2 == 1'd0) & (icmp_ln11_10_fu_611_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln11_9_fu_592_p2 == 1'd0) & (icmp_ln11_8_fu_573_p2 == 1'd0) & (icmp_ln11_7_fu_554_p2 == 1'd0) & (icmp_ln11_6_fu_535_p2 == 1'd0) & (icmp_ln11_5_fu_516_p2 == 1'd0) & (icmp_ln11_4_fu_492_p2 == 1'd0))) begin
        j_1_fu_66 <= add_ln11_15_fu_716_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln11_10_reg_1032 <= add_ln11_10_fu_621_p2;
        add_ln11_11_reg_1046 <= add_ln11_11_fu_640_p2;
        add_ln11_12_reg_1060 <= add_ln11_12_fu_659_p2;
        add_ln11_13_reg_1074 <= add_ln11_13_fu_678_p2;
        add_ln11_14_reg_1088 <= add_ln11_14_fu_697_p2;
        add_ln11_5_reg_962 <= add_ln11_5_fu_526_p2;
        add_ln11_6_reg_976 <= add_ln11_6_fu_545_p2;
        add_ln11_7_reg_990 <= add_ln11_7_fu_564_p2;
        add_ln11_8_reg_1004 <= add_ln11_8_fu_583_p2;
        add_ln11_9_reg_1018 <= add_ln11_9_fu_602_p2;
        icmp_ln11_10_reg_1023 <= icmp_ln11_10_fu_611_p2;
        icmp_ln11_11_reg_1037 <= icmp_ln11_11_fu_630_p2;
        icmp_ln11_12_reg_1051 <= icmp_ln11_12_fu_649_p2;
        icmp_ln11_13_reg_1065 <= icmp_ln11_13_fu_668_p2;
        icmp_ln11_14_reg_1079 <= icmp_ln11_14_fu_687_p2;
        icmp_ln11_15_reg_1093 <= icmp_ln11_15_fu_706_p2;
        icmp_ln11_4_reg_934 <= icmp_ln11_4_fu_492_p2;
        icmp_ln11_5_reg_948 <= icmp_ln11_5_fu_516_p2;
        icmp_ln11_6_reg_967 <= icmp_ln11_6_fu_535_p2;
        icmp_ln11_7_reg_981 <= icmp_ln11_7_fu_554_p2;
        icmp_ln11_8_reg_995 <= icmp_ln11_8_fu_573_p2;
        icmp_ln11_9_reg_1009 <= icmp_ln11_9_fu_592_p2;
        sub_ln12_10_reg_1027 <= sub_ln12_10_fu_616_p2;
        sub_ln12_11_reg_1041 <= sub_ln12_11_fu_635_p2;
        sub_ln12_12_reg_1055 <= sub_ln12_12_fu_654_p2;
        sub_ln12_13_reg_1069 <= sub_ln12_13_fu_673_p2;
        sub_ln12_14_reg_1083 <= sub_ln12_14_fu_692_p2;
        sub_ln12_15_reg_1097 <= sub_ln12_15_fu_711_p2;
        sub_ln12_4_reg_943 <= sub_ln12_4_fu_497_p2;
        sub_ln12_5_reg_957 <= sub_ln12_5_fu_521_p2;
        sub_ln12_6_reg_971 <= sub_ln12_6_fu_540_p2;
        sub_ln12_7_reg_985 <= sub_ln12_7_fu_559_p2;
        sub_ln12_8_reg_999 <= sub_ln12_8_fu_578_p2;
        sub_ln12_9_reg_1013 <= sub_ln12_9_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11_reg_892 <= add_ln11_fu_387_p2;
        icmp_ln11_1_reg_897 <= icmp_ln11_1_fu_398_p2;
        icmp_ln11_reg_878 <= icmp_ln11_fu_372_p2;
        j_34_reg_859 <= ap_sig_allocacmp_j_34;
        trunc_ln11_reg_882 <= trunc_ln11_fu_383_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred373_state5 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0));
        ap_predicate_pred377_state5 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_predicate_pred396_state6 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0));
        ap_predicate_pred402_state6 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_predicate_pred423_state7 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0));
        ap_predicate_pred429_state7 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0) & (icmp_ln11_11_reg_1037 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_predicate_pred450_state8 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0) & (icmp_ln11_11_reg_1037 == 1'd0) & (icmp_ln11_12_reg_1051 == 1'd0));
        ap_predicate_pred456_state8 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0) & (icmp_ln11_11_reg_1037 == 1'd0) & (icmp_ln11_12_reg_1051 == 1'd0) & (icmp_ln11_13_reg_1065 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_predicate_pred477_state9 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0) & (icmp_ln11_11_reg_1037 == 1'd0) & (icmp_ln11_12_reg_1051 == 1'd0) & (icmp_ln11_13_reg_1065 == 1'd0) & (icmp_ln11_14_reg_1079 == 1'd0));
        ap_predicate_pred483_state9 <= ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (icmp_ln11_6_reg_967 == 1'd0) & (icmp_ln11_7_reg_981 == 1'd0) & (icmp_ln11_8_reg_995 == 1'd0) & (icmp_ln11_9_reg_1009 == 1'd0) & (icmp_ln11_10_reg_1023 == 1'd0) & (icmp_ln11_11_reg_1037 == 1'd0) & (icmp_ln11_12_reg_1051 == 1'd0) & (icmp_ln11_13_reg_1065 == 1'd0) & (icmp_ln11_14_reg_1079 == 1'd0) & (icmp_ln11_15_reg_1093 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln11_2_reg_911 <= icmp_ln11_2_fu_436_p2;
        icmp_ln11_3_reg_925 <= icmp_ln11_3_fu_455_p2;
        trunc_ln11_1_reg_906 <= trunc_ln11_1_fu_432_p1;
        trunc_ln11_2_reg_920 <= trunc_ln11_2_fu_451_p1;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            a_address0_local = zext_ln11_15_fu_802_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            a_address0_local = zext_ln11_13_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            a_address0_local = zext_ln11_11_fu_770_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            a_address0_local = zext_ln11_9_fu_754_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address0_local = zext_ln11_7_fu_738_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address0_local = zext_ln11_5_fu_507_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0_local = zext_ln11_3_fu_446_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0_local = zext_ln11_1_fu_393_p1;
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
            a_address1_local = zext_ln11_14_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            a_address1_local = zext_ln11_12_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            a_address1_local = zext_ln11_10_fu_766_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            a_address1_local = zext_ln11_8_fu_750_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address1_local = zext_ln11_6_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address1_local = zext_ln11_4_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address1_local = zext_ln11_2_fu_427_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address1_local = zext_ln11_fu_378_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln11_reg_878 == 1'd1) | ((icmp_ln11_1_reg_897 == 1'd0) | ((icmp_ln11_2_reg_911 == 1'd1) | ((icmp_ln11_3_reg_925 == 1'd1) | ((icmp_ln11_4_reg_934 == 1'd1) | ((icmp_ln11_5_reg_948 == 1'd1) | ((icmp_ln11_6_reg_967 == 1'd1) | ((icmp_ln11_7_reg_981 == 1'd1) | ((icmp_ln11_8_reg_995 == 1'd1) | ((icmp_ln11_9_reg_1009 == 1'd1) | ((icmp_ln11_10_reg_1023 == 1'd1) | ((icmp_ln11_11_reg_1037 == 1'd1) | ((icmp_ln11_12_reg_1051 == 1'd1) | ((icmp_ln11_13_reg_1065 == 1'd1) | ((icmp_ln11_14_reg_1079 == 1'd1) | (icmp_ln11_15_reg_1093 == 1'd1)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_reg_878 == 1'd1) | ((icmp_ln11_1_reg_897 == 1'd0) | ((icmp_ln11_2_reg_911 == 1'd1) | ((icmp_ln11_3_reg_925 == 1'd1) | ((icmp_ln11_4_reg_934 == 1'd1) | ((icmp_ln11_5_reg_948 == 1'd1) | ((icmp_ln11_6_reg_967 == 1'd1) | ((icmp_ln11_7_reg_981 == 1'd1) | ((icmp_ln11_8_reg_995 == 1'd1) | ((icmp_ln11_9_reg_1009 == 1'd1) | ((icmp_ln11_10_reg_1023 == 1'd1) | ((icmp_ln11_11_reg_1037 == 1'd1) | ((icmp_ln11_12_reg_1051 == 1'd1) | ((icmp_ln11_13_reg_1065 == 1'd1) | ((icmp_ln11_14_reg_1079 == 1'd1) | (icmp_ln11_15_reg_1093 == 1'd1)))))))))))))))))) begin
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
        ap_sig_allocacmp_j_34 = j;
    end else begin
        ap_sig_allocacmp_j_34 = j_1_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln12_15_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        temp_address0_local = zext_ln12_13_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_address0_local = zext_ln12_11_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_address0_local = zext_ln12_9_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_address0_local = zext_ln12_7_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address0_local = zext_ln12_5_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address0_local = zext_ln12_3_fu_473_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address0_local = zext_ln12_1_fu_417_p1;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln12_14_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        temp_address1_local = zext_ln12_12_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_address1_local = zext_ln12_10_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_address1_local = zext_ln12_8_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_address1_local = zext_ln12_6_fu_742_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address1_local = zext_ln12_4_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address1_local = zext_ln12_2_fu_464_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address1_local = zext_ln12_fu_408_p1;
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
if ((((ap_predicate_pred483_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred456_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((ap_predicate_pred429_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (icmp_ln11_5_reg_948 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_predicate_pred402_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_predicate_pred377_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_predicate_pred477_state9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred450_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((ap_predicate_pred423_state7 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (icmp_ln11_3_reg_925 == 1'd0) & (icmp_ln11_4_reg_934 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln11_reg_878 == 1'd0) & (icmp_ln11_1_reg_897 == 1'd1) & (icmp_ln11_2_reg_911 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln11_reg_878 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_predicate_pred396_state6 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_predicate_pred373_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
assign add_ln11_10_fu_621_p2 = (j_34_reg_859 + 32'd11);
assign add_ln11_11_fu_640_p2 = (j_34_reg_859 + 32'd12);
assign add_ln11_12_fu_659_p2 = (j_34_reg_859 + 32'd13);
assign add_ln11_13_fu_678_p2 = (j_34_reg_859 + 32'd14);
assign add_ln11_14_fu_697_p2 = (j_34_reg_859 + 32'd15);
assign add_ln11_15_fu_716_p2 = (j_34_reg_859 + 32'd16);
assign add_ln11_1_fu_422_p2 = (j_34_reg_859 + 32'd2);
assign add_ln11_2_fu_441_p2 = (j_34_reg_859 + 32'd3);
assign add_ln11_3_fu_478_p2 = (j_34_reg_859 + 32'd4);
assign add_ln11_4_fu_502_p2 = (j_34_reg_859 + 32'd5);
assign add_ln11_5_fu_526_p2 = (j_34_reg_859 + 32'd6);
assign add_ln11_6_fu_545_p2 = (j_34_reg_859 + 32'd7);
assign add_ln11_7_fu_564_p2 = (j_34_reg_859 + 32'd8);
assign add_ln11_8_fu_583_p2 = (j_34_reg_859 + 32'd9);
assign add_ln11_9_fu_602_p2 = (j_34_reg_859 + 32'd10);
assign add_ln11_fu_387_p2 = (trunc_ln11_fu_383_p1 + 11'd1);
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
assign icmp_ln11_10_fu_611_p2 = (($signed(add_ln11_9_fu_602_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_11_fu_630_p2 = (($signed(add_ln11_10_fu_621_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_12_fu_649_p2 = (($signed(add_ln11_11_fu_640_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_13_fu_668_p2 = (($signed(add_ln11_12_fu_659_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_14_fu_687_p2 = (($signed(add_ln11_13_fu_678_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_15_fu_706_p2 = (($signed(add_ln11_14_fu_697_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_1_fu_398_p2 = (($signed(ap_sig_allocacmp_j_34) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_436_p2 = (($signed(add_ln11_1_fu_422_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_455_p2 = (($signed(add_ln11_2_fu_441_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_4_fu_492_p2 = (($signed(add_ln11_3_fu_478_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_5_fu_516_p2 = (($signed(add_ln11_4_fu_502_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_6_fu_535_p2 = (($signed(add_ln11_5_fu_526_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_7_fu_554_p2 = (($signed(add_ln11_6_fu_545_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_8_fu_573_p2 = (($signed(add_ln11_7_fu_564_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_9_fu_592_p2 = (($signed(add_ln11_8_fu_583_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_372_p2 = (($signed(ap_sig_allocacmp_j_34) > $signed(stop)) ? 1'b1 : 1'b0);
assign sub_ln12_10_fu_616_p2 = (add9 - trunc_ln11_9_fu_607_p1);
assign sub_ln12_11_fu_635_p2 = (add9 - trunc_ln11_10_fu_626_p1);
assign sub_ln12_12_fu_654_p2 = (add9 - trunc_ln11_11_fu_645_p1);
assign sub_ln12_13_fu_673_p2 = (add9 - trunc_ln11_12_fu_664_p1);
assign sub_ln12_14_fu_692_p2 = (add9 - trunc_ln11_13_fu_683_p1);
assign sub_ln12_15_fu_711_p2 = (add9 - trunc_ln11_14_fu_702_p1);
assign sub_ln12_1_fu_413_p2 = (add9 - add_ln11_reg_892);
assign sub_ln12_2_fu_460_p2 = (add9 - trunc_ln11_1_reg_906);
assign sub_ln12_3_fu_469_p2 = (add9 - trunc_ln11_2_reg_920);
assign sub_ln12_4_fu_497_p2 = (add9 - trunc_ln11_3_fu_488_p1);
assign sub_ln12_5_fu_521_p2 = (add9 - trunc_ln11_4_fu_512_p1);
assign sub_ln12_6_fu_540_p2 = (add9 - trunc_ln11_5_fu_531_p1);
assign sub_ln12_7_fu_559_p2 = (add9 - trunc_ln11_6_fu_550_p1);
assign sub_ln12_8_fu_578_p2 = (add9 - trunc_ln11_7_fu_569_p1);
assign sub_ln12_9_fu_597_p2 = (add9 - trunc_ln11_8_fu_588_p1);
assign sub_ln12_fu_404_p2 = (add9 - trunc_ln11_reg_882);
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = a_q0;
assign temp_d1 = a_q1;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln11_10_fu_626_p1 = add_ln11_10_fu_621_p2[10:0];
assign trunc_ln11_11_fu_645_p1 = add_ln11_11_fu_640_p2[10:0];
assign trunc_ln11_12_fu_664_p1 = add_ln11_12_fu_659_p2[10:0];
assign trunc_ln11_13_fu_683_p1 = add_ln11_13_fu_678_p2[10:0];
assign trunc_ln11_14_fu_702_p1 = add_ln11_14_fu_697_p2[10:0];
assign trunc_ln11_1_fu_432_p1 = add_ln11_1_fu_422_p2[10:0];
assign trunc_ln11_2_fu_451_p1 = add_ln11_2_fu_441_p2[10:0];
assign trunc_ln11_3_fu_488_p1 = add_ln11_3_fu_478_p2[10:0];
assign trunc_ln11_4_fu_512_p1 = add_ln11_4_fu_502_p2[10:0];
assign trunc_ln11_5_fu_531_p1 = add_ln11_5_fu_526_p2[10:0];
assign trunc_ln11_6_fu_550_p1 = add_ln11_6_fu_545_p2[10:0];
assign trunc_ln11_7_fu_569_p1 = add_ln11_7_fu_564_p2[10:0];
assign trunc_ln11_8_fu_588_p1 = add_ln11_8_fu_583_p2[10:0];
assign trunc_ln11_9_fu_607_p1 = add_ln11_9_fu_602_p2[10:0];
assign trunc_ln11_fu_383_p1 = ap_sig_allocacmp_j_34[10:0];
assign zext_ln11_10_fu_766_p1 = add_ln11_9_reg_1018;
assign zext_ln11_11_fu_770_p1 = add_ln11_10_reg_1032;
assign zext_ln11_12_fu_782_p1 = add_ln11_11_reg_1046;
assign zext_ln11_13_fu_786_p1 = add_ln11_12_reg_1060;
assign zext_ln11_14_fu_798_p1 = add_ln11_13_reg_1074;
assign zext_ln11_15_fu_802_p1 = add_ln11_14_reg_1088;
assign zext_ln11_1_fu_393_p1 = add_ln11_fu_387_p2;
assign zext_ln11_2_fu_427_p1 = add_ln11_1_fu_422_p2;
assign zext_ln11_3_fu_446_p1 = add_ln11_2_fu_441_p2;
assign zext_ln11_4_fu_483_p1 = add_ln11_3_fu_478_p2;
assign zext_ln11_5_fu_507_p1 = add_ln11_4_fu_502_p2;
assign zext_ln11_6_fu_734_p1 = add_ln11_5_reg_962;
assign zext_ln11_7_fu_738_p1 = add_ln11_6_reg_976;
assign zext_ln11_8_fu_750_p1 = add_ln11_7_reg_990;
assign zext_ln11_9_fu_754_p1 = add_ln11_8_reg_1004;
assign zext_ln11_fu_378_p1 = ap_sig_allocacmp_j_34;
assign zext_ln12_10_fu_774_p1 = sub_ln12_10_reg_1027;
assign zext_ln12_11_fu_778_p1 = sub_ln12_11_reg_1041;
assign zext_ln12_12_fu_790_p1 = sub_ln12_12_reg_1055;
assign zext_ln12_13_fu_794_p1 = sub_ln12_13_reg_1069;
assign zext_ln12_14_fu_806_p1 = sub_ln12_14_reg_1083;
assign zext_ln12_15_fu_810_p1 = sub_ln12_15_reg_1097;
assign zext_ln12_1_fu_417_p1 = sub_ln12_1_fu_413_p2;
assign zext_ln12_2_fu_464_p1 = sub_ln12_2_fu_460_p2;
assign zext_ln12_3_fu_473_p1 = sub_ln12_3_fu_469_p2;
assign zext_ln12_4_fu_726_p1 = sub_ln12_4_reg_943;
assign zext_ln12_5_fu_730_p1 = sub_ln12_5_reg_957;
assign zext_ln12_6_fu_742_p1 = sub_ln12_6_reg_971;
assign zext_ln12_7_fu_746_p1 = sub_ln12_7_reg_985;
assign zext_ln12_8_fu_758_p1 = sub_ln12_8_reg_999;
assign zext_ln12_9_fu_762_p1 = sub_ln12_9_reg_1013;
assign zext_ln12_fu_408_p1 = sub_ln12_fu_404_p2;
endmodule 