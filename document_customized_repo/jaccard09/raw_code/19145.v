module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln7,stop,start_r,sext_ln11_1,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln7;
input  [31:0] stop;
input  [31:0] start_r;
input  [31:0] sext_ln11_1;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln18_fu_331_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln11_1_cast_fu_299_p1;
reg  signed [63:0] sext_ln11_1_cast_reg_432;
reg   [63:0] k_1_reg_437;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_444;
reg   [31:0] j_1_reg_449;
reg   [0:0] icmp_ln18_reg_454;
wire   [2:0] trunc_ln18_fu_346_p1;
reg   [2:0] trunc_ln18_reg_468;
reg   [7:0] lshr_ln5_2_reg_472;
reg   [31:0] tmp_j_reg_477;
reg   [31:0] tmp_i_reg_489;
wire   [0:0] icmp_ln21_fu_358_p2;
reg   [0:0] icmp_ln21_reg_501;
wire   [31:0] i_4_fu_364_p2;
reg   [31:0] i_4_reg_505;
wire   [31:0] j_2_fu_369_p2;
reg   [31:0] j_2_reg_510;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln19_fu_336_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_341_p1;
wire   [63:0] zext_ln5_fu_384_p1;
wire   [7:0] a_6_addr_gep_fu_235_p3;
wire   [7:0] a_5_addr_gep_fu_243_p3;
wire   [7:0] a_4_addr_gep_fu_251_p3;
wire   [7:0] a_3_addr_gep_fu_259_p3;
wire   [7:0] a_2_addr_gep_fu_267_p3;
wire   [7:0] a_1_addr_gep_fu_275_p3;
wire   [7:0] a_0_addr_gep_fu_283_p3;
wire   [7:0] a_7_addr_gep_fu_291_p3;
reg   [63:0] k_fu_70;
wire   [63:0] add_ln18_fu_374_p2;
wire  signed [63:0] sext_ln7_cast_fu_303_p1;
wire    ap_loop_init;
reg   [31:0] i_3_fu_74;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_78;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg    temp_ce0_local;
reg    a_6_we0_local;
reg   [31:0] a_6_d0_local;
reg    a_6_ce0_local;
reg   [7:0] a_6_address0_local;
reg    a_5_we0_local;
reg   [31:0] a_5_d0_local;
reg    a_5_ce0_local;
reg   [7:0] a_5_address0_local;
reg    a_4_we0_local;
reg   [31:0] a_4_d0_local;
reg    a_4_ce0_local;
reg   [7:0] a_4_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_3_ce0_local;
reg   [7:0] a_3_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_2_ce0_local;
reg   [7:0] a_2_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [7:0] a_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [7:0] a_0_address0_local;
reg    a_7_we0_local;
reg   [31:0] a_7_d0_local;
reg    a_7_ce0_local;
reg   [7:0] a_7_address0_local;
wire    ap_block_pp0_stage0;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_412;
reg    ap_condition_415;
reg    ap_condition_418;
reg    ap_condition_421;
reg    ap_condition_424;
reg    ap_condition_427;
reg    ap_condition_430;
reg    ap_condition_433;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_70 = 64'd0;
#0 i_3_fu_74 = 32'd0;
#0 j_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_fu_74 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0))) begin
        i_3_fu_74 <= i_4_reg_505;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_78 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1))) begin
        j_fu_78 <= j_2_reg_510;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_70 <= sext_ln7_cast_fu_303_p1;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18_reg_454 == 1'd0))) begin
            k_fu_70 <= add_ln18_fu_374_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_505 <= i_4_fu_364_p2;
        icmp_ln21_reg_501 <= icmp_ln21_fu_358_p2;
        j_2_reg_510 <= j_2_fu_369_p2;
        lshr_ln5_2_reg_472 <= {{k_1_reg_437[10:3]}};
        sext_ln11_1_cast_reg_432 <= sext_ln11_1_cast_fu_299_p1;
        trunc_ln18_reg_468 <= trunc_ln18_fu_346_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_444 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_454 <= icmp_ln18_fu_331_p2;
        j_1_reg_449 <= ap_sig_allocacmp_j_1;
        k_1_reg_437 <= k_fu_70;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_reg_489 <= temp_q0;
        tmp_j_reg_477 <= temp_q1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_0_address0_local = a_0_addr_gep_fu_283_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_0_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_489;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_415)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_1_address0_local = a_1_addr_gep_fu_275_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_1_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_415)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_489;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd1)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_418)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_2_address0_local = a_2_addr_gep_fu_267_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_2_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_2_address0_local = 'bx;
        end
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd2)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_418)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_2_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_2_d0_local = tmp_i_reg_489;
        end else begin
            a_2_d0_local = 'bx;
        end
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd2)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_421)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_3_address0_local = a_3_addr_gep_fu_259_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_3_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_3_address0_local = 'bx;
        end
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd3)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_421)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_3_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_3_d0_local = tmp_i_reg_489;
        end else begin
            a_3_d0_local = 'bx;
        end
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd3)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_424)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_4_address0_local = a_4_addr_gep_fu_251_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_4_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_4_address0_local = 'bx;
        end
    end else begin
        a_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd4)))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_424)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_4_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_4_d0_local = tmp_i_reg_489;
        end else begin
            a_4_d0_local = 'bx;
        end
    end else begin
        a_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd4)))) begin
        a_4_we0_local = 1'b1;
    end else begin
        a_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_5_address0_local = a_5_addr_gep_fu_243_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_5_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_5_address0_local = 'bx;
        end
    end else begin
        a_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd5)))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_427)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_5_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_5_d0_local = tmp_i_reg_489;
        end else begin
            a_5_d0_local = 'bx;
        end
    end else begin
        a_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd5)))) begin
        a_5_we0_local = 1'b1;
    end else begin
        a_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_430)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_6_address0_local = a_6_addr_gep_fu_235_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_6_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_6_address0_local = 'bx;
        end
    end else begin
        a_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd6)))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_430)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_6_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_6_d0_local = tmp_i_reg_489;
        end else begin
            a_6_d0_local = 'bx;
        end
    end else begin
        a_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd6)))) begin
        a_6_we0_local = 1'b1;
    end else begin
        a_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_433)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_7_address0_local = a_7_addr_gep_fu_291_p3;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_7_address0_local = zext_ln5_fu_384_p1;
        end else begin
            a_7_address0_local = 'bx;
        end
    end else begin
        a_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd7)))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_433)) begin
        if ((icmp_ln21_reg_501 == 1'd1)) begin
            a_7_d0_local = tmp_j_reg_477;
        end else if ((icmp_ln21_reg_501 == 1'd0)) begin
            a_7_d0_local = tmp_i_reg_489;
        end else begin
            a_7_d0_local = 'bx;
        end
    end else begin
        a_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1) & (trunc_ln18_reg_468 == 3'd7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0) & (trunc_ln18_reg_468 == 3'd7)))) begin
        a_7_we0_local = 1'b1;
    end else begin
        a_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln18_fu_331_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd0))) begin
        ap_sig_allocacmp_i = i_4_reg_505;
    end else begin
        ap_sig_allocacmp_i = i_3_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_reg_501 == 1'd1))) begin
        ap_sig_allocacmp_j_1 = j_2_reg_510;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
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
assign a_0_addr_gep_fu_283_p3 = zext_ln5_fu_384_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_gep_fu_275_p3 = zext_ln5_fu_384_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_gep_fu_267_p3 = zext_ln5_fu_384_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_gep_fu_259_p3 = zext_ln5_fu_384_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign a_4_addr_gep_fu_251_p3 = zext_ln5_fu_384_p1;
assign a_4_address0 = a_4_address0_local;
assign a_4_ce0 = a_4_ce0_local;
assign a_4_d0 = a_4_d0_local;
assign a_4_we0 = a_4_we0_local;
assign a_5_addr_gep_fu_243_p3 = zext_ln5_fu_384_p1;
assign a_5_address0 = a_5_address0_local;
assign a_5_ce0 = a_5_ce0_local;
assign a_5_d0 = a_5_d0_local;
assign a_5_we0 = a_5_we0_local;
assign a_6_addr_gep_fu_235_p3 = zext_ln5_fu_384_p1;
assign a_6_address0 = a_6_address0_local;
assign a_6_ce0 = a_6_ce0_local;
assign a_6_d0 = a_6_d0_local;
assign a_6_we0 = a_6_we0_local;
assign a_7_addr_gep_fu_291_p3 = zext_ln5_fu_384_p1;
assign a_7_address0 = a_7_address0_local;
assign a_7_ce0 = a_7_ce0_local;
assign a_7_d0 = a_7_d0_local;
assign a_7_we0 = a_7_we0_local;
assign add_ln18_fu_374_p2 = (k_1_reg_437 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_412 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd0));
end
always @ (*) begin
    ap_condition_415 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd1));
