
module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,grp_fu_364_p_din0,grp_fu_364_p_din1,grp_fu_364_p_opcode,grp_fu_364_p_dout0,grp_fu_364_p_ce,grp_fu_368_p_din0,grp_fu_368_p_din1,grp_fu_368_p_dout0,grp_fu_368_p_ce);  
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
output  [9:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [31:0] grp_fu_364_p_din0;
output  [31:0] grp_fu_364_p_din1;
output  [1:0] grp_fu_364_p_opcode;
input  [31:0] grp_fu_364_p_dout0;
output   grp_fu_364_p_ce;
output  [31:0] grp_fu_368_p_din0;
output  [31:0] grp_fu_368_p_din1;
input  [31:0] grp_fu_368_p_dout0;
output   grp_fu_368_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_672;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_313_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln27_reg_672_pp0_iter1_reg;
wire   [0:0] icmp_ln28_fu_328_p2;
reg   [0:0] icmp_ln28_reg_676;
wire   [0:0] and_ln5_fu_346_p2;
reg   [0:0] and_ln5_reg_682;
wire   [6:0] k_mid2_fu_358_p3;
reg   [6:0] k_mid2_reg_687;
wire   [0:0] first_iter_1_fu_437_p2;
reg   [0:0] first_iter_1_reg_695;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] first_iter_1_reg_695_pp0_iter1_reg;
wire   [1:0] trunc_ln28_1_fu_442_p1;
reg   [1:0] trunc_ln28_1_reg_699;
reg   [1:0] trunc_ln28_1_reg_699_pp0_iter1_reg;
reg   [1:0] trunc_ln28_1_reg_699_pp0_iter2_reg;
reg   [9:0] tmp1_addr_1_reg_704;
reg   [9:0] tmp1_addr_1_reg_704_pp0_iter1_reg;
reg   [9:0] tmp1_addr_1_reg_704_pp0_iter2_reg;
reg   [9:0] tmp1_1_addr_1_reg_709;
reg   [9:0] tmp1_1_addr_1_reg_709_pp0_iter1_reg;
reg   [9:0] tmp1_1_addr_1_reg_709_pp0_iter2_reg;
reg   [9:0] tmp1_2_addr_1_reg_714;
reg   [9:0] tmp1_2_addr_1_reg_714_pp0_iter1_reg;
reg   [9:0] tmp1_2_addr_1_reg_714_pp0_iter2_reg;
reg   [9:0] tmp1_3_addr_1_reg_719;
reg   [9:0] tmp1_3_addr_1_reg_719_pp0_iter1_reg;
reg   [9:0] tmp1_3_addr_1_reg_719_pp0_iter2_reg;
wire   [0:0] icmp_ln30_1_fu_518_p2;
reg   [0:0] icmp_ln30_1_reg_764;
reg   [0:0] icmp_ln30_1_reg_764_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_764_pp0_iter2_reg;
wire   [31:0] tmp_fu_539_p11;
reg   [31:0] tmp_reg_768;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_2_fu_565_p11;
reg   [31:0] tmp_2_reg_773;
wire   [31:0] tmp_3_fu_589_p11;
reg   [31:0] tmp_3_reg_778;
reg   [31:0] mul_reg_783;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul4_reg_788;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_798;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] tmp_5_cast_fu_464_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_fu_489_p1;
wire   [63:0] zext_ln31_1_fu_505_p1;
reg   [6:0] k_fu_88;
wire   [6:0] add_ln30_fu_513_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_92;
wire   [6:0] select_ln28_fu_426_p3;
reg   [13:0] indvar_flatten9_fu_96;
wire   [13:0] select_ln28_1_fu_372_p3;
reg   [6:0] i_1_fu_100;
wire   [6:0] select_ln27_fu_409_p3;
reg   [18:0] indvar_flatten23_fu_104;
wire   [18:0] add_ln27_1_fu_319_p2;
reg   [31:0] empty_fu_108;
wire    ap_block_pp0_stage4;
reg    tmp1_ce0_local;
reg   [9:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage3;
reg    tmp1_1_ce0_local;
reg   [9:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [9:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [9:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_3_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_278_p0;
reg   [31:0] grp_fu_278_p1;
wire   [0:0] icmp_ln30_fu_340_p2;
wire   [0:0] xor_ln5_fu_334_p2;
wire   [0:0] empty_42_fu_352_p2;
wire   [13:0] add_ln28_1_fu_366_p2;
wire   [6:0] add_ln27_fu_396_p2;
wire   [6:0] select_ln5_fu_402_p3;
wire   [6:0] add_ln28_fu_420_p2;
wire   [5:0] trunc_ln28_fu_416_p1;
wire   [3:0] lshr_ln5_1_fu_446_p4;
wire   [9:0] tmp_5_fu_456_p3;
wire   [3:0] lshr_ln5_3_fu_472_p4;
wire   [9:0] tmp_7_fu_481_p3;
wire   [5:0] empty_43_fu_433_p1;
wire   [9:0] tmp_8_fu_497_p3;
wire   [31:0] tmp_fu_539_p9;
wire   [31:0] tmp_2_fu_565_p9;
wire   [1:0] trunc_ln30_fu_562_p1;
wire   [31:0] tmp_3_fu_589_p9;
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
wire   [1:0] tmp_fu_539_p1;
wire   [1:0] tmp_fu_539_p3;
wire  signed [1:0] tmp_fu_539_p5;
wire  signed [1:0] tmp_fu_539_p7;
wire   [1:0] tmp_2_fu_565_p1;
wire   [1:0] tmp_2_fu_565_p3;
wire  signed [1:0] tmp_2_fu_565_p5;
wire  signed [1:0] tmp_2_fu_565_p7;
wire   [1:0] tmp_3_fu_589_p1;
wire   [1:0] tmp_3_fu_589_p3;
wire  signed [1:0] tmp_3_fu_589_p5;
wire  signed [1:0] tmp_3_fu_589_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_88 = 7'd0;
#0 j_fu_92 = 7'd0;
#0 indvar_flatten9_fu_96 = 14'd0;
#0 i_1_fu_100 = 7'd0;
#0 indvar_flatten23_fu_104 = 19'd0;
#0 empty_fu_108 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U43(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_539_p9),.sel(trunc_ln28_1_reg_699),.dout(tmp_fu_539_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U44(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.def(tmp_2_fu_565_p9),.sel(trunc_ln30_fu_562_p1),.dout(tmp_2_fu_565_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U45(.din0(buff_B0_q0),.din1(buff_B0_1_q0),.din2(buff_B0_2_q0),.din3(buff_B0_3_q0),.def(tmp_3_fu_589_p9),.sel(trunc_ln30_fu_562_p1),.dout(tmp_3_fu_589_p11));
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
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_695_pp0_iter1_reg == 1'd1))) begin
            empty_fu_108 <= tmp_reg_768;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_108 <= add_reg_798;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_100 <= 7'd0;
    end else if (((icmp_ln27_reg_672 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_100 <= select_ln27_fu_409_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten23_fu_104 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_313_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten23_fu_104 <= add_ln27_1_fu_319_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten9_fu_96 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_313_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten9_fu_96 <= select_ln28_1_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_92 <= 7'd0;
    end else if (((icmp_ln27_reg_672 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_92 <= select_ln28_fu_426_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_88 <= 7'd0;
    end else if (((icmp_ln27_reg_672 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_88 <= add_ln30_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_798 <= grp_fu_364_p_dout0;
        first_iter_1_reg_695 <= first_iter_1_fu_437_p2;
        first_iter_1_reg_695_pp0_iter1_reg <= first_iter_1_reg_695;
        icmp_ln30_1_reg_764 <= icmp_ln30_1_fu_518_p2;
        icmp_ln30_1_reg_764_pp0_iter1_reg <= icmp_ln30_1_reg_764;
        icmp_ln30_1_reg_764_pp0_iter2_reg <= icmp_ln30_1_reg_764_pp0_iter1_reg;
        tmp1_1_addr_1_reg_709 <= tmp_5_cast_fu_464_p1;
        tmp1_1_addr_1_reg_709_pp0_iter1_reg <= tmp1_1_addr_1_reg_709;
        tmp1_1_addr_1_reg_709_pp0_iter2_reg <= tmp1_1_addr_1_reg_709_pp0_iter1_reg;
        tmp1_2_addr_1_reg_714 <= tmp_5_cast_fu_464_p1;
        tmp1_2_addr_1_reg_714_pp0_iter1_reg <= tmp1_2_addr_1_reg_714;
        tmp1_2_addr_1_reg_714_pp0_iter2_reg <= tmp1_2_addr_1_reg_714_pp0_iter1_reg;
        tmp1_3_addr_1_reg_719 <= tmp_5_cast_fu_464_p1;
        tmp1_3_addr_1_reg_719_pp0_iter1_reg <= tmp1_3_addr_1_reg_719;
        tmp1_3_addr_1_reg_719_pp0_iter2_reg <= tmp1_3_addr_1_reg_719_pp0_iter1_reg;
        tmp1_addr_1_reg_704 <= tmp_5_cast_fu_464_p1;
        tmp1_addr_1_reg_704_pp0_iter1_reg <= tmp1_addr_1_reg_704;
        tmp1_addr_1_reg_704_pp0_iter2_reg <= tmp1_addr_1_reg_704_pp0_iter1_reg;
        trunc_ln28_1_reg_699 <= trunc_ln28_1_fu_442_p1;
        trunc_ln28_1_reg_699_pp0_iter1_reg <= trunc_ln28_1_reg_699;
        trunc_ln28_1_reg_699_pp0_iter2_reg <= trunc_ln28_1_reg_699_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_682 <= and_ln5_fu_346_p2;
        icmp_ln27_reg_672 <= icmp_ln27_fu_313_p2;
        icmp_ln27_reg_672_pp0_iter1_reg <= icmp_ln27_reg_672;
        icmp_ln28_reg_676 <= icmp_ln28_fu_328_p2;
        k_mid2_reg_687 <= k_mid2_fu_358_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul4_reg_788 <= grp_fu_368_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_783 <= grp_fu_368_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_2_reg_773 <= tmp_2_fu_565_p11;
        tmp_3_reg_778 <= tmp_3_fu_589_p11;
        tmp_reg_768 <= tmp_fu_539_p11;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_672 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln27_reg_672_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_278_p0 = mul_reg_783;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_278_p0 = tmp_2_reg_773;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_278_p1 = tmp_3_reg_778;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_278_p1 = alpha;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_709_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_5_cast_fu_464_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_764_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln28_1_reg_699_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_714_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_2_address0_local = tmp_5_cast_fu_464_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_764_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln28_1_reg_699_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_719_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_3_address0_local = tmp_5_cast_fu_464_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_764_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln28_1_reg_699_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_address0_local = tmp1_addr_1_reg_704_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_5_cast_fu_464_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln30_1_reg_764_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln28_1_reg_699_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
assign add_ln27_1_fu_319_p2 = (indvar_flatten23_fu_104 + 19'd1);
assign add_ln27_fu_396_p2 = (i_1_fu_100 + 7'd1);
assign add_ln28_1_fu_366_p2 = (indvar_flatten9_fu_96 + 14'd1);
assign add_ln28_fu_420_p2 = (select_ln5_fu_402_p3 + 7'd1);
assign add_ln30_fu_513_p2 = (k_mid2_reg_687 + 7'd1);
assign and_ln5_fu_346_p2 = (xor_ln5_fu_334_p2 & icmp_ln30_fu_340_p2);
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
assign buff_A0_1_address0 = zext_ln31_fu_489_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln31_fu_489_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln31_fu_489_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_489_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_505_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_2_address0 = zext_ln31_1_fu_505_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_3_address0 = zext_ln31_1_fu_505_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_505_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_42_fu_352_p2 = (icmp_ln28_fu_328_p2 | and_ln5_fu_346_p2);
assign empty_43_fu_433_p1 = select_ln28_fu_426_p3[5:0];
assign first_iter_1_fu_437_p2 = ((k_mid2_reg_687 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_364_p_ce = 1'b1;
assign grp_fu_364_p_din0 = empty_fu_108;
assign grp_fu_364_p_din1 = mul4_reg_788;
assign grp_fu_364_p_opcode = 2'd0;
assign grp_fu_368_p_ce = 1'b1;
assign grp_fu_368_p_din0 = grp_fu_278_p0;
assign grp_fu_368_p_din1 = grp_fu_278_p1;
assign icmp_ln27_fu_313_p2 = ((indvar_flatten23_fu_104 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_328_p2 = ((indvar_flatten9_fu_96 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_518_p2 = ((add_ln30_fu_513_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_340_p2 = ((k_fu_88 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_358_p3 = ((empty_42_fu_352_p2[0:0] == 1'b1) ? 7'd0 : k_fu_88);
assign lshr_ln5_1_fu_446_p4 = {{select_ln28_fu_426_p3[5:2]}};
assign lshr_ln5_3_fu_472_p4 = {{k_mid2_reg_687[5:2]}};
assign select_ln27_fu_409_p3 = ((icmp_ln28_reg_676[0:0] == 1'b1) ? add_ln27_fu_396_p2 : i_1_fu_100);
assign select_ln28_1_fu_372_p3 = ((icmp_ln28_fu_328_p2[0:0] == 1'b1) ? 14'd1 : add_ln28_1_fu_366_p2);
assign select_ln28_fu_426_p3 = ((and_ln5_reg_682[0:0] == 1'b1) ? add_ln28_fu_420_p2 : select_ln5_fu_402_p3);
assign select_ln5_fu_402_p3 = ((icmp_ln28_reg_676[0:0] == 1'b1) ? 7'd0 : j_fu_92);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_798;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = add_reg_798;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = add_reg_798;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_798;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_2_fu_565_p9 = 'bx;
assign tmp_3_fu_589_p9 = 'bx;
assign tmp_5_cast_fu_464_p1 = tmp_5_fu_456_p3;
assign tmp_5_fu_456_p3 = {{trunc_ln28_fu_416_p1}, {lshr_ln5_1_fu_446_p4}};
assign tmp_7_fu_481_p3 = {{trunc_ln28_fu_416_p1}, {lshr_ln5_3_fu_472_p4}};
assign tmp_8_fu_497_p3 = {{empty_43_fu_433_p1}, {lshr_ln5_3_fu_472_p4}};
assign tmp_fu_539_p9 = 'bx;
assign trunc_ln28_1_fu_442_p1 = select_ln28_fu_426_p3[1:0];
assign trunc_ln28_fu_416_p1 = select_ln27_fu_409_p3[5:0];
assign trunc_ln30_fu_562_p1 = k_mid2_reg_687[1:0];
assign xor_ln5_fu_334_p2 = (icmp_ln28_fu_328_p2 ^ 1'd1);
assign zext_ln31_1_fu_505_p1 = tmp_8_fu_497_p3;
assign zext_ln31_fu_489_p1 = tmp_7_fu_481_p3;
endmodule 
