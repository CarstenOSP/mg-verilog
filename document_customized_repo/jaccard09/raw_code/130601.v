module bicg_bicg_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_p_address0,buff_p_ce0,buff_p_q0,buff_p_1_address0,buff_p_1_ce0,buff_p_1_q0,buff_p_2_address0,buff_p_2_ce0,buff_p_2_q0,buff_p_3_address0,buff_p_3_ce0,buff_p_3_q0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0,buff_q_out_q0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_we0,buff_q_out_1_d0,buff_q_out_1_q0,buff_q_out_2_address0,buff_q_out_2_ce0,buff_q_out_2_we0,buff_q_out_2_d0,buff_q_out_2_q0,buff_q_out_3_address0,buff_q_out_3_ce0,buff_q_out_3_we0,buff_q_out_3_d0,buff_q_out_3_q0,grp_fu_2841_p_din0,grp_fu_2841_p_din1,grp_fu_2841_p_opcode,grp_fu_2841_p_dout0,grp_fu_2841_p_ce,grp_fu_2845_p_din0,grp_fu_2845_p_din1,grp_fu_2845_p_dout0,grp_fu_2845_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [3:0] buff_p_address0;
output   buff_p_ce0;
input  [31:0] buff_p_q0;
output  [3:0] buff_p_1_address0;
output   buff_p_1_ce0;
input  [31:0] buff_p_1_q0;
output  [3:0] buff_p_2_address0;
output   buff_p_2_ce0;
input  [31:0] buff_p_2_q0;
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
output  [31:0] grp_fu_2841_p_din0;
output  [31:0] grp_fu_2841_p_din1;
output  [1:0] grp_fu_2841_p_opcode;
input  [31:0] grp_fu_2841_p_dout0;
output   grp_fu_2841_p_ce;
output  [31:0] grp_fu_2845_p_din0;
output  [31:0] grp_fu_2845_p_din1;
input  [31:0] grp_fu_2845_p_dout0;
output   grp_fu_2845_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_627;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_336_p2;
wire   [6:0] select_ln5_fu_366_p3;
reg   [6:0] select_ln5_reg_631;
wire   [0:0] first_iter_0_fu_382_p2;
reg   [0:0] first_iter_0_reg_637;
wire   [1:0] trunc_ln29_fu_388_p1;
reg   [1:0] trunc_ln29_reg_641;
reg   [1:0] trunc_ln29_reg_641_pp0_iter1_reg;
reg   [3:0] buff_q_out_addr_reg_646;
reg   [3:0] buff_q_out_addr_reg_646_pp0_iter1_reg;
reg   [3:0] buff_q_out_1_addr_reg_651;
reg   [3:0] buff_q_out_1_addr_reg_651_pp0_iter1_reg;
reg   [3:0] buff_q_out_2_addr_reg_656;
reg   [3:0] buff_q_out_2_addr_reg_656_pp0_iter1_reg;
reg   [3:0] buff_q_out_3_addr_reg_661;
reg   [3:0] buff_q_out_3_addr_reg_661_pp0_iter1_reg;
wire   [0:0] trunc_ln29_1_fu_410_p1;
reg   [0:0] trunc_ln29_1_reg_666;
wire   [3:0] lshr_ln5_8_fu_414_p4;
reg   [3:0] lshr_ln5_8_reg_674;
reg   [4:0] tmp_s_reg_679;
wire   [31:0] tmp_fu_452_p11;
reg   [31:0] tmp_reg_704;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln30_fu_475_p1;
reg   [1:0] trunc_ln30_reg_709;
wire   [31:0] tmp_6_fu_496_p11;
reg   [31:0] tmp_6_reg_754;
wire   [0:0] icmp_ln30_1_fu_525_p2;
reg   [0:0] icmp_ln30_1_reg_759;
reg   [0:0] icmp_ln30_1_reg_759_pp0_iter1_reg;
wire   [31:0] tmp_5_fu_564_p11;
reg   [31:0] tmp_5_reg_763;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] mul1_reg_768;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add1_reg_778;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_402_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_424_p1;
wire   [63:0] zext_ln31_fu_484_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_1_fu_86;
wire   [6:0] add_ln30_fu_520_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_90;
wire   [6:0] select_ln29_fu_374_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [12:0] indvar_flatten_fu_94;
wire   [12:0] add_ln29_1_fu_342_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_98;
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
reg    buff_p_1_ce0_local;
reg    buff_p_2_ce0_local;
reg    buff_p_3_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln30_fu_360_p2;
wire   [6:0] add_ln29_fu_354_p2;
wire   [3:0] lshr_ln5_5_fu_392_p4;
wire   [31:0] tmp_fu_452_p9;
wire   [8:0] tmp_4_fu_478_p3;
wire   [31:0] tmp_6_fu_496_p9;
wire   [1:0] tmp_6_fu_496_p10;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_5_fu_564_p2;
wire   [31:0] tmp_5_fu_564_p4;
wire   [31:0] tmp_5_fu_564_p6;
wire   [31:0] tmp_5_fu_564_p8;
wire   [31:0] tmp_5_fu_564_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
reg    ap_condition_769;
wire   [1:0] tmp_fu_452_p1;
wire   [1:0] tmp_fu_452_p3;
wire  signed [1:0] tmp_fu_452_p5;
wire  signed [1:0] tmp_fu_452_p7;
wire   [1:0] tmp_6_fu_496_p1;
wire   [1:0] tmp_6_fu_496_p3;
wire  signed [1:0] tmp_6_fu_496_p5;
wire  signed [1:0] tmp_6_fu_496_p7;
wire   [1:0] tmp_5_fu_564_p1;
wire   [1:0] tmp_5_fu_564_p3;
wire  signed [1:0] tmp_5_fu_564_p5;
wire  signed [1:0] tmp_5_fu_564_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_86 = 7'd0;
#0 i_fu_90 = 7'd0;
#0 indvar_flatten_fu_94 = 13'd0;
#0 empty_fu_98 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U185(.din0(buff_q_out_q0),.din1(buff_q_out_1_q0),.din2(buff_q_out_2_q0),.din3(buff_q_out_3_q0),.def(tmp_fu_452_p9),.sel(trunc_ln29_reg_641),.dout(tmp_fu_452_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U186(.din0(buff_p_q0),.din1(buff_p_1_q0),.din2(buff_p_2_q0),.din3(buff_p_3_q0),.def(tmp_6_fu_496_p9),.sel(tmp_6_fu_496_p10),.dout(tmp_6_fu_496_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U187(.din0(tmp_5_fu_564_p2),.din1(tmp_5_fu_564_p4),.din2(tmp_5_fu_564_p6),.din3(tmp_5_fu_564_p8),.def(tmp_5_fu_564_p9),.sel(trunc_ln30_reg_709),.dout(tmp_5_fu_564_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_769)) begin
            empty_fu_98 <= tmp_reg_704;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_98 <= add1_reg_778;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_336_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_90 <= select_ln29_fu_374_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_90 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_336_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_94 <= add_ln29_1_fu_342_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_94 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_86 <= 7'd0;
    end else if (((icmp_ln29_reg_627 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_86 <= add_ln30_fu_520_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add1_reg_778 <= grp_fu_2841_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_addr_reg_651 <= zext_ln5_fu_402_p1;
        buff_q_out_1_addr_reg_651_pp0_iter1_reg <= buff_q_out_1_addr_reg_651;
        buff_q_out_2_addr_reg_656 <= zext_ln5_fu_402_p1;
        buff_q_out_2_addr_reg_656_pp0_iter1_reg <= buff_q_out_2_addr_reg_656;
        buff_q_out_3_addr_reg_661 <= zext_ln5_fu_402_p1;
        buff_q_out_3_addr_reg_661_pp0_iter1_reg <= buff_q_out_3_addr_reg_661;
        buff_q_out_addr_reg_646 <= zext_ln5_fu_402_p1;
        buff_q_out_addr_reg_646_pp0_iter1_reg <= buff_q_out_addr_reg_646;
        first_iter_0_reg_637 <= first_iter_0_fu_382_p2;
        icmp_ln29_reg_627 <= icmp_ln29_fu_336_p2;
        lshr_ln5_8_reg_674 <= {{select_ln5_fu_366_p3[5:2]}};
        select_ln5_reg_631 <= select_ln5_fu_366_p3;
        tmp_s_reg_679 <= {{select_ln29_fu_374_p3[5:1]}};
        trunc_ln29_1_reg_666 <= trunc_ln29_1_fu_410_p1;
        trunc_ln29_reg_641 <= trunc_ln29_fu_388_p1;
        trunc_ln29_reg_641_pp0_iter1_reg <= trunc_ln29_reg_641;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln30_1_reg_759 <= icmp_ln30_1_fu_525_p2;
        icmp_ln30_1_reg_759_pp0_iter1_reg <= icmp_ln30_1_reg_759;
        tmp_6_reg_754 <= tmp_6_fu_496_p11;
        tmp_reg_704 <= tmp_fu_452_p11;
        trunc_ln30_reg_709 <= trunc_ln30_fu_475_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_768 <= grp_fu_2845_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_5_reg_763 <= tmp_5_fu_564_p11;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_627 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_86;
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
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
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
        buff_q_out_1_address0_local = buff_q_out_1_addr_reg_651_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_1_address0_local = zext_ln5_fu_402_p1;
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
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln30_1_reg_759_pp0_iter1_reg == 1'd1) & (trunc_ln29_reg_641_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_2_address0_local = buff_q_out_2_addr_reg_656_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_2_address0_local = zext_ln5_fu_402_p1;
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
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln30_1_reg_759_pp0_iter1_reg == 1'd1) & (trunc_ln29_reg_641_pp0_iter1_reg == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_3_address0_local = buff_q_out_3_addr_reg_661_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_3_address0_local = zext_ln5_fu_402_p1;
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
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln30_1_reg_759_pp0_iter1_reg == 1'd1) & (trunc_ln29_reg_641_pp0_iter1_reg == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_address0_local = buff_q_out_addr_reg_646_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_q_out_address0_local = zext_ln5_fu_402_p1;
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
    if (((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln30_1_reg_759_pp0_iter1_reg == 1'd1) & (trunc_ln29_reg_641_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_342_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln29_fu_354_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_520_p2 = (select_ln5_reg_631 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_769 = ((icmp_ln29_reg_627 == 1'd0) & (first_iter_0_reg_637 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln31_fu_484_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln31_fu_484_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln31_fu_484_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln31_fu_484_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln31_fu_484_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln31_fu_484_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln31_fu_484_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln31_fu_484_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_p_1_address0 = zext_ln5_1_fu_424_p1;
assign buff_p_1_ce0 = buff_p_1_ce0_local;
assign buff_p_2_address0 = zext_ln5_1_fu_424_p1;
assign buff_p_2_ce0 = buff_p_2_ce0_local;
assign buff_p_3_address0 = zext_ln5_1_fu_424_p1;
assign buff_p_3_ce0 = buff_p_3_ce0_local;
assign buff_p_address0 = zext_ln5_1_fu_424_p1;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_q_out_1_address0 = buff_q_out_1_address0_local;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_1_d0 = add1_reg_778;
assign buff_q_out_1_we0 = buff_q_out_1_we0_local;
assign buff_q_out_2_address0 = buff_q_out_2_address0_local;
assign buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
assign buff_q_out_2_d0 = add1_reg_778;
assign buff_q_out_2_we0 = buff_q_out_2_we0_local;
assign buff_q_out_3_address0 = buff_q_out_3_address0_local;
assign buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
assign buff_q_out_3_d0 = add1_reg_778;
assign buff_q_out_3_we0 = buff_q_out_3_we0_local;
assign buff_q_out_address0 = buff_q_out_address0_local;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = add1_reg_778;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign first_iter_0_fu_382_p2 = ((select_ln5_fu_366_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2841_p_ce = 1'b1;
assign grp_fu_2841_p_din0 = empty_fu_98;
assign grp_fu_2841_p_din1 = mul1_reg_768;
assign grp_fu_2841_p_opcode = 2'd0;
assign grp_fu_2845_p_ce = 1'b1;
assign grp_fu_2845_p_din0 = tmp_5_reg_763;
assign grp_fu_2845_p_din1 = tmp_6_reg_754;
assign icmp_ln29_fu_336_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_525_p2 = ((add_ln30_fu_520_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_360_p2 = ((ap_sig_allocacmp_j_1_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_392_p4 = {{select_ln29_fu_374_p3[5:2]}};
assign lshr_ln5_8_fu_414_p4 = {{select_ln5_fu_366_p3[5:2]}};
assign select_ln29_fu_374_p3 = ((icmp_ln30_fu_360_p2[0:0] == 1'b1) ? add_ln29_fu_354_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_366_p3 = ((icmp_ln30_fu_360_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_4_fu_478_p3 = {{tmp_s_reg_679}, {lshr_ln5_8_reg_674}};
assign tmp_5_fu_564_p2 = ((trunc_ln29_1_reg_666[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign tmp_5_fu_564_p4 = ((trunc_ln29_1_reg_666[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign tmp_5_fu_564_p6 = ((trunc_ln29_1_reg_666[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign tmp_5_fu_564_p8 = ((trunc_ln29_1_reg_666[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign tmp_5_fu_564_p9 = 'bx;
assign tmp_6_fu_496_p10 = select_ln5_reg_631[1:0];
assign tmp_6_fu_496_p9 = 'bx;
assign tmp_fu_452_p9 = 'bx;
assign trunc_ln29_1_fu_410_p1 = select_ln29_fu_374_p3[0:0];
assign trunc_ln29_fu_388_p1 = select_ln29_fu_374_p3[1:0];
assign trunc_ln30_fu_475_p1 = select_ln5_reg_631[1:0];
assign zext_ln31_fu_484_p1 = tmp_4_fu_478_p3;
assign zext_ln5_1_fu_424_p1 = lshr_ln5_8_fu_414_p4;
assign zext_ln5_fu_402_p1 = lshr_ln5_5_fu_392_p4;
endmodule 