module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_address0,a_ce0,a_q0,a_address1,a_ce1,a_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
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
input  [31:0] j;
input  [31:0] stop;
output  [10:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [10:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
input  [10:0] add9;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [10:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln11_7_reg_595;
reg   [0:0] icmp_ln11_6_reg_581;
reg   [0:0] icmp_ln11_5_reg_567;
reg   [0:0] icmp_ln11_4_reg_553;
reg   [0:0] icmp_ln11_3_reg_534;
reg   [0:0] icmp_ln11_2_reg_520;
reg   [0:0] icmp_ln11_1_reg_511;
reg   [0:0] icmp_ln11_reg_492;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_18_reg_481;
wire   [0:0] icmp_ln11_fu_228_p2;
wire   [10:0] trunc_ln11_fu_239_p1;
reg   [10:0] trunc_ln11_reg_496;
wire   [10:0] add_ln11_fu_243_p2;
reg   [10:0] add_ln11_reg_506;
wire   [0:0] icmp_ln11_1_fu_254_p2;
wire   [0:0] icmp_ln11_2_fu_292_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [10:0] sub_ln12_2_fu_297_p2;
reg   [10:0] sub_ln12_2_reg_529;
wire   [0:0] icmp_ln11_3_fu_316_p2;
wire   [10:0] sub_ln12_3_fu_321_p2;
reg   [10:0] sub_ln12_3_reg_543;
wire   [31:0] add_ln11_3_fu_326_p2;
reg   [31:0] add_ln11_3_reg_548;
wire   [0:0] icmp_ln11_4_fu_335_p2;
wire   [10:0] sub_ln12_4_fu_340_p2;
reg   [10:0] sub_ln12_4_reg_557;
wire   [31:0] add_ln11_4_fu_345_p2;
reg   [31:0] add_ln11_4_reg_562;
wire   [0:0] icmp_ln11_5_fu_354_p2;
wire   [10:0] sub_ln12_5_fu_359_p2;
reg   [10:0] sub_ln12_5_reg_571;
wire   [31:0] add_ln11_5_fu_364_p2;
reg   [31:0] add_ln11_5_reg_576;
wire   [0:0] icmp_ln11_6_fu_373_p2;
wire   [10:0] sub_ln12_6_fu_378_p2;
reg   [10:0] sub_ln12_6_reg_585;
wire   [31:0] add_ln11_6_fu_383_p2;
reg   [31:0] add_ln11_6_reg_590;
wire   [0:0] icmp_ln11_7_fu_392_p2;
wire   [10:0] sub_ln12_7_fu_397_p2;
reg   [10:0] sub_ln12_7_reg_599;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln11_fu_234_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_1_fu_249_p1;
wire   [63:0] zext_ln12_fu_264_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_273_p1;
wire   [63:0] zext_ln11_2_fu_283_p1;
wire   [63:0] zext_ln11_3_fu_307_p1;
wire   [63:0] zext_ln12_2_fu_412_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_3_fu_416_p1;
wire   [63:0] zext_ln11_4_fu_420_p1;
wire   [63:0] zext_ln11_5_fu_424_p1;
wire   [63:0] zext_ln12_4_fu_428_p1;
wire    ap_block_pp0_stage3;
reg    ap_predicate_pred234_state4;
wire   [63:0] zext_ln12_5_fu_432_p1;
reg    ap_predicate_pred238_state4;
wire   [63:0] zext_ln11_6_fu_436_p1;
wire   [63:0] zext_ln11_7_fu_440_p1;
wire   [63:0] zext_ln12_6_fu_444_p1;
reg    ap_predicate_pred257_state5;
wire   [63:0] zext_ln12_7_fu_448_p1;
reg    ap_predicate_pred263_state5;
reg   [31:0] j_1_fu_50;
wire   [31:0] add_ln11_7_fu_402_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_j_18;
reg    a_ce1_local;
reg   [10:0] a_address1_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
reg    temp_we1_local;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_we0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
wire   [10:0] sub_ln12_fu_260_p2;
wire   [10:0] sub_ln12_1_fu_269_p2;
wire   [31:0] add_ln11_1_fu_278_p2;
wire   [10:0] trunc_ln11_1_fu_288_p1;
wire   [31:0] add_ln11_2_fu_302_p2;
wire   [10:0] trunc_ln11_2_fu_312_p1;
wire   [10:0] trunc_ln11_3_fu_331_p1;
wire   [10:0] trunc_ln11_4_fu_350_p1;
wire   [10:0] trunc_ln11_5_fu_369_p1;
wire   [10:0] trunc_ln11_6_fu_388_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_50 = 32'd0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_50 <= j;
    end else if (((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_7_fu_392_p2 == 1'd0) & (icmp_ln11_6_fu_373_p2 == 1'd0) & (icmp_ln11_5_fu_354_p2 == 1'd0) & (icmp_ln11_4_fu_335_p2 == 1'd0) & (icmp_ln11_3_fu_316_p2 == 1'd0) & (icmp_ln11_2_fu_292_p2 == 1'd0))) begin
        j_1_fu_50 <= add_ln11_7_fu_402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln11_3_reg_548 <= add_ln11_3_fu_326_p2;
        add_ln11_4_reg_562 <= add_ln11_4_fu_345_p2;
        add_ln11_5_reg_576 <= add_ln11_5_fu_364_p2;
        add_ln11_6_reg_590 <= add_ln11_6_fu_383_p2;
        icmp_ln11_2_reg_520 <= icmp_ln11_2_fu_292_p2;
        icmp_ln11_3_reg_534 <= icmp_ln11_3_fu_316_p2;
        icmp_ln11_4_reg_553 <= icmp_ln11_4_fu_335_p2;
        icmp_ln11_5_reg_567 <= icmp_ln11_5_fu_354_p2;
        icmp_ln11_6_reg_581 <= icmp_ln11_6_fu_373_p2;
        icmp_ln11_7_reg_595 <= icmp_ln11_7_fu_392_p2;
        sub_ln12_2_reg_529 <= sub_ln12_2_fu_297_p2;
        sub_ln12_3_reg_543 <= sub_ln12_3_fu_321_p2;
        sub_ln12_4_reg_557 <= sub_ln12_4_fu_340_p2;
        sub_ln12_5_reg_571 <= sub_ln12_5_fu_359_p2;
        sub_ln12_6_reg_585 <= sub_ln12_6_fu_378_p2;
        sub_ln12_7_reg_599 <= sub_ln12_7_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11_reg_506 <= add_ln11_fu_243_p2;
        icmp_ln11_1_reg_511 <= icmp_ln11_1_fu_254_p2;
        icmp_ln11_reg_492 <= icmp_ln11_fu_228_p2;
        j_18_reg_481 <= ap_sig_allocacmp_j_18;
        trunc_ln11_reg_496 <= trunc_ln11_fu_239_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred234_state4 <= ((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (icmp_ln11_3_reg_534 == 1'd0) & (icmp_ln11_4_reg_553 == 1'd0));
        ap_predicate_pred238_state4 <= ((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (icmp_ln11_3_reg_534 == 1'd0) & (icmp_ln11_4_reg_553 == 1'd0) & (icmp_ln11_5_reg_567 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred257_state5 <= ((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (icmp_ln11_3_reg_534 == 1'd0) & (icmp_ln11_4_reg_553 == 1'd0) & (icmp_ln11_5_reg_567 == 1'd0) & (icmp_ln11_6_reg_581 == 1'd0));
        ap_predicate_pred263_state5 <= ((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (icmp_ln11_3_reg_534 == 1'd0) & (icmp_ln11_4_reg_553 == 1'd0) & (icmp_ln11_5_reg_567 == 1'd0) & (icmp_ln11_6_reg_581 == 1'd0) & (icmp_ln11_7_reg_595 == 1'd0));
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address0_local = zext_ln11_7_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address0_local = zext_ln11_5_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0_local = zext_ln11_3_fu_307_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0_local = zext_ln11_1_fu_249_p1;
        end else begin
            a_address0_local = 'bx;
        end
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address1_local = zext_ln11_6_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address1_local = zext_ln11_4_fu_420_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address1_local = zext_ln11_2_fu_283_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address1_local = zext_ln11_fu_234_p1;
        end else begin
            a_address1_local = 'bx;
        end
    end else begin
        a_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_ce1_local = 1'b1;
    end else begin
        a_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln11_reg_492 == 1'd1) | ((icmp_ln11_1_reg_511 == 1'd0) | ((icmp_ln11_2_reg_520 == 1'd1) | ((icmp_ln11_3_reg_534 == 1'd1) | ((icmp_ln11_4_reg_553 == 1'd1) | ((icmp_ln11_5_reg_567 == 1'd1) | ((icmp_ln11_6_reg_581 == 1'd1) | (icmp_ln11_7_reg_595 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_reg_492 == 1'd1) | ((icmp_ln11_1_reg_511 == 1'd0) | ((icmp_ln11_2_reg_520 == 1'd1) | ((icmp_ln11_3_reg_534 == 1'd1) | ((icmp_ln11_4_reg_553 == 1'd1) | ((icmp_ln11_5_reg_567 == 1'd1) | ((icmp_ln11_6_reg_581 == 1'd1) | (icmp_ln11_7_reg_595 == 1'd1)))))))))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_18 = j;
    end else begin
        ap_sig_allocacmp_j_18 = j_1_fu_50;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln12_7_fu_448_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address0_local = zext_ln12_5_fu_432_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address0_local = zext_ln12_3_fu_416_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address0_local = zext_ln12_1_fu_273_p1;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln12_6_fu_444_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address1_local = zext_ln12_4_fu_428_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address1_local = zext_ln12_2_fu_412_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address1_local = zext_ln12_fu_264_p1;
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (icmp_ln11_3_reg_534 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred238_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred263_state5 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln11_reg_492 == 1'd0) & (icmp_ln11_1_reg_511 == 1'd1) & (icmp_ln11_2_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln11_reg_492 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_pred234_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred257_state5 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_address0 = a_address0_local;
assign a_address1 = a_address1_local;
assign a_ce0 = a_ce0_local;
assign a_ce1 = a_ce1_local;
assign add_ln11_1_fu_278_p2 = (j_18_reg_481 + 32'd2);
assign add_ln11_2_fu_302_p2 = (j_18_reg_481 + 32'd3);
assign add_ln11_3_fu_326_p2 = (j_18_reg_481 + 32'd4);
assign add_ln11_4_fu_345_p2 = (j_18_reg_481 + 32'd5);
assign add_ln11_5_fu_364_p2 = (j_18_reg_481 + 32'd6);
assign add_ln11_6_fu_383_p2 = (j_18_reg_481 + 32'd7);
assign add_ln11_7_fu_402_p2 = (j_18_reg_481 + 32'd8);
assign add_ln11_fu_243_p2 = (trunc_ln11_fu_239_p1 + 11'd1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_254_p2 = (($signed(ap_sig_allocacmp_j_18) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_292_p2 = (($signed(add_ln11_1_fu_278_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_316_p2 = (($signed(add_ln11_2_fu_302_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_4_fu_335_p2 = (($signed(add_ln11_3_fu_326_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_5_fu_354_p2 = (($signed(add_ln11_4_fu_345_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_6_fu_373_p2 = (($signed(add_ln11_5_fu_364_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_7_fu_392_p2 = (($signed(add_ln11_6_fu_383_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_228_p2 = (($signed(ap_sig_allocacmp_j_18) > $signed(stop)) ? 1'b1 : 1'b0);
assign sub_ln12_1_fu_269_p2 = (add9 - add_ln11_reg_506);
assign sub_ln12_2_fu_297_p2 = (add9 - trunc_ln11_1_fu_288_p1);
assign sub_ln12_3_fu_321_p2 = (add9 - trunc_ln11_2_fu_312_p1);
assign sub_ln12_4_fu_340_p2 = (add9 - trunc_ln11_3_fu_331_p1);
assign sub_ln12_5_fu_359_p2 = (add9 - trunc_ln11_4_fu_350_p1);
assign sub_ln12_6_fu_378_p2 = (add9 - trunc_ln11_5_fu_369_p1);
assign sub_ln12_7_fu_397_p2 = (add9 - trunc_ln11_6_fu_388_p1);
assign sub_ln12_fu_260_p2 = (add9 - trunc_ln11_reg_496);
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = a_q0;
assign temp_d1 = a_q1;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln11_1_fu_288_p1 = add_ln11_1_fu_278_p2[10:0];
assign trunc_ln11_2_fu_312_p1 = add_ln11_2_fu_302_p2[10:0];
assign trunc_ln11_3_fu_331_p1 = add_ln11_3_fu_326_p2[10:0];
assign trunc_ln11_4_fu_350_p1 = add_ln11_4_fu_345_p2[10:0];
assign trunc_ln11_5_fu_369_p1 = add_ln11_5_fu_364_p2[10:0];
assign trunc_ln11_6_fu_388_p1 = add_ln11_6_fu_383_p2[10:0];
assign trunc_ln11_fu_239_p1 = ap_sig_allocacmp_j_18[10:0];
assign zext_ln11_1_fu_249_p1 = add_ln11_fu_243_p2;
assign zext_ln11_2_fu_283_p1 = add_ln11_1_fu_278_p2;
assign zext_ln11_3_fu_307_p1 = add_ln11_2_fu_302_p2;
assign zext_ln11_4_fu_420_p1 = add_ln11_3_reg_548;
assign zext_ln11_5_fu_424_p1 = add_ln11_4_reg_562;
assign zext_ln11_6_fu_436_p1 = add_ln11_5_reg_576;
assign zext_ln11_7_fu_440_p1 = add_ln11_6_reg_590;
assign zext_ln11_fu_234_p1 = ap_sig_allocacmp_j_18;
assign zext_ln12_1_fu_273_p1 = sub_ln12_1_fu_269_p2;
assign zext_ln12_2_fu_412_p1 = sub_ln12_2_reg_529;
assign zext_ln12_3_fu_416_p1 = sub_ln12_3_reg_543;
assign zext_ln12_4_fu_428_p1 = sub_ln12_4_reg_557;
assign zext_ln12_5_fu_432_p1 = sub_ln12_5_reg_571;
assign zext_ln12_6_fu_444_p1 = sub_ln12_6_reg_585;
assign zext_ln12_7_fu_448_p1 = sub_ln12_7_reg_599;
assign zext_ln12_fu_264_p1 = sub_ln12_fu_260_p2;
endmodule 