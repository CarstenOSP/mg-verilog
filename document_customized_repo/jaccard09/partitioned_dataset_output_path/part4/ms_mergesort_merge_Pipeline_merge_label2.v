
module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
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
input  [10:0] add9;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln11_7_fu_748_p2;
wire   [0:0] icmp_ln11_6_fu_709_p2;
wire   [0:0] icmp_ln11_5_fu_670_p2;
wire   [0:0] icmp_ln11_4_fu_631_p2;
wire   [0:0] icmp_ln11_3_fu_592_p2;
wire   [0:0] icmp_ln11_2_fu_547_p2;
wire   [0:0] icmp_ln11_1_fu_503_p2;
reg   [0:0] icmp_ln11_reg_882;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_374_p3;
reg   [31:0] reg_402;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_381_p3;
reg   [31:0] reg_408;
wire   [31:0] grp_fu_388_p3;
reg   [31:0] reg_414;
wire   [31:0] grp_fu_395_p3;
reg   [31:0] reg_420;
reg   [31:0] j_18_reg_868;
wire   [0:0] icmp_ln11_fu_434_p2;
reg   [0:0] icmp_ln11_reg_882_pp0_iter1_reg;
wire   [0:0] trunc_ln11_fu_440_p1;
reg   [0:0] trunc_ln11_reg_886;
reg   [0:0] trunc_ln11_reg_886_pp0_iter1_reg;
wire   [0:0] trunc_ln12_fu_467_p1;
reg   [0:0] trunc_ln12_reg_904;
reg   [9:0] lshr_ln_reg_908;
reg   [0:0] icmp_ln11_1_reg_913;
reg   [0:0] icmp_ln11_1_reg_913_pp0_iter1_reg;
reg   [9:0] lshr_ln12_1_reg_927;
reg   [0:0] icmp_ln11_2_reg_932;
reg   [0:0] icmp_ln11_2_reg_932_pp0_iter1_reg;
reg   [9:0] lshr_ln12_2_reg_946;
reg   [0:0] icmp_ln11_3_reg_951;
reg   [0:0] icmp_ln11_3_reg_951_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_965;
reg   [9:0] lshr_ln11_3_reg_970;
reg   [0:0] icmp_ln11_4_reg_975;
reg   [0:0] icmp_ln11_4_reg_975_pp0_iter1_reg;
reg   [9:0] lshr_ln12_4_reg_979;
reg   [9:0] lshr_ln12_4_reg_979_pp0_iter1_reg;
reg   [9:0] lshr_ln11_4_reg_984;
reg   [0:0] icmp_ln11_5_reg_989;
reg   [0:0] icmp_ln11_5_reg_989_pp0_iter1_reg;
reg   [9:0] lshr_ln12_5_reg_993;
reg   [9:0] lshr_ln12_5_reg_993_pp0_iter1_reg;
reg   [9:0] lshr_ln11_5_reg_998;
reg   [0:0] icmp_ln11_6_reg_1003;
reg   [0:0] icmp_ln11_6_reg_1003_pp0_iter1_reg;
reg   [9:0] lshr_ln12_6_reg_1007;
reg   [9:0] lshr_ln12_6_reg_1007_pp0_iter1_reg;
reg   [9:0] lshr_ln11_6_reg_1012;
reg   [0:0] icmp_ln11_7_reg_1017;
reg   [0:0] icmp_ln11_7_reg_1017_pp0_iter1_reg;
reg   [9:0] lshr_ln12_7_reg_1021;
reg   [9:0] lshr_ln12_7_reg_1021_pp0_iter1_reg;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln5_3_fu_456_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln11_fu_497_p1;
wire   [63:0] zext_ln11_1_fu_541_p1;
wire   [63:0] zext_ln11_2_fu_586_p1;
wire   [63:0] zext_ln11_3_fu_778_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_4_fu_783_p1;
wire   [63:0] zext_ln11_5_fu_788_p1;
wire   [63:0] zext_ln11_6_fu_793_p1;
wire   [63:0] zext_ln12_fu_798_p1;
wire   [63:0] zext_ln12_1_fu_803_p1;
wire   [63:0] zext_ln12_2_fu_808_p1;
wire   [63:0] zext_ln12_3_fu_813_p1;
wire   [63:0] zext_ln12_4_fu_818_p1;
wire   [63:0] zext_ln12_5_fu_823_p1;
wire   [63:0] zext_ln12_6_fu_828_p1;
wire   [63:0] zext_ln12_7_fu_833_p1;
reg   [31:0] j_1_fu_60;
wire   [31:0] add_ln11_7_fu_768_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_j_18;
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
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred459_state4;
reg    ap_predicate_pred467_state5;
reg    ap_predicate_pred477_state5;
reg    ap_predicate_pred485_state5;
reg    ap_predicate_pred493_state5;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred518_state4;
reg    ap_predicate_pred476_state5;
reg    ap_predicate_pred484_state5;
reg    ap_predicate_pred492_state5;
reg    ap_predicate_pred542_state5;
reg   [0:0] grp_fu_374_p0;
reg   [0:0] grp_fu_381_p0;
reg   [0:0] grp_fu_388_p0;
reg   [0:0] grp_fu_395_p0;
wire   [9:0] lshr_ln5_1_fu_447_p4;
wire   [10:0] trunc_ln11_1_fu_444_p1;
wire   [10:0] sub_ln12_fu_462_p2;
wire   [10:0] add_ln11_fu_481_p2;
wire   [9:0] lshr_ln1_fu_487_p4;
wire   [10:0] sub_ln12_1_fu_507_p2;
wire   [31:0] add_ln11_1_fu_522_p2;
wire   [9:0] lshr_ln11_1_fu_531_p4;
wire   [10:0] trunc_ln11_2_fu_527_p1;
wire   [10:0] sub_ln12_2_fu_552_p2;
wire   [31:0] add_ln11_2_fu_567_p2;
wire   [9:0] lshr_ln11_2_fu_576_p4;
wire   [10:0] trunc_ln11_3_fu_572_p1;
wire   [10:0] sub_ln12_3_fu_597_p2;
wire   [31:0] add_ln11_3_fu_612_p2;
wire   [10:0] trunc_ln11_4_fu_617_p1;
wire   [10:0] sub_ln12_4_fu_636_p2;
wire   [31:0] add_ln11_4_fu_651_p2;
wire   [10:0] trunc_ln11_5_fu_656_p1;
wire   [10:0] sub_ln12_5_fu_675_p2;
wire   [31:0] add_ln11_5_fu_690_p2;
wire   [10:0] trunc_ln11_6_fu_695_p1;
wire   [10:0] sub_ln12_6_fu_714_p2;
wire   [31:0] add_ln11_6_fu_729_p2;
wire   [10:0] trunc_ln11_7_fu_734_p1;
wire   [10:0] sub_ln12_7_fu_753_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_870;
reg    ap_condition_877;
reg    ap_condition_888;
reg    ap_condition_899;
reg    ap_condition_903;
reg    ap_condition_909;
reg    ap_condition_916;
reg    ap_condition_925;
reg    ap_condition_928;
reg    ap_condition_931;
reg    ap_condition_934;
reg    ap_condition_937;
reg    ap_condition_940;
reg    ap_condition_943;
reg    ap_condition_946;
reg    ap_condition_949;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_60 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_60 <= j;
    end else if (((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (icmp_ln11_3_fu_592_p2 == 1'd0) & (icmp_ln11_4_fu_631_p2 == 1'd0) & (icmp_ln11_5_fu_670_p2 == 1'd0) & (icmp_ln11_6_fu_709_p2 == 1'd0) & (icmp_ln11_7_fu_748_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_60 <= add_ln11_7_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred459_state4 <= ((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1));
        ap_predicate_pred518_state4 <= ((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0));
        icmp_ln11_reg_882 <= icmp_ln11_fu_434_p2;
        icmp_ln11_reg_882_pp0_iter1_reg <= icmp_ln11_reg_882;
        j_18_reg_868 <= ap_sig_allocacmp_j_18;
        trunc_ln11_reg_886 <= trunc_ln11_fu_440_p1;
        trunc_ln11_reg_886_pp0_iter1_reg <= trunc_ln11_reg_886;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred467_state5 <= ((icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred476_state5 <= ((icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred477_state5 <= ((icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred484_state5 <= ((icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred485_state5 <= ((icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred492_state5 <= ((icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred493_state5 <= ((icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        ap_predicate_pred542_state5 <= ((icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0));
        icmp_ln11_1_reg_913 <= icmp_ln11_1_fu_503_p2;
        icmp_ln11_1_reg_913_pp0_iter1_reg <= icmp_ln11_1_reg_913;
        icmp_ln11_2_reg_932 <= icmp_ln11_2_fu_547_p2;
        icmp_ln11_2_reg_932_pp0_iter1_reg <= icmp_ln11_2_reg_932;
        icmp_ln11_3_reg_951 <= icmp_ln11_3_fu_592_p2;
        icmp_ln11_3_reg_951_pp0_iter1_reg <= icmp_ln11_3_reg_951;
        icmp_ln11_4_reg_975 <= icmp_ln11_4_fu_631_p2;
        icmp_ln11_4_reg_975_pp0_iter1_reg <= icmp_ln11_4_reg_975;
        icmp_ln11_5_reg_989 <= icmp_ln11_5_fu_670_p2;
        icmp_ln11_5_reg_989_pp0_iter1_reg <= icmp_ln11_5_reg_989;
        icmp_ln11_6_reg_1003 <= icmp_ln11_6_fu_709_p2;
        icmp_ln11_6_reg_1003_pp0_iter1_reg <= icmp_ln11_6_reg_1003;
        icmp_ln11_7_reg_1017 <= icmp_ln11_7_fu_748_p2;
        icmp_ln11_7_reg_1017_pp0_iter1_reg <= icmp_ln11_7_reg_1017;
        lshr_ln11_3_reg_970 <= {{add_ln11_3_fu_612_p2[10:1]}};
        lshr_ln11_4_reg_984 <= {{add_ln11_4_fu_651_p2[10:1]}};
        lshr_ln11_5_reg_998 <= {{add_ln11_5_fu_690_p2[10:1]}};
        lshr_ln11_6_reg_1012 <= {{add_ln11_6_fu_729_p2[10:1]}};
        lshr_ln12_1_reg_927 <= {{sub_ln12_1_fu_507_p2[10:1]}};
        lshr_ln12_2_reg_946 <= {{sub_ln12_2_fu_552_p2[10:1]}};
        lshr_ln12_3_reg_965 <= {{sub_ln12_3_fu_597_p2[10:1]}};
        lshr_ln12_4_reg_979 <= {{sub_ln12_4_fu_636_p2[10:1]}};
        lshr_ln12_4_reg_979_pp0_iter1_reg <= lshr_ln12_4_reg_979;
        lshr_ln12_5_reg_993 <= {{sub_ln12_5_fu_675_p2[10:1]}};
        lshr_ln12_5_reg_993_pp0_iter1_reg <= lshr_ln12_5_reg_993;
        lshr_ln12_6_reg_1007 <= {{sub_ln12_6_fu_714_p2[10:1]}};
        lshr_ln12_6_reg_1007_pp0_iter1_reg <= lshr_ln12_6_reg_1007;
        lshr_ln12_7_reg_1021 <= {{sub_ln12_7_fu_753_p2[10:1]}};
        lshr_ln12_7_reg_1021_pp0_iter1_reg <= lshr_ln12_7_reg_1021;
        lshr_ln_reg_908 <= {{sub_ln12_fu_462_p2[10:1]}};
        trunc_ln12_reg_904 <= trunc_ln12_fu_467_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_402 <= grp_fu_374_p3;
        reg_408 <= grp_fu_381_p3;
        reg_414 <= grp_fu_388_p3;
        reg_420 <= grp_fu_395_p3;
    end
end
always @ (*) begin
    if ((icmp_ln11_reg_882 == 1'd0)) begin
        if ((1'b1 == ap_condition_899)) begin
            a_0_address0_local = zext_ln11_6_fu_793_p1;
        end else if ((1'b1 == ap_condition_888)) begin
            a_0_address0_local = zext_ln11_5_fu_788_p1;
        end else if ((1'b1 == ap_condition_877)) begin
            a_0_address0_local = zext_ln11_2_fu_586_p1;
        end else if ((1'b1 == ap_condition_870)) begin
            a_0_address0_local = zext_ln11_1_fu_541_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln11_reg_882 == 1'd0)) begin
        if ((1'b1 == ap_condition_925)) begin
            a_0_address1_local = zext_ln11_4_fu_783_p1;
        end else if ((1'b1 == ap_condition_916)) begin
            a_0_address1_local = zext_ln11_3_fu_778_p1;
        end else if ((1'b1 == ap_condition_909)) begin
            a_0_address1_local = zext_ln11_fu_497_p1;
        end else if ((1'b1 == ap_condition_903)) begin
            a_0_address1_local = zext_ln5_3_fu_456_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (icmp_ln11_3_fu_592_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1003== 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((icmp_ln11_reg_882 == 1'd0)) begin
        if ((1'b1 == ap_condition_937)) begin
            a_1_address0_local = zext_ln11_6_fu_793_p1;
        end else if ((1'b1 == ap_condition_934)) begin
            a_1_address0_local = zext_ln11_5_fu_788_p1;
        end else if ((1'b1 == ap_condition_931)) begin
            a_1_address0_local = zext_ln11_2_fu_586_p1;
        end else if ((1'b1 == ap_condition_928)) begin
            a_1_address0_local = zext_ln11_1_fu_541_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln11_reg_882 == 1'd0)) begin
        if ((1'b1 == ap_condition_949)) begin
            a_1_address1_local = zext_ln11_4_fu_783_p1;
        end else if ((1'b1 == ap_condition_946)) begin
            a_1_address1_local = zext_ln11_3_fu_778_p1;
        end else if ((1'b1 == ap_condition_943)) begin
            a_1_address1_local = zext_ln11_fu_497_p1;
        end else if ((1'b1 == ap_condition_940)) begin
            a_1_address1_local = zext_ln5_3_fu_456_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (icmp_ln11_3_fu_592_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1003== 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln11_reg_882 == 1'd0) & (icmp_ln11_1_fu_503_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0)) | ((icmp_ln11_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln11_reg_882 == 1'd1) | ((icmp_ln11_1_fu_503_p2 == 1'd0) | ((icmp_ln11_2_fu_547_p2 == 1'd1) | ((icmp_ln11_3_fu_592_p2 == 1'd1) | ((icmp_ln11_4_fu_631_p2 == 1'd1) | ((icmp_ln11_5_fu_670_p2 == 1'd1) | ((icmp_ln11_6_fu_709_p2 == 1'd1) | (icmp_ln11_7_fu_748_p2 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_reg_882_pp0_iter1_reg == 1'd1) | ((icmp_ln11_1_reg_913_pp0_iter1_reg == 1'd0) | ((icmp_ln11_2_reg_932_pp0_iter1_reg == 1'd1) | ((icmp_ln11_3_reg_951_pp0_iter1_reg == 1'd1) | ((icmp_ln11_4_reg_975_pp0_iter1_reg == 1'd1) | ((icmp_ln11_5_reg_989_pp0_iter1_reg == 1'd1) | ((icmp_ln11_7_reg_1017_pp0_iter1_reg == 1'd1) | (icmp_ln11_6_reg_1003_pp0_iter1_reg == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_18 = j;
    end else begin
        ap_sig_allocacmp_j_18 = j_1_fu_60;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_374_p0 = trunc_ln11_reg_886_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_374_p0 = trunc_ln11_reg_886;
        end else begin
            grp_fu_374_p0 = 'bx;
        end
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p0 = trunc_ln11_reg_886_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p0 = trunc_ln11_reg_886;
        end else begin
            grp_fu_381_p0 = 'bx;
        end
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_388_p0 = trunc_ln11_reg_886_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_388_p0 = trunc_ln11_reg_886;
        end else begin
            grp_fu_388_p0 = 'bx;
        end
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_395_p0 = trunc_ln11_reg_886_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_395_p0 = trunc_ln11_reg_886;
        end else begin
            grp_fu_395_p0 = 'bx;
        end
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_predicate_pred542_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_1_address0_local = zext_ln12_7_fu_833_p1;
    end else if (((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_1_address0_local = zext_ln12_6_fu_828_p1;
    end else if (((ap_predicate_pred518_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_1_address0_local = zext_ln12_3_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_1_address0_local = zext_ln12_2_fu_808_p1;
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_predicate_pred484_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_1_address1_local = zext_ln12_5_fu_823_p1;
    end else if (((ap_predicate_pred476_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_1_address1_local = zext_ln12_4_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_1_address1_local = zext_ln12_1_fu_803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_1_address1_local = zext_ln12_fu_798_p1;
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred542_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred518_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred484_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred476_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred542_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred518_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_d0_local = reg_420;
    end else if ((((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_d0_local = reg_414;
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred484_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_d1_local = reg_408;
    end else if ((((ap_predicate_pred476_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_d1_local = reg_402;
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred542_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred492_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred518_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred484_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred476_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred493_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln12_7_fu_833_p1;
    end else if (((ap_predicate_pred485_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln12_6_fu_828_p1;
    end else if (((ap_predicate_pred459_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address0_local = zext_ln12_3_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_address0_local = zext_ln12_2_fu_808_p1;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_predicate_pred477_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln12_5_fu_823_p1;
    end else if (((ap_predicate_pred467_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln12_4_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_address1_local = zext_ln12_1_fu_803_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0))) begin
        temp_address1_local = zext_ln12_fu_798_p1;
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred493_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred485_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred459_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred477_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred467_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred493_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred459_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_d0_local = reg_420;
    end else if ((((ap_predicate_pred485_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_d0_local = reg_414;
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred477_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_d1_local = reg_408;
    end else if ((((ap_predicate_pred467_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_d1_local = reg_402;
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred493_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred485_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred459_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred477_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_predicate_pred467_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln12_reg_904 == 1'd0) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln12_reg_904 == 1'd1) & (icmp_ln11_reg_882_pp0_iter1_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln11_1_fu_522_p2 = (j_18_reg_868 + 32'd2);
assign add_ln11_2_fu_567_p2 = (j_18_reg_868 + 32'd3);
assign add_ln11_3_fu_612_p2 = (j_18_reg_868 + 32'd4);
assign add_ln11_4_fu_651_p2 = (j_18_reg_868 + 32'd5);
assign add_ln11_5_fu_690_p2 = (j_18_reg_868 + 32'd6);
assign add_ln11_6_fu_729_p2 = (j_18_reg_868 + 32'd7);
assign add_ln11_7_fu_768_p2 = (j_18_reg_868 + 32'd8);
assign add_ln11_fu_481_p2 = (trunc_ln11_1_fu_444_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_870 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_877 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (icmp_ln11_3_fu_592_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_888 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_899 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_903 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_909 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_916 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_925 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_928 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_931 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (icmp_ln11_2_fu_547_p2 == 1'd0) & (icmp_ln11_3_fu_592_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_934 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_937 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_7_reg_1017 == 1'd0) & (icmp_ln11_6_reg_1003 == 1'd0) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_940 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_943 = ((icmp_ln11_1_fu_503_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln11_reg_886 == 1'd0));
end
always @ (*) begin
    ap_condition_946 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd1));
end
always @ (*) begin
    ap_condition_949 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_989 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_975 == 1'd0) & (icmp_ln11_3_reg_951 == 1'd0) & (icmp_ln11_2_reg_932 == 1'd0) & (icmp_ln11_1_reg_913 == 1'd1) & (trunc_ln11_reg_886 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_374_p3 = ((grp_fu_374_p0[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign grp_fu_381_p3 = ((grp_fu_381_p0[0:0] == 1'b1) ? a_0_q1 : a_1_q1);
assign grp_fu_388_p3 = ((grp_fu_388_p0[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign grp_fu_395_p3 = ((grp_fu_395_p0[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign icmp_ln11_1_fu_503_p2 = (($signed(j_18_reg_868) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_547_p2 = (($signed(add_ln11_1_fu_522_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_592_p2 = (($signed(add_ln11_2_fu_567_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_4_fu_631_p2 = (($signed(add_ln11_3_fu_612_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_5_fu_670_p2 = (($signed(add_ln11_4_fu_651_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_6_fu_709_p2 = (($signed(add_ln11_5_fu_690_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_7_fu_748_p2 = (($signed(add_ln11_6_fu_729_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_434_p2 = (($signed(ap_sig_allocacmp_j_18) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln11_1_fu_531_p4 = {{add_ln11_1_fu_522_p2[10:1]}};
assign lshr_ln11_2_fu_576_p4 = {{add_ln11_2_fu_567_p2[10:1]}};
assign lshr_ln1_fu_487_p4 = {{add_ln11_fu_481_p2[10:1]}};
assign lshr_ln5_1_fu_447_p4 = {{j_18_reg_868[10:1]}};
assign sub_ln12_1_fu_507_p2 = (add9 - add_ln11_fu_481_p2);
assign sub_ln12_2_fu_552_p2 = (add9 - trunc_ln11_2_fu_527_p1);
assign sub_ln12_3_fu_597_p2 = (add9 - trunc_ln11_3_fu_572_p1);
assign sub_ln12_4_fu_636_p2 = (add9 - trunc_ln11_4_fu_617_p1);
assign sub_ln12_5_fu_675_p2 = (add9 - trunc_ln11_5_fu_656_p1);
assign sub_ln12_6_fu_714_p2 = (add9 - trunc_ln11_6_fu_695_p1);
assign sub_ln12_7_fu_753_p2 = (add9 - trunc_ln11_7_fu_734_p1);
assign sub_ln12_fu_462_p2 = (add9 - trunc_ln11_1_fu_444_p1);
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
assign trunc_ln11_1_fu_444_p1 = j_18_reg_868[10:0];
assign trunc_ln11_2_fu_527_p1 = add_ln11_1_fu_522_p2[10:0];
assign trunc_ln11_3_fu_572_p1 = add_ln11_2_fu_567_p2[10:0];
assign trunc_ln11_4_fu_617_p1 = add_ln11_3_fu_612_p2[10:0];
assign trunc_ln11_5_fu_656_p1 = add_ln11_4_fu_651_p2[10:0];
assign trunc_ln11_6_fu_695_p1 = add_ln11_5_fu_690_p2[10:0];
assign trunc_ln11_7_fu_734_p1 = add_ln11_6_fu_729_p2[10:0];
assign trunc_ln11_fu_440_p1 = ap_sig_allocacmp_j_18[0:0];
assign trunc_ln12_fu_467_p1 = sub_ln12_fu_462_p2[0:0];
assign zext_ln11_1_fu_541_p1 = lshr_ln11_1_fu_531_p4;
assign zext_ln11_2_fu_586_p1 = lshr_ln11_2_fu_576_p4;
assign zext_ln11_3_fu_778_p1 = lshr_ln11_3_reg_970;
assign zext_ln11_4_fu_783_p1 = lshr_ln11_4_reg_984;
assign zext_ln11_5_fu_788_p1 = lshr_ln11_5_reg_998;
assign zext_ln11_6_fu_793_p1 = lshr_ln11_6_reg_1012;
assign zext_ln11_fu_497_p1 = lshr_ln1_fu_487_p4;
assign zext_ln12_1_fu_803_p1 = lshr_ln12_1_reg_927;
assign zext_ln12_2_fu_808_p1 = lshr_ln12_2_reg_946;
assign zext_ln12_3_fu_813_p1 = lshr_ln12_3_reg_965;
assign zext_ln12_4_fu_818_p1 = lshr_ln12_4_reg_979_pp0_iter1_reg;
assign zext_ln12_5_fu_823_p1 = lshr_ln12_5_reg_993_pp0_iter1_reg;
assign zext_ln12_6_fu_828_p1 = lshr_ln12_6_reg_1007_pp0_iter1_reg;
assign zext_ln12_7_fu_833_p1 = lshr_ln12_7_reg_1021_pp0_iter1_reg;
assign zext_ln12_fu_798_p1 = lshr_ln_reg_908;
assign zext_ln5_3_fu_456_p1 = lshr_ln5_1_fu_447_p4;
endmodule 