end
always @ (*) begin
    ap_condition_418 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd2));
end
always @ (*) begin
    ap_condition_421 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd3));
end
always @ (*) begin
    ap_condition_424 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd4));
end
always @ (*) begin
    ap_condition_427 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd5));
end
always @ (*) begin
    ap_condition_430 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd6));
end
always @ (*) begin
    ap_condition_433 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_468 == 3'd7));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign i_4_fu_364_p2 = (i_reg_444 + 32'd1);
assign icmp_ln18_fu_331_p2 = (($signed(k_fu_70) > $signed(sext_ln11_1_cast_reg_432)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_358_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign j_2_fu_369_p2 = ($signed(j_1_reg_449) + $signed(32'd4294967295));
assign sext_ln11_1_cast_fu_299_p1 = $signed(sext_ln11_1);
assign sext_ln7_cast_fu_303_p1 = $signed(sext_ln7);
assign temp_address0 = zext_ln20_fu_341_p1;
assign temp_address1 = zext_ln19_fu_336_p1;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_fu_346_p1 = k_1_reg_437[2:0];
assign zext_ln19_fu_336_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_fu_341_p1 = ap_sig_allocacmp_i;
assign zext_ln5_fu_384_p1 = lshr_ln5_2_reg_472;
endmodule 