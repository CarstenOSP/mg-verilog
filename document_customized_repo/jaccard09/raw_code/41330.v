module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln7,sext_ln7_1,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln7;
input  [31:0] sext_ln7_1;
output  [9:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [9:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [9:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [9:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [9:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [9:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7_3_fu_287_p2;
wire   [0:0] icmp_ln7_2_fu_266_p2;
wire   [0:0] icmp_ln7_1_fu_245_p2;
wire   [0:0] icmp_ln7_fu_236_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [32:0] sext_ln7_1_cast_fu_220_p1;
reg  signed [32:0] sext_ln7_1_cast_reg_395;
reg   [32:0] i_11_reg_403;
reg   [0:0] icmp_ln7_reg_410;
reg   [0:0] icmp_ln7_reg_410_pp0_iter2_reg;
reg   [0:0] icmp_ln7_reg_410_pp0_iter3_reg;
reg   [0:0] icmp_ln7_reg_410_pp0_iter4_reg;
wire   [0:0] trunc_ln7_fu_241_p1;
reg   [0:0] trunc_ln7_reg_414;
reg   [0:0] trunc_ln7_reg_414_pp0_iter2_reg;
reg   [0:0] trunc_ln7_reg_414_pp0_iter3_reg;
reg   [0:0] trunc_ln7_reg_414_pp0_iter4_reg;
reg   [0:0] icmp_ln7_1_reg_422;
reg   [0:0] icmp_ln7_1_reg_422_pp0_iter2_reg;
reg   [0:0] icmp_ln7_1_reg_422_pp0_iter3_reg;
reg   [0:0] icmp_ln7_1_reg_422_pp0_iter4_reg;
reg   [9:0] lshr_ln7_1_reg_426;
reg   [9:0] lshr_ln7_1_reg_426_pp0_iter2_reg;
reg   [0:0] icmp_ln7_2_reg_431;
reg   [0:0] icmp_ln7_2_reg_431_pp0_iter2_reg;
reg   [0:0] icmp_ln7_2_reg_431_pp0_iter3_reg;
reg   [0:0] icmp_ln7_2_reg_431_pp0_iter4_reg;
reg   [9:0] lshr_ln7_2_reg_435;
reg   [9:0] lshr_ln7_2_reg_435_pp0_iter2_reg;
reg   [0:0] icmp_ln7_3_reg_440;
reg   [0:0] icmp_ln7_3_reg_440_pp0_iter2_reg;
reg   [0:0] icmp_ln7_3_reg_440_pp0_iter3_reg;
reg   [9:0] temp_addr_reg_454;
reg   [9:0] temp_addr_reg_454_pp0_iter3_reg;
reg   [9:0] temp_1_addr_reg_459;
reg   [9:0] temp_1_addr_reg_459_pp0_iter3_reg;
reg   [9:0] temp_addr_1_reg_474;
reg   [9:0] temp_addr_1_reg_474_pp0_iter3_reg;
reg   [9:0] temp_1_addr_1_reg_479;
reg   [9:0] temp_1_addr_1_reg_479_pp0_iter3_reg;
wire   [31:0] select_ln8_fu_346_p3;
reg   [31:0] select_ln8_reg_484;
wire   [31:0] select_ln8_1_fu_353_p3;
reg   [31:0] select_ln8_1_reg_490;
reg   [9:0] temp_addr_2_reg_506;
reg   [9:0] temp_addr_2_reg_506_pp0_iter4_reg;
reg   [9:0] temp_1_addr_2_reg_511;
reg   [9:0] temp_1_addr_2_reg_511_pp0_iter4_reg;
reg   [9:0] temp_addr_3_reg_526;
reg   [9:0] temp_addr_3_reg_526_pp0_iter4_reg;
reg   [9:0] temp_1_addr_3_reg_531;
reg   [9:0] temp_1_addr_3_reg_531_pp0_iter4_reg;
wire   [31:0] select_ln8_2_fu_374_p3;
reg   [31:0] select_ln8_2_reg_536;
wire   [31:0] select_ln8_3_fu_381_p3;
reg   [31:0] select_ln8_3_reg_542;
wire   [63:0] zext_ln5_2_fu_304_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_fu_328_p1;
wire   [63:0] zext_ln7_1_fu_360_p1;
wire   [63:0] zext_ln7_2_fu_367_p1;
reg    ap_predicate_pred256_state4;
reg    ap_predicate_pred261_state4;
reg   [32:0] i_fu_48;
wire   [32:0] add_ln7_3_fu_336_p2;
wire  signed [32:0] sext_ln7_cast_fu_224_p1;
reg   [32:0] ap_sig_allocacmp_i_11;
wire    ap_loop_init;
reg    a_0_ce1_local;
reg   [9:0] a_0_address1_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_ce1_local;
reg   [9:0] a_1_address1_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred351_state6;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred378_state6;
wire   [32:0] add_ln7_1_fu_250_p2;
wire   [32:0] add_ln7_2_fu_271_p2;
wire   [9:0] lshr_ln5_fu_295_p4;
wire   [10:0] trunc_ln7_1_fu_292_p1;
wire   [10:0] add_ln7_fu_312_p2;
wire   [9:0] lshr_ln7_fu_318_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_242;
reg    ap_condition_224;
reg    ap_condition_247;
reg    ap_condition_535;
reg    ap_condition_371;
reg    ap_condition_542;
reg    ap_condition_341;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 i_fu_48 = 33'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            i_fu_48 <= sext_ln7_cast_fu_224_p1;
        end else if ((1'b1 == ap_condition_535)) begin
            i_fu_48 <= add_ln7_3_fu_336_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        i_11_reg_403 <= ap_sig_allocacmp_i_11;
        icmp_ln7_1_reg_422 <= icmp_ln7_1_fu_245_p2;
        icmp_ln7_2_reg_431 <= icmp_ln7_2_fu_266_p2;
        icmp_ln7_3_reg_440 <= icmp_ln7_3_fu_287_p2;
        icmp_ln7_reg_410 <= icmp_ln7_fu_236_p2;
        lshr_ln7_1_reg_426 <= {{add_ln7_1_fu_250_p2[10:1]}};
        lshr_ln7_2_reg_435 <= {{add_ln7_2_fu_271_p2[10:1]}};
        sext_ln7_1_cast_reg_395 <= sext_ln7_1_cast_fu_220_p1;
        trunc_ln7_reg_414 <= trunc_ln7_fu_241_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_predicate_pred256_state4 <= ((icmp_ln7_3_reg_440 == 1'd0) & (icmp_ln7_2_reg_431 == 1'd0) & (icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd1) & (icmp_ln7_reg_410 == 1'd0));
        ap_predicate_pred261_state4 <= ((icmp_ln7_3_reg_440 == 1'd0) & (icmp_ln7_2_reg_431 == 1'd0) & (icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd0) & (icmp_ln7_reg_410 == 1'd0));
        ap_predicate_pred351_state6 <= ((icmp_ln7_3_reg_440_pp0_iter3_reg == 1'd0) & (icmp_ln7_2_reg_431_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0));
        ap_predicate_pred378_state6 <= ((icmp_ln7_3_reg_440_pp0_iter3_reg == 1'd0) & (icmp_ln7_2_reg_431_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0));
        icmp_ln7_1_reg_422_pp0_iter2_reg <= icmp_ln7_1_reg_422;
        icmp_ln7_1_reg_422_pp0_iter3_reg <= icmp_ln7_1_reg_422_pp0_iter2_reg;
        icmp_ln7_1_reg_422_pp0_iter4_reg <= icmp_ln7_1_reg_422_pp0_iter3_reg;
        icmp_ln7_2_reg_431_pp0_iter2_reg <= icmp_ln7_2_reg_431;
        icmp_ln7_2_reg_431_pp0_iter3_reg <= icmp_ln7_2_reg_431_pp0_iter2_reg;
        icmp_ln7_2_reg_431_pp0_iter4_reg <= icmp_ln7_2_reg_431_pp0_iter3_reg;
        icmp_ln7_3_reg_440_pp0_iter2_reg <= icmp_ln7_3_reg_440;
        icmp_ln7_3_reg_440_pp0_iter3_reg <= icmp_ln7_3_reg_440_pp0_iter2_reg;
        icmp_ln7_reg_410_pp0_iter2_reg <= icmp_ln7_reg_410;
        icmp_ln7_reg_410_pp0_iter3_reg <= icmp_ln7_reg_410_pp0_iter2_reg;
        icmp_ln7_reg_410_pp0_iter4_reg <= icmp_ln7_reg_410_pp0_iter3_reg;
        lshr_ln7_1_reg_426_pp0_iter2_reg <= lshr_ln7_1_reg_426;
        lshr_ln7_2_reg_435_pp0_iter2_reg <= lshr_ln7_2_reg_435;
        select_ln8_1_reg_490 <= select_ln8_1_fu_353_p3;
        select_ln8_2_reg_536 <= select_ln8_2_fu_374_p3;
        select_ln8_3_reg_542 <= select_ln8_3_fu_381_p3;
        select_ln8_reg_484 <= select_ln8_fu_346_p3;
        temp_1_addr_1_reg_479 <= zext_ln7_fu_328_p1;
        temp_1_addr_1_reg_479_pp0_iter3_reg <= temp_1_addr_1_reg_479;
        temp_1_addr_2_reg_511 <= zext_ln7_1_fu_360_p1;
        temp_1_addr_2_reg_511_pp0_iter4_reg <= temp_1_addr_2_reg_511;
        temp_1_addr_3_reg_531 <= zext_ln7_2_fu_367_p1;
        temp_1_addr_3_reg_531_pp0_iter4_reg <= temp_1_addr_3_reg_531;
        temp_1_addr_reg_459 <= zext_ln5_2_fu_304_p1;
        temp_1_addr_reg_459_pp0_iter3_reg <= temp_1_addr_reg_459;
        temp_addr_1_reg_474 <= zext_ln7_fu_328_p1;
        temp_addr_1_reg_474_pp0_iter3_reg <= temp_addr_1_reg_474;
        temp_addr_2_reg_506 <= zext_ln7_1_fu_360_p1;
        temp_addr_2_reg_506_pp0_iter4_reg <= temp_addr_2_reg_506;
        temp_addr_3_reg_526 <= zext_ln7_2_fu_367_p1;
        temp_addr_3_reg_526_pp0_iter4_reg <= temp_addr_3_reg_526;
        temp_addr_reg_454 <= zext_ln5_2_fu_304_p1;
        temp_addr_reg_454_pp0_iter3_reg <= temp_addr_reg_454;
        trunc_ln7_reg_414_pp0_iter2_reg <= trunc_ln7_reg_414;
        trunc_ln7_reg_414_pp0_iter3_reg <= trunc_ln7_reg_414_pp0_iter2_reg;
        trunc_ln7_reg_414_pp0_iter4_reg <= trunc_ln7_reg_414_pp0_iter3_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred256_state4 == 1'b1)) begin
            a_0_address0_local = zext_ln7_2_fu_367_p1;
        end else if ((1'b1 == ap_condition_242)) begin
            a_0_address0_local = zext_ln7_1_fu_360_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_224)) begin
        if (((icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd1))) begin
            a_0_address1_local = zext_ln7_fu_328_p1;
        end else if ((trunc_ln7_reg_414 == 1'd0)) begin
            a_0_address1_local = zext_ln5_2_fu_304_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred256_state4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter2_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter2_reg == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd1) & (icmp_ln7_reg_410 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_414 == 1'd0) & (icmp_ln7_reg_410 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred261_state4 == 1'b1)) begin
            a_1_address0_local = zext_ln7_2_fu_367_p1;
        end else if ((1'b1 == ap_condition_247)) begin
            a_1_address0_local = zext_ln7_1_fu_360_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_224)) begin
        if (((icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd0))) begin
            a_1_address1_local = zext_ln7_fu_328_p1;
        end else if ((trunc_ln7_reg_414 == 1'd1)) begin
            a_1_address1_local = zext_ln5_2_fu_304_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred261_state4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter2_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter2_reg == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_422 == 1'd1) & (trunc_ln7_reg_414 == 1'd0) & (icmp_ln7_reg_410 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_414 == 1'd1) & (icmp_ln7_reg_410 == 1'd0)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln7_fu_236_p2 == 1'd1) | ((icmp_ln7_1_fu_245_p2 == 1'd0) | ((icmp_ln7_2_fu_266_p2 == 1'd1) | (icmp_ln7_3_fu_287_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_3_reg_440 == 1'd0) & (icmp_ln7_2_reg_431 == 1'd0) & (icmp_ln7_1_reg_422 == 1'd1) & (icmp_ln7_reg_410 == 1'd0))) begin
        ap_sig_allocacmp_i_11 = add_ln7_3_fu_336_p2;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_48;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred378_state6 == 1'b1)) begin
            temp_1_address0_local = temp_1_addr_3_reg_531_pp0_iter4_reg;
        end else if ((1'b1 == ap_condition_371)) begin
            temp_1_address0_local = temp_1_addr_2_reg_511_pp0_iter4_reg;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_542)) begin
        if (((icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0))) begin
            temp_1_address1_local = temp_1_addr_1_reg_479_pp0_iter3_reg;
        end else if ((trunc_ln7_reg_414_pp0_iter3_reg == 1'd1)) begin
            temp_1_address1_local = temp_1_addr_reg_459_pp0_iter3_reg;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred378_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred378_state6 == 1'b1)) begin
            temp_1_d0_local = select_ln8_3_reg_542;
        end else if ((1'b1 == ap_condition_371)) begin
            temp_1_d0_local = select_ln8_2_reg_536;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_542)) begin
        if (((icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0))) begin
            temp_1_d1_local = select_ln8_1_reg_490;
        end else if ((trunc_ln7_reg_414_pp0_iter3_reg == 1'd1)) begin
            temp_1_d1_local = select_ln8_reg_484;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred378_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred351_state6 == 1'b1)) begin
            temp_address0_local = temp_addr_3_reg_526_pp0_iter4_reg;
        end else if ((1'b1 == ap_condition_341)) begin
            temp_address0_local = temp_addr_2_reg_506_pp0_iter4_reg;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_542)) begin
        if (((icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1))) begin
            temp_address1_local = temp_addr_1_reg_474_pp0_iter3_reg;
        end else if ((trunc_ln7_reg_414_pp0_iter3_reg == 1'd0)) begin
            temp_address1_local = temp_addr_reg_454_pp0_iter3_reg;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred351_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred351_state6 == 1'b1)) begin
            temp_d0_local = select_ln8_3_reg_542;
        end else if ((1'b1 == ap_condition_341)) begin
            temp_d0_local = select_ln8_2_reg_536;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_542)) begin
        if (((icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1))) begin
            temp_d1_local = select_ln8_1_reg_490;
        end else if ((trunc_ln7_reg_414_pp0_iter3_reg == 1'd0)) begin
            temp_d1_local = select_ln8_reg_484;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred351_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_1_reg_422_pp0_iter3_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_reg_414_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = a_0_address0_local;
assign a_0_address1 = a_0_address1_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_address1 = a_1_address1_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign add_ln7_1_fu_250_p2 = (ap_sig_allocacmp_i_11 + 33'd2);
assign add_ln7_2_fu_271_p2 = (ap_sig_allocacmp_i_11 + 33'd3);
assign add_ln7_3_fu_336_p2 = (i_11_reg_403 + 33'd4);
assign add_ln7_fu_312_p2 = (trunc_ln7_1_fu_292_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_224 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_reg_410 == 1'd0));
end
always @ (*) begin
    ap_condition_242 = ((icmp_ln7_2_reg_431_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter2_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_247 = ((icmp_ln7_2_reg_431_pp0_iter2_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter2_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter2_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_341 = ((icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd0) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0));
end
always @ (*) begin
    ap_condition_371 = ((icmp_ln7_2_reg_431_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_422_pp0_iter4_reg == 1'd1) & (trunc_ln7_reg_414_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_410_pp0_iter4_reg == 1'd0));
end
always @ (*) begin
    ap_condition_535 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_3_reg_440 == 1'd0) & (icmp_ln7_2_reg_431 == 1'd0) & (icmp_ln7_1_reg_422 == 1'd1) & (icmp_ln7_reg_410 == 1'd0));
end
always @ (*) begin
    ap_condition_542 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_reg_410_pp0_iter3_reg == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_1_fu_245_p2 = (($signed(ap_sig_allocacmp_i_11) < $signed(sext_ln7_1_cast_reg_395)) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_266_p2 = (($signed(add_ln7_1_fu_250_p2) > $signed(sext_ln7_1_cast_reg_395)) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_287_p2 = (($signed(add_ln7_2_fu_271_p2) > $signed(sext_ln7_1_cast_reg_395)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_236_p2 = (($signed(ap_sig_allocacmp_i_11) > $signed(sext_ln7_1_cast_reg_395)) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_295_p4 = {{i_11_reg_403[10:1]}};
assign lshr_ln7_fu_318_p4 = {{add_ln7_fu_312_p2[10:1]}};
assign select_ln8_1_fu_353_p3 = ((trunc_ln7_reg_414_pp0_iter2_reg[0:0] == 1'b1) ? a_0_q1 : a_1_q1);
assign select_ln8_2_fu_374_p3 = ((trunc_ln7_reg_414_pp0_iter3_reg[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln8_3_fu_381_p3 = ((trunc_ln7_reg_414_pp0_iter3_reg[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign select_ln8_fu_346_p3 = ((trunc_ln7_reg_414_pp0_iter2_reg[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign sext_ln7_1_cast_fu_220_p1 = $signed(sext_ln7_1);
assign sext_ln7_cast_fu_224_p1 = $signed(sext_ln7);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln7_1_fu_292_p1 = i_11_reg_403[10:0];
assign trunc_ln7_fu_241_p1 = ap_sig_allocacmp_i_11[0:0];
assign zext_ln5_2_fu_304_p1 = lshr_ln5_fu_295_p4;
assign zext_ln7_1_fu_360_p1 = lshr_ln7_1_reg_426_pp0_iter2_reg;
assign zext_ln7_2_fu_367_p1 = lshr_ln7_2_reg_435_pp0_iter2_reg;
assign zext_ln7_fu_328_p1 = lshr_ln7_fu_318_p4;
endmodule 