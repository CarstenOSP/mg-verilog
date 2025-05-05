module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_1_out,cnt_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
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
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_1_out;
output   cnt_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln28_reg_512;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_259_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_500;
reg   [63:0] e_4_reg_505;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_284_p2;
reg   [0:0] icmp_ln28_reg_512_pp0_iter1_reg;
wire   [0:0] icmp_ln29_fu_308_p2;
reg   [0:0] icmp_ln29_reg_516;
wire   [1:0] trunc_ln28_fu_324_p1;
reg   [1:0] trunc_ln28_reg_540;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] tmp_dst_fu_343_p11;
reg   [7:0] tmp_dst_reg_545;
wire   [0:0] icmp_ln29_1_fu_390_p2;
reg   [0:0] icmp_ln29_1_reg_550;
reg   [7:0] level_addr_reg_574;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_415_p11;
reg   [7:0] tmp_dst_1_reg_579;
wire   [0:0] grp_fu_253_p2;
reg   [0:0] icmp_ln34_reg_584;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] cnt_4_fu_442_p2;
reg   [7:0] level_addr_1_reg_599;
reg   [0:0] icmp_ln34_1_reg_604;
wire   [63:0] cnt_5_fu_462_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_228;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_3_reg_228;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_240;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_6_reg_240;
wire   [63:0] zext_ln14_fu_300_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_fu_382_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_fu_395_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln31_1_fu_448_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_80;
wire   [7:0] i_3_fu_313_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_84;
wire   [63:0] e_6_fu_452_p2;
reg   [63:0] cnt_1_fu_88;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
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
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage4;
wire   [9:0] lshr_ln1_fu_290_p4;
wire   [7:0] tmp_dst_fu_343_p2;
wire   [7:0] tmp_dst_fu_343_p4;
wire   [7:0] tmp_dst_fu_343_p6;
wire   [7:0] tmp_dst_fu_343_p8;
wire   [7:0] tmp_dst_fu_343_p9;
wire   [1:0] tmp_dst_fu_343_p10;
wire   [63:0] e_5_fu_367_p2;
wire   [9:0] lshr_ln2_fu_372_p4;
wire   [7:0] tmp_dst_1_fu_415_p2;
wire   [7:0] tmp_dst_1_fu_415_p4;
wire   [7:0] tmp_dst_1_fu_415_p6;
wire   [7:0] tmp_dst_1_fu_415_p8;
wire   [7:0] tmp_dst_1_fu_415_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_dst_fu_343_p1;
wire   [1:0] tmp_dst_fu_343_p3;
wire  signed [1:0] tmp_dst_fu_343_p5;
wire  signed [1:0] tmp_dst_fu_343_p7;
wire  signed [1:0] tmp_dst_1_fu_415_p1;
wire   [1:0] tmp_dst_1_fu_415_p3;
wire   [1:0] tmp_dst_1_fu_415_p5;
wire  signed [1:0] tmp_dst_1_fu_415_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_80 = 8'd0;
#0 e_1_fu_84 = 64'd0;
#0 cnt_1_fu_88 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1(.din0(tmp_dst_fu_343_p2),.din1(tmp_dst_fu_343_p4),.din2(tmp_dst_fu_343_p6),.din3(tmp_dst_fu_343_p8),.def(tmp_dst_fu_343_p9),.sel(tmp_dst_fu_343_p10),.dout(tmp_dst_fu_343_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2(.din0(tmp_dst_1_fu_415_p2),.din1(tmp_dst_1_fu_415_p4),.din2(tmp_dst_1_fu_415_p6),.din3(tmp_dst_1_fu_415_p8),.def(tmp_dst_1_fu_415_p9),.sel(trunc_ln28_reg_540),.dout(tmp_dst_1_fu_415_p11));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln34_reg_584 == 1'd0) & (icmp_ln29_reg_516 == 1'd1)) | ((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_516 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_228 <= cnt_1_fu_88;
    end else if (((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln34_reg_584 == 1'd1) & (icmp_ln29_reg_516 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_228 <= cnt_4_fu_442_p2;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_228 <= ap_phi_reg_pp0_iter0_cnt_3_reg_228;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (grp_fu_253_p2 == 1'd0) & (icmp_ln29_1_reg_550 == 1'd1)) | ((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_1_reg_550 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= ap_phi_reg_pp0_iter1_cnt_3_reg_228;
    end else if (((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (grp_fu_253_p2 == 1'd1) & (icmp_ln29_1_reg_550 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= cnt_5_fu_462_p2;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= ap_phi_reg_pp0_iter0_cnt_6_reg_240;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_88 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_88 <= ap_phi_reg_pp0_iter1_cnt_6_reg_240;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_84 <= e;
        end else if (((icmp_ln28_reg_512 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_84 <= e_6_fu_452_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln28_fu_284_p2 == 1'd1))) begin
        i_fu_80 <= i_3_fu_313_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_4_reg_505 <= e_1_fu_84;
        icmp_ln28_reg_512 <= icmp_ln28_fu_284_p2;
        icmp_ln28_reg_512_pp0_iter1_reg <= icmp_ln28_reg_512;
        icmp_ln29_reg_516 <= icmp_ln29_fu_308_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln29_1_reg_550 <= icmp_ln29_1_fu_390_p2;
        tmp_dst_reg_545 <= tmp_dst_fu_343_p11;
        trunc_ln28_reg_540 <= trunc_ln28_fu_324_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_1_reg_604 <= grp_fu_253_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_584 <= grp_fu_253_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_500[3 : 0] <= indvars_iv_next11_cast4_cast_fu_259_p1[3 : 0];
        level_addr_1_reg_599 <= zext_ln31_1_fu_448_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_574 <= zext_ln31_fu_395_p1;
        tmp_dst_1_reg_579 <= tmp_dst_1_fu_415_p11;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_512 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_512 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_512 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_out_ap_vld = 1'b1;
    end else begin
        cnt_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_0_address0_local = zext_ln26_fu_382_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_300_p1;
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
            edges_1_address0_local = zext_ln26_fu_382_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_300_p1;
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
            edges_2_address0_local = zext_ln26_fu_382_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln14_fu_300_p1;
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
            edges_3_address0_local = zext_ln26_fu_382_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln14_fu_300_p1;
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
        level_address0_local = level_addr_1_reg_599;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_1_fu_448_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_574;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_395_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_512 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln34_reg_584 == 1'd1) & (icmp_ln29_reg_516 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln34_1_reg_604 == 1'd1) & (icmp_ln29_1_reg_550 == 1'd1) & (icmp_ln28_reg_512_pp0_iter1_reg == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_phi_reg_pp0_iter0_cnt_3_reg_228 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_6_reg_240 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_1_out = cnt_1_fu_88;
assign cnt_4_fu_442_p2 = (cnt_1_fu_88 + 64'd1);
assign cnt_5_fu_462_p2 = (ap_phi_reg_pp0_iter1_cnt_3_reg_228 + 64'd1);
assign e_5_fu_367_p2 = (e_4_reg_505 + 64'd1);
assign e_6_fu_452_p2 = (e_4_reg_505 + 64'd2);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign grp_fu_253_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign i_3_fu_313_p2 = (i_fu_80 + 8'd2);
assign icmp_ln28_fu_284_p2 = ((i_fu_80 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_390_p2 = ((e_5_fu_367_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_308_p2 = ((e_1_fu_84 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_259_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_500;
assign level_we0 = level_we0_local;
assign lshr_ln1_fu_290_p4 = {{e_1_fu_84[11:2]}};
assign lshr_ln2_fu_372_p4 = {{e_5_fu_367_p2[11:2]}};
assign tmp_dst_1_fu_415_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_415_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_415_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_415_p8 = edges_3_q0[7:0];
assign tmp_dst_1_fu_415_p9 = 'bx;
assign tmp_dst_fu_343_p10 = e_4_reg_505[1:0];
assign tmp_dst_fu_343_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_343_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_343_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_343_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_343_p9 = 'bx;
assign trunc_ln28_fu_324_p1 = e_4_reg_505[1:0];
assign zext_ln14_fu_300_p1 = lshr_ln1_fu_290_p4;
assign zext_ln26_fu_382_p1 = lshr_ln2_fu_372_p4;
assign zext_ln31_1_fu_448_p1 = tmp_dst_1_reg_579;
assign zext_ln31_fu_395_p1 = tmp_dst_reg_545;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_500[7:4] <= 4'b0000;
end
endmodule 