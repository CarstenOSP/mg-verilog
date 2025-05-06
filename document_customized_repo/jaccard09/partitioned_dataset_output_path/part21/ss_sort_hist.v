
module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_0_address1,bucket_0_ce1,bucket_0_we1,bucket_0_d1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_we1,bucket_1_d1,bucket_1_q1,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,exp);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [9:0] bucket_0_address1;
output   bucket_0_ce1;
output   bucket_0_we1;
output  [31:0] bucket_0_d1;
input  [31:0] bucket_0_q1;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
output   bucket_1_we1;
output  [31:0] bucket_1_d1;
input  [31:0] bucket_1_q1;
output  [9:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [9:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [9:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [9:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln54_reg_493;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_196;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_200;
reg   [31:0] reg_204;
reg   [31:0] reg_208;
wire   [31:0] exp_cast3_fu_226_p1;
reg   [31:0] exp_cast3_reg_479;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_487;
wire   [0:0] icmp_ln54_fu_238_p2;
reg   [0:0] icmp_ln54_reg_493_pp0_iter1_reg;
wire   [8:0] trunc_ln57_fu_244_p1;
reg   [8:0] trunc_ln57_reg_497;
reg   [31:0] b_0_load_reg_522;
reg   [31:0] b_1_load_reg_527;
reg   [31:0] b_0_load_8_reg_532;
reg   [31:0] b_1_load_8_reg_537;
wire   [9:0] add_ln57_fu_281_p2;
reg   [9:0] add_ln57_reg_542;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] trunc_ln57_2_fu_287_p1;
reg   [1:0] trunc_ln57_2_reg_547;
wire   [10:0] zext_ln57_2_fu_291_p1;
reg   [10:0] zext_ln57_2_reg_552;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] bucket_0_addr_reg_559;
reg   [9:0] bucket_1_addr_reg_564;
wire   [1:0] trunc_ln57_3_fu_327_p1;
reg   [1:0] trunc_ln57_3_reg_569;
wire   [1:0] trunc_ln57_4_fu_335_p1;
reg   [1:0] trunc_ln57_4_reg_574;
wire   [0:0] trunc_ln57_1_fu_344_p1;
reg   [0:0] trunc_ln57_1_reg_579;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] trunc_ln57_1_reg_579_pp0_iter1_reg;
wire   [1:0] trunc_ln57_5_fu_367_p1;
reg   [1:0] trunc_ln57_5_reg_583;
reg   [9:0] lshr_ln52_2_reg_588;
reg   [9:0] lshr_ln52_3_reg_593;
reg   [9:0] bucket_1_addr_39_reg_598;
reg   [9:0] bucket_0_addr_38_reg_603;
reg   [9:0] bucket_1_addr_40_reg_608;
reg   [9:0] bucket_0_addr_39_reg_613;
reg   [9:0] bucket_1_addr_41_reg_618;
reg   [9:0] bucket_0_addr_40_reg_623;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln57_fu_254_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln57_3_fu_268_p1;
wire   [63:0] zext_ln52_fu_317_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_1_fu_398_p1;
wire   [63:0] zext_ln52_2_fu_462_p1;
wire   [63:0] zext_ln52_3_fu_467_p1;
reg   [9:0] blockID_fu_54;
wire   [9:0] add_ln54_fu_339_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce1_local;
reg    b_0_ce0_local;
reg    b_1_ce1_local;
reg    b_1_ce0_local;
reg    bucket_0_ce1_local;
reg   [9:0] bucket_0_address1_local;
reg    bucket_0_we1_local;
reg   [31:0] bucket_0_d1_local;
wire   [31:0] add_ln58_fu_355_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln58_4_fu_455_p2;
wire    ap_block_pp0_stage2;
reg    bucket_0_ce0_local;
reg   [9:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
wire   [31:0] grp_fu_219_p2;
reg    bucket_1_ce1_local;
reg   [9:0] bucket_1_address1_local;
reg    bucket_1_we1_local;
reg   [31:0] bucket_1_d1_local;
wire   [31:0] add_ln58_1_fu_448_p2;
reg    bucket_1_ce0_local;
reg   [9:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
wire   [31:0] grp_fu_212_p2;
wire   [9:0] shl_ln57_fu_248_p2;
wire   [9:0] or_ln_fu_260_p3;
wire   [9:0] zext_ln57_1_fu_278_p1;
wire   [31:0] ashr_ln57_fu_274_p2;
wire   [10:0] shl_ln57_1_fu_294_p3;
wire   [10:0] bucket_indx_fu_301_p2;
wire   [9:0] lshr_ln_fu_307_p4;
wire   [31:0] ashr_ln57_1_fu_323_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] ashr_ln57_2_fu_331_p2;
wire   [31:0] select_ln58_fu_347_p3;
wire   [31:0] ashr_ln57_3_fu_363_p2;
wire   [10:0] shl_ln57_2_fu_376_p3;
wire   [10:0] bucket_indx_1_fu_383_p2;
wire   [9:0] lshr_ln52_1_fu_388_p4;
wire   [10:0] shl_ln57_3_fu_404_p3;
wire   [10:0] bucket_indx_2_fu_411_p2;
wire   [10:0] shl_ln57_4_fu_426_p3;
wire   [10:0] bucket_indx_3_fu_433_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_54 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_54 <= 10'd0;
    end else if (((icmp_ln54_reg_493 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        blockID_fu_54 <= add_ln54_fu_339_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln57_reg_542 <= add_ln57_fu_281_p2;
        trunc_ln57_2_reg_547 <= trunc_ln57_2_fu_287_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_8_reg_532 <= b_0_q0;
        b_0_load_reg_522 <= b_0_q1;
        b_1_load_8_reg_537 <= b_1_q0;
        b_1_load_reg_527 <= b_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_487 <= ap_sig_allocacmp_blockID_2;
        bucket_0_addr_38_reg_603 <= zext_ln52_1_fu_398_p1;
        bucket_0_addr_40_reg_623 <= zext_ln52_3_fu_467_p1;
        bucket_1_addr_39_reg_598 <= zext_ln52_1_fu_398_p1;
        bucket_1_addr_41_reg_618 <= zext_ln52_3_fu_467_p1;
        exp_cast3_reg_479[4 : 0] <= exp_cast3_fu_226_p1[4 : 0];
        icmp_ln54_reg_493 <= icmp_ln54_fu_238_p2;
        icmp_ln54_reg_493_pp0_iter1_reg <= icmp_ln54_reg_493;
        lshr_ln52_2_reg_588 <= {{bucket_indx_2_fu_411_p2[10:1]}};
        lshr_ln52_3_reg_593 <= {{bucket_indx_3_fu_433_p2[10:1]}};
        trunc_ln57_reg_497 <= trunc_ln57_fu_244_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_39_reg_613 <= zext_ln52_2_fu_462_p1;
        bucket_0_addr_reg_559 <= zext_ln52_fu_317_p1;
        bucket_1_addr_40_reg_608 <= zext_ln52_2_fu_462_p1;
        bucket_1_addr_reg_564 <= zext_ln52_fu_317_p1;
        trunc_ln57_3_reg_569 <= trunc_ln57_3_fu_327_p1;
        zext_ln57_2_reg_552[9 : 0] <= zext_ln57_2_fu_291_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_196 <= bucket_0_q1;
        reg_200 <= bucket_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_204 <= bucket_1_q0;
        reg_208 <= bucket_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln57_1_reg_579 <= trunc_ln57_1_fu_344_p1;
        trunc_ln57_1_reg_579_pp0_iter1_reg <= trunc_ln57_1_reg_579;
        trunc_ln57_5_reg_583 <= trunc_ln57_5_fu_367_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln57_4_reg_574 <= trunc_ln57_4_fu_335_p1;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_493 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln54_reg_493_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_54;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_40_reg_623;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = zext_ln52_3_fu_467_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address0_local = bucket_0_addr_39_reg_613;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = zext_ln52_2_fu_462_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address1_local = bucket_0_addr_38_reg_603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address1_local = zext_ln52_1_fu_398_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_address1_local = bucket_0_addr_reg_559;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address1_local = zext_ln52_fu_317_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_d1_local = add_ln58_4_fu_455_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_0_d1_local = add_ln58_fu_355_p2;
    end else begin
        bucket_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln57_1_reg_579 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_1_reg_579_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln54_reg_493 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln57_1_fu_344_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln57_1_reg_579 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_0_we1_local = 1'b1;
    end else begin
        bucket_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_41_reg_618;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = zext_ln52_3_fu_467_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = bucket_1_addr_40_reg_608;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = zext_ln52_2_fu_462_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address1_local = bucket_1_addr_39_reg_598;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address1_local = zext_ln52_1_fu_398_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address1_local = bucket_1_addr_reg_564;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address1_local = zext_ln52_fu_317_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_d1_local = add_ln58_1_fu_448_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_d1_local = add_ln58_fu_355_p2;
    end else begin
        bucket_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln57_1_reg_579 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln57_1_reg_579_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln54_reg_493 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln57_1_fu_344_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln57_1_reg_579 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we1_local = 1'b1;
    end else begin
        bucket_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_339_p2 = (blockID_2_reg_487 + 10'd1);
assign add_ln57_fu_281_p2 = (zext_ln57_1_fu_278_p1 + 10'd1);
assign add_ln58_1_fu_448_p2 = (reg_200 + 32'd1);
assign add_ln58_4_fu_455_p2 = (reg_196 + 32'd1);
assign add_ln58_fu_355_p2 = (select_ln58_fu_347_p3 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_323_p2 = $signed(b_1_load_reg_527) >>> exp_cast3_reg_479;
assign ashr_ln57_2_fu_331_p2 = $signed(b_0_load_8_reg_532) >>> exp_cast3_reg_479;
assign ashr_ln57_3_fu_363_p2 = $signed(b_1_load_8_reg_537) >>> exp_cast3_reg_479;
assign ashr_ln57_fu_274_p2 = $signed(b_0_load_reg_522) >>> exp_cast3_reg_479;
assign b_0_address0 = zext_ln57_3_fu_268_p1;
assign b_0_address1 = zext_ln57_fu_254_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = zext_ln57_3_fu_268_p1;
assign b_1_address1 = zext_ln57_fu_254_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = bucket_0_address1_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = grp_fu_219_p2;
assign bucket_0_d1 = bucket_0_d1_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_0_we1 = bucket_0_we1_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = grp_fu_212_p2;
assign bucket_1_d1 = bucket_1_d1_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_1_we1 = bucket_1_we1_local;
assign bucket_indx_1_fu_383_p2 = (shl_ln57_2_fu_376_p3 + zext_ln57_2_reg_552);
assign bucket_indx_2_fu_411_p2 = (shl_ln57_3_fu_404_p3 + zext_ln57_2_reg_552);
assign bucket_indx_3_fu_433_p2 = (shl_ln57_4_fu_426_p3 + zext_ln57_2_reg_552);
assign bucket_indx_fu_301_p2 = (shl_ln57_1_fu_294_p3 + zext_ln57_2_fu_291_p1);
assign exp_cast3_fu_226_p1 = exp;
assign grp_fu_212_p2 = (reg_204 + 32'd1);
assign grp_fu_219_p2 = (reg_208 + 32'd1);
assign icmp_ln54_fu_238_p2 = ((ap_sig_allocacmp_blockID_2 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln52_1_fu_388_p4 = {{bucket_indx_1_fu_383_p2[10:1]}};
assign lshr_ln_fu_307_p4 = {{bucket_indx_fu_301_p2[10:1]}};
assign or_ln_fu_260_p3 = {{trunc_ln57_fu_244_p1}, {1'd1}};
assign select_ln58_fu_347_p3 = ((trunc_ln57_1_fu_344_p1[0:0] == 1'b1) ? reg_196 : reg_200);
assign shl_ln57_1_fu_294_p3 = {{trunc_ln57_2_reg_547}, {9'd0}};
assign shl_ln57_2_fu_376_p3 = {{trunc_ln57_3_reg_569}, {9'd0}};
assign shl_ln57_3_fu_404_p3 = {{trunc_ln57_4_reg_574}, {9'd0}};
assign shl_ln57_4_fu_426_p3 = {{trunc_ln57_5_reg_583}, {9'd0}};
assign shl_ln57_fu_248_p2 = ap_sig_allocacmp_blockID_2 << 10'd1;
assign trunc_ln57_1_fu_344_p1 = blockID_2_reg_487[0:0];
assign trunc_ln57_2_fu_287_p1 = ashr_ln57_fu_274_p2[1:0];
assign trunc_ln57_3_fu_327_p1 = ashr_ln57_1_fu_323_p2[1:0];
assign trunc_ln57_4_fu_335_p1 = ashr_ln57_2_fu_331_p2[1:0];
assign trunc_ln57_5_fu_367_p1 = ashr_ln57_3_fu_363_p2[1:0];
assign trunc_ln57_fu_244_p1 = ap_sig_allocacmp_blockID_2[8:0];
assign zext_ln52_1_fu_398_p1 = lshr_ln52_1_fu_388_p4;
assign zext_ln52_2_fu_462_p1 = lshr_ln52_2_reg_588;
assign zext_ln52_3_fu_467_p1 = lshr_ln52_3_reg_593;
assign zext_ln52_fu_317_p1 = lshr_ln_fu_307_p4;
assign zext_ln57_1_fu_278_p1 = trunc_ln57_reg_497;
assign zext_ln57_2_fu_291_p1 = add_ln57_reg_542;
assign zext_ln57_3_fu_268_p1 = or_ln_fu_260_p3;
assign zext_ln57_fu_254_p1 = shl_ln57_fu_248_p2;
always @ (posedge ap_clk) begin
    exp_cast3_reg_479[31:5] <= 27'b000000000000000000000000000;
    zext_ln57_2_reg_552[10] <= 1'b0;
end
endmodule 
