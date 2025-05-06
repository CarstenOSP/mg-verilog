
module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0);  
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
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [13:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [13:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_659;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln28_fu_304_p2;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_2_load_reg_663;
wire   [0:0] icmp_ln29_fu_322_p2;
reg   [0:0] icmp_ln29_reg_668;
wire   [7:0] select_ln28_fu_334_p3;
reg   [7:0] select_ln28_reg_673;
wire   [0:0] trunc_ln28_fu_342_p1;
reg   [0:0] trunc_ln28_reg_679;
reg   [5:0] tmp_5_reg_684;
wire   [7:0] select_ln17_fu_376_p3;
reg   [7:0] select_ln17_reg_689;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_20_fu_397_p2;
reg   [14:0] empty_20_reg_704;
wire   [14:0] empty_21_fu_403_p2;
reg   [14:0] empty_21_reg_710;
wire   [0:0] trunc_ln29_fu_409_p1;
reg   [0:0] trunc_ln29_reg_716;
wire   [7:0] add_ln30_fu_413_p2;
reg   [7:0] add_ln30_reg_721;
wire   [0:0] icmp_ln30_fu_466_p2;
reg   [0:0] icmp_ln30_reg_736;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] trunc_ln39_fu_477_p1;
reg   [0:0] trunc_ln39_reg_741;
reg   [13:0] lshr_ln3_reg_748;
reg   [13:0] lshr_ln6_reg_773;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] select_ln40_fu_553_p3;
reg   [31:0] select_ln40_reg_788;
wire   [31:0] select_ln41_fu_560_p3;
reg   [31:0] select_ln41_reg_793;
wire   [31:0] up_left_fu_581_p2;
reg   [31:0] up_left_reg_798;
wire   [31:0] up_fu_587_p2;
reg   [31:0] up_reg_804;
wire   [31:0] left_fu_592_p2;
reg   [31:0] left_reg_809;
wire   [31:0] select_ln43_fu_603_p3;
reg   [31:0] select_ln43_reg_814;
wire   [63:0] zext_ln45_fu_623_p1;
reg   [63:0] zext_ln45_reg_820;
wire   [0:0] icmp_ln46_fu_628_p2;
reg   [0:0] icmp_ln46_reg_830;
wire   [0:0] icmp_ln48_fu_633_p2;
reg   [0:0] icmp_ln48_reg_834;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast12_fu_385_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_1_fu_429_p1;
wire   [63:0] zext_ln40_fu_511_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_532_p1;
wire   [63:0] zext_ln39_fu_548_p1;
wire    ap_block_pp0_stage3;
wire   [13:0] ptr_0_addr_1_gep_fu_250_p3;
wire   [13:0] ptr_1_addr_1_gep_fu_259_p3;
wire   [13:0] ptr_0_addr_gep_fu_268_p3;
wire   [13:0] ptr_1_addr_gep_fu_277_p3;
reg   [7:0] a_idx_2_fu_76;
wire   [7:0] add_ln29_fu_435_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
wire    ap_block_pp0_stage0;
reg   [7:0] b_idx_1_fu_80;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [14:0] indvar_flatten_fu_84;
wire   [14:0] add_ln28_fu_310_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
reg    M_0_we0_local;
wire   [31:0] max_fu_615_p3;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
reg    M_1_we0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
wire   [7:0] add_ln28_1_fu_328_p2;
wire   [6:0] trunc_ln28_1_fu_346_p1;
wire   [6:0] empty_fu_350_p2;
wire   [14:0] p_shl_fu_390_p3;
wire   [14:0] b_idx_1_cast4_fu_382_p1;
wire   [5:0] lshr_ln2_fu_419_p4;
wire   [7:0] select_ln30_fu_459_p3;
wire   [7:0] tmp_fu_446_p3;
wire   [14:0] zext_ln29_fu_453_p1;
wire   [14:0] add_ln39_fu_472_p2;
wire   [14:0] zext_ln30_fu_456_p1;
wire   [14:0] add_ln39_1_fu_481_p2;
wire   [14:0] add_ln40_fu_496_p2;
wire   [13:0] lshr_ln4_fu_501_p4;
wire   [14:0] add_ln41_fu_517_p2;
wire   [13:0] lshr_ln5_fu_522_p4;
wire   [31:0] select_ln39_fu_574_p3;
wire   [31:0] select_ln39_1_fu_567_p3;
wire   [0:0] icmp_ln43_fu_597_p2;
wire   [0:0] icmp_ln43_1_fu_611_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_611;
reg    ap_condition_616;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_76 = 8'd0;
#0 b_idx_1_fu_80 = 8'd0;
#0 indvar_flatten_fu_84 = 15'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_76 <= 8'd1;
    end else if (((icmp_ln28_reg_659 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_76 <= add_ln29_fu_435_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_304_p2 == 1'd0))) begin
            b_idx_1_fu_80 <= select_ln28_fu_334_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_80 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_304_p2 == 1'd0))) begin
            indvar_flatten_fu_84 <= add_ln28_fu_310_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_84 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_load_reg_663 <= ap_sig_allocacmp_a_idx_2_load;
        icmp_ln28_reg_659 <= icmp_ln28_fu_304_p2;
        icmp_ln29_reg_668 <= icmp_ln29_fu_322_p2;
        left_reg_809 <= left_fu_592_p2;
        select_ln28_reg_673 <= select_ln28_fu_334_p3;
        select_ln43_reg_814 <= select_ln43_fu_603_p3;
        tmp_5_reg_684 <= {{empty_fu_350_p2[6:1]}};
        trunc_ln28_reg_679 <= trunc_ln28_fu_342_p1;
        up_left_reg_798 <= up_left_fu_581_p2;
        up_reg_804 <= up_fu_587_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln30_reg_721 <= add_ln30_fu_413_p2;
        empty_20_reg_704 <= empty_20_fu_397_p2;
        empty_21_reg_710 <= empty_21_fu_403_p2;
        icmp_ln46_reg_830 <= icmp_ln46_fu_628_p2;
        icmp_ln48_reg_834 <= icmp_ln48_fu_633_p2;
        select_ln17_reg_689 <= select_ln17_fu_376_p3;
        trunc_ln29_reg_716 <= trunc_ln29_fu_409_p1;
        zext_ln45_reg_820[13 : 0] <= zext_ln45_fu_623_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_reg_736 <= icmp_ln30_fu_466_p2;
        lshr_ln3_reg_748 <= {{add_ln39_1_fu_481_p2[14:1]}};
        lshr_ln6_reg_773 <= {{add_ln39_fu_472_p2[14:1]}};
        trunc_ln39_reg_741 <= trunc_ln39_fu_477_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln40_reg_788 <= select_ln40_fu_553_p3;
        select_ln41_reg_793 <= select_ln41_fu_560_p3;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_532_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln39_fu_548_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_511_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_741 == 1'd0))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_532_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln39_fu_548_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_511_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_741 == 1'd1))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_659 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_84;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((icmp_ln46_reg_830 == 1'd1)) begin
            ptr_0_address0_local = ptr_0_addr_gep_fu_268_p3;
        end else if (((icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_0_address0_local = ptr_0_addr_1_gep_fu_250_p3;
        end else if (((icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_0_address0_local = zext_ln45_reg_820;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln46_reg_830 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_611)) begin
        if ((icmp_ln46_reg_830 == 1'd1)) begin
            ptr_0_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_0_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_0_d0_local = 8'd92;
        end else begin
            ptr_0_d0_local = 'bx;
        end
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln46_reg_830 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_616)) begin
        if ((icmp_ln46_reg_830 == 1'd1)) begin
            ptr_1_address0_local = ptr_1_addr_gep_fu_277_p3;
        end else if (((icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_1_address0_local = ptr_1_addr_1_gep_fu_259_p3;
        end else if (((icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_1_address0_local = zext_ln45_reg_820;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln46_reg_830 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_616)) begin
        if ((icmp_ln46_reg_830 == 1'd1)) begin
            ptr_1_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_1_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0))) begin
            ptr_1_d0_local = 8'd92;
        end else begin
            ptr_1_d0_local = 'bx;
        end
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln46_reg_830 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd1) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln48_reg_834 == 1'd0) & (icmp_ln46_reg_830 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = max_fu_615_p3;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = max_fu_615_p3;
assign M_1_we0 = M_1_we0_local;
assign SEQA_0_address0 = zext_ln30_1_fu_429_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln30_1_fu_429_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = p_cast12_fu_385_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast12_fu_385_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign add_ln28_1_fu_328_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_310_p2 = (ap_sig_allocacmp_indvar_flatten_load + 15'd1);
assign add_ln29_fu_435_p2 = (select_ln17_fu_376_p3 + 8'd1);
assign add_ln30_fu_413_p2 = ($signed(select_ln17_fu_376_p3) + $signed(8'd255));
assign add_ln39_1_fu_481_p2 = (zext_ln30_fu_456_p1 + empty_21_reg_710);
assign add_ln39_fu_472_p2 = (zext_ln29_fu_453_p1 + empty_20_reg_704);
assign add_ln40_fu_496_p2 = (zext_ln29_fu_453_p1 + empty_21_reg_710);
assign add_ln41_fu_517_p2 = (zext_ln30_fu_456_p1 + empty_20_reg_704);
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
    ap_condition_611 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd0));
end
always @ (*) begin
    ap_condition_616 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln39_reg_741 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast4_fu_382_p1 = select_ln28_reg_673;
assign empty_20_fu_397_p2 = (p_shl_fu_390_p3 + b_idx_1_cast4_fu_382_p1);
assign empty_21_fu_403_p2 = ($signed(empty_20_fu_397_p2) + $signed(15'd32639));
assign empty_fu_350_p2 = ($signed(trunc_ln28_1_fu_346_p1) + $signed(7'd127));
assign icmp_ln28_fu_304_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_322_p2 = ((ap_sig_allocacmp_a_idx_2_load == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_466_p2 = ((select_ln30_fu_459_p3 == tmp_fu_446_p3) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_611_p2 = (($signed(up_left_reg_798) > $signed(select_ln43_reg_814)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_597_p2 = (($signed(up_fu_587_p2) > $signed(left_fu_592_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_628_p2 = ((max_fu_615_p3 == left_reg_809) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_633_p2 = ((max_fu_615_p3 == up_reg_804) ? 1'b1 : 1'b0);
assign left_fu_592_p2 = ($signed(select_ln41_reg_793) + $signed(32'd4294967295));
assign lshr_ln2_fu_419_p4 = {{add_ln30_fu_413_p2[6:1]}};
assign lshr_ln4_fu_501_p4 = {{add_ln40_fu_496_p2[14:1]}};
assign lshr_ln5_fu_522_p4 = {{add_ln41_fu_517_p2[14:1]}};
assign max_fu_615_p3 = ((icmp_ln43_1_fu_611_p2[0:0] == 1'b1) ? up_left_reg_798 : select_ln43_reg_814);
assign p_cast12_fu_385_p1 = tmp_5_reg_684;
assign p_shl_fu_390_p3 = {{select_ln28_reg_673}, {7'd0}};
assign ptr_0_addr_1_gep_fu_250_p3 = zext_ln45_reg_820;
assign ptr_0_addr_gep_fu_268_p3 = zext_ln45_reg_820;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_1_gep_fu_259_p3 = zext_ln45_reg_820;
assign ptr_1_addr_gep_fu_277_p3 = zext_ln45_reg_820;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign select_ln17_fu_376_p3 = ((icmp_ln29_reg_668[0:0] == 1'b1) ? 8'd1 : a_idx_2_load_reg_663);
assign select_ln28_fu_334_p3 = ((icmp_ln29_fu_322_p2[0:0] == 1'b1) ? add_ln28_1_fu_328_p2 : ap_sig_allocacmp_b_idx_1_load);
assign select_ln30_fu_459_p3 = ((trunc_ln29_reg_716[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign select_ln39_1_fu_567_p3 = ((icmp_ln30_reg_736[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_574_p3 = ((trunc_ln39_reg_741[0:0] == 1'b1) ? M_1_q1 : M_0_q1);
assign select_ln40_fu_553_p3 = ((trunc_ln39_reg_741[0:0] == 1'b1) ? M_0_q1 : M_1_q1);
assign select_ln41_fu_560_p3 = ((trunc_ln39_reg_741[0:0] == 1'b1) ? M_0_q0 : M_1_q0);
assign select_ln43_fu_603_p3 = ((icmp_ln43_fu_597_p2[0:0] == 1'b1) ? up_fu_587_p2 : left_fu_592_p2);
assign tmp_fu_446_p3 = ((trunc_ln28_reg_679[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign trunc_ln28_1_fu_346_p1 = select_ln28_fu_334_p3[6:0];
assign trunc_ln28_fu_342_p1 = select_ln28_fu_334_p3[0:0];
assign trunc_ln29_fu_409_p1 = select_ln17_fu_376_p3[0:0];
assign trunc_ln39_fu_477_p1 = add_ln39_fu_472_p2[0:0];
assign up_fu_587_p2 = ($signed(select_ln40_reg_788) + $signed(32'd4294967295));
assign up_left_fu_581_p2 = (select_ln39_fu_574_p3 + select_ln39_1_fu_567_p3);
assign zext_ln29_fu_453_p1 = select_ln17_reg_689;
assign zext_ln30_1_fu_429_p1 = lshr_ln2_fu_419_p4;
assign zext_ln30_fu_456_p1 = add_ln30_reg_721;
assign zext_ln39_fu_548_p1 = lshr_ln3_reg_748;
assign zext_ln40_fu_511_p1 = lshr_ln4_fu_501_p4;
assign zext_ln41_fu_532_p1 = lshr_ln5_fu_522_p4;
assign zext_ln45_fu_623_p1 = lshr_ln6_reg_773;
always @ (posedge ap_clk) begin
    zext_ln45_reg_820[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
