
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQB_address0,SEQB_ce0,SEQB_q0,ptr_address0,ptr_ce0,ptr_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,SEQA_address0,SEQA_ce0,SEQA_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_pp0_stage0 = 15'd2;
parameter    ap_ST_fsm_pp0_stage1 = 15'd4;
parameter    ap_ST_fsm_pp0_stage2 = 15'd8;
parameter    ap_ST_fsm_pp0_stage3 = 15'd16;
parameter    ap_ST_fsm_pp0_stage4 = 15'd32;
parameter    ap_ST_fsm_pp0_stage5 = 15'd64;
parameter    ap_ST_fsm_pp0_stage6 = 15'd128;
parameter    ap_ST_fsm_pp0_stage7 = 15'd256;
parameter    ap_ST_fsm_pp0_stage8 = 15'd512;
parameter    ap_ST_fsm_state12 = 15'd1024;
parameter    ap_ST_fsm_state13 = 15'd2048;
parameter    ap_ST_fsm_state14 = 15'd4096;
parameter    ap_ST_fsm_state15 = 15'd8192;
parameter    ap_ST_fsm_state16 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQB_address0;
output   SEQB_ce0;
input  [7:0] SEQB_q0;
output  [14:0] ptr_address0;
output   ptr_ce0;
input  [7:0] ptr_q0;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [8:0] b_str_idx_6_out;
output   b_str_idx_6_out_ap_vld;
output  [31:0] a_str_idx_0_0_out;
output   a_str_idx_0_0_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_361;
reg   [31:0] b_idx_4_reg_373;
reg   [31:0] a_idx_7_reg_385;
reg   [31:0] b_idx_7_reg_398;
reg   [31:0] a_idx_10_reg_411;
reg   [31:0] b_idx_10_reg_424;
wire   [31:0] grp_fu_482_p2;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_1060;
wire   [7:0] ptr_q0_local;
wire   [31:0] grp_fu_487_p2;
wire   [31:0] grp_fu_495_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [0:0] or_ln62_1_reg_1098;
wire   [31:0] grp_fu_501_p2;
wire   [31:0] grp_fu_507_p2;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [0:0] or_ln62_2_reg_1131;
wire   [31:0] grp_fu_513_p2;
wire   [31:0] grp_fu_519_p2;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] or_ln62_3_reg_1169;
wire   [31:0] grp_fu_525_p2;
reg   [31:0] b_idx_1_reg_1048;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_1054;
wire   [0:0] or_ln62_fu_625_p2;
reg   [7:0] ptr_load_reg_1069;
reg   [6:0] tmp_s_reg_1093;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] or_ln62_1_fu_724_p2;
reg   [7:0] ptr_load_1_reg_1107;
wire   [0:0] or_ln62_2_fu_812_p2;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [7:0] ptr_load_2_reg_1140;
wire   [5:0] tmp_1_fu_867_p4;
reg   [5:0] tmp_1_reg_1164;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] or_ln62_3_fu_911_p2;
reg   [7:0] ptr_load_3_reg_1178;
wire    ap_block_pp0_stage8_subdone;
reg    ap_predicate_tran11to12_state10;
reg    ap_predicate_tran11to13_state10;
reg    ap_predicate_tran11to14_state10;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire    ap_CS_fsm_pp0_stage0;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_361;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_373;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_385;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_398;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_10_reg_411;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_10_reg_424;
wire   [31:0] ap_phi_reg_pp0_iter0_a_idx_13_reg_437;
reg   [31:0] ap_phi_reg_pp0_iter1_a_idx_13_reg_437;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] ap_phi_reg_pp0_iter0_b_idx_13_reg_449;
reg   [31:0] ap_phi_reg_pp0_iter1_b_idx_13_reg_449;
reg   [1:0] UnifiedRetVal_reg_461;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln64_fu_663_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_1_fu_668_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_673_p1;
wire   [63:0] zext_ln66_fu_678_p1;
wire   [63:0] zext_ln77_fu_683_p1;
wire   [63:0] zext_ln18_fu_688_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_754_p1;
wire   [63:0] zext_ln71_3_fu_759_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln65_1_fu_764_p1;
wire   [63:0] zext_ln66_1_fu_769_p1;
wire   [63:0] zext_ln77_1_fu_774_p1;
wire   [63:0] zext_ln71_fu_786_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln64_2_fu_842_p1;
wire   [63:0] zext_ln71_5_fu_847_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln65_2_fu_852_p1;
wire   [63:0] zext_ln66_2_fu_857_p1;
wire   [63:0] zext_ln77_2_fu_862_p1;
wire   [63:0] zext_ln71_2_fu_885_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln64_3_fu_941_p1;
wire   [63:0] zext_ln71_6_fu_946_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln65_3_fu_951_p1;
wire   [63:0] zext_ln66_3_fu_956_p1;
wire   [63:0] zext_ln77_3_fu_961_p1;
wire   [63:0] zext_ln71_4_fu_973_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] a_str_idx_0_0_fu_78;
wire   [31:0] b_str_idx_fu_991_p2;
reg   [8:0] a_str_idx_fu_82;
wire   [8:0] add_ln65_fu_985_p2;
reg   [31:0] b_idx_fu_86;
reg   [31:0] a_idx_fu_90;
reg    ptr_ce0_local;
reg   [14:0] ptr_address0_local;
reg    SEQA_ce0_local;
reg   [6:0] SEQA_address0_local;
reg    SEQB_ce0_local;
reg   [6:0] SEQB_address0_local;
reg    alignedA_we0_local;
reg   [7:0] alignedA_d0_local;
reg    alignedA_ce0_local;
reg   [7:0] alignedA_address0_local;
reg    alignedB_we0_local;
reg   [7:0] alignedB_d0_local;
reg    alignedB_ce0_local;
reg   [7:0] alignedB_address0_local;
wire   [0:0] icmp_ln62_fu_613_p2;
wire   [0:0] icmp_ln62_1_fu_619_p2;
wire   [7:0] trunc_ln16_fu_639_p1;
wire   [14:0] p_shl_fu_643_p3;
wire   [14:0] trunc_ln18_1_fu_635_p1;
wire   [14:0] r_fu_651_p2;
wire   [14:0] trunc_ln18_fu_631_p1;
wire   [14:0] add_ln64_fu_657_p2;
wire   [0:0] icmp_ln62_2_fu_712_p2;
wire   [0:0] icmp_ln62_3_fu_718_p2;
wire   [7:0] trunc_ln16_1_fu_730_p1;
wire   [14:0] p_shl9_fu_734_p3;
wire   [14:0] trunc_ln17_1_fu_708_p1;
wire   [14:0] r_1_fu_742_p2;
wire   [14:0] trunc_ln17_fu_704_p1;
wire   [14:0] add_ln64_1_fu_748_p2;
wire   [7:0] or_ln4_fu_779_p3;
wire   [0:0] icmp_ln62_4_fu_800_p2;
wire   [0:0] icmp_ln62_5_fu_806_p2;
wire   [7:0] trunc_ln16_2_fu_818_p1;
wire   [14:0] p_shl1_fu_822_p3;
wire   [14:0] trunc_ln17_3_fu_796_p1;
wire   [14:0] r_2_fu_830_p2;
wire   [14:0] trunc_ln17_2_fu_792_p1;
wire   [14:0] add_ln64_2_fu_836_p2;
wire   [7:0] or_ln65_1_fu_877_p3;
wire   [0:0] icmp_ln62_6_fu_899_p2;
wire   [0:0] icmp_ln62_7_fu_905_p2;
wire   [7:0] trunc_ln16_3_fu_917_p1;
wire   [14:0] p_shl2_fu_921_p3;
wire   [14:0] trunc_ln17_5_fu_895_p1;
wire   [14:0] r_3_fu_929_p2;
wire   [14:0] trunc_ln17_4_fu_891_p1;
wire   [14:0] add_ln64_3_fu_935_p2;
wire   [7:0] or_ln65_3_fu_966_p3;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state16;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg   [3:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1019;
reg    ap_condition_1023;
reg    ap_condition_1028;
reg    ap_condition_1032;
reg    ap_condition_1038;
reg    ap_condition_1042;
reg    ap_condition_1049;
reg    ap_condition_1053;
reg    ap_condition_1058;
reg    ap_condition_1063;
reg    ap_condition_1069;
reg    ap_condition_1076;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_78 = 32'd0;
#0 a_str_idx_fu_82 = 9'd0;
#0 b_idx_fu_86 = 32'd0;
#0 a_idx_fu_90 = 32'd0;
#0 ap_return_preg = 2'd0;
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
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            ap_return_preg <= UnifiedRetVal_reg_461;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        UnifiedRetVal_reg_461 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        UnifiedRetVal_reg_461 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        UnifiedRetVal_reg_461 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        UnifiedRetVal_reg_461 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_fu_90 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_90 <= ap_phi_reg_pp0_iter1_a_idx_13_reg_437;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_0_0_fu_78 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_str_idx_0_0_fu_78 <= b_str_idx_fu_991_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_fu_82 <= 9'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_str_idx_fu_82 <= add_ln65_fu_985_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone))) begin
        if ((or_ln62_reg_1060 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran11to14_state10 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran11to13_state10 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end else if ((ap_predicate_tran11to12_state10 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_411 <= a_idx_7_reg_385;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_411 <= grp_fu_507_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_361 <= a_idx_1_reg_1054;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_361 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_385 <= a_idx_4_reg_361;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_385 <= grp_fu_495_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_424 <= b_idx_7_reg_398;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_424 <= grp_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_373 <= b_idx_1_reg_1048;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_373 <= grp_fu_487_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_398 <= b_idx_4_reg_373;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_398 <= grp_fu_501_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ap_phi_reg_pp0_iter1_a_idx_13_reg_437 <= a_idx_10_reg_411;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)))) begin
        ap_phi_reg_pp0_iter1_a_idx_13_reg_437 <= grp_fu_519_p2;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ap_phi_reg_pp0_iter1_a_idx_13_reg_437 <= ap_phi_reg_pp0_iter0_a_idx_13_reg_437;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ap_phi_reg_pp0_iter1_b_idx_13_reg_449 <= b_idx_10_reg_424;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)))) begin
        ap_phi_reg_pp0_iter1_b_idx_13_reg_449 <= grp_fu_525_p2;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ap_phi_reg_pp0_iter1_b_idx_13_reg_449 <= ap_phi_reg_pp0_iter0_b_idx_13_reg_449;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_86 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_86 <= ap_phi_reg_pp0_iter1_b_idx_13_reg_449;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        a_idx_10_reg_411 <= ap_phi_reg_pp0_iter0_a_idx_10_reg_411;
        b_idx_10_reg_424 <= ap_phi_reg_pp0_iter0_b_idx_10_reg_424;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_1054 <= a_idx_fu_90;
        b_idx_1_reg_1048 <= b_idx_fu_86;
        or_ln62_reg_1060 <= or_ln62_fu_625_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        a_idx_4_reg_361 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_361;
        b_idx_4_reg_373 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_373;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        a_idx_7_reg_385 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_385;
        b_idx_7_reg_398 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_398;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        or_ln62_1_reg_1098 <= or_ln62_1_fu_724_p2;
        tmp_s_reg_1093 <= {{a_str_idx_fu_82[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        or_ln62_2_reg_1131 <= or_ln62_2_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        or_ln62_3_reg_1169 <= or_ln62_3_fu_911_p2;
        tmp_1_reg_1164 <= {{a_str_idx_fu_82[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        ptr_load_1_reg_1107 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ptr_load_2_reg_1140 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ptr_load_3_reg_1178 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ptr_load_reg_1069 <= ptr_q0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln62_reg_1060 == 1'd1))) begin
        if ((1'b1 == ap_condition_1053)) begin
            SEQA_address0_local = zext_ln65_3_fu_951_p1;
        end else if ((1'b1 == ap_condition_1049)) begin
            SEQA_address0_local = zext_ln71_6_fu_946_p1;
        end else if ((1'b1 == ap_condition_1042)) begin
            SEQA_address0_local = zext_ln65_2_fu_852_p1;
        end else if ((1'b1 == ap_condition_1038)) begin
            SEQA_address0_local = zext_ln71_5_fu_847_p1;
        end else if ((1'b1 == ap_condition_1032)) begin
            SEQA_address0_local = zext_ln65_1_fu_764_p1;
        end else if ((1'b1 == ap_condition_1028)) begin
            SEQA_address0_local = zext_ln71_3_fu_759_p1;
        end else if ((1'b1 == ap_condition_1023)) begin
            SEQA_address0_local = zext_ln65_fu_673_p1;
        end else if ((1'b1 == ap_condition_1019)) begin
            SEQA_address0_local = zext_ln71_1_fu_668_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1)& (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (or_ln62_reg_1060 == 1'd1))) begin
        if ((1'b1 == ap_condition_1076)) begin
            SEQB_address0_local = zext_ln77_3_fu_961_p1;
        end else if ((1'b1 == ap_condition_1053)) begin
            SEQB_address0_local = zext_ln66_3_fu_956_p1;
        end else if ((1'b1 == ap_condition_1069)) begin
            SEQB_address0_local = zext_ln77_2_fu_862_p1;
        end else if ((1'b1 == ap_condition_1042)) begin
            SEQB_address0_local = zext_ln66_2_fu_857_p1;
        end else if ((1'b1 == ap_condition_1063)) begin
            SEQB_address0_local = zext_ln77_1_fu_774_p1;
        end else if ((1'b1 == ap_condition_1032)) begin
            SEQB_address0_local = zext_ln66_1_fu_769_p1;
        end else if ((1'b1 == ap_condition_1058)) begin
            SEQB_address0_local = zext_ln77_fu_683_p1;
        end else if ((1'b1 == ap_condition_1023)) begin
            SEQB_address0_local = zext_ln66_fu_678_p1;
        end else begin
            SEQB_address0_local = 'bx;
        end
    end else begin
        SEQB_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))| (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001)))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state15))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_address0_local = zext_ln71_4_fu_973_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)))) begin
        alignedA_address0_local = zext_ln71_2_fu_885_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)))) begin
        alignedA_address0_local = zext_ln71_fu_786_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)))) begin
        alignedA_address0_local = zext_ln18_fu_688_p1;
    end else begin
        alignedA_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))| ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | (~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069== 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)))) begin
        alignedA_d0_local = 8'd45;
end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter0== 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_d0_local = SEQA_q0;
    end else begin
        alignedA_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))| ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | (~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069== 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_address0_local = zext_ln71_4_fu_973_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)))) begin
        alignedB_address0_local = zext_ln71_2_fu_885_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)))) begin
        alignedB_address0_local = zext_ln71_fu_786_p1;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)))) begin
        alignedB_address0_local = zext_ln18_fu_688_p1;
    end else begin
        alignedB_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))| ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | (~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069== 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | (~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131== 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_d0_local = SEQB_q0;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_d0_local = 8'd45;
    end else begin
        alignedB_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_2_reg_1140 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_1_reg_1107 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))| ((ap_enable_reg_pp0_iter0 == 1'b1) & (ptr_load_reg_1069 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | (~(ptr_load_3_reg_1178 == 8'd92) & ~(ptr_load_3_reg_1178 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_2_reg_1140 == 8'd92) & ~(ptr_load_2_reg_1140 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001)) | (~(ptr_load_1_reg_1107 == 8'd92) & ~(ptr_load_1_reg_1107 == 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001)) | (~(ptr_load_reg_1069 == 8'd92) & ~(ptr_load_reg_1069== 8'd60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_3_reg_1178 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_subdone) & ((ap_predicate_tran11to14_state10 == 1'b1) | (ap_predicate_tran11to13_state10 == 1'b1) | (ap_predicate_tran11to12_state10 == 1'b1) | (or_ln62_reg_1060 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_return = UnifiedRetVal_reg_461;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state15))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_address0_local = zext_ln64_3_fu_941_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            ptr_address0_local = zext_ln64_2_fu_842_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_address0_local = zext_ln64_1_fu_754_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_address0_local = zext_ln64_fu_663_p1;
        end else begin
            ptr_address0_local = 'bx;
        end
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
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
assign SEQA_address0 = SEQA_address0_local;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQB_address0 = SEQB_address0_local;
assign SEQB_ce0 = SEQB_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_78;
assign add_ln64_1_fu_748_p2 = (r_1_fu_742_p2 + trunc_ln17_fu_704_p1);
assign add_ln64_2_fu_836_p2 = (r_2_fu_830_p2 + trunc_ln17_2_fu_792_p1);
assign add_ln64_3_fu_935_p2 = (r_3_fu_929_p2 + trunc_ln17_4_fu_891_p1);
assign add_ln64_fu_657_p2 = (r_fu_651_p2 + trunc_ln18_fu_631_p1);
assign add_ln65_fu_985_p2 = (a_str_idx_fu_82 + 9'd4);
assign alignedA_address0 = alignedA_address0_local;
assign alignedA_ce0 = alignedA_ce0_local;
assign alignedA_d0 = alignedA_d0_local;
assign alignedA_we0 = alignedA_we0_local;
assign alignedB_address0 = alignedB_address0_local;
assign alignedB_ce0 = alignedB_ce0_local;
assign alignedB_d0 = alignedB_d0_local;
assign alignedB_we0 = alignedB_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd14];
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1019 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1023 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1028 = ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1032 = ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1038 = ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_1042 = ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_1049 = ((1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1053 = ((1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1058 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1063 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1098 == 1'd1) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1069 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_1076 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_3_reg_1169 == 1'd1) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_a_idx_13_reg_437 = 'bx;
assign ap_phi_reg_pp0_iter0_b_idx_13_reg_449 = 'bx;
always @ (*) begin
    ap_predicate_tran11to12_state10 = ((or_ln62_3_reg_1169 == 1'd0) & (or_ln62_2_reg_1131 == 1'd1) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran11to13_state10 = ((or_ln62_2_reg_1131 == 1'd0) & (or_ln62_1_reg_1098 == 1'd1) & (or_ln62_reg_1060 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran11to14_state10 = ((or_ln62_1_reg_1098 == 1'd0) & (or_ln62_reg_1060 == 1'd1));
end
assign b_str_idx_6_out = a_str_idx_fu_82;
assign b_str_idx_fu_991_p2 = (a_str_idx_0_0_fu_78 + 32'd4);
assign grp_fu_482_p2 = ($signed(a_idx_1_reg_1054) + $signed(32'd4294967295));
assign grp_fu_487_p2 = ($signed(b_idx_1_reg_1048) + $signed(32'd4294967295));
assign grp_fu_495_p2 = ($signed(a_idx_4_reg_361) + $signed(32'd4294967295));
assign grp_fu_501_p2 = ($signed(b_idx_4_reg_373) + $signed(32'd4294967295));
assign grp_fu_507_p2 = ($signed(a_idx_7_reg_385) + $signed(32'd4294967295));
assign grp_fu_513_p2 = ($signed(b_idx_7_reg_398) + $signed(32'd4294967295));
assign grp_fu_519_p2 = ($signed(a_idx_10_reg_411) + $signed(32'd4294967295));
assign grp_fu_525_p2 = ($signed(b_idx_10_reg_424) + $signed(32'd4294967295));
assign icmp_ln62_1_fu_619_p2 = (($signed(b_idx_fu_86) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_712_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_361) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_718_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_373) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_4_fu_800_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_7_reg_385) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_5_fu_806_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_7_reg_398) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_6_fu_899_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_10_reg_411) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_7_fu_905_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_10_reg_424) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_613_p2 = (($signed(a_idx_fu_90) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln4_fu_779_p3 = {{tmp_s_reg_1093}, {1'd1}};
assign or_ln62_1_fu_724_p2 = (icmp_ln62_3_fu_718_p2 | icmp_ln62_2_fu_712_p2);
assign or_ln62_2_fu_812_p2 = (icmp_ln62_5_fu_806_p2 | icmp_ln62_4_fu_800_p2);
assign or_ln62_3_fu_911_p2 = (icmp_ln62_7_fu_905_p2 | icmp_ln62_6_fu_899_p2);
assign or_ln62_fu_625_p2 = (icmp_ln62_fu_613_p2 | icmp_ln62_1_fu_619_p2);
assign or_ln65_1_fu_877_p3 = {{tmp_1_fu_867_p4}, {2'd2}};
assign or_ln65_3_fu_966_p3 = {{tmp_1_reg_1164}, {2'd3}};
assign p_shl1_fu_822_p3 = {{trunc_ln16_2_fu_818_p1}, {7'd0}};
assign p_shl2_fu_921_p3 = {{trunc_ln16_3_fu_917_p1}, {7'd0}};
assign p_shl9_fu_734_p3 = {{trunc_ln16_1_fu_730_p1}, {7'd0}};
assign p_shl_fu_643_p3 = {{trunc_ln16_fu_639_p1}, {7'd0}};
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_q0_local = ptr_q0;
assign r_1_fu_742_p2 = (p_shl9_fu_734_p3 + trunc_ln17_1_fu_708_p1);
assign r_2_fu_830_p2 = (p_shl1_fu_822_p3 + trunc_ln17_3_fu_796_p1);
assign r_3_fu_929_p2 = (p_shl2_fu_921_p3 + trunc_ln17_5_fu_895_p1);
assign r_fu_651_p2 = (p_shl_fu_643_p3 + trunc_ln18_1_fu_635_p1);
assign tmp_1_fu_867_p4 = {{a_str_idx_fu_82[7:2]}};
assign trunc_ln16_1_fu_730_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_373[7:0];
assign trunc_ln16_2_fu_818_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_398[7:0];
assign trunc_ln16_3_fu_917_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_424[7:0];
assign trunc_ln16_fu_639_p1 = b_idx_fu_86[7:0];
assign trunc_ln17_1_fu_708_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_373[14:0];
assign trunc_ln17_2_fu_792_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_385[14:0];
assign trunc_ln17_3_fu_796_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_398[14:0];
assign trunc_ln17_4_fu_891_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_411[14:0];
assign trunc_ln17_5_fu_895_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_424[14:0];
assign trunc_ln17_fu_704_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_361[14:0];
assign trunc_ln18_1_fu_635_p1 = b_idx_fu_86[14:0];
assign trunc_ln18_fu_631_p1 = a_idx_fu_90[14:0];
assign zext_ln18_fu_688_p1 = a_str_idx_fu_82;
assign zext_ln64_1_fu_754_p1 = add_ln64_1_fu_748_p2;
assign zext_ln64_2_fu_842_p1 = add_ln64_2_fu_836_p2;
assign zext_ln64_3_fu_941_p1 = add_ln64_3_fu_935_p2;
assign zext_ln64_fu_663_p1 = add_ln64_fu_657_p2;
assign zext_ln65_1_fu_764_p1 = grp_fu_495_p2;
assign zext_ln65_2_fu_852_p1 = grp_fu_507_p2;
assign zext_ln65_3_fu_951_p1 = grp_fu_519_p2;
assign zext_ln65_fu_673_p1 = grp_fu_482_p2;
assign zext_ln66_1_fu_769_p1 = grp_fu_501_p2;
assign zext_ln66_2_fu_857_p1 = grp_fu_513_p2;
assign zext_ln66_3_fu_956_p1 = grp_fu_525_p2;
assign zext_ln66_fu_678_p1 = grp_fu_487_p2;
assign zext_ln71_1_fu_668_p1 = grp_fu_482_p2;
assign zext_ln71_2_fu_885_p1 = or_ln65_1_fu_877_p3;
assign zext_ln71_3_fu_759_p1 = grp_fu_495_p2;
assign zext_ln71_4_fu_973_p1 = or_ln65_3_fu_966_p3;
assign zext_ln71_5_fu_847_p1 = grp_fu_507_p2;
assign zext_ln71_6_fu_946_p1 = grp_fu_519_p2;
assign zext_ln71_fu_786_p1 = or_ln4_fu_779_p3;
assign zext_ln77_1_fu_774_p1 = grp_fu_501_p2;
assign zext_ln77_2_fu_862_p1 = grp_fu_513_p2;
assign zext_ln77_3_fu_961_p1 = grp_fu_525_p2;
assign zext_ln77_fu_683_p1 = grp_fu_487_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[3:2] <= 2'b00;
end
endmodule 
