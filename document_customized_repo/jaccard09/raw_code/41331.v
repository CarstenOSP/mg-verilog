module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
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
input  [10:0] add9;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_3_fu_324_p2;
wire   [0:0] icmp_ln11_2_fu_282_p2;
wire   [0:0] icmp_ln11_1_fu_256_p2;
wire   [0:0] icmp_ln11_fu_246_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_10_reg_501;
reg   [0:0] icmp_ln11_reg_508;
reg   [0:0] icmp_ln11_reg_508_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_508_pp0_iter2_reg;
wire   [0:0] trunc_ln11_fu_252_p1;
reg   [0:0] trunc_ln11_reg_512;
reg   [0:0] trunc_ln11_reg_512_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_520;
reg   [0:0] icmp_ln11_1_reg_520_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_520_pp0_iter2_reg;
reg   [9:0] lshr_ln11_1_reg_524;
reg   [0:0] icmp_ln11_2_reg_529;
reg   [0:0] icmp_ln11_2_reg_529_pp0_iter1_reg;
reg   [0:0] icmp_ln11_2_reg_529_pp0_iter2_reg;
reg   [9:0] lshr_ln12_2_reg_533;
reg   [9:0] lshr_ln12_2_reg_533_pp0_iter1_reg;
reg   [9:0] lshr_ln12_2_reg_533_pp0_iter2_reg;
reg   [9:0] lshr_ln11_2_reg_538;
reg   [0:0] icmp_ln11_3_reg_543;
reg   [0:0] icmp_ln11_3_reg_543_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_547;
reg   [9:0] lshr_ln12_3_reg_547_pp0_iter1_reg;
reg   [9:0] lshr_ln12_3_reg_547_pp0_iter2_reg;
wire   [0:0] trunc_ln12_fu_369_p1;
reg   [0:0] trunc_ln12_reg_562;
reg   [0:0] trunc_ln12_reg_562_pp0_iter2_reg;
reg   [9:0] lshr_ln_reg_566;
reg   [9:0] lshr_ln_reg_566_pp0_iter2_reg;
reg   [9:0] lshr_ln12_1_reg_581;
reg   [9:0] lshr_ln12_1_reg_581_pp0_iter2_reg;
wire   [31:0] select_ln12_fu_440_p3;
reg   [31:0] select_ln12_reg_606;
wire   [31:0] select_ln12_1_fu_447_p3;
reg   [31:0] select_ln12_1_reg_612;
wire   [31:0] select_ln12_2_fu_454_p3;
reg   [31:0] select_ln12_2_reg_618;
wire   [31:0] select_ln12_3_fu_461_p3;
reg   [31:0] select_ln12_3_reg_624;
wire   [63:0] zext_ln5_3_fu_358_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_fu_399_p1;
wire   [63:0] zext_ln11_1_fu_420_p1;
wire   [63:0] zext_ln11_2_fu_425_p1;
wire   [63:0] zext_ln12_fu_468_p1;
wire   [63:0] zext_ln12_1_fu_473_p1;
wire   [63:0] zext_ln12_2_fu_478_p1;
wire   [63:0] zext_ln12_3_fu_483_p1;
reg   [31:0] j_1_fu_52;
wire   [31:0] add_ln11_3_fu_430_p2;
reg   [31:0] ap_sig_allocacmp_j_10;
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
reg    ap_predicate_pred313_state4;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred339_state4;
wire   [31:0] add_ln11_1_fu_262_p2;
wire   [10:0] trunc_ln11_2_fu_268_p1;
wire   [10:0] sub_ln12_2_fu_288_p2;
wire   [31:0] add_ln11_2_fu_304_p2;
wire   [10:0] trunc_ln11_3_fu_310_p1;
wire   [10:0] sub_ln12_3_fu_330_p2;
wire   [9:0] lshr_ln5_1_fu_349_p4;
wire   [10:0] trunc_ln11_1_fu_346_p1;
wire   [10:0] sub_ln12_fu_364_p2;
wire   [10:0] add_ln11_fu_383_p2;
wire   [9:0] lshr_ln1_fu_389_p4;
wire   [10:0] sub_ln12_1_fu_405_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_524;
reg    ap_condition_522;
reg    ap_condition_536;
reg    ap_condition_329;
reg    ap_condition_220;
reg    ap_condition_299;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_1_fu_52 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_52 <= j;
        end else if ((1'b1 == ap_condition_536)) begin
            j_1_fu_52 <= add_ln11_3_fu_430_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_1_reg_520 <= icmp_ln11_1_fu_256_p2;
        icmp_ln11_1_reg_520_pp0_iter1_reg <= icmp_ln11_1_reg_520;
        icmp_ln11_2_reg_529 <= icmp_ln11_2_fu_282_p2;
        icmp_ln11_2_reg_529_pp0_iter1_reg <= icmp_ln11_2_reg_529;
        icmp_ln11_3_reg_543 <= icmp_ln11_3_fu_324_p2;
        icmp_ln11_3_reg_543_pp0_iter1_reg <= icmp_ln11_3_reg_543;
        icmp_ln11_reg_508 <= icmp_ln11_fu_246_p2;
        icmp_ln11_reg_508_pp0_iter1_reg <= icmp_ln11_reg_508;
        j_10_reg_501 <= ap_sig_allocacmp_j_10;
        lshr_ln11_1_reg_524 <= {{add_ln11_1_fu_262_p2[10:1]}};
        lshr_ln11_2_reg_538 <= {{add_ln11_2_fu_304_p2[10:1]}};
        lshr_ln12_1_reg_581 <= {{sub_ln12_1_fu_405_p2[10:1]}};
        lshr_ln12_2_reg_533 <= {{sub_ln12_2_fu_288_p2[10:1]}};
        lshr_ln12_2_reg_533_pp0_iter1_reg <= lshr_ln12_2_reg_533;
        lshr_ln12_3_reg_547 <= {{sub_ln12_3_fu_330_p2[10:1]}};
        lshr_ln12_3_reg_547_pp0_iter1_reg <= lshr_ln12_3_reg_547;
        lshr_ln_reg_566 <= {{sub_ln12_fu_364_p2[10:1]}};
        trunc_ln11_reg_512 <= trunc_ln11_fu_252_p1;
        trunc_ln11_reg_512_pp0_iter1_reg <= trunc_ln11_reg_512;
        trunc_ln12_reg_562 <= trunc_ln12_fu_369_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_predicate_pred313_state4 <= ((trunc_ln12_reg_562 == 1'd1) & (icmp_ln11_3_reg_543_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_529_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter1_reg == 1'd0));
        ap_predicate_pred339_state4 <= ((trunc_ln12_reg_562 == 1'd0) & (icmp_ln11_3_reg_543_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_529_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter1_reg == 1'd0));
        icmp_ln11_1_reg_520_pp0_iter2_reg <= icmp_ln11_1_reg_520_pp0_iter1_reg;
        icmp_ln11_2_reg_529_pp0_iter2_reg <= icmp_ln11_2_reg_529_pp0_iter1_reg;
        icmp_ln11_reg_508_pp0_iter2_reg <= icmp_ln11_reg_508_pp0_iter1_reg;
        lshr_ln12_1_reg_581_pp0_iter2_reg <= lshr_ln12_1_reg_581;
        lshr_ln12_2_reg_533_pp0_iter2_reg <= lshr_ln12_2_reg_533_pp0_iter1_reg;
        lshr_ln12_3_reg_547_pp0_iter2_reg <= lshr_ln12_3_reg_547_pp0_iter1_reg;
        lshr_ln_reg_566_pp0_iter2_reg <= lshr_ln_reg_566;
        select_ln12_1_reg_612 <= select_ln12_1_fu_447_p3;
        select_ln12_2_reg_618 <= select_ln12_2_fu_454_p3;
        select_ln12_3_reg_624 <= select_ln12_3_fu_461_p3;
        select_ln12_reg_606 <= select_ln12_fu_440_p3;
        trunc_ln12_reg_562_pp0_iter2_reg <= trunc_ln12_reg_562;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_524)) begin
        if (((icmp_ln11_3_reg_543 == 1'd0) & (trunc_ln11_reg_512 == 1'd1))) begin
            a_0_address0_local = zext_ln11_2_fu_425_p1;
        end else if ((trunc_ln11_reg_512 == 1'd0)) begin
            a_0_address0_local = zext_ln11_1_fu_420_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_522)) begin
        if (((icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd1))) begin
            a_0_address1_local = zext_ln11_fu_399_p1;
        end else if ((trunc_ln11_reg_512 == 1'd0)) begin
            a_0_address1_local = zext_ln5_3_fu_358_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_543 == 1'd0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd1) & (icmp_ln11_reg_508 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd0) & (icmp_ln11_reg_508 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd1) & (icmp_ln11_reg_508 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_512 == 1'd0) & (icmp_ln11_reg_508 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_524)) begin
        if (((icmp_ln11_3_reg_543 == 1'd0) & (trunc_ln11_reg_512 == 1'd0))) begin
            a_1_address0_local = zext_ln11_2_fu_425_p1;
        end else if ((trunc_ln11_reg_512 == 1'd1)) begin
            a_1_address0_local = zext_ln11_1_fu_420_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_522)) begin
        if (((icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd0))) begin
            a_1_address1_local = zext_ln11_fu_399_p1;
        end else if ((trunc_ln11_reg_512 == 1'd1)) begin
            a_1_address1_local = zext_ln5_3_fu_358_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_543 == 1'd0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd0) & (icmp_ln11_reg_508 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd1) & (icmp_ln11_reg_508 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_520 == 1'd1) & (trunc_ln11_reg_512 == 1'd0) & (icmp_ln11_reg_508 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_512 == 1'd1) & (icmp_ln11_reg_508 == 1'd0)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_fu_246_p2 == 1'd1) | ((icmp_ln11_1_fu_256_p2 == 1'd0) | ((icmp_ln11_2_fu_282_p2 == 1'd1) | (icmp_ln11_3_fu_324_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_j_10 = j;
        end else if ((1'b1 == ap_condition_536)) begin
            ap_sig_allocacmp_j_10 = add_ln11_3_fu_430_p2;
        end else begin
            ap_sig_allocacmp_j_10 = j_1_fu_52;
        end
    end else begin
        ap_sig_allocacmp_j_10 = j_1_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred339_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_3_fu_483_p1;
        end else if ((1'b1 == ap_condition_329)) begin
            temp_1_address0_local = zext_ln12_2_fu_478_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_220)) begin
        if (((trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1))) begin
            temp_1_address1_local = zext_ln12_1_fu_473_p1;
        end else if ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd1)) begin
            temp_1_address1_local = zext_ln12_fu_468_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred339_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred339_state4 == 1'b1)) begin
            temp_1_d0_local = select_ln12_3_reg_624;
        end else if ((1'b1 == ap_condition_329)) begin
            temp_1_d0_local = select_ln12_2_reg_618;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_220)) begin
        if (((trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1))) begin
            temp_1_d1_local = select_ln12_1_reg_612;
        end else if ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd1)) begin
            temp_1_d1_local = select_ln12_reg_606;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred339_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred313_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_3_fu_483_p1;
        end else if ((1'b1 == ap_condition_299)) begin
            temp_address0_local = zext_ln12_2_fu_478_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_220)) begin
        if (((trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1))) begin
            temp_address1_local = zext_ln12_1_fu_473_p1;
        end else if ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd0)) begin
            temp_address1_local = zext_ln12_fu_468_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred313_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred313_state4 == 1'b1)) begin
            temp_d0_local = select_ln12_3_reg_624;
        end else if ((1'b1 == ap_condition_299)) begin
            temp_d0_local = select_ln12_2_reg_618;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_220)) begin
        if (((trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1))) begin
            temp_d1_local = select_ln12_1_reg_612;
        end else if ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd0)) begin
            temp_d1_local = select_ln12_reg_606;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred313_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0)))) begin
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
assign add_ln11_1_fu_262_p2 = (ap_sig_allocacmp_j_10 + 32'd2);
assign add_ln11_2_fu_304_p2 = (ap_sig_allocacmp_j_10 + 32'd3);
assign add_ln11_3_fu_430_p2 = (j_10_reg_501 + 32'd4);
assign add_ln11_fu_383_p2 = (trunc_ln11_1_fu_346_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_220 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_299 = ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd0) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_329 = ((trunc_ln12_reg_562_pp0_iter2_reg == 1'd1) & (icmp_ln11_2_reg_529_pp0_iter2_reg == 1'd0) & (icmp_ln11_1_reg_520_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_508_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_522 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_508 == 1'd0));
end
always @ (*) begin
    ap_condition_524 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (icmp_ln11_reg_508 == 1'd0));
end
always @ (*) begin
    ap_condition_536 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_3_reg_543 == 1'd0) & (icmp_ln11_2_reg_529 == 1'd0) & (icmp_ln11_1_reg_520 == 1'd1) & (icmp_ln11_reg_508 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_256_p2 = (($signed(ap_sig_allocacmp_j_10) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_282_p2 = (($signed(add_ln11_1_fu_262_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_324_p2 = (($signed(add_ln11_2_fu_304_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_246_p2 = (($signed(ap_sig_allocacmp_j_10) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_389_p4 = {{add_ln11_fu_383_p2[10:1]}};
assign lshr_ln5_1_fu_349_p4 = {{j_10_reg_501[10:1]}};
assign select_ln12_1_fu_447_p3 = ((trunc_ln11_reg_512_pp0_iter1_reg[0:0] == 1'b1) ? a_0_q1 : a_1_q1);
assign select_ln12_2_fu_454_p3 = ((trunc_ln11_reg_512_pp0_iter1_reg[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln12_3_fu_461_p3 = ((trunc_ln11_reg_512_pp0_iter1_reg[0:0] == 1'b1) ? a_0_q0 : a_1_q0);
assign select_ln12_fu_440_p3 = ((trunc_ln11_reg_512_pp0_iter1_reg[0:0] == 1'b1) ? a_1_q1 : a_0_q1);
assign sub_ln12_1_fu_405_p2 = (add9 - add_ln11_fu_383_p2);
assign sub_ln12_2_fu_288_p2 = (add9 - trunc_ln11_2_fu_268_p1);
assign sub_ln12_3_fu_330_p2 = (add9 - trunc_ln11_3_fu_310_p1);
assign sub_ln12_fu_364_p2 = (add9 - trunc_ln11_1_fu_346_p1);
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
assign trunc_ln11_1_fu_346_p1 = j_10_reg_501[10:0];
assign trunc_ln11_2_fu_268_p1 = add_ln11_1_fu_262_p2[10:0];
assign trunc_ln11_3_fu_310_p1 = add_ln11_2_fu_304_p2[10:0];
assign trunc_ln11_fu_252_p1 = ap_sig_allocacmp_j_10[0:0];
assign trunc_ln12_fu_369_p1 = sub_ln12_fu_364_p2[0:0];
assign zext_ln11_1_fu_420_p1 = lshr_ln11_1_reg_524;
assign zext_ln11_2_fu_425_p1 = lshr_ln11_2_reg_538;
assign zext_ln11_fu_399_p1 = lshr_ln1_fu_389_p4;
assign zext_ln12_1_fu_473_p1 = lshr_ln12_1_reg_581_pp0_iter2_reg;
assign zext_ln12_2_fu_478_p1 = lshr_ln12_2_reg_533_pp0_iter2_reg;
assign zext_ln12_3_fu_483_p1 = lshr_ln12_3_reg_547_pp0_iter2_reg;
assign zext_ln12_fu_468_p1 = lshr_ln_reg_566_pp0_iter2_reg;
assign zext_ln5_3_fu_358_p1 = lshr_ln5_1_fu_349_p4;
endmodule 