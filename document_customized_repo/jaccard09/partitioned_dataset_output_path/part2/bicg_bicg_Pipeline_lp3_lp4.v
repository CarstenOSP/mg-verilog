
module bicg_bicg_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_p_address0,buff_p_ce0,buff_p_q0,buff_p_2_address0,buff_p_2_ce0,buff_p_2_q0,buff_p_1_address0,buff_p_1_ce0,buff_p_1_q0,buff_p_3_address0,buff_p_3_ce0,buff_p_3_q0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0,buff_q_out_q0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_we0,buff_q_out_1_d0,buff_q_out_1_q0,buff_q_out_2_address0,buff_q_out_2_ce0,buff_q_out_2_we0,buff_q_out_2_d0,buff_q_out_2_q0,buff_q_out_3_address0,buff_q_out_3_ce0,buff_q_out_3_we0,buff_q_out_3_d0,buff_q_out_3_q0,grp_fu_571_p_din0,grp_fu_571_p_din1,grp_fu_571_p_opcode,grp_fu_571_p_dout0,grp_fu_571_p_ce,grp_fu_575_p_din0,grp_fu_575_p_din1,grp_fu_575_p_dout0,grp_fu_575_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [3:0] buff_p_address0;
output   buff_p_ce0;
input  [31:0] buff_p_q0;
output  [3:0] buff_p_2_address0;
output   buff_p_2_ce0;
input  [31:0] buff_p_2_q0;
output  [3:0] buff_p_1_address0;
output   buff_p_1_ce0;
input  [31:0] buff_p_1_q0;
output  [3:0] buff_p_3_address0;
output   buff_p_3_ce0;
input  [31:0] buff_p_3_q0;
output  [3:0] buff_q_out_address0;
output   buff_q_out_ce0;
output   buff_q_out_we0;
output  [31:0] buff_q_out_d0;
input  [31:0] buff_q_out_q0;
output  [3:0] buff_q_out_1_address0;
output   buff_q_out_1_ce0;
output   buff_q_out_1_we0;
output  [31:0] buff_q_out_1_d0;
input  [31:0] buff_q_out_1_q0;
output  [3:0] buff_q_out_2_address0;
output   buff_q_out_2_ce0;
output   buff_q_out_2_we0;
output  [31:0] buff_q_out_2_d0;
input  [31:0] buff_q_out_2_q0;
output  [3:0] buff_q_out_3_address0;
output   buff_q_out_3_ce0;
output   buff_q_out_3_we0;
output  [31:0] buff_q_out_3_d0;
input  [31:0] buff_q_out_3_q0;
output  [31:0] grp_fu_571_p_din0;
output  [31:0] grp_fu_571_p_din1;
output  [1:0] grp_fu_571_p_opcode;
input  [31:0] grp_fu_571_p_dout0;
output   grp_fu_571_p_ce;
output  [31:0] grp_fu_575_p_din0;
output  [31:0] grp_fu_575_p_din1;
input  [31:0] grp_fu_575_p_dout0;
output   grp_fu_575_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_530;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_260;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_287_p2;
wire   [6:0] select_ln5_fu_319_p3;
reg   [6:0] select_ln5_reg_534;
wire   [5:0] empty_12_fu_335_p1;
reg   [5:0] empty_12_reg_540;
wire   [0:0] first_iter_1_fu_339_p2;
reg   [0:0] first_iter_1_reg_545;
wire   [1:0] trunc_ln29_fu_345_p1;
reg   [1:0] trunc_ln29_reg_549;
reg   [1:0] trunc_ln29_reg_549_pp0_iter1_reg;
reg   [3:0] buff_q_out_addr_reg_554;
reg   [3:0] buff_q_out_addr_reg_554_pp0_iter1_reg;
reg   [3:0] buff_q_out_1_addr_reg_559;
reg   [3:0] buff_q_out_1_addr_reg_559_pp0_iter1_reg;
reg   [3:0] buff_q_out_2_addr_reg_564;
reg   [3:0] buff_q_out_2_addr_reg_564_pp0_iter1_reg;
reg   [3:0] buff_q_out_3_addr_reg_569;
reg   [3:0] buff_q_out_3_addr_reg_569_pp0_iter1_reg;
wire   [3:0] lshr_ln5_6_fu_367_p4;
reg   [3:0] lshr_ln5_6_reg_574;
wire   [31:0] tmp_1_fu_395_p11;
reg   [31:0] tmp_1_reg_599;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln31_1_fu_435_p2;
reg   [0:0] icmp_ln31_1_reg_624;
wire   [31:0] select_ln31_1_fu_441_p3;
reg   [31:0] select_ln31_1_reg_630;
wire   [31:0] select_ln31_3_fu_449_p3;
reg   [31:0] select_ln31_3_reg_635;
wire   [31:0] select_ln31_fu_457_p3;
reg   [31:0] select_ln31_reg_640;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln31_2_fu_464_p3;
reg   [31:0] select_ln31_2_reg_645;
reg   [31:0] mul1_reg_650;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul61_1_reg_660;
reg   [0:0] tmp_2_reg_665;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_359_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_377_p1;
wire   [63:0] zext_ln31_fu_427_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_80;
wire   [6:0] add_ln30_fu_479_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln29_fu_327_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten7_fu_88;
wire   [11:0] add_ln29_1_fu_293_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten7_load;
reg   [31:0] empty_fu_92;
wire    ap_block_pp0_stage7;
reg    buff_q_out_ce0_local;
reg   [3:0] buff_q_out_address0_local;
reg    buff_q_out_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_q_out_1_ce0_local;
reg   [3:0] buff_q_out_1_address0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_2_ce0_local;
reg   [3:0] buff_q_out_2_address0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_3_ce0_local;
reg   [3:0] buff_q_out_3_address0_local;
reg    buff_q_out_3_we0_local;
reg    buff_p_ce0_local;
reg    buff_p_2_ce0_local;
reg    buff_p_1_ce0_local;
reg    buff_p_3_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg   [31:0] grp_fu_252_p0;
reg   [31:0] grp_fu_252_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_256_p0;
reg   [31:0] grp_fu_256_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [0:0] tmp_fu_311_p3;
wire   [6:0] add_ln29_fu_305_p2;
wire   [3:0] lshr_ln5_2_fu_349_p4;
wire   [31:0] tmp_1_fu_395_p9;
wire   [9:0] tmp_7_fu_421_p3;
wire   [1:0] trunc_ln30_fu_418_p1;
wire    ap_block_pp0_stage2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_condition_656;
wire   [1:0] tmp_1_fu_395_p1;
wire   [1:0] tmp_1_fu_395_p3;
wire  signed [1:0] tmp_1_fu_395_p5;
wire  signed [1:0] tmp_1_fu_395_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_80 = 7'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten7_fu_88 = 12'd0;
#0 empty_fu_92 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U30(.din0(buff_q_out_q0),.din1(buff_q_out_1_q0),.din2(buff_q_out_2_q0),.din3(buff_q_out_3_q0),.def(tmp_1_fu_395_p9),.sel(trunc_ln29_reg_549),.dout(tmp_1_fu_395_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_656)) begin
            empty_fu_92 <= tmp_1_reg_599;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_92 <= reg_260;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_fu_287_p2 == 1'd0))) begin
            i_fu_84 <= select_ln29_fu_327_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_fu_287_p2 == 1'd0))) begin
            indvar_flatten7_fu_88 <= add_ln29_1_fu_293_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_88 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_80 <= 7'd0;
    end else if (((icmp_ln29_reg_530 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_fu_80 <= add_ln30_fu_479_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_addr_reg_559 <= zext_ln5_fu_359_p1;
        buff_q_out_1_addr_reg_559_pp0_iter1_reg <= buff_q_out_1_addr_reg_559;
        buff_q_out_2_addr_reg_564 <= zext_ln5_fu_359_p1;
        buff_q_out_2_addr_reg_564_pp0_iter1_reg <= buff_q_out_2_addr_reg_564;
        buff_q_out_3_addr_reg_569 <= zext_ln5_fu_359_p1;
        buff_q_out_3_addr_reg_569_pp0_iter1_reg <= buff_q_out_3_addr_reg_569;
        buff_q_out_addr_reg_554 <= zext_ln5_fu_359_p1;
        buff_q_out_addr_reg_554_pp0_iter1_reg <= buff_q_out_addr_reg_554;
        empty_12_reg_540 <= empty_12_fu_335_p1;
        first_iter_1_reg_545 <= first_iter_1_fu_339_p2;
        icmp_ln29_reg_530 <= icmp_ln29_fu_287_p2;
        lshr_ln5_6_reg_574 <= {{select_ln5_fu_319_p3[5:2]}};
        select_ln5_reg_534 <= select_ln5_fu_319_p3;
        trunc_ln29_reg_549 <= trunc_ln29_fu_345_p1;
        trunc_ln29_reg_549_pp0_iter1_reg <= trunc_ln29_reg_549;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_1_reg_624 <= icmp_ln31_1_fu_435_p2;
        select_ln31_1_reg_630 <= select_ln31_1_fu_441_p3;
        select_ln31_3_reg_635 <= select_ln31_3_fu_449_p3;
        tmp_1_reg_599 <= tmp_1_fu_395_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_650 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul61_1_reg_660 <= grp_fu_575_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_260 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln31_2_reg_645 <= select_ln31_2_fu_464_p3;
        select_ln31_reg_640 <= select_ln31_fu_457_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_2_reg_665 <= add_ln30_fu_479_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_530 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_1_address0_local = buff_q_out_1_addr_reg_559_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_address0_local = zext_ln5_fu_359_p1;
    end else begin
        buff_q_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln29_reg_549_pp0_iter1_reg == 2'd1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_2_address0_local = buff_q_out_2_addr_reg_564_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_2_address0_local = zext_ln5_fu_359_p1;
    end else begin
        buff_q_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln29_reg_549_pp0_iter1_reg == 2'd2))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_3_address0_local = buff_q_out_3_addr_reg_569_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_3_address0_local = zext_ln5_fu_359_p1;
    end else begin
        buff_q_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln29_reg_549_pp0_iter1_reg == 2'd3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_address0_local = buff_q_out_addr_reg_554_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_address0_local = zext_ln5_fu_359_p1;
    end else begin
        buff_q_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_665 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln29_reg_549_pp0_iter1_reg == 2'd0))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_252_p0 = reg_260;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_252_p0 = empty_fu_92;
        end else begin
            grp_fu_252_p0 = 'bx;
        end
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_252_p1 = mul61_1_reg_660;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_252_p1 = mul1_reg_650;
        end else begin
            grp_fu_252_p1 = 'bx;
        end
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_256_p0 = select_ln31_2_reg_645;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_256_p0 = select_ln31_reg_640;
        end else begin
            grp_fu_256_p0 = 'bx;
        end
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_256_p1 = select_ln31_3_reg_635;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_256_p1 = select_ln31_1_reg_630;
        end else begin
            grp_fu_256_p1 = 'bx;
        end
    end else begin
        grp_fu_256_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_293_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 12'd1);
assign add_ln29_fu_305_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_479_p2 = (select_ln5_reg_534 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
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
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_656 = ((icmp_ln29_reg_530 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_545 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln31_fu_427_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln31_fu_427_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln31_fu_427_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln31_fu_427_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_p_1_address0 = zext_ln5_1_fu_377_p1;
assign buff_p_1_ce0 = buff_p_1_ce0_local;
assign buff_p_2_address0 = zext_ln5_1_fu_377_p1;
assign buff_p_2_ce0 = buff_p_2_ce0_local;
assign buff_p_3_address0 = zext_ln5_1_fu_377_p1;
assign buff_p_3_ce0 = buff_p_3_ce0_local;
assign buff_p_address0 = zext_ln5_1_fu_377_p1;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_q_out_1_address0 = buff_q_out_1_address0_local;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_1_d0 = reg_260;
assign buff_q_out_1_we0 = buff_q_out_1_we0_local;
assign buff_q_out_2_address0 = buff_q_out_2_address0_local;
assign buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
assign buff_q_out_2_d0 = reg_260;
assign buff_q_out_2_we0 = buff_q_out_2_we0_local;
assign buff_q_out_3_address0 = buff_q_out_3_address0_local;
assign buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
assign buff_q_out_3_d0 = reg_260;
assign buff_q_out_3_we0 = buff_q_out_3_we0_local;
assign buff_q_out_address0 = buff_q_out_address0_local;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = reg_260;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign empty_12_fu_335_p1 = select_ln29_fu_327_p3[5:0];
assign first_iter_1_fu_339_p2 = ((select_ln5_fu_319_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_571_p_ce = 1'b1;
assign grp_fu_571_p_din0 = grp_fu_252_p0;
assign grp_fu_571_p_din1 = grp_fu_252_p1;
assign grp_fu_571_p_opcode = 2'd0;
assign grp_fu_575_p_ce = 1'b1;
assign grp_fu_575_p_din0 = grp_fu_256_p0;
assign grp_fu_575_p_din1 = grp_fu_256_p1;
assign icmp_ln29_fu_287_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln31_1_fu_435_p2 = ((trunc_ln30_fu_418_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_349_p4 = {{select_ln29_fu_327_p3[5:2]}};
assign lshr_ln5_6_fu_367_p4 = {{select_ln5_fu_319_p3[5:2]}};
assign select_ln29_fu_327_p3 = ((tmp_fu_311_p3[0:0] == 1'b1) ? add_ln29_fu_305_p2 : ap_sig_allocacmp_i_load);
assign select_ln31_1_fu_441_p3 = ((icmp_ln31_1_fu_435_p2[0:0] == 1'b1) ? buff_p_2_q0 : buff_p_q0);
assign select_ln31_2_fu_464_p3 = ((icmp_ln31_1_reg_624[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_1_q0);
assign select_ln31_3_fu_449_p3 = ((icmp_ln31_1_fu_435_p2[0:0] == 1'b1) ? buff_p_3_q0 : buff_p_1_q0);
assign select_ln31_fu_457_p3 = ((icmp_ln31_1_reg_624[0:0] == 1'b1) ? buff_A_2_q0 : buff_A_q0);
assign select_ln5_fu_319_p3 = ((tmp_fu_311_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_1_fu_395_p9 = 'bx;
assign tmp_7_fu_421_p3 = {{empty_12_reg_540}, {lshr_ln5_6_reg_574}};
assign tmp_fu_311_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln29_fu_345_p1 = select_ln29_fu_327_p3[1:0];
assign trunc_ln30_fu_418_p1 = select_ln5_reg_534[1:0];
assign zext_ln31_fu_427_p1 = tmp_7_fu_421_p3;
assign zext_ln5_1_fu_377_p1 = lshr_ln5_6_fu_367_p4;
assign zext_ln5_fu_359_p1 = lshr_ln5_2_fu_349_p4;
endmodule 
