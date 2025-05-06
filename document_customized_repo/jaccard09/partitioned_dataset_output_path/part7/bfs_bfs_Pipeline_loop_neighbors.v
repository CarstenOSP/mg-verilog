
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,tmp_end,edges_address0,edges_ce0,edges_q0,edges_address1,edges_ce1,edges_q1,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,queue_address0,queue_ce0,queue_we0,queue_d0,q_in_5_out,q_in_5_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] q_in;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
input  [63:0] tmp_end;
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
output  [11:0] edges_address1;
output   edges_ce1;
input  [63:0] edges_q1;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [7:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [63:0] q_in_5_out;
output   q_in_5_out_ap_vld;
reg ap_idle;
reg q_in_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln39_reg_730;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] q_in_3_reg_270;
reg   [63:0] q_in_5_reg_282;
reg   [63:0] q_in_7_reg_296;
reg   [7:0] reg_329;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_333;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln18_cast_fu_351_p1;
reg   [63:0] zext_ln18_cast_reg_684;
reg   [63:0] e_1_reg_689;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] level_addr_reg_697;
wire   [0:0] icmp_ln40_fu_374_p2;
reg   [0:0] icmp_ln40_reg_702;
wire   [7:0] trunc_ln41_fu_382_p1;
reg   [7:0] trunc_ln41_reg_711;
reg   [7:0] level_addr_1_reg_716;
wire   [0:0] icmp_ln40_1_fu_392_p2;
reg   [0:0] icmp_ln40_1_reg_721;
wire   [0:0] icmp_ln39_fu_421_p2;
reg   [0:0] icmp_ln39_reg_730_pp0_iter1_reg;
wire   [0:0] icmp_ln40_2_fu_427_p2;
reg   [0:0] icmp_ln40_2_reg_734;
reg   [63:0] q_in_10_reg_743;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] grp_fu_323_p2;
reg   [0:0] icmp_ln44_reg_750;
wire   [0:0] icmp_ln48_fu_446_p2;
reg   [0:0] icmp_ln48_reg_754;
wire   [7:0] trunc_ln41_1_fu_452_p1;
reg   [7:0] trunc_ln41_1_reg_759;
reg   [7:0] level_addr_2_reg_764;
wire   [7:0] trunc_ln41_2_fu_456_p1;
reg   [7:0] trunc_ln41_2_reg_769;
reg   [7:0] level_addr_3_reg_774;
wire   [0:0] icmp_ln40_3_fu_466_p2;
reg   [0:0] icmp_ln40_3_reg_779;
wire   [63:0] zext_ln16_fu_498_p1;
wire   [7:0] trunc_ln41_3_fu_502_p1;
reg   [7:0] trunc_ln41_3_reg_793;
reg   [7:0] level_addr_4_reg_798;
reg   [3:0] level_counts_addr_reg_803;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] trunc_ln51_fu_511_p1;
reg   [7:0] trunc_ln51_reg_808;
reg   [0:0] icmp_ln44_1_reg_814;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln48_1_fu_515_p2;
reg   [0:0] icmp_ln48_1_reg_818;
wire   [63:0] zext_ln16_1_fu_553_p1;
reg   [3:0] level_counts_addr_1_reg_828;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [7:0] trunc_ln51_1_fu_562_p1;
reg   [7:0] trunc_ln51_1_reg_833;
reg   [0:0] icmp_ln44_2_reg_839;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] icmp_ln48_2_fu_566_p2;
reg   [0:0] icmp_ln48_2_reg_843;
wire   [63:0] zext_ln16_2_fu_594_p1;
reg   [3:0] level_counts_addr_2_reg_853;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [7:0] trunc_ln51_2_fu_603_p1;
reg   [7:0] trunc_ln51_2_reg_858;
reg   [0:0] icmp_ln44_3_reg_864;
wire    ap_block_pp0_stage15_11001;
wire   [7:0] select_ln48_3_fu_618_p3;
reg   [7:0] select_ln48_3_reg_868;
wire   [63:0] zext_ln16_3_fu_631_p1;
reg   [3:0] level_counts_addr_3_reg_878;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_270;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_5_reg_282;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_7_reg_296;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_9_reg_310;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_9_reg_310;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] e_2_fu_386_p2;
wire   [63:0] e_3_fu_397_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] e_4_fu_460_p2;
wire   [63:0] zext_ln48_fu_487_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln47_fu_506_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln48_1_fu_543_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln47_1_fu_557_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln48_2_fu_584_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln47_2_fu_598_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln48_3_fu_635_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_3_fu_644_p1;
wire    ap_block_pp0_stage11;
reg   [63:0] e_fu_74;
wire   [63:0] e_5_fu_521_p2;
wire    ap_loop_init;
reg   [31:0] i_fu_78;
wire   [31:0] i_4_fu_432_p2;
reg   [63:0] q_in_1_fu_82;
reg    edges_ce0_local;
reg   [11:0] edges_address0_local;
reg    edges_ce1_local;
reg   [11:0] edges_address1_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_337_p2;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [7:0] queue_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_344_p2;
wire   [29:0] tmp_fu_403_p4;
wire   [31:0] i_1_fu_413_p3;
wire   [7:0] trunc_ln8_fu_471_p1;
wire   [7:0] add_ln48_fu_474_p2;
wire   [7:0] select_ln48_fu_480_p3;
wire   [7:0] q_in_11_fu_492_p2;
wire   [7:0] add_ln48_2_fu_531_p2;
wire   [7:0] select_ln48_1_fu_536_p3;
wire   [7:0] q_in_12_fu_548_p2;
wire   [7:0] add_ln48_4_fu_572_p2;
wire   [7:0] select_ln48_2_fu_577_p3;
wire   [7:0] q_in_13_fu_589_p2;
wire   [0:0] icmp_ln48_3_fu_607_p2;
wire   [7:0] add_ln48_6_fu_613_p2;
wire   [7:0] q_in_14_fu_626_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_931;
reg    ap_condition_935;
reg    ap_condition_940;
reg    ap_condition_946;
reg    ap_condition_950;
reg    ap_condition_955;
reg    ap_condition_421;
reg    ap_condition_426;
reg    ap_condition_358;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_74 = 64'd0;
#0 i_fu_78 = 32'd0;
#0 q_in_1_fu_82 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_323_p2 == 1'd0) & (icmp_ln40_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_702 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_270 <= q_in_1_fu_82;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_750 == 1'd1) & (icmp_ln40_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_270 <= zext_ln16_fu_498_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_940)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_282 <= q_in_3_reg_270;
        end else if ((1'b1 == ap_condition_935)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_282 <= ap_phi_reg_pp0_iter0_q_in_3_reg_270;
        end else if ((1'b1 == ap_condition_931)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_282 <= zext_ln16_1_fu_553_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_730 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_955)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_296 <= q_in_5_reg_282;
        end else if ((1'b1 == ap_condition_950)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_296 <= ap_phi_reg_pp0_iter0_q_in_5_reg_282;
        end else if ((1'b1 == ap_condition_946)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_296 <= zext_ln16_2_fu_594_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_358)) begin
        if ((1'b1 == ap_condition_426)) begin
            ap_phi_reg_pp0_iter1_q_in_9_reg_310 <= q_in_7_reg_296;
        end else if ((1'b1 == ap_condition_421)) begin
            ap_phi_reg_pp0_iter1_q_in_9_reg_310 <= zext_ln16_3_fu_631_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_q_in_9_reg_310 <= ap_phi_reg_pp0_iter0_q_in_9_reg_310;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_fu_74 <= empty;
    end else if (((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        e_fu_74 <= e_5_fu_521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_78 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_421_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_78 <= i_4_fu_432_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            q_in_1_fu_82 <= q_in;
        end else if (((icmp_ln39_reg_730 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            q_in_1_fu_82 <= ap_phi_reg_pp0_iter1_q_in_9_reg_310;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_779 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_phi_reg_pp0_iter0_q_in_9_reg_310 <= ap_phi_reg_pp0_iter0_q_in_7_reg_296;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_689 <= e_fu_74;
        icmp_ln40_reg_702 <= icmp_ln40_fu_374_p2;
        level_addr_reg_697 <= zext_ln18_cast_reg_684;
        level_counts_addr_3_reg_878 <= zext_ln47_3_fu_644_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln39_reg_730 <= icmp_ln39_fu_421_p2;
        icmp_ln39_reg_730_pp0_iter1_reg <= icmp_ln39_reg_730;
        icmp_ln40_1_reg_721 <= icmp_ln40_1_fu_392_p2;
        icmp_ln40_2_reg_734 <= icmp_ln40_2_fu_427_p2;
        level_addr_1_reg_716 <= edges_q0;
        trunc_ln41_reg_711 <= trunc_ln41_fu_382_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln40_3_reg_779 <= icmp_ln40_3_fu_466_p2;
        icmp_ln48_reg_754 <= icmp_ln48_fu_446_p2;
        level_addr_2_reg_764 <= edges_q1;
        level_addr_3_reg_774 <= edges_q0;
        q_in_10_reg_743 <= q_in_1_fu_82;
        trunc_ln41_1_reg_759 <= trunc_ln41_1_fu_452_p1;
        trunc_ln41_2_reg_769 <= trunc_ln41_2_fu_456_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln44_1_reg_814 <= grp_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln44_2_reg_839 <= grp_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln44_3_reg_864 <= grp_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln44_reg_750 <= grp_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln48_1_reg_818 <= icmp_ln48_1_fu_515_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln48_2_reg_843 <= icmp_ln48_2_fu_566_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_addr_4_reg_798 <= edges_q1;
        trunc_ln41_3_reg_793 <= trunc_ln41_3_fu_502_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_counts_addr_1_reg_828 <= zext_ln47_1_fu_557_p1;
        trunc_ln51_1_reg_833 <= trunc_ln51_1_fu_562_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        level_counts_addr_2_reg_853 <= zext_ln47_2_fu_598_p1;
        trunc_ln51_2_reg_858 <= trunc_ln51_2_fu_603_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_counts_addr_reg_803 <= zext_ln47_fu_506_p1;
        trunc_ln51_reg_808 <= trunc_ln51_fu_511_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        q_in_3_reg_270 <= ap_phi_reg_pp0_iter0_q_in_3_reg_270;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        q_in_5_reg_282 <= ap_phi_reg_pp0_iter0_q_in_5_reg_282;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        q_in_7_reg_296 <= ap_phi_reg_pp0_iter0_q_in_7_reg_296;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_329 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_333 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        select_ln48_3_reg_868 <= select_ln48_3_fu_618_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln18_cast_reg_684[7 : 0] <= zext_ln18_cast_fu_351_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address0_local = e_3_fu_397_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_address0_local = e_fu_74;
        end else begin
            edges_address0_local = 'bx;
        end
    end else begin
        edges_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_address1_local = e_4_fu_460_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address1_local = e_2_fu_386_p2;
        end else begin
            edges_address1_local = 'bx;
        end
    end else begin
        edges_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        edges_ce0_local = 1'b1;
    end else begin
        edges_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        edges_ce1_local = 1'b1;
    end else begin
        edges_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_address0_local = level_addr_4_reg_798;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        level_address0_local = level_addr_3_reg_774;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        level_address0_local = level_addr_2_reg_764;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_1_reg_716;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        level_address0_local = level_addr_reg_697;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = edges_q0;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_address0_local = level_counts_addr_3_reg_878;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_counts_address0_local = zext_ln47_3_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_counts_address0_local = level_counts_addr_2_reg_853;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        level_counts_address0_local = zext_ln47_2_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_counts_address0_local = level_counts_addr_1_reg_828;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_counts_address0_local = zext_ln47_1_fu_557_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_counts_address0_local = level_counts_addr_reg_803;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_counts_address0_local = zext_ln47_fu_506_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_839 == 1'd1) & (icmp_ln40_2_reg_734 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_814 == 1'd1) & (icmp_ln40_1_reg_721 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_750 == 1'd1) & (icmp_ln40_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_3_reg_864 == 1'd1) & (icmp_ln40_3_reg_779 == 1'd1) & (icmp_ln39_reg_730_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_839 == 1'd1) & (icmp_ln40_2_reg_734 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_3_reg_864 == 1'd1) & (icmp_ln40_3_reg_779 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_814 == 1'd1) & (icmp_ln40_1_reg_721 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_750 == 1'd1) & (icmp_ln40_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        q_in_5_out_ap_vld = 1'b1;
    end else begin
        q_in_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_address0_local = zext_ln48_3_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        queue_address0_local = zext_ln48_2_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        queue_address0_local = zext_ln48_1_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_address0_local = zext_ln48_fu_487_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_d0_local = trunc_ln41_3_reg_793;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        queue_d0_local = trunc_ln41_2_reg_769;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        queue_d0_local = trunc_ln41_1_reg_759;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_d0_local = trunc_ln41_reg_711;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_3_reg_864 == 1'd1) & (icmp_ln40_3_reg_779 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln39_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_839 == 1'd1) & (icmp_ln40_2_reg_734 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_814 == 1'd1) & (icmp_ln40_1_reg_721 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_750 == 1'd1) & (icmp_ln40_reg_702 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln48_2_fu_531_p2 = ($signed(trunc_ln51_reg_808) + $signed(8'd255));
assign add_ln48_4_fu_572_p2 = ($signed(trunc_ln51_1_reg_833) + $signed(8'd255));
assign add_ln48_6_fu_613_p2 = ($signed(trunc_ln51_2_reg_858) + $signed(8'd255));
assign add_ln48_fu_474_p2 = ($signed(trunc_ln8_fu_471_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_358 = ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15));
end
always @ (*) begin
    ap_condition_421 = ((icmp_ln39_reg_730 == 1'd1) & (icmp_ln40_3_reg_779 == 1'd1) & (grp_fu_323_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_426 = ((icmp_ln39_reg_730 == 1'd1) & (icmp_ln40_3_reg_779 == 1'd1) & (grp_fu_323_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_931 = ((1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln44_1_reg_814 == 1'd1) & (icmp_ln40_1_reg_721 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_935 = ((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln40_1_reg_721 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_940 = ((1'b0 == ap_block_pp0_stage7_11001) & (grp_fu_323_p2 == 1'd0) & (icmp_ln40_1_reg_721 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_946 = ((1'b0 == ap_block_pp0_stage12_11001) & (icmp_ln44_2_reg_839 == 1'd1) & (icmp_ln40_2_reg_734 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_950 = ((1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln40_2_reg_734 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_955 = ((1'b0 == ap_block_pp0_stage11_11001) & (grp_fu_323_p2 == 1'd0) & (icmp_ln40_2_reg_734 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign e_2_fu_386_p2 = (e_1_reg_689 + 64'd1);
assign e_3_fu_397_p2 = (e_1_reg_689 + 64'd2);
assign e_4_fu_460_p2 = (e_1_reg_689 + 64'd3);
assign e_5_fu_521_p2 = (e_1_reg_689 + 64'd4);
assign edges_address0 = edges_address0_local;
assign edges_address1 = edges_address1_local;
assign edges_ce0 = edges_ce0_local;
assign edges_ce1 = edges_ce1_local;
assign grp_fu_323_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_337_p2 = (reg_329 + 8'd1);
assign grp_fu_344_p2 = (reg_333 + 64'd1);
assign i_1_fu_413_p3 = {{tmp_fu_403_p4}, {2'd2}};
assign i_4_fu_432_p2 = (i_fu_78 + 32'd4);
assign icmp_ln39_fu_421_p2 = (($signed(i_1_fu_413_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_392_p2 = ((e_2_fu_386_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_427_p2 = ((e_3_fu_397_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_466_p2 = ((e_4_fu_460_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_374_p2 = ((e_fu_74 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_515_p2 = ((q_in_3_reg_270 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_566_p2 = ((q_in_5_reg_282 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_607_p2 = ((q_in_7_reg_296 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_446_p2 = ((q_in_1_fu_82 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_344_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_337_p2;
assign level_we0 = level_we0_local;
assign q_in_11_fu_492_p2 = (trunc_ln8_fu_471_p1 + 8'd1);
assign q_in_12_fu_548_p2 = (trunc_ln51_reg_808 + 8'd1);
assign q_in_13_fu_589_p2 = (trunc_ln51_1_reg_833 + 8'd1);
assign q_in_14_fu_626_p2 = (trunc_ln51_2_reg_858 + 8'd1);
assign q_in_5_out = q_in_5_reg_282;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_536_p3 = ((icmp_ln48_1_reg_818[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_531_p2);
assign select_ln48_2_fu_577_p3 = ((icmp_ln48_2_reg_843[0:0] == 1'b1) ? 8'd255 : add_ln48_4_fu_572_p2);
assign select_ln48_3_fu_618_p3 = ((icmp_ln48_3_fu_607_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_6_fu_613_p2);
assign select_ln48_fu_480_p3 = ((icmp_ln48_reg_754[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_474_p2);
assign tmp_fu_403_p4 = {{i_fu_78[31:2]}};
assign trunc_ln41_1_fu_452_p1 = edges_q1[7:0];
assign trunc_ln41_2_fu_456_p1 = edges_q0[7:0];
assign trunc_ln41_3_fu_502_p1 = edges_q1[7:0];
assign trunc_ln41_fu_382_p1 = edges_q0[7:0];
assign trunc_ln51_1_fu_562_p1 = ap_phi_reg_pp0_iter0_q_in_5_reg_282[7:0];
assign trunc_ln51_2_fu_603_p1 = ap_phi_reg_pp0_iter0_q_in_7_reg_296[7:0];
assign trunc_ln51_fu_511_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_270[7:0];
assign trunc_ln8_fu_471_p1 = q_in_10_reg_743[7:0];
assign zext_ln16_1_fu_553_p1 = q_in_12_fu_548_p2;
assign zext_ln16_2_fu_594_p1 = q_in_13_fu_589_p2;
assign zext_ln16_3_fu_631_p1 = q_in_14_fu_626_p2;
assign zext_ln16_fu_498_p1 = q_in_11_fu_492_p2;
assign zext_ln18_cast_fu_351_p1 = zext_ln18;
assign zext_ln47_1_fu_557_p1 = grp_fu_337_p2;
assign zext_ln47_2_fu_598_p1 = grp_fu_337_p2;
assign zext_ln47_3_fu_644_p1 = grp_fu_337_p2;
assign zext_ln47_fu_506_p1 = grp_fu_337_p2;
assign zext_ln48_1_fu_543_p1 = select_ln48_1_fu_536_p3;
assign zext_ln48_2_fu_584_p1 = select_ln48_2_fu_577_p3;
assign zext_ln48_3_fu_635_p1 = select_ln48_3_reg_868;
assign zext_ln48_fu_487_p1 = select_ln48_fu_480_p3;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_684[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
