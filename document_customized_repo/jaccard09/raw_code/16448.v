module needwun_needwun_Pipeline_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQA_address1,SEQA_ce1,SEQA_q1,SEQB_load,empty,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_we1,M_d1,M_q1,mul_ln29,ptr_address0,ptr_ce0,ptr_we0,ptr_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [6:0] SEQA_address1;
output   SEQA_ce1;
input  [7:0] SEQA_q1;
input  [7:0] SEQB_load;
input  [14:0] empty;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
input  [31:0] M_q1;
input  [14:0] mul_ln29;
output  [14:0] ptr_address0;
output   ptr_ce0;
output   ptr_we0;
output  [7:0] ptr_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln29_reg_511;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [31:0] reg_179;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_184_p2;
reg   [31:0] reg_190;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_reg_505;
wire   [0:0] icmp_ln29_fu_202_p2;
wire   [14:0] zext_ln29_1_fu_213_p1;
reg   [14:0] zext_ln29_1_reg_515;
wire   [6:0] add_ln30_fu_221_p2;
reg   [6:0] add_ln30_reg_520;
wire   [0:0] icmp_ln30_fu_246_p2;
reg   [0:0] icmp_ln30_reg_540;
wire   [7:0] add_ln29_fu_271_p2;
reg   [7:0] add_ln29_reg_555;
wire   [0:0] icmp_ln30_1_fu_276_p2;
reg   [0:0] icmp_ln30_1_reg_560;
wire   [31:0] up_left_fu_288_p2;
reg   [31:0] up_left_reg_565;
wire   [31:0] left_fu_294_p2;
reg   [31:0] left_reg_571;
wire   [14:0] add_ln45_fu_300_p2;
reg   [14:0] add_ln45_reg_578;
wire   [31:0] up_left_1_fu_314_p2;
reg   [31:0] up_left_1_reg_583;
wire   [14:0] add_ln45_1_fu_330_p2;
reg   [14:0] add_ln45_1_reg_594;
wire   [31:0] max_fu_352_p3;
reg   [31:0] max_reg_599;
wire   [31:0] left_1_fu_400_p2;
reg   [31:0] left_1_reg_607;
wire   [31:0] select_ln43_2_fu_411_p3;
reg   [31:0] select_ln43_2_reg_612;
wire   [63:0] zext_ln45_1_fu_440_p1;
reg   [63:0] zext_ln45_1_reg_618;
wire   [0:0] icmp_ln46_1_fu_444_p2;
reg   [0:0] icmp_ln46_1_reg_623;
wire   [0:0] icmp_ln48_1_fu_449_p2;
reg   [0:0] icmp_ln48_1_reg_629;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_fu_227_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_238_p1;
wire   [63:0] zext_ln29_fu_208_p1;
wire   [63:0] zext_ln39_fu_256_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_fu_266_p1;
wire   [63:0] zext_ln40_1_fu_325_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln45_fu_359_p1;
wire    ap_block_pp0_stage4;
reg   [7:0] a_idx_2_fu_54;
wire   [7:0] add_ln29_1_fu_419_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx;
reg    SEQA_ce1_local;
reg    SEQA_ce0_local;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
reg    M_we1_local;
reg    M_we0_local;
wire   [31:0] max_1_fu_433_p3;
reg    ptr_we0_local;
reg   [7:0] ptr_d0_local;
wire   [7:0] zext_ln47_fu_395_p1;
reg    ptr_ce0_local;
reg   [14:0] ptr_address0_local;
wire   [7:0] zext_ln47_1_fu_474_p1;
wire   [6:0] trunc_ln29_fu_217_p1;
wire   [14:0] add_ln40_fu_232_p2;
wire   [14:0] zext_ln30_1_fu_243_p1;
wire   [14:0] add_ln39_fu_251_p2;
wire   [14:0] add_ln41_fu_261_p2;
wire   [31:0] select_ln39_fu_281_p3;
wire   [31:0] select_ln39_1_fu_307_p3;
wire   [14:0] zext_ln30_2_fu_304_p1;
wire   [14:0] add_ln40_2_fu_320_p2;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln43_fu_335_p2;
wire   [31:0] select_ln43_fu_340_p3;
wire   [0:0] icmp_ln43_1_fu_347_p2;
wire   [0:0] icmp_ln46_fu_364_p2;
wire   [0:0] icmp_ln48_fu_368_p2;
wire   [0:0] empty_14_fu_381_p2;
wire   [6:0] select_ln48_fu_373_p3;
wire   [6:0] storemerge1_fu_387_p3;
wire   [0:0] icmp_ln43_2_fu_405_p2;
wire   [0:0] icmp_ln43_3_fu_429_p2;
wire   [0:0] empty_15_fu_462_p2;
wire   [6:0] select_ln48_1_fu_455_p3;
wire   [6:0] storemerge3_fu_466_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_54 = 8'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_54 <= 8'd1;
    end else if (((icmp_ln29_reg_511 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_idx_2_fu_54 <= add_ln29_1_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_179 <= M_q0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_179 <= M_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_reg_505 <= ap_sig_allocacmp_a_idx;
        add_ln30_reg_520 <= add_ln30_fu_221_p2;
        icmp_ln29_reg_511 <= icmp_ln29_fu_202_p2;
        icmp_ln46_1_reg_623 <= icmp_ln46_1_fu_444_p2;
        icmp_ln48_1_reg_629 <= icmp_ln48_1_fu_449_p2;
        zext_ln29_1_reg_515[7 : 0] <= zext_ln29_1_fu_213_p1[7 : 0];
        zext_ln45_1_reg_618[14 : 0] <= zext_ln45_1_fu_440_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln29_reg_555 <= add_ln29_fu_271_p2;
        icmp_ln30_1_reg_560 <= icmp_ln30_1_fu_276_p2;
        icmp_ln30_reg_540 <= icmp_ln30_fu_246_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln45_1_reg_594 <= add_ln45_1_fu_330_p2;
        add_ln45_reg_578 <= add_ln45_fu_300_p2;
        left_reg_571 <= left_fu_294_p2;
        up_left_1_reg_583 <= up_left_1_fu_314_p2;
        up_left_reg_565 <= up_left_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_1_reg_607 <= left_1_fu_400_p2;
        select_ln43_2_reg_612 <= select_ln43_2_fu_411_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        max_reg_599 <= max_fu_352_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_190 <= grp_fu_184_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_address0_local = zext_ln45_1_fu_440_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_address0_local = zext_ln40_1_fu_325_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_address0_local = zext_ln41_fu_266_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_address1_local = zext_ln45_fu_359_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_address1_local = zext_ln39_fu_256_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_address1_local = zext_ln40_fu_238_p1;
        end else begin
            M_address1_local = 'bx;
        end
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_511 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_ce1_local = 1'b1;
    end else begin
        SEQA_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_511 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx = a_idx_2_fu_54;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_address0_local = zext_ln45_1_reg_618;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_address0_local = zext_ln45_fu_359_p1;
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_d0_local = zext_ln47_1_fu_474_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_d0_local = zext_ln47_fu_395_p1;
    end else begin
        ptr_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln29_reg_511 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ptr_we0_local = 1'b1;
    end else begin
        ptr_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = max_1_fu_433_p3;
assign M_d1 = max_reg_599;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign SEQA_address0 = zext_ln29_fu_208_p1;
assign SEQA_address1 = zext_ln30_fu_227_p1;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQA_ce1 = SEQA_ce1_local;
assign add_ln29_1_fu_419_p2 = (a_idx_reg_505 + 8'd2);
assign add_ln29_fu_271_p2 = (a_idx_reg_505 + 8'd1);
assign add_ln30_fu_221_p2 = ($signed(trunc_ln29_fu_217_p1) + $signed(7'd127));
assign add_ln39_fu_251_p2 = (zext_ln30_1_fu_243_p1 + empty);
assign add_ln40_2_fu_320_p2 = (zext_ln30_2_fu_304_p1 + empty);
assign add_ln40_fu_232_p2 = (zext_ln29_1_fu_213_p1 + empty);
assign add_ln41_fu_261_p2 = (zext_ln30_1_fu_243_p1 + mul_ln29);
assign add_ln45_1_fu_330_p2 = (zext_ln30_2_fu_304_p1 + mul_ln29);
assign add_ln45_fu_300_p2 = (zext_ln29_1_reg_515 + mul_ln29);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign empty_14_fu_381_p2 = (icmp_ln48_fu_368_p2 | icmp_ln46_fu_364_p2);
assign empty_15_fu_462_p2 = (icmp_ln48_1_reg_629 | icmp_ln46_1_reg_623);
assign grp_fu_184_p2 = ($signed(reg_179) + $signed(32'd4294967295));
assign icmp_ln29_fu_202_p2 = ((ap_sig_allocacmp_a_idx < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_276_p2 = ((SEQA_q0 == SEQB_load) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_246_p2 = ((SEQA_q1 == SEQB_load) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_347_p2 = (($signed(up_left_reg_565) > $signed(select_ln43_fu_340_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_405_p2 = (($signed(grp_fu_184_p2) > $signed(left_1_fu_400_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_429_p2 = (($signed(up_left_1_reg_583) > $signed(select_ln43_2_reg_612)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_335_p2 = (($signed(reg_190) > $signed(left_reg_571)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_444_p2 = ((max_1_fu_433_p3 == left_1_reg_607) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_364_p2 = ((max_reg_599 == left_reg_571) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_449_p2 = ((max_1_fu_433_p3 == reg_190) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_368_p2 = ((max_reg_599 == reg_190) ? 1'b1 : 1'b0);
assign left_1_fu_400_p2 = ($signed(max_reg_599) + $signed(32'd4294967295));
assign left_fu_294_p2 = ($signed(M_q0) + $signed(32'd4294967295));
assign max_1_fu_433_p3 = ((icmp_ln43_3_fu_429_p2[0:0] == 1'b1) ? up_left_1_reg_583 : select_ln43_2_reg_612);
assign max_fu_352_p3 = ((icmp_ln43_1_fu_347_p2[0:0] == 1'b1) ? up_left_reg_565 : select_ln43_fu_340_p3);
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_d0 = ptr_d0_local;
assign ptr_we0 = ptr_we0_local;
assign select_ln39_1_fu_307_p3 = ((icmp_ln30_1_reg_560[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_281_p3 = ((icmp_ln30_reg_540[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_2_fu_411_p3 = ((icmp_ln43_2_fu_405_p2[0:0] == 1'b1) ? grp_fu_184_p2 : left_1_fu_400_p2);
assign select_ln43_fu_340_p3 = ((icmp_ln43_fu_335_p2[0:0] == 1'b1) ? reg_190 : left_reg_571);
assign select_ln48_1_fu_455_p3 = ((icmp_ln46_1_reg_623[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_fu_373_p3 = ((icmp_ln46_fu_364_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign storemerge1_fu_387_p3 = ((empty_14_fu_381_p2[0:0] == 1'b1) ? select_ln48_fu_373_p3 : 7'd92);
assign storemerge3_fu_466_p3 = ((empty_15_fu_462_p2[0:0] == 1'b1) ? select_ln48_1_fu_455_p3 : 7'd92);
assign trunc_ln29_fu_217_p1 = ap_sig_allocacmp_a_idx[6:0];
assign up_left_1_fu_314_p2 = (reg_179 + select_ln39_1_fu_307_p3);
assign up_left_fu_288_p2 = (M_q1 + select_ln39_fu_281_p3);
assign zext_ln29_1_fu_213_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln29_fu_208_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln30_1_fu_243_p1 = add_ln30_reg_520;
assign zext_ln30_2_fu_304_p1 = add_ln29_reg_555;
assign zext_ln30_fu_227_p1 = add_ln30_fu_221_p2;
assign zext_ln39_fu_256_p1 = add_ln39_fu_251_p2;
assign zext_ln40_1_fu_325_p1 = add_ln40_2_fu_320_p2;
assign zext_ln40_fu_238_p1 = add_ln40_fu_232_p2;
assign zext_ln41_fu_266_p1 = add_ln41_fu_261_p2;
assign zext_ln45_1_fu_440_p1 = add_ln45_1_reg_594;
assign zext_ln45_fu_359_p1 = add_ln45_reg_578;
assign zext_ln47_1_fu_474_p1 = storemerge3_fu_466_p3;
assign zext_ln47_fu_395_p1 = storemerge1_fu_387_p3;
always @ (posedge ap_clk) begin
    zext_ln29_1_reg_515[14:8] <= 7'b0000000;
    zext_ln45_1_reg_618[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 