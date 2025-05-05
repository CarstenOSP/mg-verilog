module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,grp_fu_412_p_din0,grp_fu_412_p_din1,grp_fu_412_p_opcode,grp_fu_412_p_dout0,grp_fu_412_p_ce,grp_fu_416_p_din0,grp_fu_416_p_din1,grp_fu_416_p_dout0,grp_fu_416_p_ce); 
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
output  [10:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [10:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [10:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [10:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
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
output  [31:0] grp_fu_412_p_din0;
output  [31:0] grp_fu_412_p_din1;
output  [1:0] grp_fu_412_p_opcode;
input  [31:0] grp_fu_412_p_dout0;
output   grp_fu_412_p_ce;
output  [31:0] grp_fu_416_p_din0;
output  [31:0] grp_fu_416_p_din1;
input  [31:0] grp_fu_416_p_dout0;
output   grp_fu_416_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln27_reg_701;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_290;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_296;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_340_p2;
wire   [0:0] icmp_ln28_fu_352_p2;
reg   [0:0] icmp_ln28_reg_705;
wire   [0:0] first_iter_1_fu_467_p2;
reg   [0:0] first_iter_1_reg_713;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln27_fu_473_p1;
reg   [1:0] trunc_ln27_reg_717;
reg   [1:0] trunc_ln27_reg_717_pp0_iter1_reg;
wire   [0:0] trunc_ln28_1_fu_477_p1;
reg   [0:0] trunc_ln28_1_reg_723;
reg   [0:0] trunc_ln28_1_reg_723_pp0_iter1_reg;
reg   [8:0] tmp1_addr_1_reg_728;
reg   [8:0] tmp1_addr_1_reg_728_pp0_iter1_reg;
reg   [8:0] tmp1_1_addr_1_reg_733;
reg   [8:0] tmp1_1_addr_1_reg_733_pp0_iter1_reg;
reg   [8:0] tmp1_2_addr_1_reg_738;
reg   [8:0] tmp1_2_addr_1_reg_738_pp0_iter1_reg;
reg   [8:0] tmp1_3_addr_1_reg_743;
reg   [8:0] tmp1_3_addr_1_reg_743_pp0_iter1_reg;
reg   [8:0] tmp1_4_addr_1_reg_748;
reg   [8:0] tmp1_4_addr_1_reg_748_pp0_iter1_reg;
reg   [8:0] tmp1_5_addr_1_reg_753;
reg   [8:0] tmp1_5_addr_1_reg_753_pp0_iter1_reg;
reg   [8:0] tmp1_6_addr_1_reg_758;
reg   [8:0] tmp1_6_addr_1_reg_758_pp0_iter1_reg;
reg   [8:0] tmp1_7_addr_1_reg_763;
reg   [8:0] tmp1_7_addr_1_reg_763_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_788;
reg   [0:0] tmp_3_reg_788_pp0_iter1_reg;
wire   [31:0] select_ln31_fu_634_p3;
reg   [31:0] select_ln31_reg_792;
reg   [31:0] buff_A0_load_reg_797;
reg   [31:0] buff_B0_load_reg_802;
reg   [31:0] buff_A0_1_load_reg_807;
reg   [31:0] buff_B0_1_load_reg_812;
reg   [31:0] mul_1_reg_817;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul74_1_reg_827;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_10_cast_fu_509_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_fu_539_p1;
wire   [63:0] zext_ln31_1_fu_553_p1;
reg   [6:0] k_fu_96;
wire   [6:0] add_ln30_fu_559_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_100;
wire   [6:0] select_ln28_fu_455_p3;
reg   [12:0] indvar_flatten7_fu_104;
wire   [12:0] select_ln28_1_fu_364_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten7_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_1_fu_108;
wire   [6:0] select_ln27_fu_430_p3;
reg   [17:0] indvar_flatten21_fu_112;
wire   [17:0] add_ln27_1_fu_346_p2;
reg   [17:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [31:0] empty_fu_116;
wire    ap_block_pp0_stage11;
reg    tmp1_ce0_local;
reg   [8:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage10;
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
reg    buff_B0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_B0_1_ce0_local;
reg   [31:0] grp_fu_282_p0;
reg   [31:0] grp_fu_282_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_286_p0;
reg   [31:0] grp_fu_286_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [12:0] add_ln28_1_fu_358_p2;
wire   [0:0] tmp_2_fu_411_p3;
wire   [0:0] xor_ln30_fu_419_p2;
wire   [6:0] add_ln27_fu_391_p2;
wire   [6:0] select_ln5_fu_397_p3;
wire   [0:0] or_ln5_fu_425_p2;
wire   [6:0] select_ln5_1_fu_404_p3;
wire   [6:0] add_ln28_fu_441_p2;
wire   [6:0] k_mid2_fu_447_p3;
wire   [3:0] tmp_9_fu_491_p4;
wire   [4:0] lshr_ln5_4_fu_481_p4;
wire   [8:0] tmp_10_fu_501_p3;
wire   [5:0] trunc_ln28_fu_437_p1;
wire   [4:0] lshr_ln5_7_fu_521_p4;
wire   [10:0] tmp_11_fu_531_p3;
wire   [5:0] empty_13_fu_463_p1;
wire   [10:0] tmp_12_fu_545_p3;
wire   [31:0] tmp_fu_588_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_1_fu_611_p9;
wire   [31:0] tmp_1_fu_611_p11;
wire   [31:0] tmp_fu_588_p11;
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
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_928;
wire   [1:0] tmp_fu_588_p1;
wire   [1:0] tmp_fu_588_p3;
wire  signed [1:0] tmp_fu_588_p5;
wire  signed [1:0] tmp_fu_588_p7;
wire   [1:0] tmp_1_fu_611_p1;
wire   [1:0] tmp_1_fu_611_p3;
wire  signed [1:0] tmp_1_fu_611_p5;
wire  signed [1:0] tmp_1_fu_611_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_96 = 7'd0;
#0 j_fu_100 = 7'd0;
#0 indvar_flatten7_fu_104 = 13'd0;
#0 i_1_fu_108 = 7'd0;
#0 indvar_flatten21_fu_112 = 18'd0;
#0 empty_fu_116 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U47(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_588_p9),.sel(trunc_ln27_reg_717),.dout(tmp_fu_588_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U48(.din0(tmp1_4_q0),.din1(tmp1_5_q0),.din2(tmp1_6_q0),.din3(tmp1_7_q0),.def(tmp_1_fu_611_p9),.sel(trunc_ln27_reg_717),.dout(tmp_1_fu_611_p11));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_928)) begin
            empty_fu_116 <= select_ln31_reg_792;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_116 <= reg_296;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_108 <= 7'd0;
    end else if (((icmp_ln27_reg_701 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_108 <= select_ln27_fu_430_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_340_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten21_fu_112 <= add_ln27_1_fu_346_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_112 <= 18'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_340_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten7_fu_104 <= select_ln28_1_fu_364_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_104 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_100 <= 7'd0;
    end else if (((icmp_ln27_reg_701 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_100 <= select_ln28_fu_455_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_96 <= 7'd0;
    end else if (((icmp_ln27_reg_701 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_96 <= add_ln30_fu_559_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_load_reg_807 <= buff_A0_1_q0;
        buff_A0_load_reg_797 <= buff_A0_q0;
        buff_B0_1_load_reg_812 <= buff_B0_1_q0;
        buff_B0_load_reg_802 <= buff_B0_q0;
        select_ln31_reg_792 <= select_ln31_fu_634_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_713 <= first_iter_1_fu_467_p2;
        tmp1_1_addr_1_reg_733 <= tmp_10_cast_fu_509_p1;
        tmp1_1_addr_1_reg_733_pp0_iter1_reg <= tmp1_1_addr_1_reg_733;
        tmp1_2_addr_1_reg_738 <= tmp_10_cast_fu_509_p1;
        tmp1_2_addr_1_reg_738_pp0_iter1_reg <= tmp1_2_addr_1_reg_738;
        tmp1_3_addr_1_reg_743 <= tmp_10_cast_fu_509_p1;
        tmp1_3_addr_1_reg_743_pp0_iter1_reg <= tmp1_3_addr_1_reg_743;
        tmp1_4_addr_1_reg_748 <= tmp_10_cast_fu_509_p1;
        tmp1_4_addr_1_reg_748_pp0_iter1_reg <= tmp1_4_addr_1_reg_748;
        tmp1_5_addr_1_reg_753 <= tmp_10_cast_fu_509_p1;
        tmp1_5_addr_1_reg_753_pp0_iter1_reg <= tmp1_5_addr_1_reg_753;
        tmp1_6_addr_1_reg_758 <= tmp_10_cast_fu_509_p1;
        tmp1_6_addr_1_reg_758_pp0_iter1_reg <= tmp1_6_addr_1_reg_758;
        tmp1_7_addr_1_reg_763 <= tmp_10_cast_fu_509_p1;
        tmp1_7_addr_1_reg_763_pp0_iter1_reg <= tmp1_7_addr_1_reg_763;
        tmp1_addr_1_reg_728 <= tmp_10_cast_fu_509_p1;
        tmp1_addr_1_reg_728_pp0_iter1_reg <= tmp1_addr_1_reg_728;
        tmp_3_reg_788 <= add_ln30_fu_559_p2[32'd6];
        tmp_3_reg_788_pp0_iter1_reg <= tmp_3_reg_788;
        trunc_ln27_reg_717 <= trunc_ln27_fu_473_p1;
        trunc_ln27_reg_717_pp0_iter1_reg <= trunc_ln27_reg_717;
        trunc_ln28_1_reg_723 <= trunc_ln28_1_fu_477_p1;
        trunc_ln28_1_reg_723_pp0_iter1_reg <= trunc_ln28_1_reg_723;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_701 <= icmp_ln27_fu_340_p2;
        icmp_ln28_reg_705 <= icmp_ln28_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul74_1_reg_827 <= grp_fu_416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_817 <= grp_fu_416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_290 <= grp_fu_416_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_296 <= grp_fu_412_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_701 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        ap_sig_allocacmp_indvar_flatten21_load = 18'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_load = indvar_flatten21_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_282_p0 = reg_296;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_282_p0 = empty_fu_116;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_282_p1 = mul74_1_reg_827;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_282_p1 = reg_290;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_286_p0 = mul_1_reg_817;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_286_p0 = reg_290;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_286_p0 = buff_A0_1_load_reg_807;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_286_p0 = buff_A0_load_reg_797;
        end else begin
            grp_fu_286_p0 = 'bx;
        end
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_286_p1 = buff_B0_1_load_reg_812;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_286_p1 = buff_B0_load_reg_802;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_286_p1 = alpha;
    end else begin
        grp_fu_286_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_733_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd0) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_738_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd0) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_743_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd0) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_748_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_4_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd1) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_753_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_5_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd1) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_758_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_6_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd1) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_7_address0_local = tmp1_7_addr_1_reg_763_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_7_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd1) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_address0_local = tmp1_addr_1_reg_728_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_10_cast_fu_509_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (tmp_3_reg_788_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_723_pp0_iter1_reg == 1'd0) & (trunc_ln27_reg_717_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
assign add_ln27_1_fu_346_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 18'd1);
assign add_ln27_fu_391_p2 = (i_1_fu_108 + 7'd1);
assign add_ln28_1_fu_358_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 13'd1);
assign add_ln28_fu_441_p2 = (select_ln5_fu_397_p3 + 7'd1);
assign add_ln30_fu_559_p2 = (k_mid2_fu_447_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_928 = ((icmp_ln27_reg_701 == 1'd0) & (first_iter_1_reg_713 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_fu_539_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_539_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_553_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_553_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_13_fu_463_p1 = select_ln28_fu_455_p3[5:0];
assign first_iter_1_fu_467_p2 = ((k_mid2_fu_447_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_412_p_ce = 1'b1;
assign grp_fu_412_p_din0 = grp_fu_282_p0;
assign grp_fu_412_p_din1 = grp_fu_282_p1;
assign grp_fu_412_p_opcode = 2'd0;
assign grp_fu_416_p_ce = 1'b1;
assign grp_fu_416_p_din0 = grp_fu_286_p0;
assign grp_fu_416_p_din1 = grp_fu_286_p1;
assign icmp_ln27_fu_340_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_352_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_447_p3 = ((or_ln5_fu_425_p2[0:0] == 1'b1) ? select_ln5_1_fu_404_p3 : 7'd0);
assign lshr_ln5_4_fu_481_p4 = {{select_ln28_fu_455_p3[5:1]}};
assign lshr_ln5_7_fu_521_p4 = {{k_mid2_fu_447_p3[5:1]}};
assign or_ln5_fu_425_p2 = (xor_ln30_fu_419_p2 | icmp_ln28_reg_705);
assign select_ln27_fu_430_p3 = ((icmp_ln28_reg_705[0:0] == 1'b1) ? add_ln27_fu_391_p2 : i_1_fu_108);
assign select_ln28_1_fu_364_p3 = ((icmp_ln28_fu_352_p2[0:0] == 1'b1) ? 13'd1 : add_ln28_1_fu_358_p2);
assign select_ln28_fu_455_p3 = ((or_ln5_fu_425_p2[0:0] == 1'b1) ? select_ln5_fu_397_p3 : add_ln28_fu_441_p2);
assign select_ln31_fu_634_p3 = ((trunc_ln28_1_reg_723[0:0] == 1'b1) ? tmp_1_fu_611_p11 : tmp_fu_588_p11);
assign select_ln5_1_fu_404_p3 = ((icmp_ln28_reg_705[0:0] == 1'b1) ? 7'd0 : k_fu_96);
assign select_ln5_fu_397_p3 = ((icmp_ln28_reg_705[0:0] == 1'b1) ? 7'd0 : j_fu_100);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_296;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_296;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_296;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = reg_296;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = reg_296;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = reg_296;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = reg_296;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_296;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_10_cast_fu_509_p1 = tmp_10_fu_501_p3;
assign tmp_10_fu_501_p3 = {{tmp_9_fu_491_p4}, {lshr_ln5_4_fu_481_p4}};
assign tmp_11_fu_531_p3 = {{trunc_ln28_fu_437_p1}, {lshr_ln5_7_fu_521_p4}};
assign tmp_12_fu_545_p3 = {{empty_13_fu_463_p1}, {lshr_ln5_7_fu_521_p4}};
assign tmp_1_fu_611_p9 = 'bx;
assign tmp_2_fu_411_p3 = k_fu_96[32'd6];
assign tmp_9_fu_491_p4 = {{select_ln27_fu_430_p3[5:2]}};
assign tmp_fu_588_p9 = 'bx;
assign trunc_ln27_fu_473_p1 = select_ln27_fu_430_p3[1:0];
assign trunc_ln28_1_fu_477_p1 = select_ln28_fu_455_p3[0:0];
assign trunc_ln28_fu_437_p1 = select_ln27_fu_430_p3[5:0];
assign xor_ln30_fu_419_p2 = (tmp_2_fu_411_p3 ^ 1'd1);
assign zext_ln31_1_fu_553_p1 = tmp_12_fu_545_p3;
assign zext_ln31_fu_539_p1 = tmp_11_fu_531_p3;
endmodule 