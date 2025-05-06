
module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0);  
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
output  [4:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [4:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [4:0] nodes_2_address0;
output   nodes_2_ce0;
input  [127:0] nodes_2_q0;
output  [4:0] nodes_3_address0;
output   nodes_3_ce0;
input  [127:0] nodes_3_q0;
output  [4:0] nodes_4_address0;
output   nodes_4_ce0;
input  [127:0] nodes_4_q0;
output  [4:0] nodes_5_address0;
output   nodes_5_ce0;
input  [127:0] nodes_5_q0;
output  [4:0] nodes_6_address0;
output   nodes_6_ce0;
input  [127:0] nodes_6_q0;
output  [4:0] nodes_7_address0;
output   nodes_7_ce0;
input  [127:0] nodes_7_q0;
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
wire   [2:0] trunc_ln32_fu_505_p1;
reg   [2:0] trunc_ln32_reg_872;
wire    ap_CS_fsm_state2;
reg   [63:0] q_in_load_reg_926;
wire    ap_CS_fsm_state3;
wire   [7:0] n_fu_590_p19;
reg   [7:0] n_reg_931;
wire   [2:0] trunc_ln18_fu_629_p1;
reg   [2:0] trunc_ln18_reg_936;
wire   [63:0] e_fu_687_p19;
reg   [63:0] e_reg_982;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_end_fu_807_p19;
reg   [63:0] tmp_end_reg_987;
reg   [4:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
reg   [4:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
wire   [7:0] queue_1_q0;
reg   [4:0] queue_2_address0;
reg    queue_2_ce0;
reg    queue_2_we0;
wire   [7:0] queue_2_q0;
reg   [4:0] queue_3_address0;
reg    queue_3_ce0;
reg    queue_3_we0;
wire   [7:0] queue_3_q0;
reg   [4:0] queue_4_address0;
reg    queue_4_ce0;
reg    queue_4_we0;
wire   [7:0] queue_4_q0;
reg   [4:0] queue_5_address0;
reg    queue_5_ce0;
reg    queue_5_we0;
wire   [7:0] queue_5_q0;
reg   [4:0] queue_6_address0;
reg    queue_6_ce0;
reg    queue_6_we0;
wire   [7:0] queue_6_q0;
reg   [4:0] queue_7_address0;
reg    queue_7_ce0;
reg    queue_7_we0;
wire   [7:0] queue_7_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_level_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_d0;
wire   [4:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_417_queue_d0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_ce0;
wire   [8:0] grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_ce0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [63:0] q_in_fu_128;
wire   [63:0] zext_ln16_fu_519_p1;
wire   [0:0] tmp_fu_480_p3;
wire   [0:0] icmp_ln33_fu_531_p2;
wire   [0:0] icmp_ln33_1_fu_565_p2;
wire   [0:0] and_ln33_fu_549_p2;
wire   [63:0] zext_ln18_fu_643_p1;
reg   [7:0] q_out_fu_132;
wire   [7:0] q_out_1_fu_574_p2;
reg   [8:0] dummy_fu_136;
wire   [8:0] dummy_2_fu_488_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_457_p1;
reg    queue_ce0_local;
reg   [4:0] queue_address0_local;
reg    queue_1_ce0_local;
reg    queue_2_ce0_local;
reg    queue_3_ce0_local;
reg    queue_4_ce0_local;
reg    queue_5_ce0_local;
reg    queue_6_ce0_local;
reg    queue_7_ce0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
reg    nodes_2_ce0_local;
reg    nodes_3_ce0_local;
reg    nodes_4_ce0_local;
reg    nodes_5_ce0_local;
reg    nodes_6_ce0_local;
reg    nodes_7_ce0_local;
wire   [4:0] lshr_ln_fu_509_p4;
wire   [63:0] zext_ln32_fu_497_p1;
wire   [0:0] icmp_ln33_2_fu_537_p2;
wire   [0:0] icmp_ln33_3_fu_543_p2;
wire   [8:0] zext_ln32_1_fu_501_p1;
wire   [8:0] add_ln33_fu_555_p2;
wire   [63:0] zext_ln33_fu_561_p1;
wire   [7:0] n_fu_590_p17;
wire   [4:0] lshr_ln1_fu_633_p4;
wire   [63:0] e_fu_687_p2;
wire   [63:0] e_fu_687_p4;
wire   [63:0] e_fu_687_p6;
wire   [63:0] e_fu_687_p8;
wire   [63:0] e_fu_687_p10;
wire   [63:0] e_fu_687_p12;
wire   [63:0] e_fu_687_p14;
wire   [63:0] e_fu_687_p16;
wire   [63:0] e_fu_687_p17;
wire   [63:0] tmp_end_fu_807_p2;
wire   [63:0] tmp_end_fu_807_p4;
wire   [63:0] tmp_end_fu_807_p6;
wire   [63:0] tmp_end_fu_807_p8;
wire   [63:0] tmp_end_fu_807_p10;
wire   [63:0] tmp_end_fu_807_p12;
wire   [63:0] tmp_end_fu_807_p14;
wire   [63:0] tmp_end_fu_807_p16;
wire   [63:0] tmp_end_fu_807_p17;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire   [2:0] n_fu_590_p1;
wire   [2:0] n_fu_590_p3;
wire   [2:0] n_fu_590_p5;
wire   [2:0] n_fu_590_p7;
wire  signed [2:0] n_fu_590_p9;
wire  signed [2:0] n_fu_590_p11;
wire  signed [2:0] n_fu_590_p13;
wire  signed [2:0] n_fu_590_p15;
wire   [2:0] e_fu_687_p1;
wire   [2:0] e_fu_687_p3;
wire   [2:0] e_fu_687_p5;
wire   [2:0] e_fu_687_p7;
wire  signed [2:0] e_fu_687_p9;
wire  signed [2:0] e_fu_687_p11;
wire  signed [2:0] e_fu_687_p13;
wire  signed [2:0] e_fu_687_p15;
wire   [2:0] tmp_end_fu_807_p1;
wire   [2:0] tmp_end_fu_807_p3;
wire   [2:0] tmp_end_fu_807_p5;
wire   [2:0] tmp_end_fu_807_p7;
wire  signed [2:0] tmp_end_fu_807_p9;
wire  signed [2:0] tmp_end_fu_807_p11;
wire  signed [2:0] tmp_end_fu_807_p13;
wire  signed [2:0] tmp_end_fu_807_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg = 1'b0;
#0 q_in_fu_128 = 64'd0;
#0 q_out_fu_132 = 8'd0;
#0 dummy_fu_136 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_1_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_1_address0),.ce0(queue_1_ce0),.we0(queue_1_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_d0),.q0(queue_1_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_2_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_2_address0),.ce0(queue_2_ce0),.we0(queue_2_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_d0),.q0(queue_2_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_3_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_3_address0),.ce0(queue_3_ce0),.we0(queue_3_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_d0),.q0(queue_3_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_4_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_4_address0),.ce0(queue_4_ce0),.we0(queue_4_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_d0),.q0(queue_4_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_5_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_5_address0),.ce0(queue_5_ce0),.we0(queue_5_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_d0),.q0(queue_5_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_6_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_6_address0),.ce0(queue_6_ce0),.we0(queue_6_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_d0),.q0(queue_6_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
queue_7_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_7_address0),.ce0(queue_7_ce0),.we0(queue_7_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_d0),.q0(queue_7_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_417(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_417_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_417_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_417_ap_ready),.e(e_reg_982),.q_in(q_in_load_reg_926),.tmp_end(tmp_end_reg_987),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_931),.queue_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_address0),.queue_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_ce0),.queue_7_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_we0),.queue_7_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_d0),.queue_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_address0),.queue_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_ce0),.queue_6_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_we0),.queue_6_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_d0),.queue_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_address0),.queue_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_ce0),.queue_5_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_we0),.queue_5_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_d0),.queue_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_address0),.queue_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_ce0),.queue_4_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_we0),.queue_4_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_d0),.queue_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_address0),.queue_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_ce0),.queue_3_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_we0),.queue_3_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_d0),.queue_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_address0),.queue_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_ce0),.queue_2_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_we0),.queue_2_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_d0),.queue_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_address0),.queue_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_ce0),.queue_1_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_we0),.queue_1_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_d0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_queue_d0),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_ce0),.edges_7_q0(edges_7_q0),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_d0),.level_counts_q0(level_counts_q0),.q_in_1_out(grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out),.q_in_1_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U28(.din0(queue_q0),.din1(queue_1_q0),.din2(queue_2_q0),.din3(queue_3_q0),.din4(queue_4_q0),.din5(queue_5_q0),.din6(queue_6_q0),.din7(queue_7_q0),.def(n_fu_590_p17),.sel(trunc_ln32_reg_872),.dout(n_fu_590_p19));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U29(.din0(e_fu_687_p2),.din1(e_fu_687_p4),.din2(e_fu_687_p6),.din3(e_fu_687_p8),.din4(e_fu_687_p10),.din5(e_fu_687_p12),.din6(e_fu_687_p14),.din7(e_fu_687_p16),.def(e_fu_687_p17),.sel(trunc_ln18_reg_936),.dout(e_fu_687_p19));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U30(.din0(tmp_end_fu_807_p2),.din1(tmp_end_fu_807_p4),.din2(tmp_end_fu_807_p6),.din3(tmp_end_fu_807_p8),.din4(tmp_end_fu_807_p10),.din5(tmp_end_fu_807_p12),.din6(tmp_end_fu_807_p14),.din7(tmp_end_fu_807_p16),.def(tmp_end_fu_807_p17),.sel(trunc_ln18_reg_936),.dout(tmp_end_fu_807_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_417_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_136 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_531_p2 == 1'd0) & (1'd0 == and_ln33_fu_549_p2) & (tmp_fu_480_p3 == 1'd0)) | ((icmp_ln33_1_fu_565_p2 == 1'd0) & (icmp_ln33_fu_531_p2 == 1'd1) & (tmp_fu_480_p3 == 1'd0))))) begin
        dummy_fu_136 <= dummy_2_fu_488_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_128 <= 64'd2;
    end else if (((grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        q_in_fu_128 <= grp_bfs_Pipeline_loop_neighbors_fu_417_q_in_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_132 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_531_p2 == 1'd0) & (1'd0 == and_ln33_fu_549_p2) & (tmp_fu_480_p3 == 1'd0)) | ((icmp_ln33_1_fu_565_p2 == 1'd0) & (icmp_ln33_fu_531_p2 == 1'd1) & (tmp_fu_480_p3 == 1'd0))))) begin
        q_out_fu_132 <= q_out_1_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        e_reg_982 <= e_fu_687_p19;
        tmp_end_reg_987 <= tmp_end_fu_807_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_reg_931 <= n_fu_590_p19;
        q_in_load_reg_926 <= q_in_fu_128;
        trunc_ln18_reg_936 <= trunc_ln18_fu_629_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln32_reg_872 <= trunc_ln32_fu_505_p1;
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
    if ((grp_bfs_Pipeline_loop_neighbors_fu_417_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_480_p3 == 1'd1) | (((1'd1 == and_ln33_fu_549_p2) & (icmp_ln33_fu_531_p2 == 1'd0)) | ((icmp_ln33_1_fu_565_p2 == 1'd1) & (icmp_ln33_fu_531_p2 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_480_p3 == 1'd1) | (((1'd1 == and_ln33_fu_549_p2) & (icmp_ln33_fu_531_p2 == 1'd0)) | ((icmp_ln33_1_fu_565_p2 == 1'd1) & (icmp_ln33_fu_531_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_ce0;
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
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_ce0;
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
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_counts_we0;
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
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_4_ce0_local = 1'b1;
    end else begin
        nodes_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_5_ce0_local = 1'b1;
    end else begin
        nodes_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_6_ce0_local = 1'b1;
    end else begin
        nodes_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_7_ce0_local = 1'b1;
    end else begin
        nodes_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_address0;
    end else begin
        queue_1_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_ce0;
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
        queue_1_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_1_we0;
    end else begin
        queue_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_address0;
    end else begin
        queue_2_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_ce0;
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
        queue_2_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_2_we0;
    end else begin
        queue_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_address0;
    end else begin
        queue_3_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_ce0;
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
        queue_3_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_3_we0;
    end else begin
        queue_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_address0;
    end else begin
        queue_4_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_ce0;
    end else begin
        queue_4_ce0 = queue_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_4_ce0_local = 1'b1;
    end else begin
        queue_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_4_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_4_we0;
    end else begin
        queue_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_address0;
    end else begin
        queue_5_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_ce0;
    end else begin
        queue_5_ce0 = queue_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_5_ce0_local = 1'b1;
    end else begin
        queue_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_5_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_5_we0;
    end else begin
        queue_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_address0;
    end else begin
        queue_6_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_ce0;
    end else begin
        queue_6_ce0 = queue_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_6_ce0_local = 1'b1;
    end else begin
        queue_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_6_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_6_we0;
    end else begin
        queue_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_address0;
    end else begin
        queue_7_address0 = zext_ln16_fu_519_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_ce0;
    end else begin
        queue_7_ce0 = queue_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_7_ce0_local = 1'b1;
    end else begin
        queue_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_7_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_7_we0;
    end else begin
        queue_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln16_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_ce0;
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
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_457_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_417_queue_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_480_p3 == 1'd1) | (((1'd1 == and_ln33_fu_549_p2) & (icmp_ln33_fu_531_p2 == 1'd0)) | ((icmp_ln33_1_fu_565_p2 == 1'd1) & (icmp_ln33_fu_531_p2 == 1'd1)))))) begin
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
            if (((grp_bfs_Pipeline_loop_neighbors_fu_417_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
assign add_ln33_fu_555_p2 = (zext_ln32_1_fu_501_p1 + 9'd1);
assign and_ln33_fu_549_p2 = (icmp_ln33_3_fu_543_p2 & icmp_ln33_2_fu_537_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign dummy_2_fu_488_p2 = (dummy_fu_136 + 9'd1);
assign e_fu_687_p10 = nodes_4_q0[63:0];
assign e_fu_687_p12 = nodes_5_q0[63:0];
assign e_fu_687_p14 = nodes_6_q0[63:0];
assign e_fu_687_p16 = nodes_7_q0[63:0];
assign e_fu_687_p17 = 'bx;
assign e_fu_687_p2 = nodes_0_q0[63:0];
assign e_fu_687_p4 = nodes_1_q0[63:0];
assign e_fu_687_p6 = nodes_2_q0[63:0];
assign e_fu_687_p8 = nodes_3_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_0_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_1_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_2_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_3_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_4_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_5_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_417_edges_7_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_417_ap_start_reg;
assign icmp_ln33_1_fu_565_p2 = ((q_in_fu_128 == zext_ln33_fu_561_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_537_p2 = ((q_in_fu_128 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_543_p2 = ((q_out_fu_132 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_531_p2 = ((q_in_fu_128 > zext_ln32_fu_497_p1) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_633_p4 = {{n_fu_590_p19[7:3]}};
assign lshr_ln_fu_509_p4 = {{q_out_fu_132[7:3]}};
assign n_fu_590_p17 = 'bx;
assign nodes_0_address0 = zext_ln18_fu_643_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_1_address0 = zext_ln18_fu_643_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_2_address0 = zext_ln18_fu_643_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_3_address0 = zext_ln18_fu_643_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_4_address0 = zext_ln18_fu_643_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_5_address0 = zext_ln18_fu_643_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_6_address0 = zext_ln18_fu_643_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln18_fu_643_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign q_out_1_fu_574_p2 = (q_out_fu_132 + 8'd1);
assign tmp_end_fu_807_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_807_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_807_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_807_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_807_p17 = 'bx;
assign tmp_end_fu_807_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_807_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_807_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_807_p8 = {{nodes_3_q0[127:64]}};
assign tmp_fu_480_p3 = dummy_fu_136[32'd8];
assign trunc_ln14_fu_457_p1 = starting_node[7:0];
assign trunc_ln18_fu_629_p1 = n_fu_590_p19[2:0];
assign trunc_ln32_fu_505_p1 = q_out_fu_132[2:0];
assign zext_ln16_fu_519_p1 = lshr_ln_fu_509_p4;
assign zext_ln18_fu_643_p1 = lshr_ln1_fu_633_p4;
assign zext_ln32_1_fu_501_p1 = q_out_fu_132;
assign zext_ln32_fu_497_p1 = q_out_fu_132;
assign zext_ln33_fu_561_p1 = add_ln33_fu_555_p2;
endmodule 
