module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,grp_fu_488_p_din0,grp_fu_488_p_din1,grp_fu_488_p_opcode,grp_fu_488_p_dout0,grp_fu_488_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_dout0,grp_fu_492_p_ce); 
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
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [9:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [9:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [9:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [9:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
input  [31:0] alpha;
output  [8:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
input  [31:0] tmp1_7_q0;
output  [31:0] grp_fu_488_p_din0;
output  [31:0] grp_fu_488_p_din1;
output  [1:0] grp_fu_488_p_opcode;
input  [31:0] grp_fu_488_p_dout0;
output   grp_fu_488_p_ce;
output  [31:0] grp_fu_492_p_din0;
output  [31:0] grp_fu_492_p_din1;
input  [31:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_782;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_377_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln27_reg_782_pp0_iter1_reg;
wire   [0:0] icmp_ln28_fu_392_p2;
reg   [0:0] icmp_ln28_reg_786;
wire   [0:0] and_ln5_fu_410_p2;
reg   [0:0] and_ln5_reg_792;
wire   [6:0] k_mid2_fu_422_p3;
reg   [6:0] k_mid2_reg_797;
wire   [0:0] first_iter_1_fu_501_p2;
reg   [0:0] first_iter_1_reg_805;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] first_iter_1_reg_805_pp0_iter1_reg;
wire   [0:0] trunc_ln27_fu_506_p1;
reg   [0:0] trunc_ln27_reg_809;
reg   [0:0] trunc_ln27_reg_809_pp0_iter1_reg;
reg   [0:0] trunc_ln27_reg_809_pp0_iter2_reg;
wire   [1:0] trunc_ln28_1_fu_510_p1;
reg   [1:0] trunc_ln28_1_reg_817;
reg   [1:0] trunc_ln28_1_reg_817_pp0_iter1_reg;
reg   [1:0] trunc_ln28_1_reg_817_pp0_iter2_reg;
reg   [8:0] tmp1_addr_1_reg_822;
reg   [8:0] tmp1_addr_1_reg_822_pp0_iter1_reg;
reg   [8:0] tmp1_addr_1_reg_822_pp0_iter2_reg;
reg   [8:0] tmp1_1_addr_1_reg_827;
reg   [8:0] tmp1_1_addr_1_reg_827_pp0_iter1_reg;
reg   [8:0] tmp1_1_addr_1_reg_827_pp0_iter2_reg;
reg   [8:0] tmp1_2_addr_1_reg_832;
reg   [8:0] tmp1_2_addr_1_reg_832_pp0_iter1_reg;
reg   [8:0] tmp1_2_addr_1_reg_832_pp0_iter2_reg;
reg   [8:0] tmp1_3_addr_1_reg_837;
reg   [8:0] tmp1_3_addr_1_reg_837_pp0_iter1_reg;
reg   [8:0] tmp1_3_addr_1_reg_837_pp0_iter2_reg;
reg   [8:0] tmp1_4_addr_1_reg_842;
reg   [8:0] tmp1_4_addr_1_reg_842_pp0_iter1_reg;
reg   [8:0] tmp1_4_addr_1_reg_842_pp0_iter2_reg;
reg   [8:0] tmp1_5_addr_1_reg_847;
reg   [8:0] tmp1_5_addr_1_reg_847_pp0_iter1_reg;
reg   [8:0] tmp1_5_addr_1_reg_847_pp0_iter2_reg;
reg   [8:0] tmp1_6_addr_1_reg_852;
reg   [8:0] tmp1_6_addr_1_reg_852_pp0_iter1_reg;
reg   [8:0] tmp1_6_addr_1_reg_852_pp0_iter2_reg;
reg   [8:0] tmp1_7_addr_1_reg_857;
reg   [8:0] tmp1_7_addr_1_reg_857_pp0_iter1_reg;
reg   [8:0] tmp1_7_addr_1_reg_857_pp0_iter2_reg;
wire   [0:0] icmp_ln30_1_fu_600_p2;
reg   [0:0] icmp_ln30_1_reg_902;
reg   [0:0] icmp_ln30_1_reg_902_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_902_pp0_iter2_reg;
wire   [31:0] tmp_4_fu_649_p11;
reg   [31:0] tmp_4_reg_906;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_s_fu_675_p11;
reg   [31:0] tmp_s_reg_911;
wire   [31:0] tmp_1_fu_699_p11;
reg   [31:0] tmp_1_reg_916;
reg   [31:0] mul_reg_921;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul4_reg_926;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_936;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] tmp_6_cast_fu_542_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_fu_571_p1;
wire   [63:0] zext_ln31_1_fu_587_p1;
reg   [6:0] k_fu_100;
wire   [6:0] add_ln30_fu_595_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_104;
wire   [6:0] select_ln28_fu_490_p3;
reg   [13:0] indvar_flatten7_fu_108;
wire   [13:0] select_ln28_1_fu_436_p3;
reg   [6:0] i_1_fu_112;
wire   [6:0] select_ln27_fu_473_p3;
reg   [18:0] indvar_flatten21_fu_116;
wire   [18:0] add_ln27_1_fu_383_p2;
reg   [31:0] empty_fu_120;
wire    ap_block_pp0_stage4;
reg    tmp1_ce0_local;
reg   [8:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage3;
reg    tmp1_1_ce0_local;
reg   [8:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [8:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [8:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    tmp1_4_ce0_local;
reg   [8:0] tmp1_4_address0_local;
reg    tmp1_4_we0_local;
reg    tmp1_5_ce0_local;
reg   [8:0] tmp1_5_address0_local;
reg    tmp1_5_we0_local;
reg    tmp1_6_ce0_local;
reg   [8:0] tmp1_6_address0_local;
reg    tmp1_6_we0_local;
reg    tmp1_7_ce0_local;
reg   [8:0] tmp1_7_address0_local;
reg    tmp1_7_we0_local;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_3_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_342_p0;
reg   [31:0] grp_fu_342_p1;
wire   [0:0] icmp_ln30_fu_404_p2;
wire   [0:0] xor_ln5_fu_398_p2;
wire   [0:0] empty_11_fu_416_p2;
wire   [13:0] add_ln28_1_fu_430_p2;
wire   [6:0] add_ln27_fu_460_p2;
wire   [6:0] select_ln5_fu_466_p3;
wire   [6:0] add_ln28_fu_484_p2;
wire   [4:0] tmp_5_fu_524_p4;
wire   [3:0] lshr_ln5_4_fu_514_p4;
wire   [8:0] tmp_6_fu_534_p3;
wire   [5:0] trunc_ln28_fu_480_p1;
wire   [3:0] lshr_ln5_7_fu_554_p4;
wire   [9:0] tmp_7_fu_563_p3;
wire   [5:0] empty_12_fu_497_p1;
wire   [9:0] tmp_8_fu_579_p3;
wire   [31:0] tmp_4_fu_649_p2;
wire   [31:0] tmp_4_fu_649_p4;
wire   [31:0] tmp_4_fu_649_p6;
wire   [31:0] tmp_4_fu_649_p8;
wire   [31:0] tmp_4_fu_649_p9;
wire   [31:0] tmp_s_fu_675_p9;
wire   [1:0] trunc_ln30_fu_672_p1;
wire   [31:0] tmp_1_fu_699_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire   [1:0] tmp_4_fu_649_p1;
wire   [1:0] tmp_4_fu_649_p3;
wire  signed [1:0] tmp_4_fu_649_p5;
wire  signed [1:0] tmp_4_fu_649_p7;
wire   [1:0] tmp_s_fu_675_p1;
wire   [1:0] tmp_s_fu_675_p3;
wire  signed [1:0] tmp_s_fu_675_p5;
wire  signed [1:0] tmp_s_fu_675_p7;
wire   [1:0] tmp_1_fu_699_p1;
wire   [1:0] tmp_1_fu_699_p3;
wire  signed [1:0] tmp_1_fu_699_p5;
wire  signed [1:0] tmp_1_fu_699_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_100 = 7'd0;
#0 j_fu_104 = 7'd0;
#0 indvar_flatten7_fu_108 = 14'd0;
#0 i_1_fu_112 = 7'd0;
#0 indvar_flatten21_fu_116 = 19'd0;
#0 empty_fu_120 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U59(.din0(tmp_4_fu_649_p2),.din1(tmp_4_fu_649_p4),.din2(tmp_4_fu_649_p6),.din3(tmp_4_fu_649_p8),.def(tmp_4_fu_649_p9),.sel(trunc_ln28_1_reg_817),.dout(tmp_4_fu_649_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U60(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.def(tmp_s_fu_675_p9),.sel(trunc_ln30_fu_672_p1),.dout(tmp_s_fu_675_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U61(.din0(buff_B0_q0),.din1(buff_B0_1_q0),.din2(buff_B0_2_q0),.din3(buff_B0_3_q0),.def(tmp_1_fu_699_p9),.sel(trunc_ln30_fu_672_p1),.dout(tmp_1_fu_699_p11));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((first_iter_1_reg_805_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_120 <= tmp_4_reg_906;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_120 <= add_reg_936;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_112 <= 7'd0;
    end else if (((icmp_ln27_reg_782 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_112 <= select_ln27_fu_473_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_116 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_377_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_116 <= add_ln27_1_fu_383_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_108 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_377_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_108 <= select_ln28_1_fu_436_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_104 <= 7'd0;
    end else if (((icmp_ln27_reg_782 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_104 <= select_ln28_fu_490_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_100 <= 7'd0;
    end else if (((icmp_ln27_reg_782 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_100 <= add_ln30_fu_595_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_936 <= grp_fu_488_p_dout0;
        first_iter_1_reg_805 <= first_iter_1_fu_501_p2;
        first_iter_1_reg_805_pp0_iter1_reg <= first_iter_1_reg_805;
        icmp_ln30_1_reg_902 <= icmp_ln30_1_fu_600_p2;
        icmp_ln30_1_reg_902_pp0_iter1_reg <= icmp_ln30_1_reg_902;
        icmp_ln30_1_reg_902_pp0_iter2_reg <= icmp_ln30_1_reg_902_pp0_iter1_reg;
        tmp1_1_addr_1_reg_827 <= tmp_6_cast_fu_542_p1;
        tmp1_1_addr_1_reg_827_pp0_iter1_reg <= tmp1_1_addr_1_reg_827;
        tmp1_1_addr_1_reg_827_pp0_iter2_reg <= tmp1_1_addr_1_reg_827_pp0_iter1_reg;
        tmp1_2_addr_1_reg_832 <= tmp_6_cast_fu_542_p1;
        tmp1_2_addr_1_reg_832_pp0_iter1_reg <= tmp1_2_addr_1_reg_832;
        tmp1_2_addr_1_reg_832_pp0_iter2_reg <= tmp1_2_addr_1_reg_832_pp0_iter1_reg;
        tmp1_3_addr_1_reg_837 <= tmp_6_cast_fu_542_p1;
        tmp1_3_addr_1_reg_837_pp0_iter1_reg <= tmp1_3_addr_1_reg_837;
        tmp1_3_addr_1_reg_837_pp0_iter2_reg <= tmp1_3_addr_1_reg_837_pp0_iter1_reg;
        tmp1_4_addr_1_reg_842 <= tmp_6_cast_fu_542_p1;
        tmp1_4_addr_1_reg_842_pp0_iter1_reg <= tmp1_4_addr_1_reg_842;
        tmp1_4_addr_1_reg_842_pp0_iter2_reg <= tmp1_4_addr_1_reg_842_pp0_iter1_reg;
        tmp1_5_addr_1_reg_847 <= tmp_6_cast_fu_542_p1;
        tmp1_5_addr_1_reg_847_pp0_iter1_reg <= tmp1_5_addr_1_reg_847;
        tmp1_5_addr_1_reg_847_pp0_iter2_reg <= tmp1_5_addr_1_reg_847_pp0_iter1_reg;
        tmp1_6_addr_1_reg_852 <= tmp_6_cast_fu_542_p1;
        tmp1_6_addr_1_reg_852_pp0_iter1_reg <= tmp1_6_addr_1_reg_852;
        tmp1_6_addr_1_reg_852_pp0_iter2_reg <= tmp1_6_addr_1_reg_852_pp0_iter1_reg;
        tmp1_7_addr_1_reg_857 <= tmp_6_cast_fu_542_p1;
        tmp1_7_addr_1_reg_857_pp0_iter1_reg <= tmp1_7_addr_1_reg_857;
        tmp1_7_addr_1_reg_857_pp0_iter2_reg <= tmp1_7_addr_1_reg_857_pp0_iter1_reg;
        tmp1_addr_1_reg_822 <= tmp_6_cast_fu_542_p1;
        tmp1_addr_1_reg_822_pp0_iter1_reg <= tmp1_addr_1_reg_822;
        tmp1_addr_1_reg_822_pp0_iter2_reg <= tmp1_addr_1_reg_822_pp0_iter1_reg;
        trunc_ln27_reg_809 <= trunc_ln27_fu_506_p1;
        trunc_ln27_reg_809_pp0_iter1_reg <= trunc_ln27_reg_809;
        trunc_ln27_reg_809_pp0_iter2_reg <= trunc_ln27_reg_809_pp0_iter1_reg;
        trunc_ln28_1_reg_817 <= trunc_ln28_1_fu_510_p1;
        trunc_ln28_1_reg_817_pp0_iter1_reg <= trunc_ln28_1_reg_817;
        trunc_ln28_1_reg_817_pp0_iter2_reg <= trunc_ln28_1_reg_817_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_792 <= and_ln5_fu_410_p2;
        icmp_ln27_reg_782 <= icmp_ln27_fu_377_p2;
        icmp_ln27_reg_782_pp0_iter1_reg <= icmp_ln27_reg_782;
        icmp_ln28_reg_786 <= icmp_ln28_fu_392_p2;
        k_mid2_reg_797 <= k_mid2_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul4_reg_926 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_921 <= grp_fu_492_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_1_reg_916 <= tmp_1_fu_699_p11;
        tmp_4_reg_906 <= tmp_4_fu_649_p11;
        tmp_s_reg_911 <= tmp_s_fu_675_p11;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_782 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (icmp_ln27_reg_782_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p0 = mul_reg_921;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_342_p0 = tmp_s_reg_911;
    end else begin
        grp_fu_342_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p1 = tmp_1_reg_916;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_342_p1 = alpha;
    end else begin
        grp_fu_342_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_827_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd0) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_832_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_2_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd1) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_837_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_3_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd1) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_842_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_4_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd2) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_847_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_5_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd2) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_852_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_6_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd3) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_7_address0_local = tmp1_7_addr_1_reg_857_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_7_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd3) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_address0_local = tmp1_addr_1_reg_822_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_6_cast_fu_542_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_902_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_817_pp0_iter2_reg == 2'd0) & (trunc_ln27_reg_809_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
assign add_ln27_1_fu_383_p2 = (indvar_flatten21_fu_116 + 19'd1);
assign add_ln27_fu_460_p2 = (i_1_fu_112 + 7'd1);
assign add_ln28_1_fu_430_p2 = (indvar_flatten7_fu_108 + 14'd1);
assign add_ln28_fu_484_p2 = (select_ln5_fu_466_p3 + 7'd1);
assign add_ln30_fu_595_p2 = (k_mid2_reg_797 + 7'd1);
assign and_ln5_fu_410_p2 = (xor_ln5_fu_398_p2 & icmp_ln30_fu_404_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_fu_571_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln31_fu_571_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln31_fu_571_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_571_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_587_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_2_address0 = zext_ln31_1_fu_587_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_3_address0 = zext_ln31_1_fu_587_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_587_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_11_fu_416_p2 = (icmp_ln28_fu_392_p2 | and_ln5_fu_410_p2);
assign empty_12_fu_497_p1 = select_ln28_fu_490_p3[5:0];
assign first_iter_1_fu_501_p2 = ((k_mid2_reg_797 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_488_p_ce = 1'b1;
assign grp_fu_488_p_din0 = empty_fu_120;
assign grp_fu_488_p_din1 = mul4_reg_926;
assign grp_fu_488_p_opcode = 2'd0;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_342_p0;
assign grp_fu_492_p_din1 = grp_fu_342_p1;
assign icmp_ln27_fu_377_p2 = ((indvar_flatten21_fu_116 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_392_p2 = ((indvar_flatten7_fu_108 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_600_p2 = ((add_ln30_fu_595_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_404_p2 = ((k_fu_100 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_422_p3 = ((empty_11_fu_416_p2[0:0] == 1'b1) ? 7'd0 : k_fu_100);
assign lshr_ln5_4_fu_514_p4 = {{select_ln28_fu_490_p3[5:2]}};
assign lshr_ln5_7_fu_554_p4 = {{k_mid2_reg_797[5:2]}};
assign select_ln27_fu_473_p3 = ((icmp_ln28_reg_786[0:0] == 1'b1) ? add_ln27_fu_460_p2 : i_1_fu_112);
assign select_ln28_1_fu_436_p3 = ((icmp_ln28_fu_392_p2[0:0] == 1'b1) ? 14'd1 : add_ln28_1_fu_430_p2);
assign select_ln28_fu_490_p3 = ((and_ln5_reg_792[0:0] == 1'b1) ? add_ln28_fu_484_p2 : select_ln5_fu_466_p3);
assign select_ln5_fu_466_p3 = ((icmp_ln28_reg_786[0:0] == 1'b1) ? 7'd0 : j_fu_104);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_936;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = add_reg_936;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = add_reg_936;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = add_reg_936;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = add_reg_936;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = add_reg_936;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = add_reg_936;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_936;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_699_p9 = 'bx;
assign tmp_4_fu_649_p2 = ((trunc_ln27_reg_809[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign tmp_4_fu_649_p4 = ((trunc_ln27_reg_809[0:0] == 1'b1) ? tmp1_3_q0 : tmp1_2_q0);
assign tmp_4_fu_649_p6 = ((trunc_ln27_reg_809[0:0] == 1'b1) ? tmp1_5_q0 : tmp1_4_q0);
assign tmp_4_fu_649_p8 = ((trunc_ln27_reg_809[0:0] == 1'b1) ? tmp1_7_q0 : tmp1_6_q0);
assign tmp_4_fu_649_p9 = 'bx;
assign tmp_5_fu_524_p4 = {{select_ln27_fu_473_p3[5:1]}};
assign tmp_6_cast_fu_542_p1 = tmp_6_fu_534_p3;
assign tmp_6_fu_534_p3 = {{tmp_5_fu_524_p4}, {lshr_ln5_4_fu_514_p4}};
assign tmp_7_fu_563_p3 = {{trunc_ln28_fu_480_p1}, {lshr_ln5_7_fu_554_p4}};
assign tmp_8_fu_579_p3 = {{empty_12_fu_497_p1}, {lshr_ln5_7_fu_554_p4}};
assign tmp_s_fu_675_p9 = 'bx;
assign trunc_ln27_fu_506_p1 = select_ln27_fu_473_p3[0:0];
assign trunc_ln28_1_fu_510_p1 = select_ln28_fu_490_p3[1:0];
assign trunc_ln28_fu_480_p1 = select_ln27_fu_473_p3[5:0];
assign trunc_ln30_fu_672_p1 = k_mid2_reg_797[1:0];
assign xor_ln5_fu_398_p2 = (icmp_ln28_fu_392_p2 ^ 1'd1);
assign zext_ln31_1_fu_587_p1 = tmp_8_fu_579_p3;
assign zext_ln31_fu_571_p1 = tmp_7_fu_563_p3;
endmodule 