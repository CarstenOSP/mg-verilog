
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_7_address0,queue_7_ce0,queue_7_we0,queue_7_d0,queue_6_address0,queue_6_ce0,queue_6_we0,queue_6_d0,queue_5_address0,queue_5_ce0,queue_5_we0,queue_5_d0,queue_4_address0,queue_4_ce0,queue_4_we0,queue_4_d0,queue_3_address0,queue_3_ce0,queue_3_we0,queue_3_d0,queue_2_address0,queue_2_ce0,queue_2_we0,queue_2_d0,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_2_out_i,q_in_2_out_o,q_in_2_out_o_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [4:0] queue_7_address0;
output   queue_7_ce0;
output   queue_7_we0;
output  [7:0] queue_7_d0;
output  [4:0] queue_6_address0;
output   queue_6_ce0;
output   queue_6_we0;
output  [7:0] queue_6_d0;
output  [4:0] queue_5_address0;
output   queue_5_ce0;
output   queue_5_we0;
output  [7:0] queue_5_d0;
output  [4:0] queue_4_address0;
output   queue_4_ce0;
output   queue_4_we0;
output  [7:0] queue_4_d0;
output  [4:0] queue_3_address0;
output   queue_3_ce0;
output   queue_3_we0;
output  [7:0] queue_3_d0;
output  [4:0] queue_2_address0;
output   queue_2_ce0;
output   queue_2_we0;
output  [7:0] queue_2_d0;
output  [4:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [4:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
input  [63:0] tmp_end;
output  [8:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [8:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [8:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [8:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [8:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [8:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [8:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [8:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
input  [63:0] q_in_2_out_i;
output  [63:0] q_in_2_out_o;
output   q_in_2_out_o_ap_vld;
reg ap_idle;
reg[63:0] q_in_2_out_o;
reg q_in_2_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln39_reg_655;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_385_p1;
reg   [63:0] zext_ln18_cast_reg_644;
reg   [63:0] e_3_reg_649;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln39_fu_405_p2;
reg   [7:0] level_addr_reg_659;
wire   [0:0] icmp_ln40_fu_439_p2;
reg   [0:0] icmp_ln40_reg_664;
reg   [0:0] icmp_ln40_reg_664_pp0_iter1_reg;
wire   [7:0] tmp_dst_fu_484_p19;
reg   [7:0] tmp_dst_reg_708;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] level_addr_1_reg_721;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln44_fu_538_p2;
reg   [0:0] icmp_ln44_reg_726;
wire   [0:0] icmp_ln48_fu_544_p2;
reg   [0:0] icmp_ln48_reg_730;
wire   [7:0] trunc_ln39_fu_550_p1;
reg   [7:0] trunc_ln39_reg_735;
reg   [7:0] level_load_reg_740;
reg   [3:0] level_counts_addr_reg_748;
reg   [63:0] level_counts_load_reg_753;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_427_p1;
wire   [63:0] zext_ln41_fu_534_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_581_p1;
wire   [63:0] zext_ln47_fu_599_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_1_fu_609_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] e_1_fu_114;
wire   [63:0] e_4_fu_524_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_118;
wire   [7:0] i_2_fu_411_p2;
reg    edges_0_ce0_local;
reg    edges_1_ce0_local;
reg    edges_2_ce0_local;
reg    edges_3_ce0_local;
reg    edges_4_ce0_local;
reg    edges_5_ce0_local;
reg    edges_6_ce0_local;
reg    edges_7_ce0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] tmp_level_1_fu_593_p2;
reg    queue_6_we0_local;
wire   [2:0] trunc_ln48_fu_567_p1;
reg    queue_6_ce0_local;
reg    queue_5_we0_local;
reg    queue_5_ce0_local;
reg    queue_4_we0_local;
reg    queue_4_ce0_local;
reg    queue_3_we0_local;
reg    queue_3_ce0_local;
reg    queue_2_we0_local;
reg    queue_2_ce0_local;
reg    queue_1_we0_local;
reg    queue_1_ce0_local;
reg    queue_we0_local;
reg    queue_ce0_local;
reg    queue_7_we0_local;
reg    queue_7_ce0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] add_ln47_fu_619_p2;
wire   [8:0] lshr_ln16_1_fu_417_p4;
wire   [7:0] tmp_dst_fu_484_p2;
wire   [7:0] tmp_dst_fu_484_p4;
wire   [7:0] tmp_dst_fu_484_p6;
wire   [7:0] tmp_dst_fu_484_p8;
wire   [7:0] tmp_dst_fu_484_p10;
wire   [7:0] tmp_dst_fu_484_p12;
wire   [7:0] tmp_dst_fu_484_p14;
wire   [7:0] tmp_dst_fu_484_p16;
wire   [7:0] tmp_dst_fu_484_p17;
wire   [2:0] tmp_dst_fu_484_p18;
wire   [7:0] add_ln48_fu_554_p2;
wire   [7:0] select_ln48_fu_560_p3;
wire   [4:0] lshr_ln2_fu_571_p4;
wire   [7:0] q_in_fu_604_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_dst_fu_484_p1;
wire   [2:0] tmp_dst_fu_484_p3;
wire   [2:0] tmp_dst_fu_484_p5;
wire   [2:0] tmp_dst_fu_484_p7;
wire  signed [2:0] tmp_dst_fu_484_p9;
wire  signed [2:0] tmp_dst_fu_484_p11;
wire  signed [2:0] tmp_dst_fu_484_p13;
wire  signed [2:0] tmp_dst_fu_484_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_1_fu_114 = 64'd0;
#0 i_fu_118 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U1(.din0(tmp_dst_fu_484_p2),.din1(tmp_dst_fu_484_p4),.din2(tmp_dst_fu_484_p6),.din3(tmp_dst_fu_484_p8),.din4(tmp_dst_fu_484_p10),.din5(tmp_dst_fu_484_p12),.din6(tmp_dst_fu_484_p14),.din7(tmp_dst_fu_484_p16),.def(tmp_dst_fu_484_p17),.sel(tmp_dst_fu_484_p18),.dout(tmp_dst_fu_484_p19));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_1_fu_114 <= e;
    end else if (((icmp_ln39_reg_655 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        e_1_fu_114 <= e_4_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_118 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln39_fu_405_p2 == 1'd0))) begin
        i_fu_118 <= i_2_fu_411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_3_reg_649 <= e_1_fu_114;
        icmp_ln39_reg_655 <= icmp_ln39_fu_405_p2;
        icmp_ln40_reg_664 <= icmp_ln40_fu_439_p2;
        icmp_ln40_reg_664_pp0_iter1_reg <= icmp_ln40_reg_664;
        level_addr_reg_659 <= zext_ln18_cast_reg_644;
        trunc_ln39_reg_735 <= trunc_ln39_fu_550_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_reg_726 <= icmp_ln44_fu_538_p2;
        icmp_ln48_reg_730 <= icmp_ln48_fu_544_p2;
        zext_ln18_cast_reg_644[7 : 0] <= zext_ln18_cast_fu_385_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_721 <= zext_ln41_fu_534_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_addr_reg_748 <= zext_ln47_fu_599_p1;
        tmp_dst_reg_708 <= tmp_dst_fu_484_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_load_reg_753 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_load_reg_740 <= level_q0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_655 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_655 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_1_reg_721;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = level_addr_reg_659;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_534_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_reg_748;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_fu_599_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_in_2_out_o = zext_ln16_1_fu_609_p1;
    end else begin
        q_in_2_out_o = q_in_2_out_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_in_2_out_o_ap_vld = 1'b1;
    end else begin
        q_in_2_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_we0_local = 1'b1;
    end else begin
        queue_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_we0_local = 1'b1;
    end else begin
        queue_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_ce0_local = 1'b1;
    end else begin
        queue_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_we0_local = 1'b1;
    end else begin
        queue_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_ce0_local = 1'b1;
    end else begin
        queue_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_we0_local = 1'b1;
    end else begin
        queue_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_ce0_local = 1'b1;
    end else begin
        queue_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_we0_local = 1'b1;
    end else begin
        queue_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_ce0_local = 1'b1;
    end else begin
        queue_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_we0_local = 1'b1;
    end else begin
        queue_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_fu_567_p1 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_726 == 1'd1) & (icmp_ln40_reg_664 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_619_p2 = (level_counts_load_reg_753 + 64'd1);
assign add_ln48_fu_554_p2 = ($signed(trunc_ln39_fu_550_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign e_4_fu_524_p2 = (e_3_reg_649 + 64'd1);
assign edges_0_address0 = zext_ln16_fu_427_p1;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = zext_ln16_fu_427_p1;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = zext_ln16_fu_427_p1;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = zext_ln16_fu_427_p1;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_4_address0 = zext_ln16_fu_427_p1;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_5_address0 = zext_ln16_fu_427_p1;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_6_address0 = zext_ln16_fu_427_p1;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = zext_ln16_fu_427_p1;
assign edges_7_ce0 = edges_7_ce0_local;
assign i_2_fu_411_p2 = (i_fu_118 + 8'd1);
assign icmp_ln39_fu_405_p2 = ((i_fu_118 == 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_439_p2 = ((e_1_fu_114 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln44_fu_538_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_544_p2 = ((q_in_2_out_i == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = add_ln47_fu_619_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = tmp_level_1_fu_593_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_417_p4 = {{e_1_fu_114[11:3]}};
assign lshr_ln2_fu_571_p4 = {{select_ln48_fu_560_p3[7:3]}};
assign q_in_fu_604_p2 = (trunc_ln39_reg_735 + 8'd1);
assign queue_1_address0 = zext_ln48_fu_581_p1;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = tmp_dst_reg_708;
assign queue_1_we0 = queue_1_we0_local;
assign queue_2_address0 = zext_ln48_fu_581_p1;
assign queue_2_ce0 = queue_2_ce0_local;
assign queue_2_d0 = tmp_dst_reg_708;
assign queue_2_we0 = queue_2_we0_local;
assign queue_3_address0 = zext_ln48_fu_581_p1;
assign queue_3_ce0 = queue_3_ce0_local;
assign queue_3_d0 = tmp_dst_reg_708;
assign queue_3_we0 = queue_3_we0_local;
assign queue_4_address0 = zext_ln48_fu_581_p1;
assign queue_4_ce0 = queue_4_ce0_local;
assign queue_4_d0 = tmp_dst_reg_708;
assign queue_4_we0 = queue_4_we0_local;
assign queue_5_address0 = zext_ln48_fu_581_p1;
assign queue_5_ce0 = queue_5_ce0_local;
assign queue_5_d0 = tmp_dst_reg_708;
assign queue_5_we0 = queue_5_we0_local;
assign queue_6_address0 = zext_ln48_fu_581_p1;
assign queue_6_ce0 = queue_6_ce0_local;
assign queue_6_d0 = tmp_dst_reg_708;
assign queue_6_we0 = queue_6_we0_local;
assign queue_7_address0 = zext_ln48_fu_581_p1;
assign queue_7_ce0 = queue_7_ce0_local;
assign queue_7_d0 = tmp_dst_reg_708;
assign queue_7_we0 = queue_7_we0_local;
assign queue_address0 = zext_ln48_fu_581_p1;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = tmp_dst_reg_708;
assign queue_we0 = queue_we0_local;
assign select_ln48_fu_560_p3 = ((icmp_ln48_reg_730[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_554_p2);
assign tmp_dst_fu_484_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_484_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_484_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_484_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_484_p17 = 'bx;
assign tmp_dst_fu_484_p18 = e_3_reg_649[2:0];
assign tmp_dst_fu_484_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_484_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_484_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_484_p8 = edges_3_q0[7:0];
assign tmp_level_1_fu_593_p2 = (level_load_reg_740 + 8'd1);
assign trunc_ln39_fu_550_p1 = q_in_2_out_i[7:0];
assign trunc_ln48_fu_567_p1 = select_ln48_fu_560_p3[2:0];
assign zext_ln16_1_fu_609_p1 = q_in_fu_604_p2;
assign zext_ln16_fu_427_p1 = lshr_ln16_1_fu_417_p4;
assign zext_ln18_cast_fu_385_p1 = zext_ln18;
assign zext_ln41_fu_534_p1 = tmp_dst_reg_708;
assign zext_ln47_fu_599_p1 = tmp_level_1_fu_593_p2;
assign zext_ln48_fu_581_p1 = lshr_ln2_fu_571_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_644[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
