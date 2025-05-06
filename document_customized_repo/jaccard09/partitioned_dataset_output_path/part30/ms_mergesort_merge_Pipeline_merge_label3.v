
module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,temp_1_address0,temp_1_ce0,temp_1_q0,temp_1_address1,temp_1_ce1,temp_1_q1,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0);  
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
input  [31:0] stop;
output  [8:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [9:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
input  [31:0] temp_1_q0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
input  [31:0] temp_1_q1;
output  [8:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [8:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [8:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln18_3_fu_978_p2;
reg   [0:0] icmp_ln18_2_reg_1229;
reg   [0:0] icmp_ln18_1_reg_1160;
reg   [0:0] icmp_ln18_reg_1092;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_506;
reg   [31:0] j_3_reg_516;
reg   [31:0] i_6_reg_526;
reg   [31:0] j_5_reg_537;
reg   [31:0] i_8_reg_548;
reg   [31:0] j_7_reg_559;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] k_1_reg_1067;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_1078;
reg   [31:0] j_1_reg_1085;
wire   [0:0] icmp_ln18_fu_614_p2;
wire   [31:0] tmp_j_fu_657_p3;
reg   [31:0] tmp_j_reg_1116;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_i_fu_665_p3;
reg   [31:0] tmp_i_reg_1124;
wire   [0:0] icmp_ln21_fu_673_p2;
reg   [0:0] icmp_ln21_reg_1132;
wire   [31:0] i_3_fu_679_p2;
reg   [31:0] i_3_reg_1136;
wire   [31:0] j_2_fu_684_p2;
reg   [31:0] j_2_reg_1141;
wire   [1:0] trunc_ln18_fu_689_p1;
reg   [1:0] trunc_ln18_reg_1146;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] trunc_ln18_4_fu_713_p1;
reg   [0:0] trunc_ln18_4_reg_1150;
wire   [0:0] trunc_ln18_5_fu_717_p1;
reg   [0:0] trunc_ln18_5_reg_1155;
wire   [0:0] icmp_ln18_1_fu_753_p2;
wire   [31:0] tmp_j_1_fu_757_p3;
reg   [31:0] tmp_j_1_reg_1184;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] tmp_i_1_fu_764_p3;
reg   [31:0] tmp_i_1_reg_1192;
wire   [0:0] icmp_ln21_1_fu_771_p2;
reg   [0:0] icmp_ln21_1_reg_1200;
wire   [31:0] i_5_fu_777_p2;
reg   [31:0] i_5_reg_1204;
wire   [31:0] j_4_fu_783_p2;
reg   [31:0] j_4_reg_1209;
wire   [0:0] trunc_ln18_6_fu_820_p1;
reg   [0:0] trunc_ln18_6_reg_1214;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] trunc_ln18_7_fu_824_p1;
reg   [0:0] trunc_ln18_7_reg_1219;
reg   [8:0] lshr_ln5_7_reg_1224;
wire   [0:0] icmp_ln18_2_fu_875_p2;
wire   [31:0] tmp_j_2_fu_880_p3;
reg   [31:0] tmp_j_2_reg_1253;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] tmp_i_2_fu_887_p3;
reg   [31:0] tmp_i_2_reg_1261;
wire   [0:0] icmp_ln21_2_fu_894_p2;
reg   [0:0] icmp_ln21_2_reg_1269;
wire   [31:0] i_7_fu_900_p2;
reg   [31:0] i_7_reg_1273;
wire   [31:0] j_6_fu_906_p2;
reg   [31:0] j_6_reg_1278;
wire   [0:0] trunc_ln18_8_fu_923_p1;
reg   [0:0] trunc_ln18_8_reg_1283;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] trunc_ln18_9_fu_927_p1;
reg   [0:0] trunc_ln18_9_reg_1288;
reg   [8:0] lshr_ln5_8_reg_1293;
reg   [0:0] icmp_ln18_3_reg_1298;
wire   [63:0] zext_ln5_5_fu_983_p1;
reg   [63:0] zext_ln5_5_reg_1322;
wire   [31:0] tmp_j_3_fu_986_p3;
reg   [31:0] tmp_j_3_reg_1334;
wire   [31:0] tmp_i_3_fu_993_p3;
reg   [31:0] tmp_i_3_reg_1342;
wire   [0:0] icmp_ln21_3_fu_1000_p2;
reg   [0:0] icmp_ln21_3_reg_1350;
wire   [31:0] i_9_fu_1006_p2;
reg   [31:0] i_9_reg_1354;
wire   [31:0] j_8_fu_1012_p2;
reg   [31:0] j_8_reg_1359;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_509_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_506;
reg   [31:0] ap_phi_mux_j_3_phi_fu_519_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_516;
reg   [31:0] ap_phi_mux_i_6_phi_fu_529_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_6_reg_526;
reg   [31:0] ap_phi_mux_j_5_phi_fu_540_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_5_reg_537;
reg   [31:0] ap_phi_mux_i_8_phi_fu_551_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_8_reg_548;
reg   [31:0] ap_phi_mux_j_7_phi_fu_562_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_7_reg_559;
reg   [31:0] ap_phi_mux_i_10_phi_fu_573_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_10_reg_570;
reg   [31:0] ap_phi_mux_j_9_phi_fu_583_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_9_reg_580;
wire   [63:0] zext_ln5_1_fu_645_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_fu_629_p1;
wire   [63:0] zext_ln5_2_fu_701_p1;
wire    ap_block_pp0_stage3;
wire   [8:0] a_2_addr_gep_fu_186_p3;
wire   [8:0] a_1_addr_gep_fu_194_p3;
wire   [8:0] a_0_addr_gep_fu_202_p3;
wire   [8:0] a_3_addr_gep_fu_210_p3;
wire   [63:0] zext_ln18_1_fu_747_p1;
wire   [63:0] zext_ln18_fu_731_p1;
wire   [63:0] zext_ln5_3_fu_808_p1;
wire    ap_block_pp0_stage5;
wire   [8:0] a_2_addr_2_gep_fu_282_p3;
wire   [8:0] a_1_addr_2_gep_fu_290_p3;
wire   [8:0] a_3_addr_2_gep_fu_298_p3;
wire   [8:0] a_0_addr_2_gep_fu_306_p3;
wire   [63:0] zext_ln18_3_fu_854_p1;
wire   [63:0] zext_ln18_2_fu_838_p1;
wire   [63:0] zext_ln5_4_fu_912_p1;
wire    ap_block_pp0_stage7;
wire   [8:0] a_2_addr_4_gep_fu_378_p3;
wire   [8:0] a_3_addr_4_gep_fu_386_p3;
wire   [8:0] a_0_addr_4_gep_fu_394_p3;
wire   [8:0] a_1_addr_4_gep_fu_402_p3;
wire   [63:0] zext_ln18_5_fu_957_p1;
wire   [63:0] zext_ln18_4_fu_941_p1;
wire   [8:0] a_3_addr_6_gep_fu_474_p3;
wire   [8:0] a_1_addr_6_gep_fu_482_p3;
wire   [8:0] a_0_addr_6_gep_fu_490_p3;
wire   [8:0] a_2_addr_6_gep_fu_498_p3;
reg   [31:0] k_fu_60;
wire   [31:0] add_ln18_3_fu_1018_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_64;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_68;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
wire    ap_block_pp0_stage0;
wire   [9:0] lshr_ln5_3_fu_619_p4;
wire   [9:0] lshr_ln5_4_fu_635_p4;
wire    ap_block_pp0_stage2;
wire   [0:0] trunc_ln18_2_fu_651_p1;
wire   [0:0] trunc_ln18_3_fu_654_p1;
wire   [8:0] lshr_ln5_5_fu_692_p4;
wire   [9:0] lshr_ln2_fu_721_p4;
wire   [9:0] lshr_ln18_1_fu_737_p4;
wire    ap_block_pp0_stage4;
wire   [10:0] trunc_ln18_1_fu_789_p1;
wire   [10:0] add_ln18_fu_792_p2;
wire   [8:0] lshr_ln5_6_fu_798_p4;
wire   [9:0] lshr_ln18_2_fu_828_p4;
wire   [9:0] lshr_ln18_3_fu_844_p4;
wire   [31:0] add_ln18_1_fu_860_p2;
wire    ap_block_pp0_stage6;
wire   [9:0] lshr_ln18_4_fu_931_p4;
wire   [9:0] lshr_ln18_5_fu_947_p4;
wire   [31:0] add_ln18_2_fu_963_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_382;
reg    ap_condition_366;
reg    ap_condition_326;
reg    ap_condition_328;
reg    ap_condition_345;
reg    ap_condition_352;
reg    ap_condition_355;
reg    ap_condition_347;
reg    ap_condition_361;
reg    ap_condition_368;
reg    ap_condition_371;
reg    ap_condition_363;
reg    ap_condition_990;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_60 = 32'd0;
#0 i_2_fu_64 = 32'd0;
#0 j_fu_68 = 32'd0;
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_64 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_64 <= ap_phi_mux_i_10_phi_fu_573_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_328)) begin
        if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln21_reg_1132 == 1'd0))) begin
            i_4_reg_506 <= i_3_reg_1136;
        end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln21_reg_1132 == 1'd1))) begin
            i_4_reg_506 <= i_reg_1078;
        end else if ((1'b1 == ap_condition_326)) begin
            i_4_reg_506 <= ap_phi_reg_pp0_iter0_i_4_reg_506;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((1'b1 == ap_condition_355)) begin
            i_6_reg_526 <= i_5_reg_1204;
        end else if ((1'b1 == ap_condition_352)) begin
            i_6_reg_526 <= i_4_reg_506;
        end else if ((1'b1 == ap_condition_345)) begin
            i_6_reg_526 <= ap_phi_reg_pp0_iter0_i_6_reg_526;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_363)) begin
        if ((1'b1 == ap_condition_371)) begin
            i_8_reg_548 <= i_7_reg_1273;
        end else if ((1'b1 == ap_condition_368)) begin
            i_8_reg_548 <= i_6_reg_526;
        end else if ((1'b1 == ap_condition_361)) begin
            i_8_reg_548 <= ap_phi_reg_pp0_iter0_i_8_reg_548;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_328)) begin
        if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln21_reg_1132 == 1'd0))) begin
            j_3_reg_516 <= j_1_reg_1085;
        end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln21_reg_1132 == 1'd1))) begin
            j_3_reg_516 <= j_2_reg_1141;
        end else if ((1'b1 == ap_condition_326)) begin
            j_3_reg_516 <= ap_phi_reg_pp0_iter0_j_3_reg_516;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_347)) begin
        if ((1'b1 == ap_condition_355)) begin
            j_5_reg_537 <= j_3_reg_516;
        end else if ((1'b1 == ap_condition_352)) begin
            j_5_reg_537 <= j_4_reg_1209;
        end else if ((1'b1 == ap_condition_345)) begin
            j_5_reg_537 <= ap_phi_reg_pp0_iter0_j_5_reg_537;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_363)) begin
        if ((1'b1 == ap_condition_371)) begin
            j_7_reg_559 <= j_5_reg_537;
        end else if ((1'b1 == ap_condition_368)) begin
            j_7_reg_559 <= j_6_reg_1278;
        end else if ((1'b1 == ap_condition_361)) begin
            j_7_reg_559 <= ap_phi_reg_pp0_iter0_j_7_reg_559;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_68 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_68 <= ap_phi_mux_j_9_phi_fu_583_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_60 <= start_r;
        end else if ((1'b1 == ap_condition_990)) begin
            k_fu_60 <= add_ln18_3_fu_1018_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_1136 <= i_3_fu_679_p2;
        icmp_ln21_reg_1132 <= icmp_ln21_fu_673_p2;
        j_2_reg_1141 <= j_2_fu_684_p2;
        tmp_i_reg_1124 <= tmp_i_fu_665_p3;
        tmp_j_reg_1116 <= tmp_j_fu_657_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_5_reg_1204 <= i_5_fu_777_p2;
        icmp_ln21_1_reg_1200 <= icmp_ln21_1_fu_771_p2;
        j_4_reg_1209 <= j_4_fu_783_p2;
        tmp_i_1_reg_1192 <= tmp_i_1_fu_764_p3;
        tmp_j_1_reg_1184 <= tmp_j_1_fu_757_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        i_7_reg_1273 <= i_7_fu_900_p2;
        icmp_ln21_2_reg_1269 <= icmp_ln21_2_fu_894_p2;
        j_6_reg_1278 <= j_6_fu_906_p2;
        tmp_i_2_reg_1261 <= tmp_i_2_fu_887_p3;
        tmp_j_2_reg_1253 <= tmp_j_2_fu_880_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_1354 <= i_9_fu_1006_p2;
        icmp_ln21_3_reg_1350 <= icmp_ln21_3_fu_1000_p2;
        j_8_reg_1359 <= j_8_fu_1012_p2;
        tmp_i_3_reg_1342 <= tmp_i_3_fu_993_p3;
        tmp_j_3_reg_1334 <= tmp_j_3_fu_986_p3;
        zext_ln5_5_reg_1322[8 : 0] <= zext_ln5_5_fu_983_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_1078 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_1092 <= icmp_ln18_fu_614_p2;
        j_1_reg_1085 <= ap_sig_allocacmp_j_1;
        k_1_reg_1067 <= k_fu_60;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln18_1_reg_1160 <= icmp_ln18_1_fu_753_p2;
        trunc_ln18_4_reg_1150 <= trunc_ln18_4_fu_713_p1;
        trunc_ln18_5_reg_1155 <= trunc_ln18_5_fu_717_p1;
        trunc_ln18_reg_1146 <= trunc_ln18_fu_689_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln18_2_reg_1229 <= icmp_ln18_2_fu_875_p2;
        lshr_ln5_7_reg_1224 <= {{add_ln18_1_fu_860_p2[10:2]}};
        trunc_ln18_6_reg_1214 <= trunc_ln18_6_fu_820_p1;
        trunc_ln18_7_reg_1219 <= trunc_ln18_7_fu_824_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln18_3_reg_1298 <= icmp_ln18_3_fu_978_p2;
        lshr_ln5_8_reg_1293 <= {{add_ln18_2_fu_963_p2[10:2]}};
        trunc_ln18_8_reg_1283 <= trunc_ln18_8_fu_923_p1;
        trunc_ln18_9_reg_1288 <= trunc_ln18_9_fu_927_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_0_address0_local = a_0_addr_6_gep_fu_490_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_0_address0_local = zext_ln5_5_reg_1322;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_0_address0_local = a_0_addr_4_gep_fu_394_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_0_address0_local = zext_ln5_4_fu_912_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_306_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_0_address0_local = zext_ln5_3_fu_808_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_0_address0_local = a_0_addr_gep_fu_202_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_701_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_0_d0_local = tmp_j_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_0_d0_local = tmp_i_3_reg_1342;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_0_d0_local = tmp_j_2_reg_1253;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_0_d0_local = tmp_i_2_reg_1261;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_0_d0_local = tmp_j_1_reg_1184;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_0_d0_local = tmp_i_1_reg_1192;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_0_d0_local = tmp_j_reg_1116;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_0_d0_local = tmp_i_reg_1124;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd0) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd1)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_1_address0_local = a_1_addr_6_gep_fu_482_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_1_address0_local = zext_ln5_5_reg_1322;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_1_address0_local = a_1_addr_4_gep_fu_402_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_1_address0_local = zext_ln5_4_fu_912_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_290_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_1_address0_local = zext_ln5_3_fu_808_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_1_address0_local = a_1_addr_gep_fu_194_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_701_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_1_d0_local = tmp_j_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_1_d0_local = tmp_i_3_reg_1342;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_1_d0_local = tmp_j_2_reg_1253;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_1_d0_local = tmp_i_2_reg_1261;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_1_d0_local = tmp_j_1_reg_1184;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_1_d0_local = tmp_i_1_reg_1192;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_1_d0_local = tmp_j_reg_1116;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_1_d0_local = tmp_i_reg_1124;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd3)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd1) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd2)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_2_address0_local = a_2_addr_6_gep_fu_498_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_2_address0_local = zext_ln5_5_reg_1322;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_2_address0_local = a_2_addr_4_gep_fu_378_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_2_address0_local = zext_ln5_4_fu_912_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_282_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_2_address0_local = zext_ln5_3_fu_808_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_2_address0_local = a_2_addr_gep_fu_186_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_2_address0_local = zext_ln5_2_fu_701_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_2_d0_local = tmp_j_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3))) begin
        a_2_d0_local = tmp_i_3_reg_1342;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_2_d0_local = tmp_j_2_reg_1253;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_2_d0_local = tmp_i_2_reg_1261;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_2_d0_local = tmp_j_1_reg_1184;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_2_d0_local = tmp_i_1_reg_1192;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_2_d0_local = tmp_j_reg_1116;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_2_d0_local = tmp_i_reg_1124;
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd2) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd3)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_3_address0_local = a_3_addr_6_gep_fu_474_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_3_address0_local = zext_ln5_5_reg_1322;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_3_address0_local = a_3_addr_4_gep_fu_386_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_3_address0_local = zext_ln5_4_fu_912_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_298_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_3_address0_local = zext_ln5_3_fu_808_p1;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_3_address0_local = a_3_addr_gep_fu_210_p3;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_3_address0_local = zext_ln5_2_fu_701_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_3_d0_local = tmp_j_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0))) begin
        a_3_d0_local = tmp_i_3_reg_1342;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_3_d0_local = tmp_j_2_reg_1253;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1))) begin
        a_3_d0_local = tmp_i_2_reg_1261;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_3_d0_local = tmp_j_1_reg_1184;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2))) begin
        a_3_d0_local = tmp_i_1_reg_1192;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd1))) begin
        a_3_d0_local = tmp_j_reg_1116;
    end else if (((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd0))) begin
        a_3_d0_local = tmp_i_reg_1124;
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1269 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_1146 == 2'd1)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1200 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_1146 == 2'd2)) | ((icmp_ln18_reg_1092== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd0)) | ((icmp_ln18_reg_1092 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_689_p1 == 2'd3) & (icmp_ln21_reg_1132 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1350 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_1146 == 2'd0)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln18_reg_1092 == 1'd1) | ((icmp_ln18_1_reg_1160 == 1'd0) | ((icmp_ln18_2_reg_1229 == 1'd1) | (icmp_ln18_3_fu_978_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_1092 == 1'd1) | ((icmp_ln18_1_reg_1160 == 1'd0) | ((icmp_ln18_2_reg_1229 == 1'd1) | (icmp_ln18_3_reg_1298 == 1'd1)))))) begin
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
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln21_3_reg_1350 == 1'd0)) begin
            ap_phi_mux_i_10_phi_fu_573_p4 = i_9_reg_1354;
        end else if ((icmp_ln21_3_reg_1350 == 1'd1)) begin
            ap_phi_mux_i_10_phi_fu_573_p4 = i_8_reg_548;
        end else begin
            ap_phi_mux_i_10_phi_fu_573_p4 = ap_phi_reg_pp0_iter1_i_10_reg_570;
        end
    end else begin
        ap_phi_mux_i_10_phi_fu_573_p4 = ap_phi_reg_pp0_iter1_i_10_reg_570;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_1092 == 1'd0)) begin
        if ((icmp_ln21_reg_1132 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_509_p4 = i_3_reg_1136;
        end else if ((icmp_ln21_reg_1132 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_509_p4 = i_reg_1078;
        end else begin
            ap_phi_mux_i_4_phi_fu_509_p4 = ap_phi_reg_pp0_iter0_i_4_reg_506;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_509_p4 = ap_phi_reg_pp0_iter0_i_4_reg_506;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1200 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_529_p4 = i_5_reg_1204;
        end else if ((icmp_ln21_1_reg_1200 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_529_p4 = i_4_reg_506;
        end else begin
            ap_phi_mux_i_6_phi_fu_529_p4 = ap_phi_reg_pp0_iter0_i_6_reg_526;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_529_p4 = ap_phi_reg_pp0_iter0_i_6_reg_526;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_366)) begin
        if ((icmp_ln21_2_reg_1269 == 1'd0)) begin
            ap_phi_mux_i_8_phi_fu_551_p4 = i_7_reg_1273;
        end else if ((icmp_ln21_2_reg_1269 == 1'd1)) begin
            ap_phi_mux_i_8_phi_fu_551_p4 = i_6_reg_526;
        end else begin
            ap_phi_mux_i_8_phi_fu_551_p4 = ap_phi_reg_pp0_iter0_i_8_reg_548;
        end
    end else begin
        ap_phi_mux_i_8_phi_fu_551_p4 = ap_phi_reg_pp0_iter0_i_8_reg_548;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_1092 == 1'd0)) begin
        if ((icmp_ln21_reg_1132 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_519_p4 = j_1_reg_1085;
        end else if ((icmp_ln21_reg_1132 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_519_p4 = j_2_reg_1141;
        end else begin
            ap_phi_mux_j_3_phi_fu_519_p4 = ap_phi_reg_pp0_iter0_j_3_reg_516;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_519_p4 = ap_phi_reg_pp0_iter0_j_3_reg_516;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1200 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_540_p4 = j_3_reg_516;
        end else if ((icmp_ln21_1_reg_1200 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_540_p4 = j_4_reg_1209;
        end else begin
            ap_phi_mux_j_5_phi_fu_540_p4 = ap_phi_reg_pp0_iter0_j_5_reg_537;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_540_p4 = ap_phi_reg_pp0_iter0_j_5_reg_537;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_366)) begin
        if ((icmp_ln21_2_reg_1269 == 1'd0)) begin
            ap_phi_mux_j_7_phi_fu_562_p4 = j_5_reg_537;
        end else if ((icmp_ln21_2_reg_1269 == 1'd1)) begin
            ap_phi_mux_j_7_phi_fu_562_p4 = j_6_reg_1278;
        end else begin
            ap_phi_mux_j_7_phi_fu_562_p4 = ap_phi_reg_pp0_iter0_j_7_reg_559;
        end
    end else begin
        ap_phi_mux_j_7_phi_fu_562_p4 = ap_phi_reg_pp0_iter0_j_7_reg_559;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_382)) begin
        if ((icmp_ln21_3_reg_1350 == 1'd0)) begin
            ap_phi_mux_j_9_phi_fu_583_p4 = j_7_reg_559;
        end else if ((icmp_ln21_3_reg_1350 == 1'd1)) begin
            ap_phi_mux_j_9_phi_fu_583_p4 = j_8_reg_1359;
        end else begin
            ap_phi_mux_j_9_phi_fu_583_p4 = ap_phi_reg_pp0_iter1_j_9_reg_580;
        end
    end else begin
        ap_phi_mux_j_9_phi_fu_583_p4 = ap_phi_reg_pp0_iter1_j_9_reg_580;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_10_phi_fu_573_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_9_phi_fu_583_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_68;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address0_local = zext_ln18_4_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address0_local = zext_ln18_2_fu_838_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address0_local = zext_ln18_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address0_local = zext_ln5_fu_629_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address1_local = zext_ln18_5_fu_957_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address1_local = zext_ln18_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address1_local = zext_ln18_1_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address1_local = zext_ln5_1_fu_645_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address0_local = zext_ln18_4_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address0_local = zext_ln18_2_fu_838_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln18_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln5_fu_629_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address1_local = zext_ln18_5_fu_957_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address1_local = zext_ln18_3_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln18_1_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln5_1_fu_645_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign a_0_addr_2_gep_fu_306_p3 = zext_ln5_3_fu_808_p1;
assign a_0_addr_4_gep_fu_394_p3 = zext_ln5_4_fu_912_p1;
assign a_0_addr_6_gep_fu_490_p3 = zext_ln5_5_reg_1322;
assign a_0_addr_gep_fu_202_p3 = zext_ln5_2_fu_701_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_290_p3 = zext_ln5_3_fu_808_p1;
assign a_1_addr_4_gep_fu_402_p3 = zext_ln5_4_fu_912_p1;
assign a_1_addr_6_gep_fu_482_p3 = zext_ln5_5_reg_1322;
assign a_1_addr_gep_fu_194_p3 = zext_ln5_2_fu_701_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_282_p3 = zext_ln5_3_fu_808_p1;
assign a_2_addr_4_gep_fu_378_p3 = zext_ln5_4_fu_912_p1;
assign a_2_addr_6_gep_fu_498_p3 = zext_ln5_5_reg_1322;
assign a_2_addr_gep_fu_186_p3 = zext_ln5_2_fu_701_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_298_p3 = zext_ln5_3_fu_808_p1;
assign a_3_addr_4_gep_fu_386_p3 = zext_ln5_4_fu_912_p1;
assign a_3_addr_6_gep_fu_474_p3 = zext_ln5_5_reg_1322;
assign a_3_addr_gep_fu_210_p3 = zext_ln5_2_fu_701_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign add_ln18_1_fu_860_p2 = (k_1_reg_1067 + 32'd2);
assign add_ln18_2_fu_963_p2 = (k_1_reg_1067 + 32'd3);
assign add_ln18_3_fu_1018_p2 = (k_1_reg_1067 + 32'd4);
assign add_ln18_fu_792_p2 = (trunc_ln18_1_fu_789_p1 + 11'd1);
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
always @ (*) begin
    ap_condition_326 = ~((icmp_ln18_reg_1092 == 1'd1) | ((icmp_ln18_1_fu_753_p2 == 1'd0) | ((icmp_ln18_2_reg_1229 == 1'd1) | (icmp_ln18_3_reg_1298 == 1'd1))));
end
always @ (*) begin
    ap_condition_328 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_345 = ~((icmp_ln18_reg_1092 == 1'd1) | ((icmp_ln18_1_reg_1160 == 1'd0) | ((icmp_ln18_3_reg_1298 == 1'd1) | (icmp_ln18_2_fu_875_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_347 = ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_352 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln21_1_reg_1200 == 1'd1));
end
always @ (*) begin
    ap_condition_355 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln21_1_reg_1200 == 1'd0));
end
always @ (*) begin
    ap_condition_361 = ~((icmp_ln18_reg_1092 == 1'd1) | ((icmp_ln18_1_reg_1160 == 1'd0) | ((icmp_ln18_2_reg_1229 == 1'd1) | (icmp_ln18_3_fu_978_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_363 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_366 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0));
end
always @ (*) begin
    ap_condition_368 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (icmp_ln21_2_reg_1269 == 1'd1));
end
always @ (*) begin
    ap_condition_371 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (icmp_ln21_2_reg_1269 == 1'd0));
end
always @ (*) begin
    ap_condition_382 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (icmp_ln18_3_reg_1298 == 1'd0));
end
always @ (*) begin
    ap_condition_990 = ((icmp_ln18_reg_1092 == 1'd0) & (icmp_ln18_1_reg_1160 == 1'd1) & (icmp_ln18_2_reg_1229 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18_3_reg_1298 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_phi_reg_pp0_iter0_i_4_reg_506 = 'bx;
assign ap_phi_reg_pp0_iter0_i_6_reg_526 = 'bx;
assign ap_phi_reg_pp0_iter0_i_8_reg_548 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_516 = 'bx;
assign ap_phi_reg_pp0_iter0_j_5_reg_537 = 'bx;
assign ap_phi_reg_pp0_iter0_j_7_reg_559 = 'bx;
assign ap_phi_reg_pp0_iter1_i_10_reg_570 = 'bx;
assign ap_phi_reg_pp0_iter1_j_9_reg_580 = 'bx;
assign ap_ready = ap_ready_sig;
assign i_3_fu_679_p2 = (i_reg_1078 + 32'd1);
assign i_5_fu_777_p2 = (i_4_reg_506 + 32'd1);
assign i_7_fu_900_p2 = (i_6_reg_526 + 32'd1);
assign i_9_fu_1006_p2 = (i_8_reg_548 + 32'd1);
assign icmp_ln18_1_fu_753_p2 = (($signed(k_1_reg_1067) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_875_p2 = (($signed(add_ln18_1_fu_860_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_978_p2 = (($signed(add_ln18_2_fu_963_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_614_p2 = (($signed(k_fu_60) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln21_1_fu_771_p2 = (($signed(tmp_j_1_fu_757_p3) < $signed(tmp_i_1_fu_764_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_2_fu_894_p2 = (($signed(tmp_j_2_fu_880_p3) < $signed(tmp_i_2_fu_887_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_3_fu_1000_p2 = (($signed(tmp_j_3_fu_986_p3) < $signed(tmp_i_3_fu_993_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_673_p2 = (($signed(tmp_j_fu_657_p3) < $signed(tmp_i_fu_665_p3)) ? 1'b1 : 1'b0);
assign j_2_fu_684_p2 = ($signed(j_1_reg_1085) + $signed(32'd4294967295));
assign j_4_fu_783_p2 = ($signed(j_3_reg_516) + $signed(32'd4294967295));
assign j_6_fu_906_p2 = ($signed(j_5_reg_537) + $signed(32'd4294967295));
assign j_8_fu_1012_p2 = ($signed(j_7_reg_559) + $signed(32'd4294967295));
assign lshr_ln18_1_fu_737_p4 = {{ap_phi_mux_j_3_phi_fu_519_p4[10:1]}};
assign lshr_ln18_2_fu_828_p4 = {{ap_phi_mux_i_6_phi_fu_529_p4[10:1]}};
assign lshr_ln18_3_fu_844_p4 = {{ap_phi_mux_j_5_phi_fu_540_p4[10:1]}};
assign lshr_ln18_4_fu_931_p4 = {{ap_phi_mux_i_8_phi_fu_551_p4[10:1]}};
assign lshr_ln18_5_fu_947_p4 = {{ap_phi_mux_j_7_phi_fu_562_p4[10:1]}};
assign lshr_ln2_fu_721_p4 = {{ap_phi_mux_i_4_phi_fu_509_p4[10:1]}};
assign lshr_ln5_3_fu_619_p4 = {{ap_sig_allocacmp_i[10:1]}};
assign lshr_ln5_4_fu_635_p4 = {{ap_sig_allocacmp_j_1[10:1]}};
assign lshr_ln5_5_fu_692_p4 = {{k_1_reg_1067[10:2]}};
assign lshr_ln5_6_fu_798_p4 = {{add_ln18_fu_792_p2[10:2]}};
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign tmp_i_1_fu_764_p3 = ((trunc_ln18_5_reg_1155[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_2_fu_887_p3 = ((trunc_ln18_7_reg_1219[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_3_fu_993_p3 = ((trunc_ln18_9_reg_1288[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_fu_665_p3 = ((trunc_ln18_3_fu_654_p1[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_j_1_fu_757_p3 = ((trunc_ln18_4_reg_1150[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_2_fu_880_p3 = ((trunc_ln18_6_reg_1214[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_3_fu_986_p3 = ((trunc_ln18_8_reg_1283[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_fu_657_p3 = ((trunc_ln18_2_fu_651_p1[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign trunc_ln18_1_fu_789_p1 = k_1_reg_1067[10:0];
assign trunc_ln18_2_fu_651_p1 = j_1_reg_1085[0:0];
assign trunc_ln18_3_fu_654_p1 = i_reg_1078[0:0];
assign trunc_ln18_4_fu_713_p1 = ap_phi_mux_j_3_phi_fu_519_p4[0:0];
assign trunc_ln18_5_fu_717_p1 = ap_phi_mux_i_4_phi_fu_509_p4[0:0];
assign trunc_ln18_6_fu_820_p1 = ap_phi_mux_j_5_phi_fu_540_p4[0:0];
assign trunc_ln18_7_fu_824_p1 = ap_phi_mux_i_6_phi_fu_529_p4[0:0];
assign trunc_ln18_8_fu_923_p1 = ap_phi_mux_j_7_phi_fu_562_p4[0:0];
assign trunc_ln18_9_fu_927_p1 = ap_phi_mux_i_8_phi_fu_551_p4[0:0];
assign trunc_ln18_fu_689_p1 = k_1_reg_1067[1:0];
assign zext_ln18_1_fu_747_p1 = lshr_ln18_1_fu_737_p4;
assign zext_ln18_2_fu_838_p1 = lshr_ln18_2_fu_828_p4;
assign zext_ln18_3_fu_854_p1 = lshr_ln18_3_fu_844_p4;
assign zext_ln18_4_fu_941_p1 = lshr_ln18_4_fu_931_p4;
assign zext_ln18_5_fu_957_p1 = lshr_ln18_5_fu_947_p4;
assign zext_ln18_fu_731_p1 = lshr_ln2_fu_721_p4;
assign zext_ln5_1_fu_645_p1 = lshr_ln5_4_fu_635_p4;
assign zext_ln5_2_fu_701_p1 = lshr_ln5_5_fu_692_p4;
assign zext_ln5_3_fu_808_p1 = lshr_ln5_6_fu_798_p4;
assign zext_ln5_4_fu_912_p1 = lshr_ln5_7_reg_1224;
assign zext_ln5_5_fu_983_p1 = lshr_ln5_8_reg_1293;
assign zext_ln5_fu_629_p1 = lshr_ln5_3_fu_619_p4;
always @ (posedge ap_clk) begin
    zext_ln5_5_reg_1322[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
