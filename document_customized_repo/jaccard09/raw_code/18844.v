module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,alignedB_address1,alignedB_ce1,alignedB_we1,alignedB_d1); 
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
input  [31:0] b_str_idx_7;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [7:0] alignedB_address1;
output   alignedB_ce1;
output   alignedB_we1;
output  [7:0] alignedB_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln86_15_fu_632_p2;
wire   [0:0] icmp_ln86_14_fu_611_p2;
wire   [0:0] icmp_ln86_13_fu_585_p2;
reg   [0:0] icmp_ln86_12_reg_734;
reg   [0:0] icmp_ln86_11_reg_730;
reg   [0:0] icmp_ln86_10_reg_726;
reg   [0:0] icmp_ln86_9_reg_722;
reg   [0:0] icmp_ln86_8_reg_718;
reg   [0:0] icmp_ln86_7_reg_714;
reg   [0:0] icmp_ln86_6_reg_710;
reg   [0:0] icmp_ln86_5_reg_706;
reg   [0:0] icmp_ln86_4_reg_702;
reg   [0:0] icmp_ln86_3_reg_698;
reg   [0:0] icmp_ln86_2_reg_694;
reg   [0:0] icmp_ln86_1_reg_690;
reg   [0:0] icmp_ln86_reg_669;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_1_reg_663;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln86_fu_241_p2;
wire   [9:0] trunc_ln86_fu_247_p1;
reg   [9:0] trunc_ln86_reg_673;
wire   [0:0] icmp_ln86_1_fu_272_p2;
wire   [0:0] icmp_ln86_2_fu_299_p2;
wire   [0:0] icmp_ln86_3_fu_325_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln86_4_fu_351_p2;
wire   [0:0] icmp_ln86_5_fu_377_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln86_6_fu_403_p2;
wire   [0:0] icmp_ln86_7_fu_429_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln86_8_fu_455_p2;
wire   [0:0] icmp_ln86_9_fu_481_p2;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln86_10_fu_507_p2;
wire   [0:0] icmp_ln86_11_fu_533_p2;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln86_12_fu_559_p2;
reg   [0:0] icmp_ln86_13_reg_738;
wire    ap_block_pp0_stage7_11001;
reg   [0:0] icmp_ln86_14_reg_742;
wire   [9:0] add_ln86_14_fu_617_p2;
reg   [9:0] add_ln86_14_reg_746;
reg   [0:0] icmp_ln86_15_reg_751;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln86_1_fu_257_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_2_fu_284_p1;
wire   [63:0] zext_ln86_3_fu_310_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln86_4_fu_336_p1;
wire   [63:0] zext_ln86_5_fu_362_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln86_6_fu_388_p1;
wire   [63:0] zext_ln86_7_fu_414_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln86_8_fu_440_p1;
wire   [63:0] zext_ln86_9_fu_466_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln86_10_fu_492_p1;
wire   [63:0] zext_ln86_11_fu_518_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln86_12_fu_544_p1;
wire   [63:0] zext_ln86_13_fu_570_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln86_14_fu_596_p1;
wire   [63:0] zext_ln86_fu_638_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_15_fu_642_p1;
reg   [31:0] b_str_idx_fu_74;
wire   [31:0] add_ln86_15_fu_646_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    alignedB_we1_local;
reg    alignedB_ce1_local;
reg   [7:0] alignedB_address1_local;
reg    alignedB_we0_local;
reg    alignedB_ce0_local;
reg   [7:0] alignedB_address0_local;
wire   [23:0] tmp_fu_231_p4;
wire   [9:0] add_ln86_fu_251_p2;
wire   [1:0] tmp_1_fu_262_p4;
wire   [9:0] add_ln86_1_fu_278_p2;
wire   [1:0] tmp_2_fu_289_p4;
wire   [9:0] add_ln86_2_fu_305_p2;
wire   [1:0] tmp_3_fu_315_p4;
wire   [9:0] add_ln86_3_fu_331_p2;
wire   [1:0] tmp_4_fu_341_p4;
wire   [9:0] add_ln86_4_fu_357_p2;
wire   [1:0] tmp_5_fu_367_p4;
wire   [9:0] add_ln86_5_fu_383_p2;
wire   [1:0] tmp_6_fu_393_p4;
wire   [9:0] add_ln86_6_fu_409_p2;
wire   [1:0] tmp_7_fu_419_p4;
wire   [9:0] add_ln86_7_fu_435_p2;
wire   [1:0] tmp_8_fu_445_p4;
wire   [9:0] add_ln86_8_fu_461_p2;
wire   [1:0] tmp_9_fu_471_p4;
wire   [9:0] add_ln86_9_fu_487_p2;
wire   [1:0] tmp_10_fu_497_p4;
wire   [9:0] add_ln86_10_fu_513_p2;
wire   [1:0] tmp_11_fu_523_p4;
wire   [9:0] add_ln86_11_fu_539_p2;
wire   [1:0] tmp_12_fu_549_p4;
wire   [9:0] add_ln86_12_fu_565_p2;
wire   [1:0] tmp_13_fu_575_p4;
wire   [9:0] add_ln86_13_fu_591_p2;
wire   [1:0] tmp_14_fu_601_p4;
wire   [1:0] tmp_15_fu_622_p4;
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
reg    ap_condition_806;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_74 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_str_idx_fu_74 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_806)) begin
            b_str_idx_fu_74 <= add_ln86_15_fu_646_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln86_14_reg_746 <= add_ln86_14_fu_617_p2;
        icmp_ln86_13_reg_738 <= icmp_ln86_13_fu_585_p2;
        icmp_ln86_14_reg_742 <= icmp_ln86_14_fu_611_p2;
        icmp_ln86_15_reg_751 <= icmp_ln86_15_fu_632_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_str_idx_1_reg_663 <= b_str_idx_fu_74;
        icmp_ln86_1_reg_690 <= icmp_ln86_1_fu_272_p2;
        icmp_ln86_2_reg_694 <= icmp_ln86_2_fu_299_p2;
        icmp_ln86_reg_669 <= icmp_ln86_fu_241_p2;
        trunc_ln86_reg_673 <= trunc_ln86_fu_247_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln86_10_reg_726 <= icmp_ln86_10_fu_507_p2;
        icmp_ln86_9_reg_722 <= icmp_ln86_9_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        icmp_ln86_11_reg_730 <= icmp_ln86_11_fu_533_p2;
        icmp_ln86_12_reg_734 <= icmp_ln86_12_fu_559_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln86_3_reg_698 <= icmp_ln86_3_fu_325_p2;
        icmp_ln86_4_reg_702 <= icmp_ln86_4_fu_351_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln86_5_reg_706 <= icmp_ln86_5_fu_377_p2;
        icmp_ln86_6_reg_710 <= icmp_ln86_6_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln86_7_reg_714 <= icmp_ln86_7_fu_429_p2;
        icmp_ln86_8_reg_718 <= icmp_ln86_8_fu_455_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_address0_local = zext_ln86_15_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        alignedB_address0_local = zext_ln86_14_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        alignedB_address0_local = zext_ln86_12_fu_544_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        alignedB_address0_local = zext_ln86_10_fu_492_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_address0_local = zext_ln86_8_fu_440_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_address0_local = zext_ln86_6_fu_388_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_address0_local = zext_ln86_4_fu_336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_address0_local = zext_ln86_2_fu_284_p1;
    end else begin
        alignedB_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_address1_local = zext_ln86_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        alignedB_address1_local = zext_ln86_13_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        alignedB_address1_local = zext_ln86_11_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        alignedB_address1_local = zext_ln86_9_fu_466_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_address1_local = zext_ln86_7_fu_414_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedB_address1_local = zext_ln86_5_fu_362_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_address1_local = zext_ln86_3_fu_310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_address1_local = zext_ln86_1_fu_257_p1;
    end else begin
        alignedB_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_ce1_local = 1'b1;
    end else begin
        alignedB_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726 == 1'd0) & (icmp_ln86_11_reg_730 == 1'd0) & (icmp_ln86_12_reg_734 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_15_reg_751 == 1'd0) & (icmp_ln86_14_reg_742 == 1'd0) & (icmp_ln86_13_reg_738 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726 == 1'd0) & (icmp_ln86_11_reg_730 == 1'd0) & (icmp_ln86_12_reg_734== 1'd0) & (icmp_ln86_13_fu_585_p2 == 1'd0) & (icmp_ln86_14_fu_611_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln86_12_fu_559_p2 == 1'd0) & (icmp_ln86_11_fu_533_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln86_10_fu_507_p2 == 1'd0) & (icmp_ln86_9_fu_481_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln86_8_fu_455_p2 == 1'd0) & (icmp_ln86_7_fu_429_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln86_6_fu_403_p2 == 1'd0) & (icmp_ln86_5_fu_377_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln86_4_fu_351_p2 == 1'd0) & (icmp_ln86_3_fu_325_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln86_2_fu_299_p2 == 1'd0) & (icmp_ln86_1_fu_272_p2 == 1'd0) & (icmp_ln86_fu_241_p2 == 1'd1)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_669 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726 == 1'd0) & (icmp_ln86_11_reg_730 == 1'd0) & (icmp_ln86_12_reg_734 == 1'd0) & (icmp_ln86_13_fu_585_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726== 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln86_11_fu_533_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln86_9_fu_481_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln86_7_fu_429_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694== 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln86_5_fu_377_p2 == 1'd0)) | ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln86_3_fu_325_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln86_1_fu_272_p2 == 1'd0) & (icmp_ln86_fu_241_p2 == 1'd1)))) begin
        alignedB_we1_local = 1'b1;
    end else begin
        alignedB_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln86_reg_669 == 1'd0) | ((icmp_ln86_1_reg_690 == 1'd1) | ((icmp_ln86_2_reg_694 == 1'd1) | ((icmp_ln86_3_reg_698 == 1'd1) | ((icmp_ln86_4_reg_702 == 1'd1) | ((icmp_ln86_5_reg_706 == 1'd1) | ((icmp_ln86_6_reg_710 == 1'd1) | ((icmp_ln86_7_reg_714 == 1'd1) | ((icmp_ln86_8_reg_718 == 1'd1) | ((icmp_ln86_9_reg_722 == 1'd1) | ((icmp_ln86_10_reg_726 == 1'd1) | ((icmp_ln86_11_reg_730 == 1'd1) | ((icmp_ln86_12_reg_734 == 1'd1) | ((icmp_ln86_13_fu_585_p2 == 1'd1) | ((icmp_ln86_14_fu_611_p2 == 1'd1) | (icmp_ln86_15_fu_632_p2 == 1'd1)))))))))))))))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_669 == 1'd0) | ((icmp_ln86_1_reg_690 == 1'd1) | ((icmp_ln86_2_reg_694 == 1'd1) | ((icmp_ln86_3_reg_698 == 1'd1) | ((icmp_ln86_4_reg_702 == 1'd1) | ((icmp_ln86_5_reg_706 == 1'd1) | ((icmp_ln86_6_reg_710 == 1'd1) | ((icmp_ln86_7_reg_714 == 1'd1) | ((icmp_ln86_8_reg_718 == 1'd1) | ((icmp_ln86_9_reg_722 == 1'd1) | ((icmp_ln86_10_reg_726 == 1'd1) | ((icmp_ln86_11_reg_730 == 1'd1) | ((icmp_ln86_12_reg_734 == 1'd1) | ((icmp_ln86_13_reg_738 == 1'd1) | ((icmp_ln86_15_reg_751 == 1'd1) | (icmp_ln86_14_reg_742 == 1'd1)))))))))))))))))) begin
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
assign add_ln86_10_fu_513_p2 = (trunc_ln86_reg_673 + 10'd11);
assign add_ln86_11_fu_539_p2 = (trunc_ln86_reg_673 + 10'd12);
assign add_ln86_12_fu_565_p2 = (trunc_ln86_reg_673 + 10'd13);
assign add_ln86_13_fu_591_p2 = (trunc_ln86_reg_673 + 10'd14);
assign add_ln86_14_fu_617_p2 = (trunc_ln86_reg_673 + 10'd15);
assign add_ln86_15_fu_646_p2 = (b_str_idx_1_reg_663 + 32'd16);
assign add_ln86_1_fu_278_p2 = (trunc_ln86_fu_247_p1 + 10'd2);
assign add_ln86_2_fu_305_p2 = (trunc_ln86_reg_673 + 10'd3);
assign add_ln86_3_fu_331_p2 = (trunc_ln86_reg_673 + 10'd4);
assign add_ln86_4_fu_357_p2 = (trunc_ln86_reg_673 + 10'd5);
assign add_ln86_5_fu_383_p2 = (trunc_ln86_reg_673 + 10'd6);
assign add_ln86_6_fu_409_p2 = (trunc_ln86_reg_673 + 10'd7);
assign add_ln86_7_fu_435_p2 = (trunc_ln86_reg_673 + 10'd8);
assign add_ln86_8_fu_461_p2 = (trunc_ln86_reg_673 + 10'd9);
assign add_ln86_9_fu_487_p2 = (trunc_ln86_reg_673 + 10'd10);
assign add_ln86_fu_251_p2 = (trunc_ln86_fu_247_p1 + 10'd1);
assign alignedB_address0 = alignedB_address0_local;
assign alignedB_address1 = alignedB_address1_local;
assign alignedB_ce0 = alignedB_ce0_local;
assign alignedB_ce1 = alignedB_ce1_local;
assign alignedB_d0 = 8'd95;
assign alignedB_d1 = 8'd95;
assign alignedB_we0 = alignedB_we0_local;
assign alignedB_we1 = alignedB_we1_local;
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
    ap_condition_806 = ((icmp_ln86_reg_669 == 1'd1) & (icmp_ln86_1_reg_690 == 1'd0) & (icmp_ln86_2_reg_694 == 1'd0) & (icmp_ln86_3_reg_698 == 1'd0) & (icmp_ln86_4_reg_702 == 1'd0) & (icmp_ln86_5_reg_706 == 1'd0) & (icmp_ln86_6_reg_710 == 1'd0) & (icmp_ln86_7_reg_714 == 1'd0) & (icmp_ln86_8_reg_718 == 1'd0) & (icmp_ln86_9_reg_722 == 1'd0) & (icmp_ln86_10_reg_726 == 1'd0) & (icmp_ln86_11_reg_730 == 1'd0) & (icmp_ln86_12_reg_734 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln86_15_reg_751 == 1'd0) & (icmp_ln86_14_reg_742 == 1'd0) & (icmp_ln86_13_reg_738 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_10_fu_507_p2 = ((tmp_10_fu_497_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_11_fu_533_p2 = ((tmp_11_fu_523_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_12_fu_559_p2 = ((tmp_12_fu_549_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_13_fu_585_p2 = ((tmp_13_fu_575_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_14_fu_611_p2 = ((tmp_14_fu_601_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_15_fu_632_p2 = ((tmp_15_fu_622_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_1_fu_272_p2 = ((tmp_1_fu_262_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_299_p2 = ((tmp_2_fu_289_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_325_p2 = ((tmp_3_fu_315_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_351_p2 = ((tmp_4_fu_341_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_377_p2 = ((tmp_5_fu_367_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_403_p2 = ((tmp_6_fu_393_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_429_p2 = ((tmp_7_fu_419_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_8_fu_455_p2 = ((tmp_8_fu_445_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_9_fu_481_p2 = ((tmp_9_fu_471_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_241_p2 = (($signed(tmp_fu_231_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign tmp_10_fu_497_p4 = {{add_ln86_9_fu_487_p2[9:8]}};
assign tmp_11_fu_523_p4 = {{add_ln86_10_fu_513_p2[9:8]}};
assign tmp_12_fu_549_p4 = {{add_ln86_11_fu_539_p2[9:8]}};
assign tmp_13_fu_575_p4 = {{add_ln86_12_fu_565_p2[9:8]}};
assign tmp_14_fu_601_p4 = {{add_ln86_13_fu_591_p2[9:8]}};
assign tmp_15_fu_622_p4 = {{add_ln86_14_fu_617_p2[9:8]}};
assign tmp_1_fu_262_p4 = {{add_ln86_fu_251_p2[9:8]}};
assign tmp_2_fu_289_p4 = {{add_ln86_1_fu_278_p2[9:8]}};
assign tmp_3_fu_315_p4 = {{add_ln86_2_fu_305_p2[9:8]}};
assign tmp_4_fu_341_p4 = {{add_ln86_3_fu_331_p2[9:8]}};
assign tmp_5_fu_367_p4 = {{add_ln86_4_fu_357_p2[9:8]}};
assign tmp_6_fu_393_p4 = {{add_ln86_5_fu_383_p2[9:8]}};
assign tmp_7_fu_419_p4 = {{add_ln86_6_fu_409_p2[9:8]}};
assign tmp_8_fu_445_p4 = {{add_ln86_7_fu_435_p2[9:8]}};
assign tmp_9_fu_471_p4 = {{add_ln86_8_fu_461_p2[9:8]}};
assign tmp_fu_231_p4 = {{b_str_idx_fu_74[31:8]}};
assign trunc_ln86_fu_247_p1 = b_str_idx_fu_74[9:0];
assign zext_ln86_10_fu_492_p1 = add_ln86_9_fu_487_p2;
assign zext_ln86_11_fu_518_p1 = add_ln86_10_fu_513_p2;
assign zext_ln86_12_fu_544_p1 = add_ln86_11_fu_539_p2;
assign zext_ln86_13_fu_570_p1 = add_ln86_12_fu_565_p2;
assign zext_ln86_14_fu_596_p1 = add_ln86_13_fu_591_p2;
assign zext_ln86_15_fu_642_p1 = add_ln86_14_reg_746;
assign zext_ln86_1_fu_257_p1 = add_ln86_fu_251_p2;
assign zext_ln86_2_fu_284_p1 = add_ln86_1_fu_278_p2;
assign zext_ln86_3_fu_310_p1 = add_ln86_2_fu_305_p2;
assign zext_ln86_4_fu_336_p1 = add_ln86_3_fu_331_p2;
assign zext_ln86_5_fu_362_p1 = add_ln86_4_fu_357_p2;
assign zext_ln86_6_fu_388_p1 = add_ln86_5_fu_383_p2;
assign zext_ln86_7_fu_414_p1 = add_ln86_6_fu_409_p2;
assign zext_ln86_8_fu_440_p1 = add_ln86_7_fu_435_p2;
assign zext_ln86_9_fu_466_p1 = add_ln86_8_fu_461_p2;
assign zext_ln86_fu_638_p1 = b_str_idx_1_reg_663;
endmodule 