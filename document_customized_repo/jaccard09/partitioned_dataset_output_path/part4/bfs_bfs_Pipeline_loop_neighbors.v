
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,tmp_end,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_1_out,q_in_1_out_ap_vld);  
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
input  [63:0] empty;
input  [63:0] q_in;
input  [63:0] tmp_end;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [6:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [6:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
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
reg   [0:0] icmp_ln39_reg_604;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] q_in_3_reg_243;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_274_p1;
reg   [63:0] zext_ln18_cast_reg_592;
reg   [63:0] e_1_reg_597;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln39_fu_299_p2;
reg   [7:0] level_addr_reg_608;
wire   [0:0] icmp_ln40_fu_321_p2;
reg   [0:0] icmp_ln40_reg_613;
wire   [0:0] trunc_ln39_1_fu_337_p1;
reg   [0:0] trunc_ln39_1_reg_627;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] tmp_dst_fu_348_p3;
reg   [7:0] tmp_dst_reg_632;
wire   [0:0] icmp_ln40_1_fu_377_p2;
reg   [0:0] icmp_ln40_1_reg_639;
reg   [0:0] icmp_ln40_1_reg_639_pp0_iter1_reg;
reg   [7:0] level_addr_1_reg_653;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_394_p3;
reg   [7:0] tmp_dst_1_reg_658;
reg   [63:0] q_in_6_reg_665;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_268_p2;
reg   [0:0] icmp_ln44_reg_672;
wire   [0:0] icmp_ln48_fu_404_p2;
reg   [0:0] icmp_ln48_reg_676;
wire   [7:0] tmp_level_1_fu_413_p2;
reg   [7:0] tmp_level_1_reg_681;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln16_1_fu_458_p1;
reg   [3:0] level_counts_addr_reg_695;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] trunc_ln51_fu_466_p1;
reg   [7:0] trunc_ln51_reg_700;
wire   [63:0] add_ln47_fu_470_p2;
reg   [63:0] add_ln47_reg_706;
wire    ap_block_pp0_stage7_11001;
reg   [7:0] level_addr_2_reg_711;
reg   [0:0] icmp_ln44_1_reg_716;
wire   [0:0] trunc_ln48_1_fu_499_p1;
reg   [0:0] trunc_ln48_1_reg_720;
reg   [6:0] lshr_ln48_1_reg_724;
wire   [63:0] zext_ln16_2_fu_518_p1;
reg   [7:0] level_load_2_reg_734;
reg   [3:0] level_counts_addr_1_reg_739;
reg   [63:0] level_counts_load_1_reg_744;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_243;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_2_reg_255;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_2_reg_255;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_315_p1;
wire   [63:0] zext_ln20_fu_371_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_382_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_446_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln47_fu_462_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_476_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_532_p1;
wire   [63:0] zext_ln47_1_fu_548_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] e_fu_74;
wire   [63:0] e_3_fu_522_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_78;
wire   [7:0] i_3_fu_326_p2;
reg   [63:0] q_in_1_fu_82;
reg    edges_0_ce0_local;
reg   [10:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [10:0] edges_1_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
reg   [7:0] level_d0_local;
wire    ap_block_pp0_stage0;
wire   [7:0] tmp_level_3_fu_542_p2;
reg    queue_we0_local;
wire   [0:0] trunc_ln48_fu_432_p1;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [6:0] queue_address0_local;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [6:0] queue_1_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
wire   [63:0] add_ln47_1_fu_553_p2;
wire   [10:0] lshr_ln16_1_fu_305_p4;
wire   [7:0] trunc_ln41_fu_340_p1;
wire   [7:0] trunc_ln41_1_fu_344_p1;
wire   [63:0] e_2_fu_356_p2;
wire   [10:0] lshr_ln3_fu_361_p4;
wire   [7:0] trunc_ln41_2_fu_386_p1;
wire   [7:0] trunc_ln41_3_fu_390_p1;
wire   [7:0] trunc_ln39_fu_410_p1;
wire   [7:0] add_ln48_fu_419_p2;
wire   [7:0] select_ln48_fu_425_p3;
wire   [6:0] lshr_ln2_fu_436_p4;
wire   [7:0] q_in_7_fu_452_p2;
wire   [0:0] icmp_ln48_1_fu_480_p2;
wire   [7:0] add_ln48_2_fu_486_p2;
wire   [7:0] select_ln48_1_fu_491_p3;
wire   [7:0] q_in_8_fu_513_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_74 = 64'd0;
#0 i_fu_78 = 8'd0;
#0 q_in_1_fu_82 = 64'd0;
#0 ap_done_reg = 1'b0;
end
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
    if ((((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (grp_fu_268_p2 == 1'd0) & (icmp_ln40_reg_613 == 1'd1)) | ((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln40_reg_613 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_243 <= q_in_1_fu_82;
    end else if (((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln44_reg_672 == 1'd1) & (icmp_ln40_reg_613 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_243 <= zext_ln16_1_fu_458_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_268_p2 == 1'd0) & (icmp_ln40_1_reg_639 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_255 <= q_in_3_reg_243;
    end else if (((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_268_p2 == 1'd1) & (icmp_ln40_1_reg_639 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_255 <= zext_ln16_2_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_255 <= ap_phi_reg_pp0_iter0_q_in_2_reg_255;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_74 <= empty;
        end else if (((icmp_ln39_reg_604 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_74 <= e_3_fu_522_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_78 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln39_fu_299_p2 == 1'd1))) begin
        i_fu_78 <= i_3_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_in_1_fu_82 <= q_in;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_in_1_fu_82 <= ap_phi_reg_pp0_iter1_q_in_2_reg_255;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln47_reg_706 <= add_ln47_fu_470_p2;
        level_addr_2_reg_711 <= zext_ln41_1_fu_476_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln40_1_reg_639 == 1'd0))) begin
        ap_phi_reg_pp0_iter0_q_in_2_reg_255 <= ap_phi_reg_pp0_iter0_q_in_3_reg_243;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_597 <= e_fu_74;
        icmp_ln39_reg_604 <= icmp_ln39_fu_299_p2;
        icmp_ln40_reg_613 <= icmp_ln40_fu_321_p2;
        level_addr_reg_608 <= zext_ln18_cast_reg_592;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_639 <= icmp_ln40_1_fu_377_p2;
        icmp_ln40_1_reg_639_pp0_iter1_reg <= icmp_ln40_1_reg_639;
        level_counts_addr_1_reg_739 <= zext_ln47_1_fu_548_p1;
        tmp_dst_reg_632 <= tmp_dst_fu_348_p3;
        trunc_ln39_1_reg_627 <= trunc_ln39_1_fu_337_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_1_reg_716 <= grp_fu_268_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_672 <= grp_fu_268_p2;
        q_in_6_reg_665 <= q_in_1_fu_82;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_676 <= icmp_ln48_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_653 <= zext_ln41_fu_382_p1;
        tmp_dst_1_reg_658 <= tmp_dst_1_fu_394_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_695 <= zext_ln47_fu_462_p1;
        trunc_ln51_reg_700 <= trunc_ln51_fu_466_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_load_1_reg_744 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_load_2_reg_734 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_1_reg_724 <= {{select_ln48_1_fu_491_p3[7:1]}};
        trunc_ln48_1_reg_720 <= trunc_ln48_1_fu_499_p1;
        zext_ln18_cast_reg_592[7 : 0] <= zext_ln18_cast_fu_274_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_in_3_reg_243 <= ap_phi_reg_pp0_iter0_q_in_3_reg_243;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_level_1_reg_681 <= tmp_level_1_fu_413_p2;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
            edges_0_address0_local = zext_ln20_fu_371_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_315_p1;
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
            edges_1_address0_local = zext_ln20_fu_371_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_315_p1;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_2_reg_711;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_476_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_653;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_address0_local = level_addr_reg_608;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_382_p1;
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
        level_counts_address0_local = level_counts_addr_1_reg_739;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_1_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_reg_695;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_462_p1;
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
            level_counts_d0_local = add_ln47_1_fu_553_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            level_counts_d0_local = add_ln47_reg_706;
        end else begin
            level_counts_d0_local = 'bx;
        end
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln44_reg_672 == 1'd1) & (icmp_ln40_reg_613 == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_716 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln40_1_reg_639_pp0_iter1_reg == 1'd1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_d0_local = tmp_level_3_fu_542_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_d0_local = tmp_level_1_reg_681;
    end else begin
        level_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln44_reg_672 == 1'd1) & (icmp_ln40_reg_613 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_716 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln40_1_reg_639 == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_604 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        q_in_1_out_ap_vld = 1'b1;
    end else begin
        q_in_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_1_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_446_p1;
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
        queue_1_d0_local = tmp_dst_1_reg_658;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_632;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln48_fu_432_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln44_reg_672 == 1'd1) & (icmp_ln40_reg_613 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_720 == 1'd1) & (icmp_ln44_1_reg_716 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_639 == 1'd1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_1_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_446_p1;
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
        queue_d0_local = tmp_dst_1_reg_658;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_632;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_604 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (trunc_ln48_fu_432_p1 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln44_reg_672 == 1'd1) & (icmp_ln40_reg_613 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln48_1_reg_720 == 1'd0) & (icmp_ln44_1_reg_716 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_639 == 1'd1)))) begin
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
assign add_ln47_1_fu_553_p2 = (level_counts_load_1_reg_744 + 64'd1);
assign add_ln47_fu_470_p2 = (level_counts_q0 + 64'd1);
assign add_ln48_2_fu_486_p2 = ($signed(trunc_ln51_reg_700) + $signed(8'd255));
assign add_ln48_fu_419_p2 = ($signed(trunc_ln39_fu_410_p1) + $signed(8'd255));
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
assign e_2_fu_356_p2 = (e_1_reg_597 + 64'd1);
assign e_3_fu_522_p2 = (e_1_reg_597 + 64'd2);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign grp_fu_268_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign i_3_fu_326_p2 = (i_fu_78 + 8'd2);
assign icmp_ln39_fu_299_p2 = ((i_fu_78 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_377_p2 = ((e_2_fu_356_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_321_p2 = ((e_fu_74 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_480_p2 = ((q_in_3_reg_243 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_404_p2 = ((q_in_1_fu_82 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = level_d0_local;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_305_p4 = {{e_fu_74[11:1]}};
assign lshr_ln2_fu_436_p4 = {{select_ln48_fu_425_p3[7:1]}};
assign lshr_ln3_fu_361_p4 = {{e_2_fu_356_p2[11:1]}};
assign q_in_1_out = q_in_1_fu_82;
assign q_in_7_fu_452_p2 = (trunc_ln39_fu_410_p1 + 8'd1);
assign q_in_8_fu_513_p2 = (trunc_ln51_reg_700 + 8'd1);
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_491_p3 = ((icmp_ln48_1_fu_480_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_486_p2);
assign select_ln48_fu_425_p3 = ((icmp_ln48_reg_676[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_419_p2);
assign tmp_dst_1_fu_394_p3 = ((trunc_ln39_1_reg_627[0:0] == 1'b1) ? trunc_ln41_2_fu_386_p1 : trunc_ln41_3_fu_390_p1);
assign tmp_dst_fu_348_p3 = ((trunc_ln39_1_fu_337_p1[0:0] == 1'b1) ? trunc_ln41_fu_340_p1 : trunc_ln41_1_fu_344_p1);
assign tmp_level_1_fu_413_p2 = (level_q0 + 8'd1);
assign tmp_level_3_fu_542_p2 = (level_load_2_reg_734 + 8'd1);
assign trunc_ln39_1_fu_337_p1 = e_1_reg_597[0:0];
assign trunc_ln39_fu_410_p1 = q_in_6_reg_665[7:0];
assign trunc_ln41_1_fu_344_p1 = edges_0_q0[7:0];
assign trunc_ln41_2_fu_386_p1 = edges_0_q0[7:0];
assign trunc_ln41_3_fu_390_p1 = edges_1_q0[7:0];
assign trunc_ln41_fu_340_p1 = edges_1_q0[7:0];
assign trunc_ln48_1_fu_499_p1 = select_ln48_1_fu_491_p3[0:0];
assign trunc_ln48_fu_432_p1 = select_ln48_fu_425_p3[0:0];
assign trunc_ln51_fu_466_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_243[7:0];
assign zext_ln16_1_fu_458_p1 = q_in_7_fu_452_p2;
assign zext_ln16_2_fu_518_p1 = q_in_8_fu_513_p2;
assign zext_ln16_fu_315_p1 = lshr_ln16_1_fu_305_p4;
assign zext_ln18_cast_fu_274_p1 = zext_ln18;
assign zext_ln20_fu_371_p1 = lshr_ln3_fu_361_p4;
assign zext_ln41_1_fu_476_p1 = tmp_dst_1_reg_658;
assign zext_ln41_fu_382_p1 = tmp_dst_reg_632;
assign zext_ln47_1_fu_548_p1 = tmp_level_3_fu_542_p2;
assign zext_ln47_fu_462_p1 = tmp_level_1_reg_681;
assign zext_ln48_1_fu_532_p1 = lshr_ln48_1_reg_724;
assign zext_ln48_fu_446_p1 = lshr_ln2_fu_436_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_592[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
