module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,nodes_8_address0,nodes_8_ce0,nodes_8_q0,nodes_9_address0,nodes_9_ce0,nodes_9_q0,nodes_10_address0,nodes_10_ce0,nodes_10_q0,nodes_11_address0,nodes_11_ce0,nodes_11_q0,nodes_12_address0,nodes_12_ce0,nodes_12_q0,nodes_13_address0,nodes_13_ce0,nodes_13_q0,nodes_14_address0,nodes_14_ce0,nodes_14_q0,nodes_15_address0,nodes_15_ce0,nodes_15_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [3:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [3:0] nodes_2_address0;
output   nodes_2_ce0;
input  [127:0] nodes_2_q0;
output  [3:0] nodes_3_address0;
output   nodes_3_ce0;
input  [127:0] nodes_3_q0;
output  [3:0] nodes_4_address0;
output   nodes_4_ce0;
input  [127:0] nodes_4_q0;
output  [3:0] nodes_5_address0;
output   nodes_5_ce0;
input  [127:0] nodes_5_q0;
output  [3:0] nodes_6_address0;
output   nodes_6_ce0;
input  [127:0] nodes_6_q0;
output  [3:0] nodes_7_address0;
output   nodes_7_ce0;
input  [127:0] nodes_7_q0;
output  [3:0] nodes_8_address0;
output   nodes_8_ce0;
input  [127:0] nodes_8_q0;
output  [3:0] nodes_9_address0;
output   nodes_9_ce0;
input  [127:0] nodes_9_q0;
output  [3:0] nodes_10_address0;
output   nodes_10_ce0;
input  [127:0] nodes_10_q0;
output  [3:0] nodes_11_address0;
output   nodes_11_ce0;
input  [127:0] nodes_11_q0;
output  [3:0] nodes_12_address0;
output   nodes_12_ce0;
input  [127:0] nodes_12_q0;
output  [3:0] nodes_13_address0;
output   nodes_13_ce0;
input  [127:0] nodes_13_q0;
output  [3:0] nodes_14_address0;
output   nodes_14_ce0;
input  [127:0] nodes_14_q0;
output  [3:0] nodes_15_address0;
output   nodes_15_ce0;
input  [127:0] nodes_15_q0;
output  [7:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [7:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [7:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [7:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [7:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [7:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [7:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [7:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [7:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [7:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [7:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [7:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [7:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [7:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [7:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [7:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] level_address0;
reg level_ce0;
reg level_we0;
reg[7:0] level_d0;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] zext_ln15_fu_524_p1;
reg   [7:0] zext_ln15_reg_999;
wire    ap_CS_fsm_state2;
wire   [3:0] indvars_iv_next11_fu_528_p2;
reg   [3:0] indvars_iv_next11_reg_1004;
wire   [63:0] indvars_iv_next11_cast3_fu_534_p1;
reg   [63:0] indvars_iv_next11_cast3_reg_1011;
wire   [8:0] n_1_fu_544_p2;
reg   [8:0] n_1_reg_1019;
wire    ap_CS_fsm_state3;
wire   [3:0] trunc_ln24_fu_555_p1;
reg   [3:0] trunc_ln24_reg_1024;
reg   [3:0] lshr_ln_reg_1030;
wire   [0:0] icmp_ln25_fu_609_p2;
reg   [0:0] icmp_ln25_reg_1043;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_678_p35;
reg   [63:0] e_reg_1127;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_end_fu_910_p35;
reg   [63:0] tmp_end_reg_1132;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_472_level_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out_ap_vld;
reg   [63:0] cnt_reg_436;
reg   [63:0] ap_phi_mux_cnt_4_phi_fu_464_p4;
wire    ap_CS_fsm_state7;
reg   [8:0] n_reg_449;
reg   [63:0] cnt_4_reg_460;
reg    grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln24_fu_550_p1;
wire   [0:0] icmp_ln24_fu_538_p2;
wire   [63:0] zext_ln12_fu_590_p1;
reg   [3:0] horizon_fu_168;
reg    level_we0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
reg    nodes_2_ce0_local;
reg    nodes_3_ce0_local;
reg    nodes_4_ce0_local;
reg    nodes_5_ce0_local;
reg    nodes_6_ce0_local;
reg    nodes_7_ce0_local;
reg    nodes_8_ce0_local;
reg    nodes_9_ce0_local;
reg    nodes_10_ce0_local;
reg    nodes_11_ce0_local;
reg    nodes_12_ce0_local;
reg    nodes_13_ce0_local;
reg    nodes_14_ce0_local;
reg    nodes_15_ce0_local;
wire   [0:0] icmp_ln43_fu_569_p2;
wire   [0:0] icmp_ln21_fu_575_p2;
wire   [63:0] e_fu_678_p2;
wire   [63:0] e_fu_678_p4;
wire   [63:0] e_fu_678_p6;
wire   [63:0] e_fu_678_p8;
wire   [63:0] e_fu_678_p10;
wire   [63:0] e_fu_678_p12;
wire   [63:0] e_fu_678_p14;
wire   [63:0] e_fu_678_p16;
wire   [63:0] e_fu_678_p18;
wire   [63:0] e_fu_678_p20;
wire   [63:0] e_fu_678_p22;
wire   [63:0] e_fu_678_p24;
wire   [63:0] e_fu_678_p26;
wire   [63:0] e_fu_678_p28;
wire   [63:0] e_fu_678_p30;
wire   [63:0] e_fu_678_p32;
wire   [63:0] e_fu_678_p33;
wire   [63:0] tmp_end_fu_910_p2;
wire   [63:0] tmp_end_fu_910_p4;
wire   [63:0] tmp_end_fu_910_p6;
wire   [63:0] tmp_end_fu_910_p8;
wire   [63:0] tmp_end_fu_910_p10;
wire   [63:0] tmp_end_fu_910_p12;
wire   [63:0] tmp_end_fu_910_p14;
wire   [63:0] tmp_end_fu_910_p16;
wire   [63:0] tmp_end_fu_910_p18;
wire   [63:0] tmp_end_fu_910_p20;
wire   [63:0] tmp_end_fu_910_p22;
wire   [63:0] tmp_end_fu_910_p24;
wire   [63:0] tmp_end_fu_910_p26;
wire   [63:0] tmp_end_fu_910_p28;
wire   [63:0] tmp_end_fu_910_p30;
wire   [63:0] tmp_end_fu_910_p32;
wire   [63:0] tmp_end_fu_910_p33;
wire   [0:0] and_ln43_fu_580_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire   [3:0] e_fu_678_p1;
wire   [3:0] e_fu_678_p3;
wire   [3:0] e_fu_678_p5;
wire   [3:0] e_fu_678_p7;
wire   [3:0] e_fu_678_p9;
wire   [3:0] e_fu_678_p11;
wire   [3:0] e_fu_678_p13;
wire   [3:0] e_fu_678_p15;
wire  signed [3:0] e_fu_678_p17;
wire  signed [3:0] e_fu_678_p19;
wire  signed [3:0] e_fu_678_p21;
wire  signed [3:0] e_fu_678_p23;
wire  signed [3:0] e_fu_678_p25;
wire  signed [3:0] e_fu_678_p27;
wire  signed [3:0] e_fu_678_p29;
wire  signed [3:0] e_fu_678_p31;
wire   [3:0] tmp_end_fu_910_p1;
wire   [3:0] tmp_end_fu_910_p3;
wire   [3:0] tmp_end_fu_910_p5;
wire   [3:0] tmp_end_fu_910_p7;
wire   [3:0] tmp_end_fu_910_p9;
wire   [3:0] tmp_end_fu_910_p11;
wire   [3:0] tmp_end_fu_910_p13;
wire   [3:0] tmp_end_fu_910_p15;
wire  signed [3:0] tmp_end_fu_910_p17;
wire  signed [3:0] tmp_end_fu_910_p19;
wire  signed [3:0] tmp_end_fu_910_p21;
wire  signed [3:0] tmp_end_fu_910_p23;
wire  signed [3:0] tmp_end_fu_910_p25;
wire  signed [3:0] tmp_end_fu_910_p27;
wire  signed [3:0] tmp_end_fu_910_p29;
wire  signed [3:0] tmp_end_fu_910_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg = 1'b0;
#0 horizon_fu_168 = 4'd0;
end
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_472(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_472_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_472_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_472_ap_ready),.e(e_reg_1127),.cnt(cnt_reg_436),.tmp_end(tmp_end_reg_1132),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_ce0),.edges_7_q0(edges_7_q0),.edges_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_address0),.edges_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_ce0),.edges_8_q0(edges_8_q0),.edges_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_address0),.edges_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_ce0),.edges_9_q0(edges_9_q0),.edges_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_address0),.edges_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_ce0),.edges_10_q0(edges_10_q0),.edges_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_address0),.edges_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_ce0),.edges_11_q0(edges_11_q0),.edges_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_address0),.edges_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_ce0),.edges_12_q0(edges_12_q0),.edges_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_address0),.edges_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_ce0),.edges_13_q0(edges_13_q0),.edges_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_address0),.edges_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_ce0),.edges_14_q0(edges_14_q0),.edges_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_address0),.edges_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_ce0),.edges_15_q0(edges_15_q0),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_472_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_472_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_472_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_472_level_d0),.level_q0(level_q0),.indvars_iv_next11_cast4(indvars_iv_next11_reg_1004),.cnt_62_out(grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out),.cnt_62_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U103(.din0(e_fu_678_p2),.din1(e_fu_678_p4),.din2(e_fu_678_p6),.din3(e_fu_678_p8),.din4(e_fu_678_p10),.din5(e_fu_678_p12),.din6(e_fu_678_p14),.din7(e_fu_678_p16),.din8(e_fu_678_p18),.din9(e_fu_678_p20),.din10(e_fu_678_p22),.din11(e_fu_678_p24),.din12(e_fu_678_p26),.din13(e_fu_678_p28),.din14(e_fu_678_p30),.din15(e_fu_678_p32),.def(e_fu_678_p33),.sel(trunc_ln24_reg_1024),.dout(e_fu_678_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U104(.din0(tmp_end_fu_910_p2),.din1(tmp_end_fu_910_p4),.din2(tmp_end_fu_910_p6),.din3(tmp_end_fu_910_p8),.din4(tmp_end_fu_910_p10),.din5(tmp_end_fu_910_p12),.din6(tmp_end_fu_910_p14),.din7(tmp_end_fu_910_p16),.din8(tmp_end_fu_910_p18),.din9(tmp_end_fu_910_p20),.din10(tmp_end_fu_910_p22),.din11(tmp_end_fu_910_p24),.din12(tmp_end_fu_910_p26),.din13(tmp_end_fu_910_p28),.din14(tmp_end_fu_910_p30),.din15(tmp_end_fu_910_p32),.def(tmp_end_fu_910_p33),.sel(trunc_ln24_reg_1024),.dout(tmp_end_fu_910_p35));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_472_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln25_fu_609_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        cnt_4_reg_460 <= cnt_reg_436;
    end else if (((icmp_ln25_reg_1043 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        cnt_4_reg_460 <= grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cnt_reg_436 <= ap_phi_mux_cnt_4_phi_fu_464_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_reg_436 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        horizon_fu_168 <= 4'd0;
    end else if (((icmp_ln24_fu_538_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        horizon_fu_168 <= indvars_iv_next11_reg_1004;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_reg_449 <= n_1_reg_1019;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        n_reg_449 <= 9'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_1127 <= e_fu_678_p35;
        tmp_end_reg_1132 <= tmp_end_fu_910_p35;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln25_reg_1043 <= icmp_ln25_fu_609_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next11_cast3_reg_1011[3 : 0] <= indvars_iv_next11_cast3_fu_534_p1[3 : 0];
        indvars_iv_next11_reg_1004 <= indvars_iv_next11_fu_528_p2;
        zext_ln15_reg_999[3 : 0] <= zext_ln15_fu_524_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln_reg_1030 <= {{n_reg_449[7:4]}};
        n_1_reg_1019 <= n_1_fu_544_p2;
        trunc_ln24_reg_1024 <= trunc_ln24_fu_555_p1;
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
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_472_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln24_fu_538_p2 == 1'd1) & (1'd0 == and_ln43_fu_580_p2) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((icmp_ln25_reg_1043 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_cnt_4_phi_fu_464_p4 = grp_bfs_Pipeline_loop_neighbors_fu_472_cnt_62_out;
    end else begin
        ap_phi_mux_cnt_4_phi_fu_464_p4 = cnt_4_reg_460;
    end
end
always @ (*) begin
    if (((icmp_ln24_fu_538_p2 == 1'd1) & (1'd0 == and_ln43_fu_580_p2) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_level_address0;
    end else begin
        level_address0 = level_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_address0_local = zext_ln24_fu_550_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_address0_local = starting_node;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_level_ce0;
    end else begin
        level_ce0 = level_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_address0_local = indvars_iv_next11_cast3_reg_1011;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_address0_local = 64'd0;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_d0_local = cnt_reg_436;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_d0_local = 64'd1;
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln24_fu_538_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_472_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_472_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_0_ce0_local = 1'b1;
    end else begin
        nodes_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_10_ce0_local = 1'b1;
    end else begin
        nodes_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_11_ce0_local = 1'b1;
    end else begin
        nodes_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_12_ce0_local = 1'b1;
    end else begin
        nodes_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_13_ce0_local = 1'b1;
    end else begin
        nodes_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_14_ce0_local = 1'b1;
    end else begin
        nodes_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_15_ce0_local = 1'b1;
    end else begin
        nodes_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_1_ce0_local = 1'b1;
    end else begin
        nodes_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_2_ce0_local = 1'b1;
    end else begin
        nodes_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_3_ce0_local = 1'b1;
    end else begin
        nodes_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_4_ce0_local = 1'b1;
    end else begin
        nodes_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_5_ce0_local = 1'b1;
    end else begin
        nodes_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_6_ce0_local = 1'b1;
    end else begin
        nodes_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_7_ce0_local = 1'b1;
    end else begin
        nodes_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_8_ce0_local = 1'b1;
    end else begin
        nodes_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_9_ce0_local = 1'b1;
    end else begin
        nodes_9_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln24_fu_538_p2 == 1'd1) & (1'd0 == and_ln43_fu_580_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln24_fu_538_p2 == 1'd1) & (1'd1 == and_ln43_fu_580_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln25_fu_609_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_472_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign and_ln43_fu_580_p2 = (icmp_ln43_fu_569_p2 & icmp_ln21_fu_575_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign e_fu_678_p10 = nodes_4_q0[63:0];
assign e_fu_678_p12 = nodes_5_q0[63:0];
assign e_fu_678_p14 = nodes_6_q0[63:0];
assign e_fu_678_p16 = nodes_7_q0[63:0];
assign e_fu_678_p18 = nodes_8_q0[63:0];
assign e_fu_678_p2 = nodes_0_q0[63:0];
assign e_fu_678_p20 = nodes_9_q0[63:0];
assign e_fu_678_p22 = nodes_10_q0[63:0];
assign e_fu_678_p24 = nodes_11_q0[63:0];
assign e_fu_678_p26 = nodes_12_q0[63:0];
assign e_fu_678_p28 = nodes_13_q0[63:0];
assign e_fu_678_p30 = nodes_14_q0[63:0];
assign e_fu_678_p32 = nodes_15_q0[63:0];
assign e_fu_678_p33 = 'bx;
assign e_fu_678_p4 = nodes_1_q0[63:0];
assign e_fu_678_p6 = nodes_2_q0[63:0];
assign e_fu_678_p8 = nodes_3_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_0_ce0;
assign edges_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_address0;
assign edges_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_10_ce0;
assign edges_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_address0;
assign edges_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_11_ce0;
assign edges_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_address0;
assign edges_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_12_ce0;
assign edges_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_address0;
assign edges_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_13_ce0;
assign edges_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_address0;
assign edges_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_14_ce0;
assign edges_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_address0;
assign edges_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_15_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_1_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_2_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_3_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_4_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_5_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_7_ce0;
assign edges_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_address0;
assign edges_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_8_ce0;
assign edges_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_address0;
assign edges_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_472_edges_9_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_472_ap_start_reg;
assign icmp_ln21_fu_575_p2 = ((indvars_iv_next11_reg_1004 < 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_538_p2 = ((n_reg_449 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_609_p2 = ((zext_ln15_reg_999 == level_q0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_569_p2 = ((cnt_reg_436 != 64'd0) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast3_fu_534_p1 = indvars_iv_next11_fu_528_p2;
assign indvars_iv_next11_fu_528_p2 = (horizon_fu_168 + 4'd1);
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign n_1_fu_544_p2 = (n_reg_449 + 9'd1);
assign nodes_0_address0 = zext_ln12_fu_590_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_10_address0 = zext_ln12_fu_590_p1;
assign nodes_10_ce0 = nodes_10_ce0_local;
assign nodes_11_address0 = zext_ln12_fu_590_p1;
assign nodes_11_ce0 = nodes_11_ce0_local;
assign nodes_12_address0 = zext_ln12_fu_590_p1;
assign nodes_12_ce0 = nodes_12_ce0_local;
assign nodes_13_address0 = zext_ln12_fu_590_p1;
assign nodes_13_ce0 = nodes_13_ce0_local;
assign nodes_14_address0 = zext_ln12_fu_590_p1;
assign nodes_14_ce0 = nodes_14_ce0_local;
assign nodes_15_address0 = zext_ln12_fu_590_p1;
assign nodes_15_ce0 = nodes_15_ce0_local;
assign nodes_1_address0 = zext_ln12_fu_590_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_2_address0 = zext_ln12_fu_590_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_3_address0 = zext_ln12_fu_590_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_4_address0 = zext_ln12_fu_590_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_5_address0 = zext_ln12_fu_590_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_6_address0 = zext_ln12_fu_590_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln12_fu_590_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign nodes_8_address0 = zext_ln12_fu_590_p1;
assign nodes_8_ce0 = nodes_8_ce0_local;
assign nodes_9_address0 = zext_ln12_fu_590_p1;
assign nodes_9_ce0 = nodes_9_ce0_local;
assign tmp_end_fu_910_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_910_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_910_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_910_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_910_p18 = {{nodes_8_q0[127:64]}};
assign tmp_end_fu_910_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_910_p20 = {{nodes_9_q0[127:64]}};
assign tmp_end_fu_910_p22 = {{nodes_10_q0[127:64]}};
assign tmp_end_fu_910_p24 = {{nodes_11_q0[127:64]}};
assign tmp_end_fu_910_p26 = {{nodes_12_q0[127:64]}};
assign tmp_end_fu_910_p28 = {{nodes_13_q0[127:64]}};
assign tmp_end_fu_910_p30 = {{nodes_14_q0[127:64]}};
assign tmp_end_fu_910_p32 = {{nodes_15_q0[127:64]}};
assign tmp_end_fu_910_p33 = 'bx;
assign tmp_end_fu_910_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_910_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_910_p8 = {{nodes_3_q0[127:64]}};
assign trunc_ln24_fu_555_p1 = n_reg_449[3:0];
assign zext_ln12_fu_590_p1 = lshr_ln_reg_1030;
assign zext_ln15_fu_524_p1 = horizon_fu_168;
assign zext_ln24_fu_550_p1 = n_reg_449;
always @ (posedge ap_clk) begin
    zext_ln15_reg_999[7:4] <= 4'b0000;
    indvars_iv_next11_cast3_reg_1011[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 