module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,q_in,tmp_end,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_3_address0,queue_3_ce0,queue_3_we0,queue_3_d0,queue_2_address0,queue_2_ce0,queue_2_we0,queue_2_d0,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_1_out,q_in_1_out_ap_vld); 
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
input  [63:0] e;
input  [63:0] q_in;
input  [63:0] tmp_end;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [5:0] queue_3_address0;
output   queue_3_ce0;
output   queue_3_we0;
output  [7:0] queue_3_d0;
output  [5:0] queue_2_address0;
output   queue_2_ce0;
output   queue_2_we0;
output  [7:0] queue_2_d0;
output  [5:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [5:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [9:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [9:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [9:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [9:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [63:0] q_in_1_out;
output   q_in_1_out_ap_vld;
reg ap_idle;
reg q_in_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln39_reg_766;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] q_in_3_reg_349;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_380_p1;
reg   [63:0] zext_ln18_cast_reg_754;
reg   [63:0] e_4_reg_759;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln39_fu_405_p2;
reg   [7:0] level_addr_reg_770;
wire   [0:0] icmp_ln40_fu_429_p2;
reg   [0:0] icmp_ln40_reg_775;
wire   [1:0] trunc_ln39_1_fu_445_p1;
reg   [1:0] trunc_ln39_1_reg_799;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] tmp_dst_fu_464_p11;
reg   [7:0] tmp_dst_reg_804;
wire   [0:0] icmp_ln40_1_fu_511_p2;
reg   [0:0] icmp_ln40_1_reg_813;
reg   [0:0] icmp_ln40_1_reg_813_pp0_iter1_reg;
reg   [7:0] level_addr_1_reg_837;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_536_p11;
reg   [7:0] tmp_dst_1_reg_842;
reg   [63:0] q_in_6_reg_851;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_374_p2;
reg   [0:0] icmp_ln44_reg_858;
wire   [0:0] icmp_ln48_fu_562_p2;
reg   [0:0] icmp_ln48_reg_862;
wire   [7:0] tmp_level_1_fu_571_p2;
reg   [7:0] tmp_level_1_reg_867;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln16_1_fu_618_p1;
reg   [3:0] level_counts_addr_reg_881;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] trunc_ln51_fu_626_p1;
reg   [7:0] trunc_ln51_reg_886;
wire   [63:0] add_ln47_fu_630_p2;
reg   [63:0] add_ln47_reg_892;
wire    ap_block_pp0_stage7_11001;
reg   [7:0] level_addr_2_reg_897;
reg   [0:0] icmp_ln44_1_reg_902;
wire   [1:0] trunc_ln48_1_fu_659_p1;
reg   [1:0] trunc_ln48_1_reg_906;
reg   [5:0] lshr_ln48_1_reg_910;
wire   [63:0] zext_ln16_2_fu_678_p1;
reg   [7:0] level_load_2_reg_920;
reg   [3:0] level_counts_addr_1_reg_925;
reg   [63:0] level_counts_load_1_reg_930;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_349;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_2_reg_361;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_2_reg_361;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_421_p1;
wire   [63:0] zext_ln20_fu_503_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_516_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_604_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln47_fu_622_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_636_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_692_p1;
wire   [63:0] zext_ln47_1_fu_710_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] e_1_fu_96;
wire   [63:0] e_6_fu_682_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_100;
wire   [7:0] i_3_fu_434_p2;
reg   [63:0] q_in_1_fu_104;
reg    edges_0_ce0_local;
reg   [9:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [9:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [9:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [9:0] edges_3_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
reg   [7:0] level_d0_local;
wire    ap_block_pp0_stage0;
wire   [7:0] tmp_level_3_fu_704_p2;
reg    queue_2_we0_local;
wire   [1:0] trunc_ln48_fu_590_p1;
reg   [7:0] queue_2_d0_local;
reg    queue_2_ce0_local;
reg   [5:0] queue_2_address0_local;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [5:0] queue_1_address0_local;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [5:0] queue_address0_local;
reg    queue_3_we0_local;
reg   [7:0] queue_3_d0_local;
reg    queue_3_ce0_local;
reg   [5:0] queue_3_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
wire   [63:0] add_ln47_1_fu_715_p2;
wire   [9:0] lshr_ln16_1_fu_411_p4;
wire   [7:0] tmp_dst_fu_464_p2;
wire   [7:0] tmp_dst_fu_464_p4;
wire   [7:0] tmp_dst_fu_464_p6;
wire   [7:0] tmp_dst_fu_464_p8;
wire   [7:0] tmp_dst_fu_464_p9;
wire   [1:0] tmp_dst_fu_464_p10;
wire   [63:0] e_5_fu_488_p2;
wire   [9:0] lshr_ln3_fu_493_p4;
wire   [7:0] tmp_dst_1_fu_536_p2;
wire   [7:0] tmp_dst_1_fu_536_p4;
wire   [7:0] tmp_dst_1_fu_536_p6;
wire   [7:0] tmp_dst_1_fu_536_p8;
wire   [7:0] tmp_dst_1_fu_536_p9;
wire   [7:0] trunc_ln39_fu_568_p1;
wire   [7:0] add_ln48_fu_577_p2;
wire   [7:0] select_ln48_fu_583_p3;
wire   [5:0] lshr_ln2_fu_594_p4;
wire   [7:0] q_in_7_fu_612_p2;
wire   [0:0] icmp_ln48_2_fu_640_p2;
wire   [7:0] add_ln48_2_fu_646_p2;
wire   [7:0] select_ln48_1_fu_651_p3;
wire   [7:0] q_in_8_fu_673_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_dst_fu_464_p1;
wire   [1:0] tmp_dst_fu_464_p3;
wire  signed [1:0] tmp_dst_fu_464_p5;
wire  signed [1:0] tmp_dst_fu_464_p7;
wire  signed [1:0] tmp_dst_1_fu_536_p1;
wire   [1:0] tmp_dst_1_fu_536_p3;
wire   [1:0] tmp_dst_1_fu_536_p5;
wire  signed [1:0] tmp_dst_1_fu_536_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_1_fu_96 = 64'd0;
#0 i_fu_100 = 8'd0;
#0 q_in_1_fu_104 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1(.din0(tmp_dst_fu_464_p2),.din1(tmp_dst_fu_464_p4),.din2(tmp_dst_fu_464_p6),.din3(tmp_dst_fu_464_p8),.def(tmp_dst_fu_464_p9),.sel(tmp_dst_fu_464_p10),.dout(tmp_dst_fu_464_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2(.din0(tmp_dst_1_fu_536_p2),.din1(tmp_dst_1_fu_536_p4),.din2(tmp_dst_1_fu_536_p6),.din3(tmp_dst_1_fu_536_p8),.def(tmp_dst_1_fu_536_p9),.sel(trunc_ln39_1_reg_799),.dout(tmp_dst_1_fu_536_p11));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln40_reg_775 == 1'd0)) | ((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_374_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln40_reg_775 == 1'd1)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_349 <= q_in_1_fu_104;
    end else if (((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_reg_775 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_349 <= zext_ln16_1_fu_618_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_374_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln40_1_reg_813 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_361 <= q_in_3_reg_349;
    end else if (((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_374_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln40_1_reg_813 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_361 <= zext_ln16_2_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_361 <= ap_phi_reg_pp0_iter0_q_in_2_reg_361;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_96 <= e;
        end else if (((icmp_ln39_reg_766 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_96 <= e_6_fu_682_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_100 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln39_fu_405_p2 == 1'd1))) begin
        i_fu_100 <= i_3_fu_434_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_in_1_fu_104 <= q_in;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_in_1_fu_104 <= ap_phi_reg_pp0_iter1_q_in_2_reg_361;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln47_reg_892 <= add_ln47_fu_630_p2;
        level_addr_2_reg_897 <= zext_ln41_1_fu_636_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln40_1_reg_813 == 1'd0))) begin
        ap_phi_reg_pp0_iter0_q_in_2_reg_361 <= ap_phi_reg_pp0_iter0_q_in_3_reg_349;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_4_reg_759 <= e_1_fu_96;
        icmp_ln39_reg_766 <= icmp_ln39_fu_405_p2;
        icmp_ln40_reg_775 <= icmp_ln40_fu_429_p2;
        level_addr_reg_770 <= zext_ln18_cast_reg_754;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_813 <= icmp_ln40_1_fu_511_p2;
        icmp_ln40_1_reg_813_pp0_iter1_reg <= icmp_ln40_1_reg_813;
        level_counts_addr_1_reg_925 <= zext_ln47_1_fu_710_p1;
        tmp_dst_reg_804 <= tmp_dst_fu_464_p11;
        trunc_ln39_1_reg_799 <= trunc_ln39_1_fu_445_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_1_reg_902 <= grp_fu_374_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_858 <= grp_fu_374_p2;
        q_in_6_reg_851 <= q_in_1_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_862 <= icmp_ln48_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_837 <= zext_ln41_fu_516_p1;
        tmp_dst_1_reg_842 <= tmp_dst_1_fu_536_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_881 <= zext_ln47_fu_622_p1;
        trunc_ln51_reg_886 <= trunc_ln51_fu_626_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_load_1_reg_930 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_load_2_reg_920 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_1_reg_910 <= {{select_ln48_1_fu_651_p3[7:2]}};
        trunc_ln48_1_reg_906 <= trunc_ln48_1_fu_659_p1;
        zext_ln18_cast_reg_754[7 : 0] <= zext_ln18_cast_fu_380_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_in_3_reg_349 <= ap_phi_reg_pp0_iter0_q_in_3_reg_349;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_level_1_reg_867 <= tmp_level_1_fu_571_p2;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_766 == 1'd0) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_0_address0_local = zext_ln20_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_421_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_1_address0_local = zext_ln20_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_421_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_2_address0_local = zext_ln20_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln16_fu_421_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_3_address0_local = zext_ln20_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln16_fu_421_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_2_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_837;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_address0_local = level_addr_reg_770;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_516_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_counts_address0_local = level_counts_addr_1_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_1_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_622_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            level_counts_d0_local = add_ln47_1_fu_715_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            level_counts_d0_local = add_ln47_reg_892;
        end else begin
            level_counts_d0_local = 'bx;
        end
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln40_1_reg_813_pp0_iter1_reg == 1'd1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_d0_local = tmp_level_3_fu_704_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_d0_local = tmp_level_1_reg_867;
    end else begin
        level_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln40_1_reg_813 == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_766 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        q_in_1_out_ap_vld = 1'b1;
    end else begin
        q_in_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_1_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_604_p1;
    end else begin
        queue_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_d0_local = tmp_dst_1_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_804;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (trunc_ln48_fu_590_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_906 == 2'd1) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_813 == 1'd1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_address0_local = zext_ln48_1_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_address0_local = zext_ln48_fu_604_p1;
    end else begin
        queue_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_d0_local = tmp_dst_1_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_d0_local = tmp_dst_reg_804;
    end else begin
        queue_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (trunc_ln48_fu_590_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_906 == 2'd2) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_813 == 1'd1)))) begin
        queue_2_we0_local = 1'b1;
    end else begin
        queue_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_address0_local = zext_ln48_1_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_address0_local = zext_ln48_fu_604_p1;
    end else begin
        queue_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_d0_local = tmp_dst_1_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_d0_local = tmp_dst_reg_804;
    end else begin
        queue_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (trunc_ln48_fu_590_p1 == 2'd3) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_906 == 2'd3) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_813 == 1'd1)))) begin
        queue_3_we0_local = 1'b1;
    end else begin
        queue_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_1_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_604_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_d0_local = tmp_dst_1_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_804;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_766 == 1'd1) & (trunc_ln48_fu_590_p1 == 2'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_858 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_reg_775 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_906 == 2'd0) & (icmp_ln44_1_reg_902 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_813 == 1'd1)))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln47_1_fu_715_p2 = (level_counts_load_1_reg_930 + 64'd1);
assign add_ln47_fu_630_p2 = (level_counts_q0 + 64'd1);
assign add_ln48_2_fu_646_p2 = ($signed(trunc_ln51_reg_886) + $signed(8'd255));
assign add_ln48_fu_577_p2 = ($signed(trunc_ln39_fu_568_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign e_5_fu_488_p2 = (e_4_reg_759 + 64'd1);
assign e_6_fu_682_p2 = (e_4_reg_759 + 64'd2);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign grp_fu_374_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign i_3_fu_434_p2 = (i_fu_100 + 8'd2);
assign icmp_ln39_fu_405_p2 = ((i_fu_100 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_511_p2 = ((e_5_fu_488_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_429_p2 = ((e_1_fu_96 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_640_p2 = ((q_in_3_reg_349 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_562_p2 = ((q_in_1_fu_104 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = level_d0_local;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_411_p4 = {{e_1_fu_96[11:2]}};
assign lshr_ln2_fu_594_p4 = {{select_ln48_fu_583_p3[7:2]}};
assign lshr_ln3_fu_493_p4 = {{e_5_fu_488_p2[11:2]}};
assign q_in_1_out = q_in_1_fu_104;
assign q_in_7_fu_612_p2 = (trunc_ln39_fu_568_p1 + 8'd1);
assign q_in_8_fu_673_p2 = (trunc_ln51_reg_886 + 8'd1);
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_2_address0 = queue_2_address0_local;
assign queue_2_ce0 = queue_2_ce0_local;
assign queue_2_d0 = queue_2_d0_local;
assign queue_2_we0 = queue_2_we0_local;
assign queue_3_address0 = queue_3_address0_local;
assign queue_3_ce0 = queue_3_ce0_local;
assign queue_3_d0 = queue_3_d0_local;
assign queue_3_we0 = queue_3_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_651_p3 = ((icmp_ln48_2_fu_640_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_646_p2);
assign select_ln48_fu_583_p3 = ((icmp_ln48_reg_862[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_577_p2);
assign tmp_dst_1_fu_536_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_536_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_536_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_536_p8 = edges_3_q0[7:0];
assign tmp_dst_1_fu_536_p9 = 'bx;
assign tmp_dst_fu_464_p10 = e_4_reg_759[1:0];
assign tmp_dst_fu_464_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_464_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_464_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_464_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_464_p9 = 'bx;
assign tmp_level_1_fu_571_p2 = (level_q0 + 8'd1);
assign tmp_level_3_fu_704_p2 = (level_load_2_reg_920 + 8'd1);
assign trunc_ln39_1_fu_445_p1 = e_4_reg_759[1:0];
assign trunc_ln39_fu_568_p1 = q_in_6_reg_851[7:0];
assign trunc_ln48_1_fu_659_p1 = select_ln48_1_fu_651_p3[1:0];
assign trunc_ln48_fu_590_p1 = select_ln48_fu_583_p3[1:0];
assign trunc_ln51_fu_626_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_349[7:0];
assign zext_ln16_1_fu_618_p1 = q_in_7_fu_612_p2;
assign zext_ln16_2_fu_678_p1 = q_in_8_fu_673_p2;
assign zext_ln16_fu_421_p1 = lshr_ln16_1_fu_411_p4;
assign zext_ln18_cast_fu_380_p1 = zext_ln18;
assign zext_ln20_fu_503_p1 = lshr_ln3_fu_493_p4;
assign zext_ln41_1_fu_636_p1 = tmp_dst_1_reg_842;
assign zext_ln41_fu_516_p1 = tmp_dst_reg_804;
assign zext_ln47_1_fu_710_p1 = tmp_level_3_fu_704_p2;
assign zext_ln47_fu_622_p1 = tmp_level_1_reg_867;
assign zext_ln48_1_fu_692_p1 = lshr_ln48_1_reg_910;
assign zext_ln48_fu_604_p1 = lshr_ln2_fu_594_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_754[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 