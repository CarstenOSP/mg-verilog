
module k3mm_k3mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,grp_fu_4120_p_din0,grp_fu_4120_p_din1,grp_fu_4120_p_opcode,grp_fu_4120_p_dout0,grp_fu_4120_p_ce,grp_fu_4124_p_din0,grp_fu_4124_p_din1,grp_fu_4124_p_dout0,grp_fu_4124_p_ce);  
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
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
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
output  [31:0] grp_fu_4120_p_din0;
output  [31:0] grp_fu_4120_p_din1;
output  [1:0] grp_fu_4120_p_opcode;
input  [31:0] grp_fu_4120_p_dout0;
output   grp_fu_4120_p_ce;
output  [31:0] grp_fu_4124_p_din0;
output  [31:0] grp_fu_4124_p_din1;
input  [31:0] grp_fu_4124_p_dout0;
output   grp_fu_4124_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln32_reg_656;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln32_fu_303_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] k_load_reg_660;
wire   [0:0] icmp_ln33_fu_318_p2;
reg   [0:0] icmp_ln33_reg_665;
wire   [0:0] and_ln10_fu_336_p2;
reg   [0:0] and_ln10_reg_672;
wire   [6:0] k_mid2_fu_406_p3;
reg   [6:0] k_mid2_reg_678;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] first_iter_1_fu_424_p2;
reg   [0:0] first_iter_1_reg_683;
wire   [1:0] trunc_ln33_2_fu_430_p1;
reg   [1:0] trunc_ln33_2_reg_687;
reg   [1:0] trunc_ln33_2_reg_687_pp0_iter1_reg;
reg   [9:0] tmp1_addr_1_reg_693;
reg   [9:0] tmp1_addr_1_reg_693_pp0_iter1_reg;
reg   [9:0] tmp1_1_addr_1_reg_698;
reg   [9:0] tmp1_1_addr_1_reg_698_pp0_iter1_reg;
reg   [9:0] tmp1_2_addr_1_reg_703;
reg   [9:0] tmp1_2_addr_1_reg_703_pp0_iter1_reg;
reg   [9:0] tmp1_3_addr_1_reg_708;
reg   [9:0] tmp1_3_addr_1_reg_708_pp0_iter1_reg;
wire   [0:0] icmp_ln34_1_fu_508_p2;
reg   [0:0] icmp_ln34_1_reg_753;
reg   [0:0] icmp_ln34_1_reg_753_pp0_iter1_reg;
wire   [31:0] tmp_fu_529_p11;
reg   [31:0] tmp_reg_757;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_69_fu_555_p11;
reg   [31:0] tmp_69_reg_762;
wire   [31:0] tmp_70_fu_579_p11;
reg   [31:0] tmp_70_reg_767;
reg   [31:0] mul_reg_772;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add_reg_782;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_137_cast_fu_452_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln35_fu_468_p1;
wire   [63:0] zext_ln35_1_fu_494_p1;
reg   [6:0] k_fu_84;
wire   [6:0] add_ln34_fu_502_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_88;
wire   [6:0] select_ln33_fu_417_p3;
reg   [13:0] indvar_flatten9_fu_92;
wire   [13:0] select_ln33_1_fu_348_p3;
reg   [6:0] i_fu_96;
wire   [6:0] select_ln32_fu_385_p3;
reg   [18:0] indvar_flatten23_fu_100;
wire   [18:0] add_ln32_1_fu_309_p2;
reg   [31:0] empty_fu_104;
wire    ap_block_pp0_stage0;
reg    tmp1_ce0_local;
reg   [9:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage7;
reg    tmp1_1_ce0_local;
reg   [9:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [9:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [9:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce0_local;
wire    ap_block_pp0_stage4;
wire   [0:0] icmp_ln34_fu_330_p2;
wire   [0:0] xor_ln10_fu_324_p2;
wire   [13:0] add_ln33_1_fu_342_p2;
wire   [6:0] add_ln32_fu_372_p2;
wire   [6:0] select_ln10_fu_378_p3;
wire   [0:0] empty_10_fu_402_p2;
wire   [6:0] add_ln33_fu_396_p2;
wire   [5:0] trunc_ln33_fu_392_p1;
wire   [3:0] lshr_ln10_1_fu_434_p4;
wire   [9:0] tmp_s_fu_444_p3;
wire   [5:0] trunc_ln33_1_fu_413_p1;
wire   [9:0] tmp_98_fu_460_p3;
wire   [3:0] lshr_ln10_3_fu_476_p4;
wire   [9:0] tmp_99_fu_486_p3;
wire   [31:0] tmp_fu_529_p9;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_69_fu_555_p9;
wire   [1:0] tmp_69_fu_555_p10;
wire   [31:0] tmp_70_fu_579_p9;
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
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
reg    ap_condition_697;
wire   [1:0] tmp_fu_529_p1;
wire   [1:0] tmp_fu_529_p3;
wire  signed [1:0] tmp_fu_529_p5;
wire  signed [1:0] tmp_fu_529_p7;
wire   [1:0] tmp_69_fu_555_p1;
wire   [1:0] tmp_69_fu_555_p3;
wire  signed [1:0] tmp_69_fu_555_p5;
wire  signed [1:0] tmp_69_fu_555_p7;
wire   [1:0] tmp_70_fu_579_p1;
wire   [1:0] tmp_70_fu_579_p3;
wire  signed [1:0] tmp_70_fu_579_p5;
wire  signed [1:0] tmp_70_fu_579_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_84 = 7'd0;
#0 j_fu_88 = 7'd0;
#0 indvar_flatten9_fu_92 = 14'd0;
#0 i_fu_96 = 7'd0;
#0 indvar_flatten23_fu_100 = 19'd0;
#0 empty_fu_104 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U551(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_529_p9),.sel(trunc_ln33_2_reg_687),.dout(tmp_fu_529_p11));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U552(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.def(tmp_69_fu_555_p9),.sel(tmp_69_fu_555_p10),.dout(tmp_69_fu_555_p11));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U553(.din0(buff_B_q0),.din1(buff_B_1_q0),.din2(buff_B_2_q0),.din3(buff_B_3_q0),.def(tmp_70_fu_579_p9),.sel(trunc_ln33_2_reg_687),.dout(tmp_70_fu_579_p11));
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        if ((1'b1 == ap_condition_697)) begin
            empty_fu_104 <= tmp_reg_757;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_104 <= add_reg_782;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_96 <= 7'd0;
    end else if (((icmp_ln32_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_96 <= select_ln32_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten23_fu_100 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten23_fu_100 <= add_ln32_1_fu_309_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten9_fu_92 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln32_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten9_fu_92 <= select_ln33_1_fu_348_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_88 <= 7'd0;
    end else if (((icmp_ln32_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_88 <= select_ln33_fu_417_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_84 <= 7'd0;
    end else if (((icmp_ln32_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_84 <= add_ln34_fu_502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_reg_782 <= grp_fu_4120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln10_reg_672 <= and_ln10_fu_336_p2;
        icmp_ln32_reg_656 <= icmp_ln32_fu_303_p2;
        icmp_ln33_reg_665 <= icmp_ln33_fu_318_p2;
        k_load_reg_660 <= k_fu_84;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        first_iter_1_reg_683 <= first_iter_1_fu_424_p2;
        icmp_ln34_1_reg_753 <= icmp_ln34_1_fu_508_p2;
        icmp_ln34_1_reg_753_pp0_iter1_reg <= icmp_ln34_1_reg_753;
        k_mid2_reg_678 <= k_mid2_fu_406_p3;
        tmp1_1_addr_1_reg_698 <= tmp_137_cast_fu_452_p1;
        tmp1_1_addr_1_reg_698_pp0_iter1_reg <= tmp1_1_addr_1_reg_698;
        tmp1_2_addr_1_reg_703 <= tmp_137_cast_fu_452_p1;
        tmp1_2_addr_1_reg_703_pp0_iter1_reg <= tmp1_2_addr_1_reg_703;
        tmp1_3_addr_1_reg_708 <= tmp_137_cast_fu_452_p1;
        tmp1_3_addr_1_reg_708_pp0_iter1_reg <= tmp1_3_addr_1_reg_708;
        tmp1_addr_1_reg_693 <= tmp_137_cast_fu_452_p1;
        tmp1_addr_1_reg_693_pp0_iter1_reg <= tmp1_addr_1_reg_693;
        trunc_ln33_2_reg_687 <= trunc_ln33_2_fu_430_p1;
        trunc_ln33_2_reg_687_pp0_iter1_reg <= trunc_ln33_2_reg_687;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_772 <= grp_fu_4124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_69_reg_762 <= tmp_69_fu_555_p11;
        tmp_70_reg_767 <= tmp_70_fu_579_p11;
        tmp_reg_757 <= tmp_fu_529_p11;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_698_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_137_cast_fu_452_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_1_reg_753_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_687_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_703_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_2_address0_local = tmp_137_cast_fu_452_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_1_reg_753_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_687_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_708_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_3_address0_local = tmp_137_cast_fu_452_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_1_reg_753_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_687_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_address0_local = tmp1_addr_1_reg_693_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_137_cast_fu_452_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_1_reg_753_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_687_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
assign add_ln32_1_fu_309_p2 = (indvar_flatten23_fu_100 + 19'd1);
assign add_ln32_fu_372_p2 = (i_fu_96 + 7'd1);
assign add_ln33_1_fu_342_p2 = (indvar_flatten9_fu_92 + 14'd1);
assign add_ln33_fu_396_p2 = (select_ln10_fu_378_p3 + 7'd1);
assign add_ln34_fu_502_p2 = (k_mid2_fu_406_p3 + 7'd1);
assign and_ln10_fu_336_p2 = (xor_ln10_fu_324_p2 & icmp_ln34_fu_330_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_697 = ((icmp_ln32_reg_656 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_683 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln35_1_fu_494_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln35_1_fu_494_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln35_1_fu_494_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln35_1_fu_494_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_1_address0 = zext_ln35_fu_468_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln35_fu_468_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln35_fu_468_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_address0 = zext_ln35_fu_468_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign empty_10_fu_402_p2 = (icmp_ln33_reg_665 | and_ln10_reg_672);
assign first_iter_1_fu_424_p2 = ((k_mid2_fu_406_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_4120_p_ce = 1'b1;
assign grp_fu_4120_p_din0 = empty_fu_104;
assign grp_fu_4120_p_din1 = mul_reg_772;
assign grp_fu_4120_p_opcode = 2'd0;
assign grp_fu_4124_p_ce = 1'b1;
assign grp_fu_4124_p_din0 = tmp_69_reg_762;
assign grp_fu_4124_p_din1 = tmp_70_reg_767;
assign icmp_ln32_fu_303_p2 = ((indvar_flatten23_fu_100 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_318_p2 = ((indvar_flatten9_fu_92 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_508_p2 = ((add_ln34_fu_502_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_330_p2 = ((k_fu_84 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_406_p3 = ((empty_10_fu_402_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_660);
assign lshr_ln10_1_fu_434_p4 = {{select_ln33_fu_417_p3[5:2]}};
assign lshr_ln10_3_fu_476_p4 = {{k_mid2_fu_406_p3[5:2]}};
assign select_ln10_fu_378_p3 = ((icmp_ln33_reg_665[0:0] == 1'b1) ? 7'd0 : j_fu_88);
assign select_ln32_fu_385_p3 = ((icmp_ln33_reg_665[0:0] == 1'b1) ? add_ln32_fu_372_p2 : i_fu_96);
assign select_ln33_1_fu_348_p3 = ((icmp_ln33_fu_318_p2[0:0] == 1'b1) ? 14'd1 : add_ln33_1_fu_342_p2);
assign select_ln33_fu_417_p3 = ((and_ln10_reg_672[0:0] == 1'b1) ? add_ln33_fu_396_p2 : select_ln10_fu_378_p3);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_782;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = add_reg_782;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = add_reg_782;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_782;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_137_cast_fu_452_p1 = tmp_s_fu_444_p3;
assign tmp_69_fu_555_p10 = k_mid2_reg_678[1:0];
assign tmp_69_fu_555_p9 = 'bx;
assign tmp_70_fu_579_p9 = 'bx;
assign tmp_98_fu_460_p3 = {{trunc_ln33_1_fu_413_p1}, {lshr_ln10_1_fu_434_p4}};
assign tmp_99_fu_486_p3 = {{trunc_ln33_fu_392_p1}, {lshr_ln10_3_fu_476_p4}};
assign tmp_fu_529_p9 = 'bx;
assign tmp_s_fu_444_p3 = {{trunc_ln33_fu_392_p1}, {lshr_ln10_1_fu_434_p4}};
assign trunc_ln33_1_fu_413_p1 = k_mid2_fu_406_p3[5:0];
assign trunc_ln33_2_fu_430_p1 = select_ln33_fu_417_p3[1:0];
assign trunc_ln33_fu_392_p1 = select_ln32_fu_385_p3[5:0];
assign xor_ln10_fu_324_p2 = (icmp_ln33_fu_318_p2 ^ 1'd1);
assign zext_ln35_1_fu_494_p1 = tmp_99_fu_486_p3;
assign zext_ln35_fu_468_p1 = tmp_98_fu_460_p3;
endmodule 
