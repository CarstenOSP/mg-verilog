module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,tmp_end,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,edges_address0,edges_ce0,edges_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,queue_address0,queue_ce0,queue_we0,queue_d0,q_in_1_out,q_in_1_out_ap_vld); 
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
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [7:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [63:0] q_in_1_out;
output   q_in_1_out_ap_vld;
reg ap_idle;
reg q_in_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln39_reg_455;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] q_in_3_reg_190;
reg   [7:0] reg_221;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_225;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln18_cast_fu_243_p1;
reg   [63:0] zext_ln18_cast_reg_444;
reg   [63:0] e_1_reg_449;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln39_fu_269_p2;
reg   [0:0] icmp_ln39_reg_455_pp0_iter1_reg;
reg   [7:0] level_addr_reg_459;
wire   [0:0] icmp_ln40_fu_275_p2;
reg   [0:0] icmp_ln40_reg_464;
wire   [7:0] trunc_ln41_fu_291_p1;
reg   [7:0] trunc_ln41_reg_473;
reg   [7:0] level_addr_1_reg_478;
wire   [0:0] icmp_ln40_1_fu_301_p2;
reg   [0:0] icmp_ln40_1_reg_483;
reg   [0:0] icmp_ln40_1_reg_483_pp0_iter1_reg;
reg   [63:0] q_in_6_reg_492;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] grp_fu_215_p2;
reg   [0:0] icmp_ln44_reg_499;
wire   [0:0] icmp_ln48_fu_309_p2;
reg   [0:0] icmp_ln48_reg_503;
wire   [7:0] trunc_ln41_1_fu_315_p1;
reg   [7:0] trunc_ln41_1_reg_508;
reg   [7:0] level_addr_2_reg_513;
wire   [63:0] zext_ln16_fu_346_p1;
reg   [3:0] level_counts_addr_reg_523;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] trunc_ln51_fu_355_p1;
reg   [7:0] trunc_ln51_reg_528;
reg   [0:0] icmp_ln44_1_reg_534;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] select_ln48_1_fu_370_p3;
reg   [7:0] select_ln48_1_reg_538;
wire   [63:0] zext_ln16_1_fu_383_p1;
reg   [3:0] level_counts_addr_1_reg_548;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_190;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_2_reg_202;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_2_reg_202;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] e_2_fu_295_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_335_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln47_fu_350_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln48_1_fu_387_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_1_fu_406_p1;
reg   [63:0] e_fu_62;
wire   [63:0] e_3_fu_391_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_66;
wire   [7:0] i_3_fu_280_p2;
reg   [63:0] q_in_1_fu_70;
reg    edges_ce0_local;
reg   [11:0] edges_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_229_p2;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [7:0] queue_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_236_p2;
wire   [7:0] trunc_ln39_fu_319_p1;
wire   [7:0] add_ln48_fu_322_p2;
wire   [7:0] select_ln48_fu_328_p3;
wire   [7:0] q_in_7_fu_340_p2;
wire   [0:0] icmp_ln48_1_fu_359_p2;
wire   [7:0] add_ln48_2_fu_365_p2;
wire   [7:0] q_in_8_fu_378_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_256;
reg    ap_condition_261;
reg    ap_condition_221;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_62 = 64'd0;
#0 i_fu_66 = 8'd0;
#0 q_in_1_fu_70 = 64'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (grp_fu_215_p2 == 1'd0) & (icmp_ln40_reg_464 == 1'd1)) | ((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln40_reg_464 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_190 <= q_in_1_fu_70;
    end else if (((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln44_reg_499 == 1'd1) & (icmp_ln40_reg_464 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_190 <= zext_ln16_fu_346_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_221)) begin
        if ((1'b1 == ap_condition_261)) begin
            ap_phi_reg_pp0_iter1_q_in_2_reg_202 <= q_in_3_reg_190;
        end else if ((1'b1 == ap_condition_256)) begin
            ap_phi_reg_pp0_iter1_q_in_2_reg_202 <= zext_ln16_1_fu_383_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_q_in_2_reg_202 <= ap_phi_reg_pp0_iter0_q_in_2_reg_202;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_62 <= empty;
        end else if (((icmp_ln39_reg_455 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_62 <= e_3_fu_391_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_66 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln39_fu_269_p2 == 1'd1))) begin
        i_fu_66 <= i_3_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            q_in_1_fu_70 <= q_in;
        end else if (((icmp_ln39_reg_455 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            q_in_1_fu_70 <= ap_phi_reg_pp0_iter1_q_in_2_reg_202;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln40_1_reg_483 == 1'd0))) begin
        ap_phi_reg_pp0_iter0_q_in_2_reg_202 <= ap_phi_reg_pp0_iter0_q_in_3_reg_190;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_449 <= e_fu_62;
        icmp_ln39_reg_455 <= icmp_ln39_fu_269_p2;
        icmp_ln39_reg_455_pp0_iter1_reg <= icmp_ln39_reg_455;
        icmp_ln40_reg_464 <= icmp_ln40_fu_275_p2;
        level_addr_reg_459 <= zext_ln18_cast_reg_444;
        level_counts_addr_1_reg_548 <= zext_ln47_1_fu_406_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_483 <= icmp_ln40_1_fu_301_p2;
        icmp_ln40_1_reg_483_pp0_iter1_reg <= icmp_ln40_1_reg_483;
        level_addr_1_reg_478 <= edges_q0;
        trunc_ln41_reg_473 <= trunc_ln41_fu_291_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln44_1_reg_534 <= grp_fu_215_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln44_reg_499 <= grp_fu_215_p2;
        q_in_6_reg_492 <= q_in_1_fu_70;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln48_reg_503 <= icmp_ln48_fu_309_p2;
        level_addr_2_reg_513 <= edges_q0;
        trunc_ln41_1_reg_508 <= trunc_ln41_1_fu_315_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_counts_addr_reg_523 <= zext_ln47_fu_350_p1;
        trunc_ln51_reg_528 <= trunc_ln51_fu_355_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        q_in_3_reg_190 <= ap_phi_reg_pp0_iter0_q_in_3_reg_190;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_221 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_225 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        select_ln48_1_reg_538 <= select_ln48_1_fu_370_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln18_cast_reg_444[7 : 0] <= zext_ln18_cast_fu_243_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_455 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
            edges_address0_local = e_2_fu_295_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_address0_local = e_fu_62;
        end else begin
            edges_address0_local = 'bx;
        end
    end else begin
        edges_address0_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_address0_local = level_addr_2_reg_513;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_1_reg_478;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        level_address0_local = level_addr_reg_459;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = edges_q0;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_counts_address0_local = level_counts_addr_1_reg_548;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        level_counts_address0_local = zext_ln47_1_fu_406_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_counts_address0_local = level_counts_addr_reg_523;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_counts_address0_local = zext_ln47_fu_350_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln44_reg_499 == 1'd1) & (icmp_ln40_reg_464 == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_534 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln40_1_reg_483_pp0_iter1_reg == 1'd1) & (icmp_ln39_reg_455_pp0_iter1_reg == 1'd1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln44_reg_499 == 1'd1) & (icmp_ln40_reg_464 == 1'd1)) | ((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_534 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_1_reg_483 == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_455 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        q_in_1_out_ap_vld = 1'b1;
    end else begin
        q_in_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_address0_local = zext_ln48_1_fu_387_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_address0_local = zext_ln48_fu_335_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        queue_d0_local = trunc_ln41_1_reg_508;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        queue_d0_local = trunc_ln41_reg_473;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_1_reg_534 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln40_1_reg_483 == 1'd1)) | ((icmp_ln39_reg_455 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln44_reg_499 == 1'd1) & (icmp_ln40_reg_464 == 1'd1)))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
assign add_ln48_2_fu_365_p2 = ($signed(trunc_ln51_reg_528) + $signed(8'd255));
assign add_ln48_fu_322_p2 = ($signed(trunc_ln39_fu_319_p1) + $signed(8'd255));
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
always @ (*) begin
    ap_condition_221 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_256 = ((icmp_ln39_reg_455 == 1'd1) & (grp_fu_215_p2 == 1'd1) & (icmp_ln40_1_reg_483 == 1'd1));
end
always @ (*) begin
    ap_condition_261 = ((icmp_ln39_reg_455 == 1'd1) & (grp_fu_215_p2 == 1'd0) & (icmp_ln40_1_reg_483 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign e_2_fu_295_p2 = (e_1_reg_449 + 64'd1);
assign e_3_fu_391_p2 = (e_1_reg_449 + 64'd2);
assign edges_address0 = edges_address0_local;
assign edges_ce0 = edges_ce0_local;
assign grp_fu_215_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_229_p2 = (reg_221 + 8'd1);
assign grp_fu_236_p2 = (reg_225 + 64'd1);
assign i_3_fu_280_p2 = (i_fu_66 + 8'd2);
assign icmp_ln39_fu_269_p2 = ((i_fu_66 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_301_p2 = ((e_2_fu_295_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_275_p2 = ((e_fu_62 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_359_p2 = ((q_in_3_reg_190 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_309_p2 = ((q_in_1_fu_70 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_236_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_229_p2;
assign level_we0 = level_we0_local;
assign q_in_1_out = q_in_1_fu_70;
assign q_in_7_fu_340_p2 = (trunc_ln39_fu_319_p1 + 8'd1);
assign q_in_8_fu_378_p2 = (trunc_ln51_reg_528 + 8'd1);
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_370_p3 = ((icmp_ln48_1_fu_359_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_365_p2);
assign select_ln48_fu_328_p3 = ((icmp_ln48_reg_503[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_322_p2);
assign trunc_ln39_fu_319_p1 = q_in_6_reg_492[7:0];
assign trunc_ln41_1_fu_315_p1 = edges_q0[7:0];
assign trunc_ln41_fu_291_p1 = edges_q0[7:0];
assign trunc_ln51_fu_355_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_190[7:0];
assign zext_ln16_1_fu_383_p1 = q_in_8_fu_378_p2;
assign zext_ln16_fu_346_p1 = q_in_7_fu_340_p2;
assign zext_ln18_cast_fu_243_p1 = zext_ln18;
assign zext_ln47_1_fu_406_p1 = grp_fu_229_p2;
assign zext_ln47_fu_350_p1 = grp_fu_229_p2;
assign zext_ln48_1_fu_387_p1 = select_ln48_1_reg_538;
assign zext_ln48_fu_335_p1 = select_ln48_fu_328_p3;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_444[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 