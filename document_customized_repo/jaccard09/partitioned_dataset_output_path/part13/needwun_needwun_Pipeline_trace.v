
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQB_address0,SEQB_ce0,SEQB_q0,ptr_address0,ptr_ce0,ptr_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,SEQA_address0,SEQA_ce0,SEQA_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_pp0_stage0 = 9'd2;
parameter    ap_ST_fsm_pp0_stage1 = 9'd4;
parameter    ap_ST_fsm_pp0_stage2 = 9'd8;
parameter    ap_ST_fsm_pp0_stage3 = 9'd16;
parameter    ap_ST_fsm_pp0_stage4 = 9'd32;
parameter    ap_ST_fsm_state8 = 9'd64;
parameter    ap_ST_fsm_state9 = 9'd128;
parameter    ap_ST_fsm_state10 = 9'd256;
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
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_237;
reg   [31:0] b_idx_4_reg_249;
wire   [31:0] grp_fu_298_p2;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_641;
wire   [7:0] ptr_q0_local;
wire   [31:0] grp_fu_303_p2;
wire   [31:0] grp_fu_308_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [0:0] or_ln62_1_reg_679;
wire   [31:0] grp_fu_314_p2;
reg   [31:0] b_idx_1_reg_629;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_635;
wire   [0:0] or_ln62_fu_390_p2;
reg   [7:0] ptr_load_reg_650;
reg   [6:0] tmp_s_reg_674;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] or_ln62_1_fu_492_p2;
reg   [7:0] ptr_load_1_reg_688;
wire    ap_block_pp0_stage4_subdone;
reg    ap_predicate_tran7to8_state6;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire    ap_CS_fsm_pp0_stage0;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_237;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_249;
wire   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_261;
reg   [31:0] ap_phi_reg_pp0_iter1_a_idx_7_reg_261;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_273;
reg   [31:0] ap_phi_reg_pp0_iter1_b_idx_7_reg_273;
reg   [0:0] UnifiedRetVal_reg_285;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln64_fu_428_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_1_fu_433_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_438_p1;
wire   [63:0] zext_ln66_fu_443_p1;
wire   [63:0] zext_ln77_fu_448_p1;
wire   [63:0] zext_ln18_fu_456_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_522_p1;
wire   [63:0] zext_ln71_2_fu_527_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln65_1_fu_532_p1;
wire   [63:0] zext_ln66_1_fu_537_p1;
wire   [63:0] zext_ln77_1_fu_542_p1;
wire   [63:0] zext_ln71_fu_554_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] a_str_idx_0_0_fu_66;
wire   [31:0] b_str_idx_fu_572_p2;
reg   [8:0] a_str_idx_fu_70;
wire   [8:0] add_ln65_fu_566_p2;
reg   [31:0] b_idx_fu_74;
reg   [31:0] a_idx_fu_78;
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
wire   [0:0] icmp_ln62_fu_378_p2;
wire   [0:0] icmp_ln62_1_fu_384_p2;
wire   [7:0] trunc_ln16_fu_404_p1;
wire   [14:0] p_shl_fu_408_p3;
wire   [14:0] trunc_ln18_1_fu_400_p1;
wire   [14:0] r_fu_416_p2;
wire   [14:0] trunc_ln18_fu_396_p1;
wire   [14:0] add_ln64_fu_422_p2;
wire   [0:0] icmp_ln62_2_fu_480_p2;
wire   [0:0] icmp_ln62_3_fu_486_p2;
wire   [7:0] trunc_ln16_1_fu_498_p1;
wire   [14:0] p_shl5_fu_502_p3;
wire   [14:0] trunc_ln17_1_fu_476_p1;
wire   [14:0] r_1_fu_510_p2;
wire   [14:0] trunc_ln17_fu_472_p1;
wire   [14:0] add_ln64_1_fu_516_p2;
wire   [7:0] or_ln4_fu_547_p3;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state10;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg   [1:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_588;
reg    ap_condition_592;
reg    ap_condition_597;
reg    ap_condition_602;
reg    ap_condition_607;
reg    ap_condition_612;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_66 = 32'd0;
#0 a_str_idx_fu_70 = 9'd0;
#0 b_idx_fu_74 = 32'd0;
#0 a_idx_fu_78 = 32'd0;
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
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
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
        if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_preg <= UnifiedRetVal_reg_285;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        UnifiedRetVal_reg_285 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        UnifiedRetVal_reg_285 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_idx_fu_78 <= 32'd128;
    end else if (((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1))) begin
        a_idx_fu_78 <= ap_phi_reg_pp0_iter1_a_idx_7_reg_261;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_0_0_fu_66 <= 32'd0;
    end else if (((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1))) begin
        a_str_idx_0_0_fu_66 <= b_str_idx_fu_572_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_fu_70 <= 9'd0;
    end else if (((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1))) begin
        a_str_idx_fu_70 <= add_ln65_fu_566_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((or_ln62_reg_641 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
        end else if ((ap_predicate_tran7to8_state6 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_237 <= a_idx_1_reg_635;
    end else if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_237 <= grp_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_249 <= b_idx_1_reg_629;
    end else if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_249 <= grp_fu_303_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_261 <= a_idx_4_reg_237;
    end else if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_261 <= grp_fu_308_p2;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_261 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_261;
    end
end
always @ (posedge ap_clk) begin
    if (((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_273 <= b_idx_4_reg_249;
    end else if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_273 <= grp_fu_314_p2;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_273 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_273;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_fu_74 <= 32'd128;
    end else if (((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1))) begin
        b_idx_fu_74 <= ap_phi_reg_pp0_iter1_b_idx_7_reg_273;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_635 <= a_idx_fu_78;
        b_idx_1_reg_629 <= b_idx_fu_74;
        or_ln62_reg_641 <= or_ln62_fu_390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_idx_4_reg_237 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_237;
        b_idx_4_reg_249 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_249;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln62_1_reg_679 <= or_ln62_1_fu_492_p2;
        tmp_s_reg_674 <= {{a_str_idx_fu_70[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_load_1_reg_688 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_load_reg_650 <= ptr_q0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_641 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_602)) begin
            SEQA_address0_local = zext_ln65_1_fu_532_p1;
        end else if ((1'b1 == ap_condition_597)) begin
            SEQA_address0_local = zext_ln71_2_fu_527_p1;
        end else if ((1'b1 == ap_condition_592)) begin
            SEQA_address0_local = zext_ln65_fu_438_p1;
        end else if ((1'b1 == ap_condition_588)) begin
            SEQA_address0_local = zext_ln71_1_fu_433_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_641 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_612)) begin
            SEQB_address0_local = zext_ln77_1_fu_542_p1;
        end else if ((1'b1 == ap_condition_602)) begin
            SEQB_address0_local = zext_ln66_1_fu_537_p1;
        end else if ((1'b1 == ap_condition_607)) begin
            SEQB_address0_local = zext_ln77_fu_448_p1;
        end else if ((1'b1 == ap_condition_592)) begin
            SEQB_address0_local = zext_ln66_fu_443_p1;
        end else begin
            SEQB_address0_local = 'bx;
        end
    end else begin
        SEQB_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ptr_q0_local == 8'd92) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1)))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)))) begin
        alignedA_address0_local = zext_ln71_fu_554_p1;
    end else if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_address0_local = zext_ln18_fu_456_p1;
    end else begin
        alignedA_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60)& (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_d0_local = 8'd45;
    end else if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)))) begin
        alignedA_d0_local = SEQA_q0;
    end else begin
        alignedA_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60)& (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)))) begin
        alignedB_address0_local = zext_ln71_fu_554_p1;
    end else if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_address0_local = zext_ln18_fu_456_p1;
    end else begin
        alignedB_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60)& (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_d0_local = SEQB_q0;
    end else if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)))) begin
        alignedB_d0_local = 8'd45;
    end else begin
        alignedB_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd92) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ptr_load_1_reg_688 == 8'd60) & (or_ln62_1_reg_679 == 1'd1)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd92)) | ((or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ptr_load_reg_650 == 8'd60)) | (~(ptr_load_1_reg_688 == 8'd92) & ~(ptr_load_1_reg_688 == 8'd60) & (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_1_reg_679 == 1'd1)) | (~(ptr_load_reg_650 == 8'd92) & ~(ptr_load_reg_650 == 8'd60)& (or_ln62_reg_641 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4) & ((or_ln62_reg_641 == 1'd0) | (ap_predicate_tran7to8_state6 == 1'b1)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return = UnifiedRetVal_reg_285;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_address0_local = zext_ln64_1_fu_522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_address0_local = zext_ln64_fu_428_p1;
        end else begin
            ptr_address0_local = 'bx;
        end
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
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
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
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
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_66;
assign add_ln64_1_fu_516_p2 = (r_1_fu_510_p2 + trunc_ln17_fu_472_p1);
assign add_ln64_fu_422_p2 = (r_fu_416_p2 + trunc_ln18_fu_396_p1);
assign add_ln65_fu_566_p2 = (a_str_idx_fu_70 + 9'd2);
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];
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
always @ (*) begin
    ap_condition_588 = ((ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_592 = ((ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_597 = ((ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1));
end
always @ (*) begin
    ap_condition_602 = ((ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1));
end
always @ (*) begin
    ap_condition_607 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_612 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_679 == 1'd1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_a_idx_7_reg_261 = 'bx;
assign ap_phi_reg_pp0_iter0_b_idx_7_reg_273 = 'bx;
always @ (*) begin
    ap_predicate_tran7to8_state6 = ((or_ln62_reg_641 == 1'd1) & (or_ln62_1_reg_679 == 1'd0));
end
assign b_str_idx_6_out = a_str_idx_fu_70;
assign b_str_idx_fu_572_p2 = (a_str_idx_0_0_fu_66 + 32'd2);
assign grp_fu_298_p2 = ($signed(a_idx_1_reg_635) + $signed(32'd4294967295));
assign grp_fu_303_p2 = ($signed(b_idx_1_reg_629) + $signed(32'd4294967295));
assign grp_fu_308_p2 = ($signed(a_idx_4_reg_237) + $signed(32'd4294967295));
assign grp_fu_314_p2 = ($signed(b_idx_4_reg_249) + $signed(32'd4294967295));
assign icmp_ln62_1_fu_384_p2 = (($signed(b_idx_fu_74) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_480_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_237) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_486_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_249) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_378_p2 = (($signed(a_idx_fu_78) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln4_fu_547_p3 = {{tmp_s_reg_674}, {1'd1}};
assign or_ln62_1_fu_492_p2 = (icmp_ln62_3_fu_486_p2 | icmp_ln62_2_fu_480_p2);
assign or_ln62_fu_390_p2 = (icmp_ln62_fu_378_p2 | icmp_ln62_1_fu_384_p2);
assign p_shl5_fu_502_p3 = {{trunc_ln16_1_fu_498_p1}, {7'd0}};
assign p_shl_fu_408_p3 = {{trunc_ln16_fu_404_p1}, {7'd0}};
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_q0_local = ptr_q0;
assign r_1_fu_510_p2 = (p_shl5_fu_502_p3 + trunc_ln17_1_fu_476_p1);
assign r_fu_416_p2 = (p_shl_fu_408_p3 + trunc_ln18_1_fu_400_p1);
assign trunc_ln16_1_fu_498_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_249[7:0];
assign trunc_ln16_fu_404_p1 = b_idx_fu_74[7:0];
assign trunc_ln17_1_fu_476_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_249[14:0];
assign trunc_ln17_fu_472_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_237[14:0];
assign trunc_ln18_1_fu_400_p1 = b_idx_fu_74[14:0];
assign trunc_ln18_fu_396_p1 = a_idx_fu_78[14:0];
assign zext_ln18_fu_456_p1 = a_str_idx_fu_70;
assign zext_ln64_1_fu_522_p1 = add_ln64_1_fu_516_p2;
assign zext_ln64_fu_428_p1 = add_ln64_fu_422_p2;
assign zext_ln65_1_fu_532_p1 = grp_fu_308_p2;
assign zext_ln65_fu_438_p1 = grp_fu_298_p2;
assign zext_ln66_1_fu_537_p1 = grp_fu_314_p2;
assign zext_ln66_fu_443_p1 = grp_fu_303_p2;
assign zext_ln71_1_fu_433_p1 = grp_fu_298_p2;
assign zext_ln71_2_fu_527_p1 = grp_fu_308_p2;
assign zext_ln71_fu_554_p1 = or_ln4_fu_547_p3;
assign zext_ln77_1_fu_542_p1 = grp_fu_314_p2;
assign zext_ln77_fu_448_p1 = grp_fu_303_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[1] <= 1'b0;
end
endmodule 
