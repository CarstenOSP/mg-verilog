
module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [5:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [5:0] nodes_2_address0;
output   nodes_2_ce0;
input  [127:0] nodes_2_q0;
output  [5:0] nodes_3_address0;
output   nodes_3_ce0;
input  [127:0] nodes_3_q0;
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
input  [63:0] starting_node;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] level_address0;
reg level_ce0;
reg level_we0;
reg[7:0] level_d0;
reg[3:0] level_counts_address0;
reg level_counts_ce0;
reg level_counts_we0;
reg[63:0] level_counts_d0;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] trunc_ln32_fu_353_p1;
reg   [1:0] trunc_ln32_reg_608;
wire    ap_CS_fsm_state2;
reg   [63:0] q_in_load_reg_642;
wire    ap_CS_fsm_state3;
wire   [7:0] n_fu_434_p11;
reg   [7:0] n_reg_647;
wire   [1:0] trunc_ln18_fu_457_p1;
reg   [1:0] trunc_ln18_reg_652;
wire   [63:0] e_fu_495_p11;
reg   [63:0] e_reg_678;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_end_fu_559_p11;
reg   [63:0] tmp_end_reg_683;
reg   [5:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
reg   [5:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
wire   [7:0] queue_1_q0;
reg   [5:0] queue_2_address0;
reg    queue_2_ce0;
reg    queue_2_we0;
wire   [7:0] queue_2_q0;
reg   [5:0] queue_3_address0;
reg    queue_3_ce0;
reg    queue_3_we0;
wire   [7:0] queue_3_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_level_d0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_d0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_d0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_d0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_277_queue_d0;
wire   [9:0] grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_ce0;
wire   [9:0] grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_ce0;
wire   [9:0] grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_ce0;
wire   [9:0] grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_ce0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [63:0] q_in_fu_104;
wire   [63:0] zext_ln16_fu_367_p1;
wire   [0:0] tmp_fu_328_p3;
wire   [0:0] icmp_ln33_fu_375_p2;
wire   [0:0] icmp_ln33_1_fu_409_p2;
wire   [0:0] and_ln33_fu_393_p2;
wire   [63:0] zext_ln18_fu_471_p1;
reg   [7:0] q_out_fu_108;
wire   [7:0] q_out_1_fu_418_p2;
reg   [8:0] dummy_fu_112;
wire   [8:0] dummy_2_fu_336_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_305_p1;
reg    queue_ce0_local;
reg   [5:0] queue_address0_local;
reg    queue_1_ce0_local;
reg    queue_2_ce0_local;
reg    queue_3_ce0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
reg    nodes_2_ce0_local;
reg    nodes_3_ce0_local;
wire   [5:0] lshr_ln_fu_357_p4;
wire   [63:0] zext_ln32_fu_345_p1;
wire   [0:0] icmp_ln33_2_fu_381_p2;
wire   [0:0] icmp_ln33_3_fu_387_p2;
wire   [8:0] zext_ln32_1_fu_349_p1;
wire   [8:0] add_ln33_fu_399_p2;
wire   [63:0] zext_ln33_fu_405_p1;
wire   [7:0] n_fu_434_p9;
wire   [5:0] lshr_ln1_fu_461_p4;
wire   [63:0] e_fu_495_p2;
wire   [63:0] e_fu_495_p4;
wire   [63:0] e_fu_495_p6;
wire   [63:0] e_fu_495_p8;
wire   [63:0] e_fu_495_p9;
wire   [63:0] tmp_end_fu_559_p2;
wire   [63:0] tmp_end_fu_559_p4;
wire   [63:0] tmp_end_fu_559_p6;
wire   [63:0] tmp_end_fu_559_p8;
wire   [63:0] tmp_end_fu_559_p9;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire   [1:0] n_fu_434_p1;
wire   [1:0] n_fu_434_p3;
wire  signed [1:0] n_fu_434_p5;
wire  signed [1:0] n_fu_434_p7;
wire   [1:0] e_fu_495_p1;
wire   [1:0] e_fu_495_p3;
wire  signed [1:0] e_fu_495_p5;
wire  signed [1:0] e_fu_495_p7;
wire   [1:0] tmp_end_fu_559_p1;
wire   [1:0] tmp_end_fu_559_p3;
wire  signed [1:0] tmp_end_fu_559_p5;
wire  signed [1:0] tmp_end_fu_559_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg = 1'b0;
#0 q_in_fu_104 = 64'd0;
#0 q_out_fu_108 = 8'd0;
#0 dummy_fu_112 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
queue_1_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_1_address0),.ce0(queue_1_ce0),.we0(queue_1_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_d0),.q0(queue_1_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
queue_2_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_2_address0),.ce0(queue_2_ce0),.we0(queue_2_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_d0),.q0(queue_2_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
queue_3_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_3_address0),.ce0(queue_3_ce0),.we0(queue_3_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_d0),.q0(queue_3_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_277(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_277_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_277_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_277_ap_ready),.e(e_reg_678),.q_in(q_in_load_reg_642),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_647),.queue_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_address0),.queue_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_ce0),.queue_3_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_we0),.queue_3_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_d0),.queue_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_address0),.queue_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_ce0),.queue_2_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_we0),.queue_2_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_d0),.queue_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_address0),.queue_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_ce0),.queue_1_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_we0),.queue_1_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_d0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_queue_d0),.tmp_end(tmp_end_reg_683),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_ce0),.edges_3_q0(edges_3_q0),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_d0),.level_counts_q0(level_counts_q0),.q_in_61_out(grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out),.q_in_61_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U52(.din0(queue_q0),.din1(queue_1_q0),.din2(queue_2_q0),.din3(queue_3_q0),.def(n_fu_434_p9),.sel(trunc_ln32_reg_608),.dout(n_fu_434_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U53(.din0(e_fu_495_p2),.din1(e_fu_495_p4),.din2(e_fu_495_p6),.din3(e_fu_495_p8),.def(e_fu_495_p9),.sel(trunc_ln18_reg_652),.dout(e_fu_495_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U54(.din0(tmp_end_fu_559_p2),.din1(tmp_end_fu_559_p4),.din2(tmp_end_fu_559_p6),.din3(tmp_end_fu_559_p8),.def(tmp_end_fu_559_p9),.sel(trunc_ln18_reg_652),.dout(tmp_end_fu_559_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_277_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_112 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_375_p2 == 1'd0) & (1'd0 == and_ln33_fu_393_p2) & (tmp_fu_328_p3 == 1'd0)) | ((icmp_ln33_1_fu_409_p2 == 1'd0) & (icmp_ln33_fu_375_p2 == 1'd1) & (tmp_fu_328_p3 == 1'd0))))) begin
        dummy_fu_112 <= dummy_2_fu_336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_104 <= 64'd2;
    end else if (((grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        q_in_fu_104 <= grp_bfs_Pipeline_loop_neighbors_fu_277_q_in_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_108 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_375_p2 == 1'd0) & (1'd0 == and_ln33_fu_393_p2) & (tmp_fu_328_p3 == 1'd0)) | ((icmp_ln33_1_fu_409_p2 == 1'd0) & (icmp_ln33_fu_375_p2 == 1'd1) & (tmp_fu_328_p3 == 1'd0))))) begin
        q_out_fu_108 <= q_out_1_fu_418_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        e_reg_678 <= e_fu_495_p11;
        tmp_end_reg_683 <= tmp_end_fu_559_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_reg_647 <= n_fu_434_p11;
        q_in_load_reg_642 <= q_in_fu_104;
        trunc_ln18_reg_652 <= trunc_ln18_fu_457_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln32_reg_608 <= trunc_ln32_fu_353_p1;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_277_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_328_p3 == 1'd1) | (((1'd1 == and_ln33_fu_393_p2) & (icmp_ln33_fu_375_p2 == 1'd0)) | ((icmp_ln33_1_fu_409_p2 == 1'd1) & (icmp_ln33_fu_375_p2 == 1'd1)))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_328_p3 == 1'd1) | (((1'd1 == and_ln33_fu_393_p2) & (icmp_ln33_fu_375_p2 == 1'd0)) | ((icmp_ln33_1_fu_409_p2 == 1'd1) & (icmp_ln33_fu_375_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_ce0;
    end else begin
        level_ce0 = level_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_ce0;
    end else begin
        level_counts_ce0 = level_counts_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_counts_we0;
    end else begin
        level_counts_we0 = level_counts_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_level_we0;
    end else begin
        level_we0 = level_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_0_ce0_local = 1'b1;
    end else begin
        nodes_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_1_ce0_local = 1'b1;
    end else begin
        nodes_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_2_ce0_local = 1'b1;
    end else begin
        nodes_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_3_ce0_local = 1'b1;
    end else begin
        nodes_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_address0;
    end else begin
        queue_1_address0 = zext_ln16_fu_367_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_ce0;
    end else begin
        queue_1_ce0 = queue_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_1_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_1_we0;
    end else begin
        queue_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_address0;
    end else begin
        queue_2_address0 = zext_ln16_fu_367_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_ce0;
    end else begin
        queue_2_ce0 = queue_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_2_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_2_we0;
    end else begin
        queue_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_address0;
    end else begin
        queue_3_address0 = zext_ln16_fu_367_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_ce0;
    end else begin
        queue_3_ce0 = queue_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_3_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_3_we0;
    end else begin
        queue_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln16_fu_367_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_ce0;
    end else begin
        queue_ce0 = queue_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_305_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_277_queue_we0;
    end else begin
        queue_we0 = queue_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_328_p3 == 1'd1) | (((1'd1 == and_ln33_fu_393_p2) & (icmp_ln33_fu_375_p2 == 1'd0)) | ((icmp_ln33_1_fu_409_p2 == 1'd1) & (icmp_ln33_fu_375_p2 == 1'd1)))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_bfs_Pipeline_loop_neighbors_fu_277_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_399_p2 = (zext_ln32_1_fu_349_p1 + 9'd1);
assign and_ln33_fu_393_p2 = (icmp_ln33_3_fu_387_p2 & icmp_ln33_2_fu_381_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign dummy_2_fu_336_p2 = (dummy_fu_112 + 9'd1);
assign e_fu_495_p2 = nodes_0_q0[63:0];
assign e_fu_495_p4 = nodes_1_q0[63:0];
assign e_fu_495_p6 = nodes_2_q0[63:0];
assign e_fu_495_p8 = nodes_3_q0[63:0];
assign e_fu_495_p9 = 'bx;
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_0_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_1_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_2_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_277_edges_3_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_277_ap_start_reg;
assign icmp_ln33_1_fu_409_p2 = ((q_in_fu_104 == zext_ln33_fu_405_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_381_p2 = ((q_in_fu_104 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_387_p2 = ((q_out_fu_108 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_375_p2 = ((q_in_fu_104 > zext_ln32_fu_345_p1) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_461_p4 = {{n_fu_434_p11[7:2]}};
assign lshr_ln_fu_357_p4 = {{q_out_fu_108[7:2]}};
assign n_fu_434_p9 = 'bx;
assign nodes_0_address0 = zext_ln18_fu_471_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_1_address0 = zext_ln18_fu_471_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_2_address0 = zext_ln18_fu_471_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_3_address0 = zext_ln18_fu_471_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign q_out_1_fu_418_p2 = (q_out_fu_108 + 8'd1);
assign tmp_end_fu_559_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_559_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_559_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_559_p8 = {{nodes_3_q0[127:64]}};
assign tmp_end_fu_559_p9 = 'bx;
assign tmp_fu_328_p3 = dummy_fu_112[32'd8];
assign trunc_ln14_fu_305_p1 = starting_node[7:0];
assign trunc_ln18_fu_457_p1 = n_fu_434_p11[1:0];
assign trunc_ln32_fu_353_p1 = q_out_fu_108[1:0];
assign zext_ln16_fu_367_p1 = lshr_ln_fu_357_p4;
assign zext_ln18_fu_471_p1 = lshr_ln1_fu_461_p4;
assign zext_ln32_1_fu_349_p1 = q_out_fu_108;
assign zext_ln32_fu_345_p1 = q_out_fu_108;
assign zext_ln33_fu_405_p1 = add_ln33_fu_399_p2;
endmodule 
