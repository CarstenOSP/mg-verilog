module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] empty;
output  [6:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [6:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [6:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [6:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln83_7_fu_447_p2;
wire   [0:0] icmp_ln83_6_fu_416_p2;
wire   [0:0] icmp_ln83_5_fu_395_p2;
wire   [0:0] icmp_ln83_4_fu_364_p2;
wire   [0:0] icmp_ln83_3_fu_343_p2;
wire   [0:0] icmp_ln83_2_fu_312_p2;
reg   [0:0] icmp_ln83_1_reg_536;
reg   [0:0] icmp_ln83_reg_527;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_reg_514;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln83_fu_236_p2;
reg   [0:0] icmp_ln83_reg_527_pp0_iter1_reg;
reg   [6:0] lshr_ln_reg_531;
wire   [0:0] icmp_ln83_1_fu_268_p2;
reg   [0:0] icmp_ln83_1_reg_536_pp0_iter1_reg;
wire   [0:0] trunc_ln83_fu_274_p1;
reg   [0:0] trunc_ln83_reg_540;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] lshr_ln18_1_fu_277_p4;
reg   [6:0] lshr_ln18_1_reg_544;
reg   [0:0] icmp_ln83_2_reg_551;
reg   [0:0] icmp_ln83_2_reg_551_pp0_iter1_reg;
reg   [6:0] lshr_ln83_1_reg_555;
reg   [0:0] icmp_ln83_3_reg_560;
reg   [0:0] icmp_ln83_3_reg_560_pp0_iter1_reg;
reg   [0:0] icmp_ln83_4_reg_564;
reg   [0:0] icmp_ln83_4_reg_564_pp0_iter1_reg;
reg   [6:0] lshr_ln83_2_reg_568;
reg   [0:0] icmp_ln83_5_reg_573;
reg   [0:0] icmp_ln83_5_reg_573_pp0_iter1_reg;
reg   [0:0] icmp_ln83_6_reg_577;
reg   [0:0] icmp_ln83_6_reg_577_pp0_iter1_reg;
reg   [6:0] lshr_ln83_3_reg_581;
reg   [0:0] icmp_ln83_7_reg_586;
reg   [0:0] icmp_ln83_7_reg_586_pp0_iter1_reg;
wire   [63:0] zext_ln83_5_fu_500_p1;
reg   [63:0] zext_ln83_5_reg_590;
wire   [63:0] zext_ln83_6_fu_504_p1;
reg   [63:0] zext_ln83_6_reg_596;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln18_fu_286_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln83_fu_292_p1;
wire   [63:0] zext_ln83_1_fu_468_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln83_2_fu_474_p1;
wire   [63:0] zext_ln83_3_fu_484_p1;
reg    ap_predicate_pred212_state4;
reg    ap_predicate_pred217_state4;
wire   [63:0] zext_ln83_4_fu_490_p1;
reg    ap_predicate_pred224_state4;
reg    ap_predicate_pred229_state4;
reg    ap_predicate_pred245_state5;
reg    ap_predicate_pred256_state5;
reg    ap_predicate_pred262_state5;
reg    ap_predicate_pred267_state5;
reg   [31:0] a_str_idx_1_fu_58;
wire   [31:0] add_ln83_10_fu_453_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_a_str_idx;
reg    alignedA_0_we1_local;
reg    alignedA_0_ce1_local;
reg   [6:0] alignedA_0_address1_local;
reg    alignedA_0_we0_local;
reg    alignedA_0_ce0_local;
reg   [6:0] alignedA_0_address0_local;
reg    alignedA_1_we1_local;
reg    alignedA_1_ce1_local;
reg   [6:0] alignedA_1_address1_local;
reg    alignedA_1_we0_local;
reg    alignedA_1_ce0_local;
reg   [6:0] alignedA_1_address0_local;
wire   [23:0] tmp_9_fu_226_p4;
wire   [31:0] add_ln83_fu_242_p2;
wire   [23:0] tmp_10_fu_258_p4;
wire   [31:0] add_ln83_1_fu_297_p2;
wire   [23:0] tmp_11_fu_302_p4;
wire   [31:0] add_ln83_3_fu_318_p2;
wire   [23:0] tmp_12_fu_333_p4;
wire   [31:0] add_ln83_4_fu_349_p2;
wire   [23:0] tmp_13_fu_354_p4;
wire   [31:0] add_ln83_6_fu_370_p2;
wire   [23:0] tmp_14_fu_385_p4;
wire   [31:0] add_ln83_7_fu_401_p2;
wire   [23:0] tmp_15_fu_406_p4;
wire   [31:0] add_ln83_9_fu_422_p2;
wire   [23:0] tmp_16_fu_437_p4;
wire   [6:0] add_ln83_2_fu_463_p2;
wire   [6:0] add_ln83_5_fu_479_p2;
wire   [6:0] add_ln83_8_fu_495_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_597;
reg    ap_condition_603;
reg    ap_condition_610;
reg    ap_condition_615;
reg    ap_condition_618;
reg    ap_condition_621;
reg    ap_condition_624;
reg    ap_condition_627;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_1_fu_58 = 32'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_1_fu_58 <= empty;
    end else if (((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (icmp_ln83_2_fu_312_p2 == 1'd1) & (icmp_ln83_3_fu_343_p2 == 1'd1) & (icmp_ln83_4_fu_364_p2 == 1'd1) & (icmp_ln83_5_fu_395_p2 == 1'd1) & (icmp_ln83_6_fu_416_p2 == 1'd1) & (icmp_ln83_7_fu_447_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_str_idx_1_fu_58 <= add_ln83_10_fu_453_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_reg_514 <= ap_sig_allocacmp_a_str_idx;
        ap_predicate_pred212_state4 <= ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0));
        ap_predicate_pred217_state4 <= ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1));
        ap_predicate_pred224_state4 <= ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0));
        ap_predicate_pred229_state4 <= ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1));
        icmp_ln83_1_reg_536 <= icmp_ln83_1_fu_268_p2;
        icmp_ln83_1_reg_536_pp0_iter1_reg <= icmp_ln83_1_reg_536;
        icmp_ln83_reg_527 <= icmp_ln83_fu_236_p2;
        icmp_ln83_reg_527_pp0_iter1_reg <= icmp_ln83_reg_527;
        lshr_ln_reg_531 <= {{add_ln83_fu_242_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred245_state5 <= ((icmp_ln83_6_reg_577 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0) & (icmp_ln83_1_reg_536_pp0_iter1_reg == 1'd1) & (icmp_ln83_reg_527_pp0_iter1_reg == 1'd1));
        ap_predicate_pred256_state5 <= ((icmp_ln83_6_reg_577 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1) & (icmp_ln83_1_reg_536_pp0_iter1_reg == 1'd1) & (icmp_ln83_reg_527_pp0_iter1_reg == 1'd1));
        ap_predicate_pred262_state5 <= ((icmp_ln83_7_reg_586 == 1'd1) & (icmp_ln83_6_reg_577 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0) & (icmp_ln83_1_reg_536_pp0_iter1_reg == 1'd1) & (icmp_ln83_reg_527_pp0_iter1_reg == 1'd1));
        ap_predicate_pred267_state5 <= ((icmp_ln83_7_reg_586 == 1'd1) & (icmp_ln83_6_reg_577 == 1'd1) & (icmp_ln83_5_reg_573 == 1'd1) & (icmp_ln83_4_reg_564 == 1'd1) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1) & (icmp_ln83_1_reg_536_pp0_iter1_reg == 1'd1) & (icmp_ln83_reg_527_pp0_iter1_reg == 1'd1));
        icmp_ln83_2_reg_551 <= icmp_ln83_2_fu_312_p2;
        icmp_ln83_2_reg_551_pp0_iter1_reg <= icmp_ln83_2_reg_551;
        icmp_ln83_3_reg_560 <= icmp_ln83_3_fu_343_p2;
        icmp_ln83_3_reg_560_pp0_iter1_reg <= icmp_ln83_3_reg_560;
        icmp_ln83_4_reg_564 <= icmp_ln83_4_fu_364_p2;
        icmp_ln83_4_reg_564_pp0_iter1_reg <= icmp_ln83_4_reg_564;
        icmp_ln83_5_reg_573 <= icmp_ln83_5_fu_395_p2;
        icmp_ln83_5_reg_573_pp0_iter1_reg <= icmp_ln83_5_reg_573;
        icmp_ln83_6_reg_577 <= icmp_ln83_6_fu_416_p2;
        icmp_ln83_6_reg_577_pp0_iter1_reg <= icmp_ln83_6_reg_577;
        icmp_ln83_7_reg_586 <= icmp_ln83_7_fu_447_p2;
        icmp_ln83_7_reg_586_pp0_iter1_reg <= icmp_ln83_7_reg_586;
        lshr_ln18_1_reg_544 <= {{a_str_idx_reg_514[7:1]}};
        lshr_ln83_1_reg_555 <= {{add_ln83_3_fu_318_p2[7:1]}};
        lshr_ln83_2_reg_568 <= {{add_ln83_6_fu_370_p2[7:1]}};
        lshr_ln83_3_reg_581 <= {{add_ln83_9_fu_422_p2[7:1]}};
        trunc_ln83_reg_540 <= trunc_ln83_fu_274_p1;
        zext_ln83_5_reg_590[6 : 0] <= zext_ln83_5_fu_500_p1[6 : 0];
        zext_ln83_6_reg_596[6 : 0] <= zext_ln83_6_fu_504_p1[6 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred267_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_address0_local = zext_ln83_6_reg_596;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred245_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_address0_local = zext_ln83_5_reg_590;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred229_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_0_address0_local = zext_ln83_4_fu_490_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred212_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_0_address0_local = zext_ln83_3_fu_484_p1;
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln83_reg_527 == 1'd1)) begin
        if ((1'b1 == ap_condition_615)) begin
            alignedA_0_address1_local = zext_ln83_2_fu_474_p1;
        end else if ((1'b1 == ap_condition_610)) begin
            alignedA_0_address1_local = zext_ln83_1_fu_468_p1;
        end else if ((1'b1 == ap_condition_603)) begin
            alignedA_0_address1_local = zext_ln83_fu_292_p1;
        end else if ((1'b1 == ap_condition_597)) begin
            alignedA_0_address1_local = zext_ln18_fu_286_p1;
        end else begin
            alignedA_0_address1_local = 'bx;
        end
    end else begin
        alignedA_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred229_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred212_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred267_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred245_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0)))) begin
        alignedA_0_ce1_local = 1'b1;
    end else begin
        alignedA_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred229_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred212_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred267_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred245_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0)))) begin
        alignedA_0_we1_local = 1'b1;
    end else begin
        alignedA_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred262_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_address0_local = zext_ln83_6_reg_596;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred256_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_address0_local = zext_ln83_5_reg_590;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred224_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_1_address0_local = zext_ln83_4_fu_490_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred217_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_1_address0_local = zext_ln83_3_fu_484_p1;
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((icmp_ln83_reg_527 == 1'd1)) begin
        if ((1'b1 == ap_condition_627)) begin
            alignedA_1_address1_local = zext_ln83_2_fu_474_p1;
        end else if ((1'b1 == ap_condition_624)) begin
            alignedA_1_address1_local = zext_ln83_1_fu_468_p1;
        end else if ((1'b1 == ap_condition_621)) begin
            alignedA_1_address1_local = zext_ln83_fu_292_p1;
        end else if ((1'b1 == ap_condition_618)) begin
            alignedA_1_address1_local = zext_ln18_fu_286_p1;
        end else begin
            alignedA_1_address1_local = 'bx;
        end
    end else begin
        alignedA_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred224_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred217_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred262_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred256_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1)))) begin
        alignedA_1_ce1_local = 1'b1;
    end else begin
        alignedA_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred224_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred217_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred262_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred256_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0)) | ((icmp_ln83_reg_527 == 1'd1) & (icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1)) | ((icmp_ln83_reg_527 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1)))) begin
        alignedA_1_we1_local = 1'b1;
    end else begin
        alignedA_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln83_reg_527 == 1'd0) | ((icmp_ln83_1_reg_536 == 1'd0) | ((icmp_ln83_2_fu_312_p2 == 1'd0) | ((icmp_ln83_3_fu_343_p2 == 1'd0) | ((icmp_ln83_4_fu_364_p2 == 1'd0) | ((icmp_ln83_5_fu_395_p2 == 1'd0) | ((icmp_ln83_6_fu_416_p2 == 1'd0) | (icmp_ln83_7_fu_447_p2 == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_reg_527_pp0_iter1_reg == 1'd0) | ((icmp_ln83_1_reg_536_pp0_iter1_reg == 1'd0) | ((icmp_ln83_2_reg_551_pp0_iter1_reg == 1'd0) | ((icmp_ln83_3_reg_560_pp0_iter1_reg == 1'd0) | ((icmp_ln83_4_reg_564_pp0_iter1_reg == 1'd0) | ((icmp_ln83_5_reg_573_pp0_iter1_reg == 1'd0) | ((icmp_ln83_7_reg_586_pp0_iter1_reg == 1'd0) | (icmp_ln83_6_reg_577_pp0_iter1_reg == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_a_str_idx = empty;
    end else begin
        ap_sig_allocacmp_a_str_idx = a_str_idx_1_fu_58;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln83_10_fu_453_p2 = (a_str_idx_reg_514 + 32'd8);
assign add_ln83_1_fu_297_p2 = (a_str_idx_reg_514 + 32'd2);
assign add_ln83_2_fu_463_p2 = (lshr_ln18_1_reg_544 + 7'd1);
assign add_ln83_3_fu_318_p2 = (a_str_idx_reg_514 + 32'd3);
assign add_ln83_4_fu_349_p2 = (a_str_idx_reg_514 + 32'd4);
assign add_ln83_5_fu_479_p2 = (lshr_ln18_1_reg_544 + 7'd2);
assign add_ln83_6_fu_370_p2 = (a_str_idx_reg_514 + 32'd5);
assign add_ln83_7_fu_401_p2 = (a_str_idx_reg_514 + 32'd6);
assign add_ln83_8_fu_495_p2 = (lshr_ln18_1_reg_544 + 7'd3);
assign add_ln83_9_fu_422_p2 = (a_str_idx_reg_514 + 32'd7);
assign add_ln83_fu_242_p2 = (ap_sig_allocacmp_a_str_idx + 32'd1);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_address1 = alignedA_0_address1_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_ce1 = alignedA_0_ce1_local;
assign alignedA_0_d0 = 8'd95;
assign alignedA_0_d1 = 8'd95;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_0_we1 = alignedA_0_we1_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_address1 = alignedA_1_address1_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_ce1 = alignedA_1_ce1_local;
assign alignedA_1_d0 = 8'd95;
assign alignedA_1_d1 = 8'd95;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_1_we1 = alignedA_1_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_597 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_603 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_610 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0));
end
always @ (*) begin
    ap_condition_615 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1));
end
always @ (*) begin
    ap_condition_618 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd1));
end
always @ (*) begin
    ap_condition_621 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln83_fu_274_p1 == 1'd0));
end
always @ (*) begin
    ap_condition_624 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd1));
end
always @ (*) begin
    ap_condition_627 = ((icmp_ln83_1_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_560 == 1'd1) & (icmp_ln83_2_reg_551 == 1'd1) & (trunc_ln83_reg_540 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_268_p2 = (($signed(tmp_10_fu_258_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_312_p2 = (($signed(tmp_11_fu_302_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_343_p2 = (($signed(tmp_12_fu_333_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_4_fu_364_p2 = (($signed(tmp_13_fu_354_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_5_fu_395_p2 = (($signed(tmp_14_fu_385_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_6_fu_416_p2 = (($signed(tmp_15_fu_406_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_7_fu_447_p2 = (($signed(tmp_16_fu_437_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_236_p2 = (($signed(tmp_9_fu_226_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_1_fu_277_p4 = {{a_str_idx_reg_514[7:1]}};
assign tmp_10_fu_258_p4 = {{add_ln83_fu_242_p2[31:8]}};
assign tmp_11_fu_302_p4 = {{add_ln83_1_fu_297_p2[31:8]}};
assign tmp_12_fu_333_p4 = {{add_ln83_3_fu_318_p2[31:8]}};
assign tmp_13_fu_354_p4 = {{add_ln83_4_fu_349_p2[31:8]}};
assign tmp_14_fu_385_p4 = {{add_ln83_6_fu_370_p2[31:8]}};
assign tmp_15_fu_406_p4 = {{add_ln83_7_fu_401_p2[31:8]}};
assign tmp_16_fu_437_p4 = {{add_ln83_9_fu_422_p2[31:8]}};
assign tmp_9_fu_226_p4 = {{ap_sig_allocacmp_a_str_idx[31:8]}};
assign trunc_ln83_fu_274_p1 = a_str_idx_reg_514[0:0];
assign zext_ln18_fu_286_p1 = lshr_ln18_1_fu_277_p4;
assign zext_ln83_1_fu_468_p1 = add_ln83_2_fu_463_p2;
assign zext_ln83_2_fu_474_p1 = lshr_ln83_1_reg_555;
assign zext_ln83_3_fu_484_p1 = add_ln83_5_fu_479_p2;
assign zext_ln83_4_fu_490_p1 = lshr_ln83_2_reg_568;
assign zext_ln83_5_fu_500_p1 = add_ln83_8_fu_495_p2;
assign zext_ln83_6_fu_504_p1 = lshr_ln83_3_reg_581;
assign zext_ln83_fu_292_p1 = lshr_ln_reg_531;
always @ (posedge ap_clk) begin
    zext_ln83_5_reg_590[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_596[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 