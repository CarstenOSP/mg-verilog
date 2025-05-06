
module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0);  
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
input  [31:0] start_r;
input  [31:0] stop;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln18_1_reg_713;
reg   [0:0] icmp_ln18_reg_699;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_431;
reg   [31:0] j_3_reg_441;
reg   [31:0] reg_477;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_489;
reg   [31:0] k_1_reg_679;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_687;
reg   [31:0] j_1_reg_693;
wire   [0:0] icmp_ln18_fu_525_p2;
wire   [0:0] icmp_ln18_1_fu_540_p2;
wire   [0:0] grp_fu_471_p2;
reg   [0:0] icmp_ln21_reg_717;
wire   [31:0] i_3_fu_545_p2;
reg   [31:0] i_3_reg_721;
wire   [31:0] j_2_fu_550_p2;
reg   [31:0] j_2_reg_726;
wire   [2:0] trunc_ln18_fu_555_p1;
reg   [2:0] trunc_ln18_reg_731;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] zext_ln5_1_fu_616_p1;
reg   [63:0] zext_ln5_1_reg_745;
reg   [0:0] icmp_ln21_1_reg_765;
wire   [31:0] i_5_fu_620_p2;
reg   [31:0] i_5_reg_769;
wire   [31:0] j_4_fu_626_p2;
reg   [31:0] j_4_reg_774;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_434_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_431;
reg   [31:0] ap_phi_mux_j_3_phi_fu_444_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_441;
reg   [31:0] ap_phi_mux_i_6_phi_fu_454_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_6_reg_451;
reg   [31:0] ap_phi_mux_j_5_phi_fu_464_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_5_reg_461;
wire   [63:0] zext_ln19_fu_530_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_535_p1;
wire   [63:0] zext_ln5_fu_567_p1;
wire    ap_block_pp0_stage3;
wire   [7:0] a_6_addr_gep_fu_223_p3;
wire   [7:0] a_5_addr_gep_fu_231_p3;
wire   [7:0] a_4_addr_gep_fu_239_p3;
wire   [7:0] a_3_addr_gep_fu_247_p3;
wire   [7:0] a_2_addr_gep_fu_255_p3;
wire   [7:0] a_1_addr_gep_fu_263_p3;
wire   [7:0] a_0_addr_gep_fu_271_p3;
wire   [7:0] a_7_addr_gep_fu_279_p3;
wire   [63:0] zext_ln19_1_fu_587_p1;
wire   [63:0] zext_ln20_1_fu_592_p1;
wire   [7:0] a_6_addr_2_gep_fu_367_p3;
wire   [7:0] a_5_addr_2_gep_fu_375_p3;
wire   [7:0] a_4_addr_2_gep_fu_383_p3;
wire   [7:0] a_3_addr_2_gep_fu_391_p3;
wire   [7:0] a_2_addr_2_gep_fu_399_p3;
wire   [7:0] a_1_addr_2_gep_fu_407_p3;
wire   [7:0] a_7_addr_2_gep_fu_415_p3;
wire   [7:0] a_0_addr_2_gep_fu_423_p3;
reg   [31:0] k_fu_70;
wire   [31:0] add_ln18_1_fu_632_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_74;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_78;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    a_6_we0_local;
reg   [31:0] a_6_d0_local;
reg    a_6_ce0_local;
reg   [7:0] a_6_address0_local;
reg    a_5_we0_local;
reg   [31:0] a_5_d0_local;
reg    a_5_ce0_local;
reg   [7:0] a_5_address0_local;
reg    a_4_we0_local;
reg   [31:0] a_4_d0_local;
reg    a_4_ce0_local;
reg   [7:0] a_4_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_3_ce0_local;
reg   [7:0] a_3_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_2_ce0_local;
reg   [7:0] a_2_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [7:0] a_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [7:0] a_0_address0_local;
reg    a_7_we0_local;
reg   [31:0] a_7_d0_local;
reg    a_7_ce0_local;
reg   [7:0] a_7_address0_local;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage2;
wire   [7:0] lshr_ln5_2_fu_558_p4;
wire   [10:0] trunc_ln18_1_fu_597_p1;
wire   [10:0] add_ln18_fu_600_p2;
wire   [7:0] lshr_ln5_3_fu_606_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_224;
reg    ap_condition_651;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_70 = 32'd0;
#0 i_2_fu_74 = 32'd0;
#0 j_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_74 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_74 <= ap_phi_mux_i_6_phi_fu_454_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_224)) begin
        if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln21_reg_717 == 1'd0))) begin
            i_4_reg_431 <= i_3_reg_721;
        end else if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln21_reg_717 == 1'd1))) begin
            i_4_reg_431 <= i_reg_687;
        end else if (~((icmp_ln18_reg_699 == 1'd1) | (icmp_ln18_1_reg_713 == 1'd0))) begin
            i_4_reg_431 <= ap_phi_reg_pp0_iter0_i_4_reg_431;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_224)) begin
        if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln21_reg_717 == 1'd0))) begin
            j_3_reg_441 <= j_1_reg_693;
        end else if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln21_reg_717 == 1'd1))) begin
            j_3_reg_441 <= j_2_reg_726;
        end else if (~((icmp_ln18_reg_699 == 1'd1) | (icmp_ln18_1_reg_713 == 1'd0))) begin
            j_3_reg_441 <= ap_phi_reg_pp0_iter0_j_3_reg_441;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_78 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_78 <= ap_phi_mux_j_5_phi_fu_464_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_70 <= start_r;
        end else if ((1'b1 == ap_condition_651)) begin
            k_fu_70 <= add_ln18_1_fu_632_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_721 <= i_3_fu_545_p2;
        j_2_reg_726 <= j_2_fu_550_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_5_reg_769 <= i_5_fu_620_p2;
        j_4_reg_774 <= j_4_fu_626_p2;
        zext_ln5_1_reg_745[7 : 0] <= zext_ln5_1_fu_616_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_687 <= ap_sig_allocacmp_i;
        icmp_ln18_1_reg_713 <= icmp_ln18_1_fu_540_p2;
        icmp_ln18_reg_699 <= icmp_ln18_fu_525_p2;
        j_1_reg_693 <= ap_sig_allocacmp_j_1;
        k_1_reg_679 <= k_fu_70;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln21_1_reg_765 <= grp_fu_471_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln21_reg_717 <= grp_fu_471_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_477 <= temp_q1;
        reg_489 <= temp_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        trunc_ln18_reg_731 <= trunc_ln18_fu_555_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_423_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7))) begin
        a_0_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_0_address0_local = a_0_addr_gep_fu_271_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_0_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_0_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_0_d0_local = reg_489;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd0) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd7)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_407_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0))) begin
        a_1_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_1_address0_local = a_1_addr_gep_fu_263_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_1_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_1_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_1_d0_local = reg_489;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd1) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd0)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_399_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1))) begin
        a_2_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_2_address0_local = a_2_addr_gep_fu_255_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_2_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_2_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_2_d0_local = reg_489;
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd2) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd1)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_391_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2))) begin
        a_3_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_3_address0_local = a_3_addr_gep_fu_247_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_3_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_3_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_3_d0_local = reg_489;
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd3) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd2)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3))) begin
        a_4_address0_local = a_4_addr_2_gep_fu_383_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3))) begin
        a_4_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_4_address0_local = a_4_addr_gep_fu_239_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_4_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_4_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_4_d0_local = reg_489;
    end else begin
        a_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd4) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd3)))) begin
        a_4_we0_local = 1'b1;
    end else begin
        a_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4))) begin
        a_5_address0_local = a_5_addr_2_gep_fu_375_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4))) begin
        a_5_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_5_address0_local = a_5_addr_gep_fu_231_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_5_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_5_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_5_d0_local = reg_489;
    end else begin
        a_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd5) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd4)))) begin
        a_5_we0_local = 1'b1;
    end else begin
        a_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5))) begin
        a_6_address0_local = a_6_addr_2_gep_fu_367_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5))) begin
        a_6_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_6_address0_local = a_6_addr_gep_fu_223_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_6_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_6_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_6_d0_local = reg_489;
    end else begin
        a_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd6) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd5)))) begin
        a_6_we0_local = 1'b1;
    end else begin
        a_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6))) begin
        a_7_address0_local = a_7_addr_2_gep_fu_415_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6))) begin
        a_7_address0_local = zext_ln5_1_reg_745;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd1))) begin
        a_7_address0_local = a_7_addr_gep_fu_279_p3;
    end else if (((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd0))) begin
        a_7_address0_local = zext_ln5_fu_567_p1;
    end else begin
        a_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd1)))) begin
        a_7_d0_local = reg_477;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd0)))) begin
        a_7_d0_local = reg_489;
    end else begin
        a_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd0)) | ((icmp_ln18_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_555_p1 == 3'd7) & (icmp_ln21_reg_717 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_1_reg_765 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_731 == 3'd6)))) begin
        a_7_we0_local = 1'b1;
    end else begin
        a_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln18_reg_699 == 1'd1) | (icmp_ln18_1_reg_713 == 1'd0)))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_699 == 1'd1) | (icmp_ln18_1_reg_713 == 1'd0)))) begin
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
    if (~((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
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
    if ((icmp_ln18_reg_699 == 1'd0)) begin
        if ((icmp_ln21_reg_717 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_434_p4 = i_3_reg_721;
        end else if ((icmp_ln21_reg_717 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_434_p4 = i_reg_687;
        end else begin
            ap_phi_mux_i_4_phi_fu_434_p4 = ap_phi_reg_pp0_iter0_i_4_reg_431;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_434_p4 = ap_phi_reg_pp0_iter0_i_4_reg_431;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln18_1_reg_713 == 1'd1))) begin
        if ((icmp_ln21_1_reg_765 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_454_p4 = i_5_reg_769;
        end else if ((icmp_ln21_1_reg_765 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_454_p4 = i_4_reg_431;
        end else begin
            ap_phi_mux_i_6_phi_fu_454_p4 = ap_phi_reg_pp0_iter1_i_6_reg_451;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_454_p4 = ap_phi_reg_pp0_iter1_i_6_reg_451;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_699 == 1'd0)) begin
        if ((icmp_ln21_reg_717 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_444_p4 = j_1_reg_693;
        end else if ((icmp_ln21_reg_717 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_444_p4 = j_2_reg_726;
        end else begin
            ap_phi_mux_j_3_phi_fu_444_p4 = ap_phi_reg_pp0_iter0_j_3_reg_441;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_444_p4 = ap_phi_reg_pp0_iter0_j_3_reg_441;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_699 == 1'd0) & (icmp_ln18_1_reg_713 == 1'd1))) begin
        if ((icmp_ln21_1_reg_765 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_464_p4 = j_3_reg_441;
        end else if ((icmp_ln21_1_reg_765 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_464_p4 = j_4_reg_774;
        end else begin
            ap_phi_mux_j_5_phi_fu_464_p4 = ap_phi_reg_pp0_iter1_j_5_reg_461;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_464_p4 = ap_phi_reg_pp0_iter1_j_5_reg_461;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_6_phi_fu_454_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_5_phi_fu_464_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_78;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln20_1_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln20_fu_535_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln19_1_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln19_fu_530_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
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
assign a_0_addr_2_gep_fu_423_p3 = zext_ln5_1_reg_745;
assign a_0_addr_gep_fu_271_p3 = zext_ln5_fu_567_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_407_p3 = zext_ln5_1_reg_745;
assign a_1_addr_gep_fu_263_p3 = zext_ln5_fu_567_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_399_p3 = zext_ln5_1_reg_745;
assign a_2_addr_gep_fu_255_p3 = zext_ln5_fu_567_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_391_p3 = zext_ln5_1_reg_745;
assign a_3_addr_gep_fu_247_p3 = zext_ln5_fu_567_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign a_4_addr_2_gep_fu_383_p3 = zext_ln5_1_reg_745;
assign a_4_addr_gep_fu_239_p3 = zext_ln5_fu_567_p1;
assign a_4_address0 = a_4_address0_local;
assign a_4_ce0 = a_4_ce0_local;
assign a_4_d0 = a_4_d0_local;
assign a_4_we0 = a_4_we0_local;
assign a_5_addr_2_gep_fu_375_p3 = zext_ln5_1_reg_745;
assign a_5_addr_gep_fu_231_p3 = zext_ln5_fu_567_p1;
assign a_5_address0 = a_5_address0_local;
assign a_5_ce0 = a_5_ce0_local;
assign a_5_d0 = a_5_d0_local;
assign a_5_we0 = a_5_we0_local;
assign a_6_addr_2_gep_fu_367_p3 = zext_ln5_1_reg_745;
assign a_6_addr_gep_fu_223_p3 = zext_ln5_fu_567_p1;
assign a_6_address0 = a_6_address0_local;
assign a_6_ce0 = a_6_ce0_local;
assign a_6_d0 = a_6_d0_local;
assign a_6_we0 = a_6_we0_local;
assign a_7_addr_2_gep_fu_415_p3 = zext_ln5_1_reg_745;
assign a_7_addr_gep_fu_279_p3 = zext_ln5_fu_567_p1;
assign a_7_address0 = a_7_address0_local;
assign a_7_ce0 = a_7_ce0_local;
assign a_7_d0 = a_7_d0_local;
assign a_7_we0 = a_7_we0_local;
assign add_ln18_1_fu_632_p2 = (k_1_reg_679 + 32'd2);
assign add_ln18_fu_600_p2 = (trunc_ln18_1_fu_597_p1 + 11'd1);
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
    ap_condition_224 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_651 = ((icmp_ln18_reg_699 == 1'd0) & (icmp_ln18_1_reg_713 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_phi_reg_pp0_iter0_i_4_reg_431 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_441 = 'bx;
assign ap_phi_reg_pp0_iter1_i_6_reg_451 = 'bx;
assign ap_phi_reg_pp0_iter1_j_5_reg_461 = 'bx;
assign ap_ready = ap_ready_sig;
assign grp_fu_471_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign i_3_fu_545_p2 = (i_reg_687 + 32'd1);
assign i_5_fu_620_p2 = (i_4_reg_431 + 32'd1);
assign icmp_ln18_1_fu_540_p2 = (($signed(k_fu_70) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_525_p2 = (($signed(k_fu_70) > $signed(stop)) ? 1'b1 : 1'b0);
assign j_2_fu_550_p2 = ($signed(j_1_reg_693) + $signed(32'd4294967295));
assign j_4_fu_626_p2 = ($signed(j_3_reg_441) + $signed(32'd4294967295));
assign lshr_ln5_2_fu_558_p4 = {{k_1_reg_679[10:3]}};
assign lshr_ln5_3_fu_606_p4 = {{add_ln18_fu_600_p2[10:3]}};
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_1_fu_597_p1 = k_1_reg_679[10:0];
assign trunc_ln18_fu_555_p1 = k_1_reg_679[2:0];
assign zext_ln19_1_fu_587_p1 = ap_phi_mux_j_3_phi_fu_444_p4;
assign zext_ln19_fu_530_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_1_fu_592_p1 = ap_phi_mux_i_4_phi_fu_434_p4;
assign zext_ln20_fu_535_p1 = ap_sig_allocacmp_i;
assign zext_ln5_1_fu_616_p1 = lshr_ln5_3_fu_606_p4;
assign zext_ln5_fu_567_p1 = lshr_ln5_2_fu_558_p4;
always @ (posedge ap_clk) begin
    zext_ln5_1_reg_745[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
