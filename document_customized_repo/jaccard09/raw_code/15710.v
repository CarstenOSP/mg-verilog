module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln86_7_fu_499_p2;
wire   [0:0] icmp_ln86_6_fu_464_p2;
wire   [0:0] icmp_ln86_5_fu_429_p2;
wire   [0:0] icmp_ln86_4_fu_394_p2;
reg   [0:0] icmp_ln86_3_reg_560;
reg   [0:0] icmp_ln86_2_reg_551;
reg   [0:0] icmp_ln86_1_reg_542;
reg   [0:0] icmp_ln86_reg_533;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_2_reg_522;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln86_fu_230_p2;
reg   [6:0] lshr_ln_reg_537;
wire   [0:0] icmp_ln86_1_fu_262_p2;
reg   [6:0] lshr_ln86_1_reg_546;
wire   [0:0] icmp_ln86_2_fu_294_p2;
reg   [6:0] lshr_ln86_2_reg_555;
wire   [0:0] icmp_ln86_3_fu_326_p2;
wire   [0:0] trunc_ln86_fu_332_p1;
reg   [0:0] trunc_ln86_reg_564;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln86_3_fu_380_p1;
reg   [63:0] zext_ln86_3_reg_568;
reg   [0:0] icmp_ln86_4_reg_574;
wire   [63:0] zext_ln86_4_fu_415_p1;
reg   [63:0] zext_ln86_4_reg_578;
reg   [0:0] icmp_ln86_5_reg_584;
wire   [63:0] zext_ln86_5_fu_450_p1;
reg   [63:0] zext_ln86_5_reg_588;
reg   [0:0] icmp_ln86_6_reg_594;
wire   [63:0] zext_ln86_6_fu_485_p1;
reg   [63:0] zext_ln86_6_reg_598;
reg   [0:0] icmp_ln86_7_reg_604;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln18_fu_344_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_fu_350_p1;
wire   [63:0] zext_ln86_1_fu_355_p1;
wire   [63:0] zext_ln86_2_fu_360_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] b_str_idx_fu_52;
wire   [31:0] add_ln86_7_fu_505_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_b_str_idx_2;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg   [6:0] alignedB_0_address1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg   [6:0] alignedB_1_address1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [23:0] tmp_fu_220_p4;
wire   [31:0] add_ln86_fu_236_p2;
wire   [23:0] tmp_1_fu_252_p4;
wire   [31:0] add_ln86_1_fu_268_p2;
wire   [23:0] tmp_2_fu_284_p4;
wire   [31:0] add_ln86_2_fu_300_p2;
wire   [23:0] tmp_3_fu_316_p4;
wire   [6:0] lshr_ln18_2_fu_335_p4;
wire   [31:0] add_ln86_3_fu_365_p2;
wire   [6:0] lshr_ln86_3_fu_370_p4;
wire   [23:0] tmp_4_fu_384_p4;
wire   [31:0] add_ln86_4_fu_400_p2;
wire   [6:0] lshr_ln86_4_fu_405_p4;
wire   [23:0] tmp_5_fu_419_p4;
wire   [31:0] add_ln86_5_fu_435_p2;
wire   [6:0] lshr_ln86_5_fu_440_p4;
wire   [23:0] tmp_6_fu_454_p4;
wire   [31:0] add_ln86_6_fu_470_p2;
wire   [6:0] lshr_ln86_6_fu_475_p4;
wire   [23:0] tmp_7_fu_489_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_537;
reg    ap_condition_543;
reg    ap_condition_552;
reg    ap_condition_559;
reg    ap_condition_222;
reg    ap_condition_567;
reg    ap_condition_576;
reg    ap_condition_581;
reg    ap_condition_584;
reg    ap_condition_587;
reg    ap_condition_590;
reg    ap_condition_593;
reg    ap_condition_596;
reg    ap_condition_599;
reg    ap_condition_602;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_52 = 32'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_fu_52 <= b_str_idx_7;
    end else if (((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (icmp_ln86_4_fu_394_p2 == 1'd1) & (icmp_ln86_5_fu_429_p2 == 1'd1) & (icmp_ln86_6_fu_464_p2 == 1'd1) & (icmp_ln86_7_fu_499_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_str_idx_fu_52 <= add_ln86_7_fu_505_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_2_reg_522 <= ap_sig_allocacmp_b_str_idx_2;
        icmp_ln86_1_reg_542 <= icmp_ln86_1_fu_262_p2;
        icmp_ln86_2_reg_551 <= icmp_ln86_2_fu_294_p2;
        icmp_ln86_3_reg_560 <= icmp_ln86_3_fu_326_p2;
        icmp_ln86_reg_533 <= icmp_ln86_fu_230_p2;
        lshr_ln86_1_reg_546 <= {{add_ln86_1_fu_268_p2[7:1]}};
        lshr_ln86_2_reg_555 <= {{add_ln86_2_fu_300_p2[7:1]}};
        lshr_ln_reg_537 <= {{add_ln86_fu_236_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln86_4_reg_574 <= icmp_ln86_4_fu_394_p2;
        icmp_ln86_5_reg_584 <= icmp_ln86_5_fu_429_p2;
        icmp_ln86_6_reg_594 <= icmp_ln86_6_fu_464_p2;
        icmp_ln86_7_reg_604 <= icmp_ln86_7_fu_499_p2;
        trunc_ln86_reg_564 <= trunc_ln86_fu_332_p1;
        zext_ln86_3_reg_568[6 : 0] <= zext_ln86_3_fu_380_p1[6 : 0];
        zext_ln86_4_reg_578[6 : 0] <= zext_ln86_4_fu_415_p1[6 : 0];
        zext_ln86_5_reg_588[6 : 0] <= zext_ln86_5_fu_450_p1[6 : 0];
        zext_ln86_6_reg_598[6 : 0] <= zext_ln86_6_fu_485_p1[6 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_222)) begin
        if ((1'b1 == ap_condition_559)) begin
            alignedB_0_address0_local = zext_ln86_6_reg_598;
        end else if ((1'b1 == ap_condition_552)) begin
            alignedB_0_address0_local = zext_ln86_5_reg_588;
        end else if ((1'b1 == ap_condition_543)) begin
            alignedB_0_address0_local = zext_ln86_2_fu_360_p1;
        end else if ((1'b1 == ap_condition_537)) begin
            alignedB_0_address0_local = zext_ln86_1_fu_355_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_533 == 1'd1)) begin
        if ((1'b1 == ap_condition_581)) begin
            alignedB_0_address1_local = zext_ln86_4_reg_578;
        end else if ((1'b1 == ap_condition_576)) begin
            alignedB_0_address1_local = zext_ln86_3_reg_568;
        end else if ((1'b1 == ap_condition_567)) begin
            alignedB_0_address1_local = zext_ln86_fu_350_p1;
        end else if ((1'b1 == ap_condition_537)) begin
            alignedB_0_address1_local = zext_ln18_fu_344_p1;
        end else begin
            alignedB_0_address1_local = 'bx;
        end
    end else begin
        alignedB_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)) |((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)) |((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_222)) begin
        if ((1'b1 == ap_condition_593)) begin
            alignedB_1_address0_local = zext_ln86_6_reg_598;
        end else if ((1'b1 == ap_condition_590)) begin
            alignedB_1_address0_local = zext_ln86_5_reg_588;
        end else if ((1'b1 == ap_condition_587)) begin
            alignedB_1_address0_local = zext_ln86_2_fu_360_p1;
        end else if ((1'b1 == ap_condition_584)) begin
            alignedB_1_address0_local = zext_ln86_1_fu_355_p1;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln86_reg_533 == 1'd1)) begin
        if ((1'b1 == ap_condition_602)) begin
            alignedB_1_address1_local = zext_ln86_4_reg_578;
        end else if ((1'b1 == ap_condition_599)) begin
            alignedB_1_address1_local = zext_ln86_3_reg_568;
        end else if ((1'b1 == ap_condition_596)) begin
            alignedB_1_address1_local = zext_ln86_fu_350_p1;
        end else if ((1'b1 == ap_condition_584)) begin
            alignedB_1_address1_local = zext_ln18_fu_344_p1;
        end else begin
            alignedB_1_address1_local = 'bx;
        end
    end else begin
        alignedB_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)) |((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)) |((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1)) | ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0)) | ((icmp_ln86_reg_533 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1)))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln86_reg_533 == 1'd0) | ((icmp_ln86_1_reg_542 == 1'd0) | ((icmp_ln86_2_reg_551 == 1'd0) | ((icmp_ln86_3_reg_560 == 1'd0) | ((icmp_ln86_4_fu_394_p2 == 1'd0) | ((icmp_ln86_5_fu_429_p2 == 1'd0) | ((icmp_ln86_6_fu_464_p2 == 1'd0) | (icmp_ln86_7_fu_499_p2 == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_533 == 1'd0) | ((icmp_ln86_1_reg_542 == 1'd0) | ((icmp_ln86_2_reg_551 == 1'd0) | ((icmp_ln86_3_reg_560 == 1'd0) | ((icmp_ln86_4_reg_574 == 1'd0) | ((icmp_ln86_5_reg_584 == 1'd0) | ((icmp_ln86_7_reg_604 == 1'd0) | (icmp_ln86_6_reg_594 == 1'd0)))))))))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_7;
    end else begin
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_52;
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
assign add_ln86_1_fu_268_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd2);
assign add_ln86_2_fu_300_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd3);
assign add_ln86_3_fu_365_p2 = (b_str_idx_2_reg_522 + 32'd4);
assign add_ln86_4_fu_400_p2 = (b_str_idx_2_reg_522 + 32'd5);
assign add_ln86_5_fu_435_p2 = (b_str_idx_2_reg_522 + 32'd6);
assign add_ln86_6_fu_470_p2 = (b_str_idx_2_reg_522 + 32'd7);
assign add_ln86_7_fu_505_p2 = (b_str_idx_2_reg_522 + 32'd8);
assign add_ln86_fu_236_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = alignedB_0_address1_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = alignedB_1_address1_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_222 = ((icmp_ln86_reg_533 == 1'd1) & (icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1));
end
always @ (*) begin
    ap_condition_537 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_543 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_552 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0));
end
always @ (*) begin
    ap_condition_559 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1));
end
always @ (*) begin
    ap_condition_567 = ((icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_576 = ((icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0));
end
always @ (*) begin
    ap_condition_581 = ((icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1));
end
always @ (*) begin
    ap_condition_584 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_587 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_590 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1));
end
always @ (*) begin
    ap_condition_593 = ((icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_7_reg_604 == 1'd1) & (icmp_ln86_6_reg_594 == 1'd1) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0));
end
always @ (*) begin
    ap_condition_596 = ((icmp_ln86_1_reg_542 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln86_fu_332_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_599 = ((icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd1));
end
always @ (*) begin
    ap_condition_602 = ((icmp_ln86_1_reg_542 == 1'd1) & (icmp_ln86_2_reg_551 == 1'd1) & (icmp_ln86_3_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_5_reg_584 == 1'd1) & (icmp_ln86_4_reg_574 == 1'd1) & (trunc_ln86_reg_564 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_1_fu_262_p2 = (($signed(tmp_1_fu_252_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_294_p2 = (($signed(tmp_2_fu_284_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_326_p2 = (($signed(tmp_3_fu_316_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_4_fu_394_p2 = (($signed(tmp_4_fu_384_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_5_fu_429_p2 = (($signed(tmp_5_fu_419_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_6_fu_464_p2 = (($signed(tmp_6_fu_454_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_7_fu_499_p2 = (($signed(tmp_7_fu_489_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_230_p2 = (($signed(tmp_fu_220_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_335_p4 = {{b_str_idx_2_reg_522[7:1]}};
assign lshr_ln86_3_fu_370_p4 = {{add_ln86_3_fu_365_p2[7:1]}};
assign lshr_ln86_4_fu_405_p4 = {{add_ln86_4_fu_400_p2[7:1]}};
assign lshr_ln86_5_fu_440_p4 = {{add_ln86_5_fu_435_p2[7:1]}};
assign lshr_ln86_6_fu_475_p4 = {{add_ln86_6_fu_470_p2[7:1]}};
assign tmp_1_fu_252_p4 = {{add_ln86_fu_236_p2[31:8]}};
assign tmp_2_fu_284_p4 = {{add_ln86_1_fu_268_p2[31:8]}};
assign tmp_3_fu_316_p4 = {{add_ln86_2_fu_300_p2[31:8]}};
assign tmp_4_fu_384_p4 = {{add_ln86_3_fu_365_p2[31:8]}};
assign tmp_5_fu_419_p4 = {{add_ln86_4_fu_400_p2[31:8]}};
assign tmp_6_fu_454_p4 = {{add_ln86_5_fu_435_p2[31:8]}};
assign tmp_7_fu_489_p4 = {{add_ln86_6_fu_470_p2[31:8]}};
assign tmp_fu_220_p4 = {{ap_sig_allocacmp_b_str_idx_2[31:8]}};
assign trunc_ln86_fu_332_p1 = b_str_idx_2_reg_522[0:0];
assign zext_ln18_fu_344_p1 = lshr_ln18_2_fu_335_p4;
assign zext_ln86_1_fu_355_p1 = lshr_ln86_1_reg_546;
assign zext_ln86_2_fu_360_p1 = lshr_ln86_2_reg_555;
assign zext_ln86_3_fu_380_p1 = lshr_ln86_3_fu_370_p4;
assign zext_ln86_4_fu_415_p1 = lshr_ln86_4_fu_405_p4;
assign zext_ln86_5_fu_450_p1 = lshr_ln86_5_fu_440_p4;
assign zext_ln86_6_fu_485_p1 = lshr_ln86_6_fu_475_p4;
assign zext_ln86_fu_350_p1 = lshr_ln_reg_537;
always @ (posedge ap_clk) begin
    zext_ln86_3_reg_568[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_4_reg_578[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_5_reg_588[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_6_reg_598[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 