module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_pp0_stage0 = 10'd2;
parameter    ap_ST_fsm_pp0_stage1 = 10'd4;
parameter    ap_ST_fsm_pp0_stage2 = 10'd8;
parameter    ap_ST_fsm_pp0_stage3 = 10'd16;
parameter    ap_ST_fsm_pp0_stage4 = 10'd32;
parameter    ap_ST_fsm_pp0_stage5 = 10'd64;
parameter    ap_ST_fsm_state9 = 10'd128;
parameter    ap_ST_fsm_state10 = 10'd256;
parameter    ap_ST_fsm_state11 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [6:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [31:0] b_str_idx_6_out;
output   b_str_idx_6_out_ap_vld;
output  [31:0] a_str_idx_0_0_out;
output   a_str_idx_0_0_out_ap_vld;
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_352;
reg   [31:0] b_idx_4_reg_364;
wire   [31:0] grp_fu_413_p2;
reg   [31:0] reg_511;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_879;
wire   [7:0] select_ln64_fu_631_p3;
wire   [31:0] grp_fu_428_p2;
reg   [31:0] reg_517;
wire   [31:0] grp_fu_459_p2;
reg   [31:0] reg_523;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] or_ln62_1_reg_968;
wire   [7:0] select_ln64_1_fu_774_p3;
wire   [31:0] grp_fu_475_p2;
reg   [31:0] reg_529;
reg   [31:0] b_idx_1_reg_865;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_872;
wire   [0:0] or_ln62_fu_573_p2;
wire   [0:0] trunc_ln64_fu_611_p1;
reg   [0:0] trunc_ln64_reg_883;
reg   [7:0] select_ln64_reg_898;
reg   [63:0] b_str_idx_1_reg_942;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] trunc_ln18_fu_665_p1;
reg   [31:0] trunc_ln18_reg_947;
wire   [63:0] zext_ln18_fu_679_p1;
reg   [63:0] zext_ln18_reg_952;
wire   [0:0] trunc_ln17_fu_693_p1;
reg   [0:0] trunc_ln17_reg_958;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] trunc_ln17_1_fu_697_p1;
reg   [0:0] trunc_ln17_1_reg_963;
wire   [0:0] or_ln62_1_fu_721_p2;
wire   [0:0] trunc_ln64_1_fu_751_p1;
reg   [0:0] trunc_ln64_1_reg_972;
reg   [6:0] alignedA_1_addr_reg_987;
reg   [6:0] alignedB_1_addr_reg_992;
reg   [7:0] select_ln64_1_reg_997;
wire    ap_block_pp0_stage4_subdone;
reg    ap_predicate_tran6to9_state6;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage5_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_352;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_364;
reg   [31:0] ap_phi_mux_a_idx_7_phi_fu_379_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_a_idx_7_reg_376;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] ap_phi_mux_b_idx_7_phi_fu_391_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_b_idx_7_reg_388;
reg   [0:0] UnifiedRetVal_reg_400;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln64_fu_625_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_638_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_644_p1;
wire   [63:0] zext_ln66_fu_650_p1;
wire   [63:0] zext_ln77_fu_656_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_765_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln71_1_fu_792_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln65_1_fu_798_p1;
wire   [63:0] zext_ln66_1_fu_804_p1;
wire   [63:0] zext_ln77_1_fu_810_p1;
reg   [31:0] a_str_idx_0_0_fu_78;
wire   [31:0] b_str_idx_fu_786_p2;
reg   [63:0] a_str_idx_fu_82;
wire   [63:0] add_ln65_fu_781_p2;
reg   [31:0] b_idx_fu_86;
reg   [31:0] a_idx_fu_90;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
reg    SEQA_0_ce0_local;
reg   [5:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [5:0] SEQA_1_address0_local;
reg    SEQB_0_ce0_local;
reg   [5:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [5:0] SEQB_1_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
wire   [7:0] grp_fu_443_p3;
reg    alignedA_0_ce0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
wire   [7:0] grp_fu_451_p3;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
wire   [7:0] grp_fu_491_p3;
wire    ap_block_pp0_stage0;
reg    alignedA_1_ce0_local;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
wire   [7:0] grp_fu_499_p3;
wire   [0:0] trunc_ln18_1_fu_685_p1;
wire   [0:0] trunc_ln18_2_fu_689_p1;
wire   [0:0] icmp_ln62_fu_561_p2;
wire   [0:0] icmp_ln62_1_fu_567_p2;
wire   [7:0] trunc_ln16_fu_587_p1;
wire   [14:0] p_shl_fu_591_p3;
wire   [14:0] trunc_ln18_4_fu_583_p1;
wire   [14:0] r_1_fu_599_p2;
wire   [14:0] trunc_ln18_3_fu_579_p1;
wire   [14:0] add_ln64_fu_605_p2;
wire   [13:0] lshr_ln7_fu_615_p4;
wire   [5:0] grp_fu_418_p4;
wire   [5:0] grp_fu_433_p4;
wire   [6:0] lshr_ln6_fu_669_p4;
wire   [0:0] icmp_ln62_2_fu_709_p2;
wire   [0:0] icmp_ln62_3_fu_715_p2;
wire   [7:0] trunc_ln16_1_fu_727_p1;
wire   [14:0] trunc_ln17_2_fu_701_p1;
wire   [14:0] trunc_ln17_3_fu_705_p1;
wire   [14:0] r_fu_739_p2;
wire   [14:0] p_shl1_fu_731_p3;
wire   [14:0] add_ln64_1_fu_745_p2;
wire   [13:0] lshr_ln64_1_fu_755_p4;
wire   [5:0] grp_fu_465_p4;
wire   [5:0] grp_fu_481_p4;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state11;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_760;
reg    ap_condition_764;
reg    ap_condition_770;
reg    ap_condition_775;
reg    ap_condition_781;
reg    ap_condition_786;
reg    ap_condition_791;
reg    ap_condition_797;
reg    ap_condition_804;
reg    ap_condition_810;
reg    ap_condition_816;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_78 = 32'd0;
#0 a_str_idx_fu_82 = 64'd0;
#0 b_idx_fu_86 = 32'd0;
#0 a_idx_fu_90 = 32'd0;
#0 ap_return_preg = 1'd0;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_return_preg <= UnifiedRetVal_reg_400;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        UnifiedRetVal_reg_400 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        UnifiedRetVal_reg_400 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_idx_fu_90 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_90 <= ap_phi_mux_a_idx_7_phi_fu_379_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_0_0_fu_78 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_0_0_fu_78 <= b_str_idx_fu_786_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_fu_82 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_fu_82 <= add_ln65_fu_781_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_352 <= a_idx_1_reg_872;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_352 <= reg_511;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_364 <= b_idx_1_reg_865;
    end else if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_364 <= reg_517;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_fu_86 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_86 <= ap_phi_mux_b_idx_7_phi_fu_391_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_872 <= a_idx_fu_90;
        b_idx_1_reg_865 <= b_idx_fu_86;
        or_ln62_reg_879 <= or_ln62_fu_573_p2;
        trunc_ln64_reg_883 <= trunc_ln64_fu_611_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_352 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_352;
        b_idx_4_reg_364 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_364;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        alignedA_1_addr_reg_987 <= zext_ln18_reg_952;
        alignedB_1_addr_reg_992 <= zext_ln18_reg_952;
        or_ln62_1_reg_968 <= or_ln62_1_fu_721_p2;
        trunc_ln17_1_reg_963 <= trunc_ln17_1_fu_697_p1;
        trunc_ln17_reg_958 <= trunc_ln17_fu_693_p1;
        trunc_ln64_1_reg_972 <= trunc_ln64_1_fu_751_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        b_str_idx_1_reg_942 <= a_str_idx_fu_82;
        zext_ln18_reg_952[6 : 0] <= zext_ln18_fu_679_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_511 <= grp_fu_413_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_fu_631_p3 == 8'd92) & ~(select_ln64_fu_631_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_517 <= grp_fu_428_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_523 <= grp_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_1_fu_774_p3 == 8'd92) & ~(select_ln64_1_fu_774_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_529 <= grp_fu_475_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        select_ln64_1_reg_997 <= select_ln64_1_fu_774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln64_reg_898 <= select_ln64_fu_631_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        trunc_ln18_reg_947 <= trunc_ln18_fu_665_p1;
    end
end
always @ (*) begin
    if (((or_ln62_reg_879 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_775)) begin
            SEQA_0_address0_local = zext_ln65_1_fu_798_p1;
        end else if ((1'b1 == ap_condition_770)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_792_p1;
        end else if ((1'b1 == ap_condition_764)) begin
            SEQA_0_address0_local = zext_ln65_fu_644_p1;
        end else if ((1'b1 == ap_condition_760)) begin
            SEQA_0_address0_local = zext_ln71_fu_638_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_958 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_958 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_879 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_786)) begin
            SEQA_1_address0_local = zext_ln65_1_fu_798_p1;
        end else if ((1'b1 == ap_condition_781)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_792_p1;
        end else if ((1'b1 == ap_condition_764)) begin
            SEQA_1_address0_local = zext_ln65_fu_644_p1;
        end else if ((1'b1 == ap_condition_760)) begin
            SEQA_1_address0_local = zext_ln71_fu_638_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_958 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_958 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_879 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_804)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_810_p1;
        end else if ((1'b1 == ap_condition_797)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_804_p1;
        end else if ((1'b1 == ap_condition_791)) begin
            SEQB_0_address0_local = zext_ln77_fu_656_p1;
        end else if ((1'b1 == ap_condition_764)) begin
            SEQB_0_address0_local = zext_ln66_fu_650_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_963 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_774_p3 == 8'd92) & ~(select_ln64_1_fu_774_p3 == 8'd60) & (trunc_ln17_1_reg_963 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_631_p3 == 8'd92) & ~(select_ln64_fu_631_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_879 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_816)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_810_p1;
        end else if ((1'b1 == ap_condition_810)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_804_p1;
        end else if ((1'b1 == ap_condition_791)) begin
            SEQB_1_address0_local = zext_ln77_fu_656_p1;
        end else if ((1'b1 == ap_condition_764)) begin
            SEQB_1_address0_local = zext_ln66_fu_650_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_963 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_774_p3 == 8'd92) & ~(select_ln64_1_fu_774_p3 == 8'd60) & (trunc_ln17_1_reg_963 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_631_p3 == 8'd92) & ~(select_ln64_fu_631_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_0_d0_local = 8'd45;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_443_p3;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_1_d0_local = 8'd45;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_d0_local = grp_fu_491_p3;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_451_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_898 == 8'd60) & ~(select_ln64_reg_898 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd60) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (select_ln64_reg_898 == 8'd92) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_d0_local = grp_fu_499_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_1_reg_997 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((ap_predicate_tran6to9_state6 == 1'b1) | (or_ln62_reg_879 == 1'd0))) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
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
    if ((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1))) begin
        ap_phi_mux_a_idx_7_phi_fu_379_p6 = a_idx_4_reg_352;
    end else if ((((select_ln64_1_reg_997 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1)) | ((select_ln64_1_reg_997 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1)))) begin
        ap_phi_mux_a_idx_7_phi_fu_379_p6 = reg_523;
    end else begin
        ap_phi_mux_a_idx_7_phi_fu_379_p6 = ap_phi_reg_pp0_iter1_a_idx_7_reg_376;
    end
end
always @ (*) begin
    if (((select_ln64_1_reg_997 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1))) begin
        ap_phi_mux_b_idx_7_phi_fu_391_p6 = b_idx_4_reg_364;
    end else if (((~(select_ln64_1_reg_997 == 8'd60) & ~(select_ln64_1_reg_997 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1)) | ((select_ln64_1_reg_997 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (or_ln62_reg_879 == 1'd1)))) begin
        ap_phi_mux_b_idx_7_phi_fu_391_p6 = reg_529;
    end else begin
        ap_phi_mux_b_idx_7_phi_fu_391_p6 = ap_phi_reg_pp0_iter1_b_idx_7_reg_388;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_return = UnifiedRetVal_reg_400;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_0_address0_local = zext_ln64_1_fu_765_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_625_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_1_address0_local = zext_ln64_1_fu_765_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_625_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~(((or_ln62_reg_879 == 1'd0) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran6to9_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage4_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else if (((or_ln62_reg_879 == 1'd0) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((ap_predicate_tran6to9_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_78;
assign add_ln64_1_fu_745_p2 = (r_fu_739_p2 + p_shl1_fu_731_p3);
assign add_ln64_fu_605_p2 = (r_1_fu_599_p2 + trunc_ln18_3_fu_579_p1);
assign add_ln65_fu_781_p2 = (b_str_idx_1_reg_942 + 64'd2);
assign alignedA_0_address0 = zext_ln18_fu_679_p1;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_address0 = alignedA_1_addr_reg_987;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedB_0_address0 = zext_ln18_fu_679_p1;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_address0 = alignedB_1_addr_reg_992;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];
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
always @ (*) begin
    ap_condition_760 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_764 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_631_p3 == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_770 = ((trunc_ln17_reg_958 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_775 = ((trunc_ln17_reg_958 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_781 = ((trunc_ln17_reg_958 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd60) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_786 = ((trunc_ln17_reg_958 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_791 = (~(select_ln64_fu_631_p3 == 8'd92) & ~(select_ln64_fu_631_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_797 = ((trunc_ln17_1_reg_963 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_804 = (~(select_ln64_1_fu_774_p3 == 8'd92) & ~(select_ln64_1_fu_774_p3 == 8'd60) & (trunc_ln17_1_reg_963 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_810 = ((trunc_ln17_1_reg_963 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln64_1_fu_774_p3 == 8'd92) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_816 = (~(select_ln64_1_fu_774_p3 == 8'd92) & ~(select_ln64_1_fu_774_p3 == 8'd60) & (trunc_ln17_1_reg_963 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_968 == 1'd1) & (1'b0 == ap_block_pp0_stage5));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter1_a_idx_7_reg_376 = 'bx;
assign ap_phi_reg_pp0_iter1_b_idx_7_reg_388 = 'bx;
always @ (*) begin
    ap_predicate_tran6to9_state6 = ((or_ln62_1_fu_721_p2 == 1'd0) & (or_ln62_reg_879 == 1'd1));
end
assign b_str_idx_6_out = trunc_ln18_reg_947;
assign b_str_idx_fu_786_p2 = (a_str_idx_0_0_fu_78 + 32'd2);
assign grp_fu_413_p2 = ($signed(a_idx_1_reg_872) + $signed(32'd4294967295));
assign grp_fu_418_p4 = {{grp_fu_413_p2[6:1]}};
assign grp_fu_428_p2 = ($signed(b_idx_1_reg_865) + $signed(32'd4294967295));
assign grp_fu_433_p4 = {{grp_fu_428_p2[6:1]}};
assign grp_fu_443_p3 = ((trunc_ln18_1_fu_685_p1[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_451_p3 = ((trunc_ln18_2_fu_689_p1[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_459_p2 = ($signed(a_idx_4_reg_352) + $signed(32'd4294967295));
assign grp_fu_465_p4 = {{grp_fu_459_p2[6:1]}};
assign grp_fu_475_p2 = ($signed(b_idx_4_reg_364) + $signed(32'd4294967295));
assign grp_fu_481_p4 = {{grp_fu_475_p2[6:1]}};
assign grp_fu_491_p3 = ((trunc_ln17_reg_958[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_499_p3 = ((trunc_ln17_1_reg_963[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign icmp_ln62_1_fu_567_p2 = (($signed(b_idx_fu_86) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_709_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_352) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_715_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_364) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_561_p2 = (($signed(a_idx_fu_90) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_755_p4 = {{add_ln64_1_fu_745_p2[14:1]}};
assign lshr_ln6_fu_669_p4 = {{a_str_idx_fu_82[7:1]}};
assign lshr_ln7_fu_615_p4 = {{add_ln64_fu_605_p2[14:1]}};
assign or_ln62_1_fu_721_p2 = (icmp_ln62_3_fu_715_p2 | icmp_ln62_2_fu_709_p2);
assign or_ln62_fu_573_p2 = (icmp_ln62_fu_561_p2 | icmp_ln62_1_fu_567_p2);
assign p_shl1_fu_731_p3 = {{trunc_ln16_1_fu_727_p1}, {7'd0}};
assign p_shl_fu_591_p3 = {{trunc_ln16_fu_587_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign r_1_fu_599_p2 = (p_shl_fu_591_p3 + trunc_ln18_4_fu_583_p1);
assign r_fu_739_p2 = (trunc_ln17_2_fu_701_p1 + trunc_ln17_3_fu_705_p1);
assign select_ln64_1_fu_774_p3 = ((trunc_ln64_1_reg_972[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_fu_631_p3 = ((trunc_ln64_reg_883[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign trunc_ln16_1_fu_727_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_364[7:0];
assign trunc_ln16_fu_587_p1 = b_idx_fu_86[7:0];
assign trunc_ln17_1_fu_697_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_364[0:0];
assign trunc_ln17_2_fu_701_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_352[14:0];
assign trunc_ln17_3_fu_705_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_364[14:0];
assign trunc_ln17_fu_693_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_352[0:0];
assign trunc_ln18_1_fu_685_p1 = a_idx_1_reg_872[0:0];
assign trunc_ln18_2_fu_689_p1 = b_idx_1_reg_865[0:0];
assign trunc_ln18_3_fu_579_p1 = a_idx_fu_90[14:0];
assign trunc_ln18_4_fu_583_p1 = b_idx_fu_86[14:0];
assign trunc_ln18_fu_665_p1 = a_str_idx_fu_82[31:0];
assign trunc_ln64_1_fu_751_p1 = add_ln64_1_fu_745_p2[0:0];
assign trunc_ln64_fu_611_p1 = add_ln64_fu_605_p2[0:0];
assign zext_ln18_fu_679_p1 = lshr_ln6_fu_669_p4;
assign zext_ln64_1_fu_765_p1 = lshr_ln64_1_fu_755_p4;
assign zext_ln64_fu_625_p1 = lshr_ln7_fu_615_p4;
assign zext_ln65_1_fu_798_p1 = grp_fu_465_p4;
assign zext_ln65_fu_644_p1 = grp_fu_418_p4;
assign zext_ln66_1_fu_804_p1 = grp_fu_481_p4;
assign zext_ln66_fu_650_p1 = grp_fu_433_p4;
assign zext_ln71_1_fu_792_p1 = grp_fu_465_p4;
assign zext_ln71_fu_638_p1 = grp_fu_418_p4;
assign zext_ln77_1_fu_810_p1 = grp_fu_481_p4;
assign zext_ln77_fu_656_p1 = grp_fu_433_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_952[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 