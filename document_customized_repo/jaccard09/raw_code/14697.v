module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,b_str_idx_2_out,b_str_idx_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
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
output  [31:0] b_str_idx_2_out;
output   b_str_idx_2_out_ap_vld;
reg ap_idle;
reg b_str_idx_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] or_ln62_fu_400_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_idx_1_reg_586;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_592;
reg   [0:0] or_ln62_reg_598;
wire   [0:0] trunc_ln64_fu_438_p1;
reg   [0:0] trunc_ln64_reg_602;
wire   [0:0] trunc_ln18_1_fu_472_p1;
reg   [0:0] trunc_ln18_1_reg_617;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] lshr_ln6_reg_621;
wire   [0:0] trunc_ln18_2_fu_486_p1;
reg   [0:0] trunc_ln18_2_reg_626;
wire   [0:0] trunc_ln18_3_fu_489_p1;
reg   [0:0] trunc_ln18_3_reg_631;
wire   [7:0] select_ln64_fu_492_p3;
reg   [7:0] select_ln64_reg_636;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln64_fu_452_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_499_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln65_fu_510_p1;
wire   [63:0] zext_ln66_fu_516_p1;
wire   [63:0] zext_ln77_fu_532_p1;
wire   [63:0] zext_ln18_fu_548_p1;
wire   [6:0] alignedA_0_addr_1_gep_fu_253_p3;
wire   [6:0] alignedB_0_addr_1_gep_fu_261_p3;
wire   [6:0] alignedA_1_addr_1_gep_fu_269_p3;
wire   [6:0] alignedB_1_addr_1_gep_fu_277_p3;
wire   [6:0] alignedA_0_addr_gep_fu_285_p3;
wire   [6:0] alignedB_0_addr_gep_fu_294_p3;
wire   [6:0] alignedA_1_addr_gep_fu_302_p3;
wire   [6:0] alignedB_1_addr_gep_fu_311_p3;
reg   [63:0] a_str_idx_fu_70;
wire   [63:0] add_ln66_fu_466_p2;
wire    ap_loop_init;
reg   [31:0] b_idx_fu_74;
wire   [31:0] grp_fu_334_p2;
reg   [31:0] a_idx_fu_78;
wire   [31:0] grp_fu_319_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    ptr_0_ce0_local;
reg    ptr_1_ce0_local;
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
wire   [7:0] grp_fu_349_p3;
reg    alignedA_0_ce0_local;
reg   [6:0] alignedA_0_address0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
wire   [7:0] grp_fu_358_p3;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
reg    alignedA_1_ce0_local;
reg   [6:0] alignedA_1_address0_local;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [0:0] icmp_ln62_fu_388_p2;
wire   [0:0] icmp_ln62_1_fu_394_p2;
wire   [7:0] trunc_ln16_fu_414_p1;
wire   [14:0] p_shl_fu_418_p3;
wire   [14:0] trunc_ln18_5_fu_410_p1;
wire   [14:0] r_fu_426_p2;
wire   [14:0] trunc_ln18_4_fu_406_p1;
wire   [14:0] add_ln64_fu_432_p2;
wire   [13:0] lshr_ln7_fu_442_p4;
wire   [5:0] grp_fu_324_p4;
wire   [5:0] grp_fu_339_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_486;
reg    ap_condition_492;
reg    ap_condition_496;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_70 = 64'd0;
#0 b_idx_fu_74 = 32'd0;
#0 a_idx_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_78 <= 32'd128;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd60) & (or_ln62_reg_598 == 1'd1)))) begin
        a_idx_fu_78 <= grp_fu_319_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_70 <= 64'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_reg_598 == 1'd1))) begin
            a_str_idx_fu_70 <= add_ln66_fu_466_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_74 <= 32'd128;
    end else if (((~(select_ln64_fu_492_p3 == 8'd92) & ~(select_ln64_fu_492_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)))) begin
        b_idx_fu_74 <= grp_fu_334_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_592 <= a_idx_fu_78;
        b_idx_1_reg_586 <= b_idx_fu_74;
        or_ln62_reg_598 <= or_ln62_fu_400_p2;
        trunc_ln64_reg_602 <= trunc_ln64_fu_438_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln6_reg_621 <= {{a_str_idx_fu_70[7:1]}};
        select_ln64_reg_636 <= select_ln64_fu_492_p3;
        trunc_ln18_1_reg_617 <= trunc_ln18_1_fu_472_p1;
        trunc_ln18_2_reg_626 <= trunc_ln18_2_fu_486_p1;
        trunc_ln18_3_reg_631 <= trunc_ln18_3_fu_489_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_486)) begin
        if ((select_ln64_fu_492_p3 == 8'd92)) begin
            SEQA_0_address0_local = zext_ln65_fu_510_p1;
        end else if ((select_ln64_fu_492_p3 == 8'd60)) begin
            SEQA_0_address0_local = zext_ln71_fu_499_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd60) & (or_ln62_reg_598 == 1'd1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_486)) begin
        if ((select_ln64_fu_492_p3 == 8'd92)) begin
            SEQA_1_address0_local = zext_ln65_fu_510_p1;
        end else if ((select_ln64_fu_492_p3 == 8'd60)) begin
            SEQA_1_address0_local = zext_ln71_fu_499_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd60) & (or_ln62_reg_598 == 1'd1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_486)) begin
        if ((~(select_ln64_fu_492_p3 == 8'd92) & ~(select_ln64_fu_492_p3 == 8'd60))) begin
            SEQB_0_address0_local = zext_ln77_fu_532_p1;
        end else if ((select_ln64_fu_492_p3 == 8'd92)) begin
            SEQB_0_address0_local = zext_ln66_fu_516_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_fu_492_p3 == 8'd92) & ~(select_ln64_fu_492_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_486)) begin
        if ((~(select_ln64_fu_492_p3 == 8'd92) & ~(select_ln64_fu_492_p3 == 8'd60))) begin
            SEQB_1_address0_local = zext_ln77_fu_532_p1;
        end else if ((select_ln64_fu_492_p3 == 8'd92)) begin
            SEQB_1_address0_local = zext_ln66_fu_516_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_fu_492_p3 == 8'd92) & ~(select_ln64_fu_492_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln64_fu_492_p3 == 8'd92) & (or_ln62_reg_598 == 1'd1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_492)) begin
        if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60))) begin
            alignedA_0_address0_local = alignedA_0_addr_gep_fu_285_p3;
        end else if ((select_ln64_reg_636 == 8'd92)) begin
            alignedA_0_address0_local = alignedA_0_addr_1_gep_fu_253_p3;
        end else if ((select_ln64_reg_636 == 8'd60)) begin
            alignedA_0_address0_local = zext_ln18_fu_548_p1;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1))) begin
        alignedA_0_d0_local = 8'd45;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_0_d0_local = grp_fu_349_p3;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_496)) begin
        if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60))) begin
            alignedA_1_address0_local = alignedA_1_addr_gep_fu_302_p3;
        end else if ((select_ln64_reg_636 == 8'd92)) begin
            alignedA_1_address0_local = alignedA_1_addr_1_gep_fu_269_p3;
        end else if ((select_ln64_reg_636 == 8'd60)) begin
            alignedA_1_address0_local = zext_ln18_fu_548_p1;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1))) begin
        alignedA_1_d0_local = 8'd45;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_1_d0_local = grp_fu_349_p3;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_492)) begin
        if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60))) begin
            alignedB_0_address0_local = alignedB_0_addr_gep_fu_294_p3;
        end else if ((select_ln64_reg_636 == 8'd92)) begin
            alignedB_0_address0_local = alignedB_0_addr_1_gep_fu_261_p3;
        end else if ((select_ln64_reg_636 == 8'd60)) begin
            alignedB_0_address0_local = zext_ln18_fu_548_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_0_d0_local = grp_fu_358_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_496)) begin
        if ((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60))) begin
            alignedB_1_address0_local = alignedB_1_addr_gep_fu_311_p3;
        end else if ((select_ln64_reg_636 == 8'd92)) begin
            alignedB_1_address0_local = alignedB_1_addr_1_gep_fu_277_p3;
        end else if ((select_ln64_reg_636 == 8'd60)) begin
            alignedB_1_address0_local = zext_ln18_fu_548_p1;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_1_d0_local = grp_fu_358_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(select_ln64_reg_636 == 8'd92) & ~(select_ln64_reg_636 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd92) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (select_ln64_reg_636 == 8'd60) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_fu_400_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd0))) begin
        b_str_idx_2_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
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
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign add_ln64_fu_432_p2 = (r_fu_426_p2 + trunc_ln18_4_fu_406_p1);
assign add_ln66_fu_466_p2 = (a_str_idx_fu_70 + 64'd1);
assign alignedA_0_addr_1_gep_fu_253_p3 = zext_ln18_fu_548_p1;
assign alignedA_0_addr_gep_fu_285_p3 = zext_ln18_fu_548_p1;
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_addr_1_gep_fu_269_p3 = zext_ln18_fu_548_p1;
assign alignedA_1_addr_gep_fu_302_p3 = zext_ln18_fu_548_p1;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedB_0_addr_1_gep_fu_261_p3 = zext_ln18_fu_548_p1;
assign alignedB_0_addr_gep_fu_294_p3 = zext_ln18_fu_548_p1;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_addr_1_gep_fu_277_p3 = zext_ln18_fu_548_p1;
assign alignedB_1_addr_gep_fu_311_p3 = zext_ln18_fu_548_p1;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_486 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_598 == 1'd1));
end
always @ (*) begin
    ap_condition_492 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd0) & (or_ln62_reg_598 == 1'd1));
end
always @ (*) begin
    ap_condition_496 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_617 == 1'd1) & (or_ln62_reg_598 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_str_idx_2_out = a_str_idx_fu_70[31:0];
assign grp_fu_319_p2 = ($signed(a_idx_1_reg_592) + $signed(32'd4294967295));
assign grp_fu_324_p4 = {{grp_fu_319_p2[6:1]}};
assign grp_fu_334_p2 = ($signed(b_idx_1_reg_586) + $signed(32'd4294967295));
assign grp_fu_339_p4 = {{grp_fu_334_p2[6:1]}};
assign grp_fu_349_p3 = ((trunc_ln18_2_reg_626[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_358_p3 = ((trunc_ln18_3_reg_631[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign icmp_ln62_1_fu_394_p2 = (($signed(b_idx_fu_74) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_388_p2 = (($signed(a_idx_fu_78) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_442_p4 = {{add_ln64_fu_432_p2[14:1]}};
assign or_ln62_fu_400_p2 = (icmp_ln62_fu_388_p2 | icmp_ln62_1_fu_394_p2);
assign p_shl_fu_418_p3 = {{trunc_ln16_fu_414_p1}, {7'd0}};
assign ptr_0_address0 = zext_ln64_fu_452_p1;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = zext_ln64_fu_452_p1;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign r_fu_426_p2 = (p_shl_fu_418_p3 + trunc_ln18_5_fu_410_p1);
assign select_ln64_fu_492_p3 = ((trunc_ln64_reg_602[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign trunc_ln16_fu_414_p1 = b_idx_fu_74[7:0];
assign trunc_ln18_1_fu_472_p1 = a_str_idx_fu_70[0:0];
assign trunc_ln18_2_fu_486_p1 = a_idx_1_reg_592[0:0];
assign trunc_ln18_3_fu_489_p1 = b_idx_1_reg_586[0:0];
assign trunc_ln18_4_fu_406_p1 = a_idx_fu_78[14:0];
assign trunc_ln18_5_fu_410_p1 = b_idx_fu_74[14:0];
assign trunc_ln64_fu_438_p1 = add_ln64_fu_432_p2[0:0];
assign zext_ln18_fu_548_p1 = lshr_ln6_reg_621;
assign zext_ln64_fu_452_p1 = lshr_ln7_fu_442_p4;
assign zext_ln65_fu_510_p1 = grp_fu_324_p4;
assign zext_ln66_fu_516_p1 = grp_fu_339_p4;
assign zext_ln71_fu_499_p1 = grp_fu_324_p4;
assign zext_ln77_fu_532_p1 = grp_fu_339_p4;
endmodule 